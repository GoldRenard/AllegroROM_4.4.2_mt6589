package com.goldrenard.hooks;

import com.goldrenard.internal.util.cm.ScreenUtils;
import com.goldrenard.internal.util.cm.SettingsWrapper;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Point;
import android.net.Uri;
import android.os.Handler;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;
import android.view.Display;
import android.view.IWindowManager;
import android.widget.Toast;

/**
 * Хук для работы ADB в режиме Wireless
 * @author Renard Gold (Илья Егоров)
 * Необходимо вызвать этот хук из com.android.server.ServerThread.initAndLoop()
 */
public final class SystemServerHook {
	
	
	private static final String TAG = "SystemServerHook";
	private static ContentResolver mContentResolver;
	private static String SCREEN_RESOLUTION = "screen_resolution";
	
    static class SettingsObserver extends ContentObserver {
    	private Uri SCREEN_RESOLUTION_URI;
    	private Uri ADB_URI;
    	
        SettingsObserver(Handler handler) {
            super(handler);
            SCREEN_RESOLUTION_URI = Settings.Secure.getUriFor(SCREEN_RESOLUTION);
            ADB_URI = Settings.Secure.getUriFor(SettingsWrapper.Secure.ADB_PORT);
        }
 
        public void observe() {
        	Log.d(TAG, "Starting observe settings...");
        	mContentResolver.registerContentObserver(SCREEN_RESOLUTION_URI, false, this);
        	mContentResolver.registerContentObserver(ADB_URI, false, this);
        }

        @Override
        public void onChange(boolean selfChange, Uri uri) {
        	Log.d(TAG, "SettingsObserver$onChange called");
        	if (uri != null) {
        		if (uri.equals(SCREEN_RESOLUTION_URI)) {
					String resolution = Settings.Secure.getString(mContentResolver, SCREEN_RESOLUTION);
					if (resolution == null) {
						resolution = ScreenUtils.getNativeResolution() + "|" + ScreenUtils.getNativeDensity();
					}
					 
					String[] screenInfo = resolution.split("\\|");
					 
					Log.d(TAG, "Update resolution=" + screenInfo[0] + ", density=" + screenInfo[1]);
					
					try {
						ScreenUtils.setDisplaySize(screenInfo[0]);
						ScreenUtils.setDisplayDensity(screenInfo[1]);
						
						// Move that call to the CMSettings context (due to ROOT permission)
						//ScreenUtils.setDisplayDensityProp(screenInfo[1]);
					}
					catch (Exception ex) {
						Log.e(TAG, "Can't set new screen resolution");
					}
        		} else if (uri.equals(ADB_URI)) {
        			int adbPort = Settings.Secure.getInt(mContentResolver, "adb_port", -1);
        			SystemProperties.set("service.adb.tcp.port", Integer.toString(adbPort));
        			
        			int adbEnabled = Settings.Secure.getInt(mContentResolver, Settings.Secure.ADB_ENABLED, 0);
        			if (adbEnabled != 0) {
	        			Settings.Secure.putInt(mContentResolver, Settings.Secure.ADB_ENABLED, 0);
	        			Settings.Secure.putInt(mContentResolver, Settings.Secure.ADB_ENABLED, adbEnabled);
        			}
        		}
        	}
        }
    }
    
    public static void initAndLoop(ContentResolver cr) {
    	mContentResolver = cr;
    	
    	Log.d(TAG, "Entered to hook...");
    	
        // make sure the ADB_ENABLED setting value matches the secure property value
        Settings.Secure.putInt(mContentResolver, SettingsWrapper.Secure.ADB_PORT,
                Integer.parseInt(SystemProperties.get("service.adb.tcp.port", "-1")));
        
        SettingsObserver observer = new SettingsObserver(new Handler());
        observer.observe();
    }

}
