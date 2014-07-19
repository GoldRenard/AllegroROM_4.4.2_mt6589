package com.android.systemui.quicksettings;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.net.Uri;
import android.os.UserHandle;
import android.os.Vibrator;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.View;

import com.goldrenard.internal.util.cm.SettingsWrapper;
import com.android.systemui.R;
import com.android.systemui.statusbar.phone.QuickSettingsController;

import java.util.ArrayList;

public class RingerModeTile extends QuickSettingsTile {
    private static final String SEPARATOR = "OV=I=XseparatorX=I=VO";

    private static final Ringer[] RINGERS = new Ringer[] {
        new Ringer(AudioManager.RINGER_MODE_SILENT, false, R.drawable.ic_qs_ring_off),
        new Ringer(AudioManager.RINGER_MODE_VIBRATE, true, R.drawable.ic_qs_vibrate_on),
        new Ringer(AudioManager.RINGER_MODE_NORMAL, false, R.drawable.ic_qs_ring_on),
        new Ringer(AudioManager.RINGER_MODE_NORMAL, true, R.drawable.ic_qs_ring_vibrate_on)
    };

    private ArrayList<Ringer> mRingers;
    private int mRingerIndex;

    private AudioManager mAudioManager;
    private Vibrator mVibrator;

    public RingerModeTile(Context context, QuickSettingsController qsc) {
        super(context, qsc);

        mRingers = new ArrayList<Ringer>();
        mAudioManager = (AudioManager) mContext.getSystemService(Context.AUDIO_SERVICE);
        mVibrator = (Vibrator) mContext.getSystemService(Context.VIBRATOR_SERVICE);

        // Tile actions
        mOnClick = new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                toggleState();
                updateResources();
            }
        };

        mOnLongClick = new View.OnLongClickListener() {
            @Override
            public boolean onLongClick(View v) {
                Intent intent = new Intent();
                intent.setClassName("com.android.settings",
                        "com.android.settings.Settings$SoundSettingsActivity");
                intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
                mContext.startActivity(intent);
                mStatusbarService.animateCollapsePanels();
                return true;
            }
        };
        qsc.registerAction(AudioManager.RINGER_MODE_CHANGED_ACTION, this);
        qsc.registerObservedContent(
                Settings.System.getUriFor(SettingsWrapper.System.EXPANDED_RING_MODE), this);
        qsc.registerObservedContent(
                Settings.System.getUriFor(Settings.System.VIBRATE_WHEN_RINGING), this);
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        updateResources();
    }

    @Override
    public void onChangeUri(ContentResolver resolver, Uri uri) {
        updateSettings();
        updateResources();
    }

    @Override
    void onPostCreate() {
        // Load the available ringer modes
        updateSettings();

        // Make sure we show the initial state correctly
        updateTile();

        super.onPostCreate();
    }

    @Override
    public void updateResources() {
        updateTile();
        super.updateResources();
    }

    private void updateTile() {
        // The title does not change
        mLabel = mContext.getString(R.string.quick_settings_ringer_normal);

        // The icon will change depending on index
        findCurrentState();
        mDrawable = RINGERS[mRingerIndex].mDrawable;
    }

    protected void toggleState() {
        Ringer r;
        do {
            mRingerIndex++;
            if (mRingerIndex >= RINGERS.length) {
                mRingerIndex = 0;
            }
            r = RINGERS[mRingerIndex];
        }  while(!mRingers.contains(r));

        // If we are setting a vibrating state, vibrate to indicate it
        if (r.mVibrateWhenRinging) {
            mVibrator.vibrate(250);
        }

        // Set the desired state
        ContentResolver resolver = mContext.getContentResolver();
        Settings.System.putIntForUser(resolver, Settings.System.VIBRATE_WHEN_RINGING,
                r.mVibrateWhenRinging ? 1 : 0, UserHandle.USER_CURRENT);
        mAudioManager.setRingerMode(r.mRingerMode);
    }

    public String[] parseStoredValue(CharSequence val) {
        if (TextUtils.isEmpty(val)) {
            return null;
        }
        return val.toString().split(SEPARATOR);
    }

    private void updateSettings() {
        String setting = Settings.System.getStringForUser(mContext.getContentResolver(),
        		SettingsWrapper.System.EXPANDED_RING_MODE, UserHandle.USER_CURRENT);
        String[] modes = parseStoredValue(setting);
        Vibrator vibrator = (Vibrator) mContext.getSystemService(Context.VIBRATOR_SERVICE);
        boolean hasVibrator = vibrator.hasVibrator();

        mRingers.clear();

        if (modes == null || modes.length == 0) {
            for (Ringer r : RINGERS) {
                if (hasVibrator || !r.mVibrateWhenRinging) {
                    mRingers.add(r);
                }
            }
        } else {
            for (int i = 0; i < modes.length; i++) {
                int index = Integer.valueOf(modes[i]);
                Ringer r = index < RINGERS.length ? RINGERS[index] : null;

                if (r != null && (hasVibrator || !r.mVibrateWhenRinging)) {
                    mRingers.add(r);
                }
            }
        }
        if (mRingers.isEmpty()) {
            mRingers.add(RINGERS[0]);
        }
    }

    private void findCurrentState() {
        boolean vibrateWhenRinging = Settings.System.getIntForUser(mContext.getContentResolver(),
                Settings.System.VIBRATE_WHEN_RINGING, 0, UserHandle.USER_CURRENT) == 1;
        int ringerMode = mAudioManager.getRingerMode();
        vibrateWhenRinging |= ringerMode == AudioManager.RINGER_MODE_VIBRATE;

        mRingerIndex = 0;

        for (int i = 0; i < RINGERS.length; i++) {
            Ringer r = RINGERS[i];
            if (ringerMode == r.mRingerMode && vibrateWhenRinging == r.mVibrateWhenRinging) {
                mRingerIndex = i;
                break;
            }
        }
    }

    private static class Ringer {
        final boolean mVibrateWhenRinging;
        final int mRingerMode;
        final int mDrawable;

        Ringer(int ringerMode, boolean vibrateWhenRinging, int drawable) {
            mVibrateWhenRinging = vibrateWhenRinging;
            mRingerMode = ringerMode;
            mDrawable = drawable;
        }
    }
}
