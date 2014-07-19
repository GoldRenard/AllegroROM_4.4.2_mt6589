/*
 * Copyright (C) 2013 The CyanogenMod project
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

import android.content.Context;
import android.content.res.TypedArray;
import android.preference.CheckBoxPreference;
import android.preference.PreferenceManager;
import android.provider.Settings;
import android.util.AttributeSet;

public class SecureSettingCheckBoxPreference extends CheckBoxPreference {
	private Object mDefaultValue;
    private PreferenceManager mPreferenceManager;
	
    public SecureSettingCheckBoxPreference(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        setDefault(context, attrs, 0);
    }

    public SecureSettingCheckBoxPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        setDefault(context, attrs, 0);
    }

    public SecureSettingCheckBoxPreference(Context context) {
        super(context, null);
    }
    
    @Override
    protected boolean persistBoolean(boolean value) {
        if (shouldPersist()) {
            if (value == getPersistedBoolean(!value)) {
                // It's already there, so the same as persisting
                return true;
            }

            Settings.Secure.putInt(getContext().getContentResolver(), getKey(), value ? 1 : 0);
            return true;
        }
        return false;
    }

    @Override
    protected boolean getPersistedBoolean(boolean defaultReturnValue) {
        if (!shouldPersist()) {
            return defaultReturnValue;
        }

        return Settings.Secure.getInt(getContext().getContentResolver(),
                getKey(), defaultReturnValue ? 1 : 0) != 0;
    }

    protected boolean isPersisted() {
        // Using getString instead of getInt so we can simply check for null
        // instead of catching an exception. (All values are stored as strings.)
        return Settings.Secure.getString(getContext().getContentResolver(), getKey()) != null;
    }
    
    private void setDefault(Context context, AttributeSet attrs, int defStyle) {
    	TypedArray a = context.obtainStyledAttributes(attrs,
                com.android.internal.R.styleable.Preference, defStyle, 0);
        for (int i = a.getIndexCount(); i >= 0; i--) {
            int attr = a.getIndex(i); 
            if (attr == com.android.internal.R.styleable.Preference_defaultValue) {
            	mDefaultValue = onGetDefaultValue(a, attr);
            }
        }
        a.recycle();
    }
    
    private void dispatchSetInitialValue() {
        // By now, we know if we are persistent.
        if (!shouldPersist() || !isPersisted()) {
        	if (mDefaultValue != null) {
        		onSetInitialValue(false, mDefaultValue);
        	}
        } else {
            onSetInitialValue(true, null);
        }
    }
    
    @Override
    protected boolean shouldPersist() {
        return mPreferenceManager != null && isPersistent() && hasKey();
    }
    
    @Override
    protected void onAttachedToHierarchy(PreferenceManager preferenceManager) {
    	super.onAttachedToHierarchy(preferenceManager);
        mPreferenceManager = preferenceManager;
        dispatchSetInitialValue();
    }
}