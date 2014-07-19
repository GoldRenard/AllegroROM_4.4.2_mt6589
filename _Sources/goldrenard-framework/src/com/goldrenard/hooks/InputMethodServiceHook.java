package com.goldrenard.hooks;

import com.goldrenard.internal.util.cm.SettingsWrapper;

import android.inputmethodservice.InputMethodService;
import android.provider.Settings;
import android.view.KeyEvent;

public final class InputMethodServiceHook {
	public static boolean mUpResult = false;
	public static boolean mDownResult = false;
	public static int mVolumeKeyCursorControl = 0;
	
    public static final int VOLUME_CURSOR_OFF = 0;
    public static final int VOLUME_CURSOR_ON = 1;
    public static final int VOLUME_CURSOR_ON_REVERSE = 2;

	/**
	 * InputMethodService/onKeyDownHook hook for changing cursor by VOLBTNS
	 * @param keyCode code
	 * @param event event
	 * @return TRUE if destination method MUST return InputMethodServiceHook.mDownResult
	 */
    public static boolean onKeyDown(InputMethodService mService, int keyCode, KeyEvent event) {
    	if (mService != null) {
	        if (event.getKeyCode() == KeyEvent.KEYCODE_VOLUME_UP) {
	            mVolumeKeyCursorControl = Settings.System.getInt(mService.getContentResolver(),
	                    SettingsWrapper.System.VOLUME_KEY_CURSOR_CONTROL, 0);
	            if (mService.isInputViewShown() && (mVolumeKeyCursorControl != VOLUME_CURSOR_OFF)) {
	            	mService.sendDownUpKeyEvents((mVolumeKeyCursorControl == VOLUME_CURSOR_ON_REVERSE)
	                        ? KeyEvent.KEYCODE_DPAD_RIGHT : KeyEvent.KEYCODE_DPAD_LEFT);
	                mDownResult = true;
	            }
	            mDownResult = false;
	            return true;
	        }
	        if (event.getKeyCode() == KeyEvent.KEYCODE_VOLUME_DOWN) {
	            mVolumeKeyCursorControl = Settings.System.getInt(mService.getContentResolver(),
	            		SettingsWrapper.System.VOLUME_KEY_CURSOR_CONTROL, 0);
	            if (mService.isInputViewShown() && (mVolumeKeyCursorControl != VOLUME_CURSOR_OFF)) {
	            	mService.sendDownUpKeyEvents((mVolumeKeyCursorControl == VOLUME_CURSOR_ON_REVERSE)
	                        ? KeyEvent.KEYCODE_DPAD_LEFT : KeyEvent.KEYCODE_DPAD_RIGHT);
	                mDownResult =  true;
	            }
	            mDownResult = false;
	            return true;
	        }
    	}
        return false;
    }
    
	/**
	 * InputMethodService/onKeyUpHook hook for changing cursor by VOLBTNS
	 * @param keyCode code
	 * @param event event
	 * @return TRUE if destination method MUST return InputMethodServiceHook.mUpResult
	 */
    public static boolean onKeyUp(InputMethodService mService, int keyCode, KeyEvent event) {
    	if (mService != null) {
	        if (event.getKeyCode() == KeyEvent.KEYCODE_VOLUME_UP
	                 || keyCode == KeyEvent.KEYCODE_VOLUME_DOWN) {
	            mVolumeKeyCursorControl = Settings.System.getInt(mService.getContentResolver(),
	                    SettingsWrapper.System.VOLUME_KEY_CURSOR_CONTROL, 0);
	            if (mService.isInputViewShown() && (mVolumeKeyCursorControl != VOLUME_CURSOR_OFF)) {
	            	mUpResult = true;
	            }
	            mUpResult = false;
	            return true;
	        }
	    }
        return false;
    }
    
   private static boolean onKeyDownHook_Example(InputMethodService mService, int keyCode, KeyEvent event) {
	   if(onKeyDown(mService, keyCode, event)) {
		   return mDownResult;
	   }
	   
	   // do smth
	   return false;
   }
	
}
