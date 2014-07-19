package com.goldrenard.internal.util.cm;

public final class ResourcesWrapper {
	public static String getKeyguardPackage() {
		//return context.getString(com.android.internal.R.string.config_keyguardPackage)
		return "com.android.keyguard";
	}
	
	public static String getKeyguardService() {
		//context.getString(com.android.internal.R.string.config_keyguardService);
		return "com.android.keyguard.KeyguardService";
	}
}
