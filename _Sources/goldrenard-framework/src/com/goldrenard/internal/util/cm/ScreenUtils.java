package com.goldrenard.internal.util.cm;

import android.content.Context;
import android.graphics.Point;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.util.Log;
import android.view.Display;
import android.view.IWindowManager;

public class ScreenUtils {
	
    public static void setDisplaySize(String size) throws Exception {
    	IWindowManager mWm = IWindowManager.Stub.asInterface(ServiceManager.checkService(
                Context.WINDOW_SERVICE));
        int w, h;
        if (size == null || "reset".equals(size)) {
            w = h = -1;
        } else {
            int div = size.indexOf('x');
            if (div <= 0 || div >= (size.length()-1)) {
                return;
            }
            String wstr = size.substring(0, div);
            String hstr = size.substring(div+1);
            try {
                w = Integer.parseInt(wstr);
                h = Integer.parseInt(hstr);
            } catch (NumberFormatException e) {
                return;
            }
        }

        try {
            if (w >= 0 && h >= 0) {
                // TODO(multidisplay): For now Configuration only applies to main screen.
                mWm.setForcedDisplaySize(Display.DEFAULT_DISPLAY, w, h);
            } else {
                mWm.clearForcedDisplaySize(Display.DEFAULT_DISPLAY);
            }
        } catch (RemoteException e) { }
    }
    
    public static void setDisplayDensity(String densityStr) throws Exception {
    	IWindowManager mWm = IWindowManager.Stub.asInterface(ServiceManager.checkService(
                Context.WINDOW_SERVICE));
    	
        int density;
        if (densityStr == null || "reset".equals(densityStr)) {
            density = -1;
        } else {
            try {
                density = Integer.parseInt(densityStr);
            } catch (NumberFormatException e) {
                return;
            }
            if (density < 72) {
                return;
            }
        }

        try {
            if (density > 0) {
                // TODO(multidisplay): For now Configuration only applies to main screen.
                mWm.setForcedDisplayDensity(Display.DEFAULT_DISPLAY, density);
            } else {
                mWm.clearForcedDisplayDensity(Display.DEFAULT_DISPLAY);
            }
        } catch (RemoteException e) { }
    }
    
    public static void setDisplayDensityProp(String densityStr) {

    	int initialDensity = getNativeDensity();
    	Integer density = initialDensity;
        if (densityStr != null) {
            try {
                density = Integer.parseInt(densityStr);
            } catch (NumberFormatException e) {
            	density = initialDensity;
            }
            if (density < 72) {
            	density = initialDensity;
            }
        }
    	
        try {
	        Runtime.getRuntime().exec(new String[]{"su","-c","mount -o rw,remount /system"});
	    	Runtime.getRuntime().exec(new String[]{"su","-c","sed -i s/ro.sf.lcd_density=.*/ro.sf.lcd_density=" + density.toString() + "/ /system/build.prop"});
	    	Runtime.getRuntime().exec(new String[]{"su","-c","chmod 644 /system/build.prop"});
	    	Runtime.getRuntime().exec(new String[]{"su","-c","mount -o ro,remount /system"});
        }
        catch (Exception ex) {
        	Log.e("ScreenUtils", "Can't change density. Exception: " + ex.getLocalizedMessage());
        }
    }
    
    public static int getNativeDensity() {
    	IWindowManager mWm = IWindowManager.Stub.asInterface(ServiceManager.checkService(
                Context.WINDOW_SERVICE));
    	try {
    		return mWm.getInitialDisplayDensity(Display.DEFAULT_DISPLAY);
    	}
    	catch (Exception ex) {
    		return 480;
    	}
    }
    
    public static String getNativeResolution() {
    	IWindowManager mWm = IWindowManager.Stub.asInterface(ServiceManager.checkService(
                Context.WINDOW_SERVICE));
        Point initialSize = new Point(1080, 1920);
        try {
        	mWm.getInitialDisplaySize(Display.DEFAULT_DISPLAY, initialSize);
        } catch (Exception ex) { }
        return initialSize.x + "x" + initialSize.y;
    }
}
