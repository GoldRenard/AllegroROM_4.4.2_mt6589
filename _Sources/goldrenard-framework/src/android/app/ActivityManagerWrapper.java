package android.app;

import android.content.ContentResolver;
import android.provider.Settings;

public final class ActivityManagerWrapper {
    public static final int RECENT_DO_NOT_COUNT_EXCLUDED = 0x0004;
	public static boolean isHighEndGfx(ContentResolver resolver) {
		return Settings.Secure.getInt(resolver, "low_graphic_force", 0) != 0
				? false : ActivityManager.isHighEndGfx();
	}
}
