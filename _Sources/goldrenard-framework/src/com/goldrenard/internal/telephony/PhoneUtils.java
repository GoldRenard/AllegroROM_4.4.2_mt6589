package com.goldrenard.internal.telephony;

import java.lang.reflect.Method;

import android.telephony.TelephonyManager;

public final class PhoneUtils {
	
	public interface RILConstants {
	    public static int NETWORK_MODE_LTE_CDMA_EVDO  = 8; /* LTE, CDMA and EvDo */
	    public static int NETWORK_MODE_LTE_GSM_WCDMA  = 9; /* LTE, GSM/WCDMA */
	    public static int NETWORK_MODE_LTE_CMDA_EVDO_GSM_WCDMA = 10; /* LTE, CDMA, EvDo, GSM/WCDMA */
	    public static int NETWORK_MODE_LTE_ONLY       = 11; /* LTE Only mode. */
	    public static int NETWORK_MODE_LTE_WCDMA      = 12; /* LTE/WCDMA */
	    public static int NETWORK_MODE_TD_SCDMA_ONLY            = 13; /* TD-SCDMA only */
	    public static int NETWORK_MODE_TD_SCDMA_WCDMA           = 14; /* TD-SCDMA and WCDMA */
	    public static int NETWORK_MODE_TD_SCDMA_LTE             = 15; /* TD-SCDMA and LTE */
	    public static int NETWORK_MODE_TD_SCDMA_GSM             = 16; /* TD-SCDMA and GSM */
	    public static int NETWORK_MODE_TD_SCDMA_GSM_LTE         = 17; /* TD-SCDMA,GSM and LTE */
	    public static int NETWORK_MODE_TD_SCDMA_GSM_WCDMA       = 18; /* TD-SCDMA, GSM/WCDMA */
	    public static int NETWORK_MODE_TD_SCDMA_WCDMA_LTE       = 19; /* TD-SCDMA, WCDMA and LTE */
	    public static int NETWORK_MODE_TD_SCDMA_GSM_WCDMA_LTE   = 20; /* TD-SCDMA, GSM/WCDMA and LTE */
		
	}
	
    public static final int NT_MODE_LTE_CDMA_AND_EVDO        = RILConstants.NETWORK_MODE_LTE_CDMA_EVDO;
    public static final int NT_MODE_LTE_GSM_WCDMA            = RILConstants.NETWORK_MODE_LTE_GSM_WCDMA;
    public static final int NT_MODE_LTE_CMDA_EVDO_GSM_WCDMA  = RILConstants.NETWORK_MODE_LTE_CMDA_EVDO_GSM_WCDMA;
    public static final int NT_MODE_LTE_ONLY                 = RILConstants.NETWORK_MODE_LTE_ONLY;
    public static final int NT_MODE_LTE_WCDMA                = RILConstants.NETWORK_MODE_LTE_WCDMA;
    public static final int NT_MODE_TD_SCDMA_GSM_WCDMA_LTE   = RILConstants.NETWORK_MODE_TD_SCDMA_GSM_WCDMA_LTE;
    public static final int NT_MODE_TD_SCDMA_WCDMA_LTE       = RILConstants.NETWORK_MODE_TD_SCDMA_WCDMA_LTE;
    
    
    public static void toggleLTE(TelephonyManager tm, boolean toggle) {
    	try {
	    	Method m = TelephonyManager.class.getMethod("toggleLTE",new Class[] { Boolean.class });
	    	m.invoke(null, toggle);
    	} catch (Exception ex) { }
    }
}
