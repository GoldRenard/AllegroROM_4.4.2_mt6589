package com.goldrenard.hooks;

import com.android.server.wm.WindowManagerService;
import com.goldrenard.internal.util.cm.SettingsWrapper;

import android.app.ActivityManagerNative;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.media.AudioSystem;
import android.media.IAudioService;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.Log;
import android.view.HapticFeedbackConstants;
import android.view.IWindowManager;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import android.view.WindowManagerPolicy;
import android.view.WindowManagerPolicy.WindowManagerFuncs;
import android.view.WindowManagerPolicy.WindowState;

public final class PhoneWindowManagerHook {
	
	private static String TAG = "PhoneWindowManagerHook";
	
    private static final int MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK = 3;
    private static final int MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK = 4;
    private static final int MSG_DISPATCH_VOLKEY_WITH_WAKE_LOCK = 1015;
	
	private static boolean mVolBtnMusicControls;
	private static boolean mIsLongPress;
    private static Context mContext;
    private static SettingsObserver mSettingsObserver;
    private static PolicyHandler mHandler;
    private static PowerManager.WakeLock mBroadcastWakeLock;
	
    public static int mQResult = 0;
    
    public static class PolicyHandler extends Handler {
        @Override
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case MSG_DISPATCH_VOLKEY_WITH_WAKE_LOCK:
                    mIsLongPress = true;
                    dispatchMediaKeyWithWakeLockToAudioService((KeyEvent)msg.obj);
                    dispatchMediaKeyWithWakeLockToAudioService(KeyEvent.changeAction((KeyEvent)msg.obj, KeyEvent.ACTION_UP));
                    break;
            }
        }
    }
    
    private static class SettingsObserver extends ContentObserver {
		SettingsObserver(Handler handler) {
            super(handler);
        }
        void observe() {
        	ContentResolver resolver = mContext.getContentResolver();
            resolver.registerContentObserver(Settings.System.getUriFor(
                    SettingsWrapper.System.VOLBTN_MUSIC_CONTROLS), false, this,
                    UserHandle.USER_ALL);
            updateSettings();
        }
		@Override
		public void onChange(boolean selfChange) {
            updateSettings();
        }
    }
	
    public static void init(Context context, IWindowManager windowManager, WindowManagerFuncs windowManagerFuncs) {
    	
    	Log.e(TAG , "initialization");
    	
    	mContext = context;
    	mHandler = new PolicyHandler();
    	mSettingsObserver = new SettingsObserver(mHandler);
        mSettingsObserver.observe();
        
        PowerManager mPowerManager = (PowerManager)context.getSystemService(Context.POWER_SERVICE);
        mBroadcastWakeLock = mPowerManager.newWakeLock(PowerManager.PARTIAL_WAKE_LOCK,
                "PhoneWindowManagerHook.mBroadcastWakeLock");
        updateSettings();
    }
    
	public static boolean interceptKeyBeforeDispatching(WindowState win, KeyEvent event, int policyFlags) {
		final int keyCode = event.getKeyCode();
        final int repeatCount = event.getRepeatCount();
        final int metaState = event.getMetaState();
        final int flags = event.getFlags();
        final boolean down = event.getAction() == KeyEvent.ACTION_DOWN;
        final boolean canceled = event.isCanceled();
        final boolean longPress = (flags & KeyEvent.FLAG_LONG_PRESS) != 0;
        final boolean virtualKey = event.getDeviceId() == KeyCharacterMap.VIRTUAL_KEYBOARD;
        
        
		return false;
	}
	
    public static boolean interceptKeyBeforeQueueing(KeyEvent event, int policyFlags, boolean isScreenOn) {

    	Log.d(TAG , "interceptKeyBeforeQueueing: entering event=" + event
    			+ ", policyFlags=" + policyFlags + ", isScreenOn=" + isScreenOn);
    	
        final boolean down = event.getAction() == KeyEvent.ACTION_DOWN;
        final boolean canceled = event.isCanceled();
        int keyCode = event.getKeyCode();
        int scanCode = event.getScanCode();
        AudioManager audioManager = (AudioManager) mContext.getSystemService(
                Context.AUDIO_SERVICE);

        final boolean isInjected = (policyFlags & WindowManagerPolicy.FLAG_INJECTED) != 0;
        final boolean isWakeKey = (policyFlags
                & (WindowManagerPolicy.FLAG_WAKE | WindowManagerPolicy.FLAG_WAKE_DROPPED)) != 0;

        mQResult = 0;
        if (isScreenOn || (isInjected && !isWakeKey)) {
        	mQResult = WindowManagerPolicy.ACTION_PASS_TO_USER;
        }
        
        // Handle special keys.
        switch (keyCode) {
	        case KeyEvent.KEYCODE_VOLUME_DOWN:
	        case KeyEvent.KEYCODE_VOLUME_UP: {
	        	
	        	if (isMusicActive() && (mQResult & WindowManagerPolicy.ACTION_PASS_TO_USER) == 0) {
	                if (mVolBtnMusicControls && down) {
	                    mIsLongPress = false;
	                    int newKeyCode = event.getKeyCode() == KeyEvent.KEYCODE_VOLUME_UP ?
	                            KeyEvent.KEYCODE_MEDIA_NEXT : KeyEvent.KEYCODE_MEDIA_PREVIOUS;
	                    Message msg = mHandler.obtainMessage(MSG_DISPATCH_VOLKEY_WITH_WAKE_LOCK,
	                            new KeyEvent(event.getDownTime(), event.getEventTime(), event.getAction(), newKeyCode, 0));
	                    msg.setAsynchronous(true);
	                    mHandler.sendMessageDelayed(msg, ViewConfiguration.getLongPressTimeout());
	                    Log.e(TAG , "interceptKeyBeforeQueueing: track switch was scheduled, return true");
	                    return true;
	                } else {
	                    if (mVolBtnMusicControls && !down) {
	                        mHandler.removeMessages(MSG_DISPATCH_VOLKEY_WITH_WAKE_LOCK);
	                        if (mIsLongPress) {
	                        	Log.e(TAG , "interceptKeyBeforeQueueing: track switch handled, return true");
	                            return true;
	                        }
	                        
	                        if (!isScreenOn) {
	                        	handleVolumeKey(AudioManager.STREAM_MUSIC, keyCode);
	                        }
	                    }
	                }
	            }
	        	break;
	        }
        }

    	return false;
    }

    private static void dispatchMediaKeyWithWakeLockToAudioService(KeyEvent event) {
        if (ActivityManagerNative.isSystemReady()) {
            IAudioService audioService = getAudioService();
            if (audioService != null) {
                try {
                    audioService.dispatchMediaKeyEventUnderWakelock(event);
                } catch (RemoteException e) {
                    Log.e(TAG , "dispatchMediaKeyEvent threw exception " + e);
                }
            }
        }
    }
    
    private static void handleVolumeKey(int stream, int keycode) {
        IAudioService audioService = getAudioService();
        if (audioService == null) {
            return;
        }
        try {
            // when audio is playing locally, we shouldn't have to hold a wake lock
            // during the call, but we do it as a precaution for the rare possibility
            // that the music stops right before we call this.
            // Otherwise we might also be in a remote playback case.
            // TODO: Actually handle MUTE.
            mBroadcastWakeLock.acquire();
            if (stream == AudioSystem.STREAM_MUSIC) {
                audioService.adjustLocalOrRemoteStreamVolume(stream,
                        keycode == KeyEvent.KEYCODE_VOLUME_UP
                                ? AudioManager.ADJUST_RAISE
                                : AudioManager.ADJUST_LOWER,
                        mContext.getOpPackageName());
            } else {
                audioService.adjustStreamVolume(stream,
                        keycode == KeyEvent.KEYCODE_VOLUME_UP
                                ? AudioManager.ADJUST_RAISE
                                : AudioManager.ADJUST_LOWER,
                        0,
                        mContext.getOpPackageName());
            }
        } catch (RemoteException e) {
            Log.w(TAG, "IAudioService.adjust*StreamVolume() threw RemoteException " + e);
        } finally {
            mBroadcastWakeLock.release();
        }
    }
    
    /**
     * @return Whether music is being played right now "locally" (e.g. on the device's speakers
     *    or wired headphones) or "remotely" (e.g. on a device using the Cast protocol and
     *    controlled by this device, or through remote submix).
     */
    private static boolean isMusicActive() {
        final AudioManager am = (AudioManager)mContext.getSystemService(Context.AUDIO_SERVICE);
        if (am == null) {
            return false;
        }
        return am.isLocalOrRemoteMusicActive();
    }
    
    private static IAudioService getAudioService() {
        IAudioService audioService = IAudioService.Stub.asInterface(
                ServiceManager.checkService(Context.AUDIO_SERVICE));
        return audioService;
    }
    
    private static void updateSettings() {
    	ContentResolver resolver = mContext.getContentResolver();
    	mVolBtnMusicControls = (Settings.System.getIntForUser(resolver,
                SettingsWrapper.System.VOLBTN_MUSIC_CONTROLS, 1, UserHandle.USER_CURRENT) == 1);
    	
    	Log.e(TAG , "Update settings. mVolBtnMusicControls=" + mVolBtnMusicControls);
	}
}
