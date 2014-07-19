/*
 * Copyright (C) 2012 CyanogenMod
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.cyanogenmod.settings;

import android.content.ContentResolver;
import android.os.Bundle;
import android.os.UserHandle;
import android.os.UserManager;
import android.preference.Preference;
import android.preference.PreferenceActivity;
import android.preference.PreferenceScreen;
import android.provider.Settings;

import com.cyanogenmod.settings.R;
import com.cyanogenmod.settings.SettingsPreferenceFragment;
import com.goldrenard.internal.util.cm.SettingsWrapper;

public class PowerMenu extends SettingsPreferenceFragment {
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        addPreferencesFromResource(R.xml.power_menu_settings);

        final ContentResolver resolver = getContentResolver();

        // Only enable expanded desktop item if expanded desktop support is also enabled
        findPreference(SettingsWrapper.System.POWER_MENU_EXPANDED_DESKTOP_ENABLED).setEnabled(
                Settings.System.getInt(resolver, SettingsWrapper.System.EXPANDED_DESKTOP_STYLE, 0) != 0);

        // Only enable profiles item if System Profiles are also enabled
        findPreference(SettingsWrapper.System.POWER_MENU_PROFILES_ENABLED).setEnabled(
                Settings.System.getInt(resolver, SettingsWrapper.System.SYSTEM_PROFILES_ENABLED, 1) != 0);

        if (!UserHandle.MU_ENABLED || !UserManager.supportsMultipleUsers()) {
            getPreferenceScreen().removePreference(
                    findPreference(SettingsWrapper.System.POWER_MENU_USER_ENABLED));
        }
        
        if (Utils.hideUnsupportedFeatures()) {
        	removePreference(SettingsWrapper.System.POWER_MENU_EXPANDED_DESKTOP_ENABLED);
        	removePreference(SettingsWrapper.System.POWER_MENU_PROFILES_ENABLED);
        }
    }
    
    public void removePreference(String key) {
    	Preference pref = findPreference(key);
    	if (pref != null) {
    		getPreferenceScreen().removePreference(pref);
    	}
    }
}
