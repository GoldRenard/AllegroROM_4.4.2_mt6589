.class public Lcom/android/settings/audioprofile/EditprofileLenovo;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EditprofileLenovo.java"


# static fields
.field public static final KEY_BOOTAUDIO:Ljava/lang/String; = "boot_audio"

.field public static final KEY_CATEGORY_NOTIFICATION:Ljava/lang/String; = "notifications"

.field public static final KEY_CATEGORY_RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final KEY_DTMF_TONE:Ljava/lang/String; = "audible_touch_tones"

.field public static final KEY_HAND_FREE:Ljava/lang/String; = "hand_free"

.field public static final KEY_HAPTIC_FEEDBACK:Ljava/lang/String; = "haptic_feedback"

.field public static final KEY_LOCK_SOUNDS:Ljava/lang/String; = "screen_lock_sounds"

.field public static final KEY_NOTIFY:Ljava/lang/String; = "notifications_ringtone"

.field public static final KEY_NO_SIM_BINDING_SMS_NOTIFI:Ljava/lang/String; = "no_sim_binding_sms_notifi_tone"

.field public static final KEY_POCKET_MODE:Ljava/lang/String; = "pocket_mode"

.field public static final KEY_RINGTONE:Ljava/lang/String; = "phone_ringtone"

.field public static final KEY_RINGTONE_2:Ljava/lang/String; = "phone_ringtone_2"

.field public static final KEY_RINGTONE_WEAKEN:Ljava/lang/String; = "ringtone_weaken"

.field public static final KEY_SIM_BINDING_RINGTONE:Ljava/lang/String; = "sim_binding_phone_ringtone"

.field public static final KEY_SIM_BINDING_RINGTONE_2:Ljava/lang/String; = "sim_binding_phone_ringtone_2"

.field public static final KEY_SMS_NOTIFI:Ljava/lang/String; = "sms_notifi_tone"

.field public static final KEY_SMS_NOTIFI_2:Ljava/lang/String; = "sms_notifi_tone_2"

.field public static final KEY_SOUND_EFFECTS:Ljava/lang/String; = "audible_selection"

.field public static final KEY_VIBRATE:Ljava/lang/String; = "phone_vibrate"

.field public static final KEY_VIDEO_RINGTONE:Ljava/lang/String; = "video_call_ringtone"

.field public static final KEY_VOLUME:Ljava/lang/String; = "ring_volume"

.field private static final TAG:Ljava/lang/String; = "Settings/EditProfile"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mBootAudio:Landroid/preference/CheckBoxPreference;

.field private mCallsPreference:Landroid/preference/PreferenceCategory;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mCurOrientation:I

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mFeedbackPreference:Landroid/preference/PreferenceCategory;

.field private mGeneralPreference:Landroid/preference/PreferenceCategory;

.field private mHandFree:Landroid/preference/CheckBoxPreference;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mIsSilentMode:Z

.field private mKey:Ljava/lang/String;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mNoSimBindingSmsNotifiTone:Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;

.field private mNotificationPreference:Landroid/preference/PreferenceCategory;

.field private mNotify:Lcom/android/settings/DefaultRingtonePreference;

.field private mPocketMode:Landroid/preference/CheckBoxPreference;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mRingtone:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

.field private mRingtoneWeaken:Landroid/preference/CheckBoxPreference;

.field private mRingtone_2:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

.field private mSMSPreference:Landroid/preference/PreferenceCategory;

.field private mSettingsObserver:Ljava/util/Observer;

.field private mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

.field private mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

.field private mSmsNotifiTone:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

.field private mSmsNotifiTone_2:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mVibrat:Landroid/preference/CheckBoxPreference;

.field private mVideoCall:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

.field private mVolume:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

.field private mVolumePref:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

.field private sIsSmsCapable:Z

.field private sIsVoiceCapable:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 121
    iput-boolean v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->sIsVoiceCapable:Z

    .line 128
    iput-boolean v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->sIsSmsCapable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/audioprofile/EditprofileLenovo;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/EditprofileLenovo;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVibrat:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/audioprofile/EditprofileLenovo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/EditprofileLenovo;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/audioprofile/EditprofileLenovo;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/EditprofileLenovo;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private initPreference(Ljava/lang/String;)V
    .locals 14
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 229
    iput-object p1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    .line 231
    const-string v9, "audioprofile"

    invoke-virtual {p0, v9}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 232
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v7

    .line 234
    .local v7, "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v9, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v7, v9}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mIsSilentMode:Z

    .line 237
    iput-boolean v11, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mIsSilentMode:Z

    .line 243
    const v9, 0x7f060025

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 246
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 248
    .local v2, "parent":Landroid/preference/PreferenceScreen;
    const-string v9, "phone_vibrate"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVibrat:Landroid/preference/CheckBoxPreference;

    .line 249
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVibrat:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_0

    .line 250
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVibrat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 251
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVibrat:Landroid/preference/CheckBoxPreference;

    iget-object v12, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v12, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationEnabled(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v9, v12}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 253
    :cond_0
    const-string v9, "audible_touch_tones"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 254
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_1

    .line 255
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 257
    iget-boolean v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mIsSilentMode:Z

    if-eqz v9, :cond_6

    .line 258
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 273
    :cond_1
    :goto_0
    const-string v9, "audible_selection"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 274
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_2

    .line 275
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 276
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    iget-object v12, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v12, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectEnabled(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v9, v12}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 277
    iget-boolean v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mIsSilentMode:Z

    if-eqz v9, :cond_2

    .line 278
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 281
    :cond_2
    const-string v9, "screen_lock_sounds"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 282
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_3

    .line 283
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 284
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mLockSounds:Landroid/preference/CheckBoxPreference;

    iget-object v12, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v12, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenEnabled(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v9, v12}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 285
    iget-boolean v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mIsSilentMode:Z

    if-eqz v9, :cond_3

    .line 286
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 289
    :cond_3
    const-string v9, "haptic_feedback"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/CheckBoxPreference;

    iput-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 290
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v9, :cond_4

    .line 291
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v9, v11}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 292
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v11, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v11, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticFeedbackEnabled(Ljava/lang/String;)Z

    move-result v11

    invoke-virtual {v9, v11}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 295
    :cond_4
    const-string v9, "ring_volume"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    iput-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVolumePref:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    .line 296
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVolumePref:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    if-eqz v9, :cond_5

    .line 297
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVolumePref:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    invoke-virtual {v9, p1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->setProfile(Ljava/lang/String;)V

    .line 298
    iget-boolean v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mIsSilentMode:Z

    if-eqz v9, :cond_5

    .line 299
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVolumePref:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    invoke-virtual {v2, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 303
    :cond_5
    const-string v9, "ringtone"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 304
    .local v4, "parentRingtone":Landroid/preference/PreferenceGroup;
    const-string v9, "notifications"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 305
    .local v3, "parentNotify":Landroid/preference/PreferenceGroup;
    iget-boolean v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mIsSilentMode:Z

    if-eqz v9, :cond_9

    .line 307
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 308
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 370
    :goto_1
    return-void

    .line 262
    .end local v3    # "parentNotify":Landroid/preference/PreferenceGroup;
    .end local v4    # "parentRingtone":Landroid/preference/PreferenceGroup;
    :cond_6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "dtmf_tone"

    invoke-static {v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 263
    .local v1, "enable":I
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v9, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->isActive(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 264
    iget-object v12, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v13, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    if-ne v1, v10, :cond_8

    move v9, v10

    :goto_2
    invoke-virtual {v12, v13, v9}, Lcom/mediatek/audioprofile/AudioProfileManager;->setDtmfToneEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v1    # "enable":I
    :cond_7
    :goto_3
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    iget-object v12, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v12, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneEnabled(Ljava/lang/String;)Z

    move-result v12

    invoke-virtual {v9, v12}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    .restart local v1    # "enable":I
    :cond_8
    move v9, v11

    .line 264
    goto :goto_2

    .line 266
    .end local v1    # "enable":I
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 319
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "parentNotify":Landroid/preference/PreferenceGroup;
    .restart local v4    # "parentRingtone":Landroid/preference/PreferenceGroup;
    :cond_9
    iget-boolean v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->sIsVoiceCapable:Z

    if-eqz v9, :cond_d

    .line 320
    const-string v9, "phone_ringtone"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    .line 321
    .local v5, "ringtone":Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;
    const-string v9, "phone_ringtone_2"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    .line 322
    .local v6, "ringtone_2":Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;
    const-string v9, "video_call_ringtone"

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    .line 326
    .local v8, "videoRingtone":Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;
    invoke-virtual {v4, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 336
    if-eqz v5, :cond_a

    .line 337
    const-string v9, "RING"

    invoke-virtual {v5, v9}, Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;->setStreamType(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v5, p1}, Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;->setProfile(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v5, v10}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 342
    :cond_a
    if-eqz v6, :cond_b

    .line 343
    const-string v9, "RING"

    invoke-virtual {v6, v9}, Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;->setStreamType(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v6, p1}, Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;->setProfile(Ljava/lang/String;)V

    .line 345
    const/16 v9, 0x40

    invoke-virtual {v6, v9}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 348
    :cond_b
    if-eqz v8, :cond_c

    .line 349
    const-string v9, "RING"

    invoke-virtual {v8, v9}, Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;->setStreamType(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v8, p1}, Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;->setProfile(Ljava/lang/String;)V

    .line 352
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 364
    .end local v5    # "ringtone":Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;
    .end local v6    # "ringtone_2":Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;
    .end local v8    # "videoRingtone":Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;
    :cond_c
    :goto_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    iput v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mCurOrientation:I

    .line 367
    invoke-direct {p0, p1}, Lcom/android/settings/audioprofile/EditprofileLenovo;->setupEditprofile(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 355
    :cond_d
    iget-boolean v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->sIsSmsCapable:Z

    if-eqz v9, :cond_e

    .line 356
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 357
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 359
    :cond_e
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVibrat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 360
    iget-object v9, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v9}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 361
    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4
.end method

.method private isSmsCapable()Z
    .locals 2

    .prologue
    .line 130
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 131
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->sIsSmsCapable:Z

    .line 132
    iget-boolean v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->sIsSmsCapable:Z

    return v1

    .line 131
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isVoiceCapable()Z
    .locals 2

    .prologue
    .line 123
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 124
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->sIsVoiceCapable:Z

    .line 125
    iget-boolean v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->sIsVoiceCapable:Z

    return v1

    .line 124
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setPreferenceHide(Z)V
    .locals 2
    .param p1, "bHide"    # Z

    .prologue
    .line 516
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 518
    .local v0, "parent":Landroid/preference/PreferenceScreen;
    if-eqz p1, :cond_c

    if-eqz v0, :cond_c

    .line 520
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mGeneralPreference:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_3

    .line 522
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVibrat:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVibrat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 526
    :cond_0
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mBootAudio:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mBootAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 530
    :cond_1
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVolume:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    if-eqz v1, :cond_2

    .line 532
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVolume:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 534
    :cond_2
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mGeneralPreference:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 536
    :cond_3
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mCallsPreference:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_7

    .line 538
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtone:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    if-eqz v1, :cond_4

    .line 540
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtone:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 542
    :cond_4
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mPocketMode:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    .line 544
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mPocketMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 546
    :cond_5
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtoneWeaken:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_6

    .line 548
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtoneWeaken:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 550
    :cond_6
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mCallsPreference:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 553
    :cond_7
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSMSPreference:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSmsNotifiTone:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    if-eqz v1, :cond_8

    .line 555
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSmsNotifiTone:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 556
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSMSPreference:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 558
    :cond_8
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mNotificationPreference:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mNotify:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v1, :cond_9

    .line 560
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mNotify:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 561
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mNotificationPreference:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 563
    :cond_9
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mFeedbackPreference:Landroid/preference/PreferenceCategory;

    if-eqz v1, :cond_c

    .line 565
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_a

    .line 567
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 569
    :cond_a
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_b

    .line 571
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 573
    :cond_b
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_c

    .line 575
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 579
    :cond_c
    return-void
.end method

.method private setSupportSimBinding(Z)V
    .locals 2
    .param p1, "bSupportSimBinding"    # Z

    .prologue
    .line 782
    if-eqz p1, :cond_3

    .line 784
    iget-object v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtone:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mCallsPreference:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtone:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 788
    :cond_0
    iget-object v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtone_2:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    if-eqz v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mCallsPreference:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtone_2:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 793
    :cond_1
    iget-object v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSmsNotifiTone:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    if-eqz v0, :cond_2

    .line 794
    iget-object v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSMSPreference:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSmsNotifiTone:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 797
    :cond_2
    iget-object v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSmsNotifiTone_2:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    if-eqz v0, :cond_3

    .line 798
    iget-object v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSMSPreference:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSmsNotifiTone_2:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 810
    :cond_3
    return-void
.end method

.method private setupEditprofile(Ljava/lang/String;)V
    .locals 11
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/16 v10, 0x40

    const/16 v7, 0x20

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 584
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 586
    .local v0, "parent":Landroid/preference/PreferenceScreen;
    const-string v5, "boot_audio"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mBootAudio:Landroid/preference/CheckBoxPreference;

    .line 587
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mBootAudio:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_0

    .line 588
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mBootAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 589
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mBootAudio:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v6, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getBootAudioEnabled(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 591
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mBootAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 595
    :cond_0
    const-string v5, "phone_vibrate"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVibrat:Landroid/preference/CheckBoxPreference;

    .line 596
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVibrat:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_1

    .line 597
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVibrat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 598
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVibrat:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v6, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationEnabled(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 600
    :cond_1
    const-string v5, "audible_touch_tones"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 601
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_2

    .line 602
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 603
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v6, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneEnabled(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 604
    iget-boolean v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mIsSilentMode:Z

    if-eqz v5, :cond_2

    .line 605
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 608
    :cond_2
    const-string v5, "audible_selection"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 609
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_3

    .line 610
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 611
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v6, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectEnabled(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 612
    iget-boolean v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mIsSilentMode:Z

    if-eqz v5, :cond_3

    .line 613
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 616
    :cond_3
    const-string v5, "screen_lock_sounds"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 617
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_4

    .line 618
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 619
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mLockSounds:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v6, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenEnabled(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 620
    iget-boolean v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mIsSilentMode:Z

    if-eqz v5, :cond_4

    .line 621
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 625
    :cond_4
    const-string v5, "general"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mGeneralPreference:Landroid/preference/PreferenceCategory;

    .line 626
    const-string v5, "ringtone"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mCallsPreference:Landroid/preference/PreferenceCategory;

    .line 627
    const-string v5, "notifications_sms"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSMSPreference:Landroid/preference/PreferenceCategory;

    .line 628
    const-string v5, "notifications"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mNotificationPreference:Landroid/preference/PreferenceCategory;

    .line 629
    const-string v5, "feedback"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mFeedbackPreference:Landroid/preference/PreferenceCategory;

    .line 631
    const-string v5, "pocket_mode"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mPocketMode:Landroid/preference/CheckBoxPreference;

    .line 632
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mPocketMode:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_7

    .line 633
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mPocketMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 634
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mPocketMode:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v6, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getPocketModeEnabled(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 635
    iget-boolean v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mIsSilentMode:Z

    if-eqz v5, :cond_5

    .line 636
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mPocketMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 638
    :cond_5
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->OUTDOOR:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-static {v5}, Lcom/mediatek/audioprofile/AudioProfileManager;->getProfileKey(Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mCallsPreference:Landroid/preference/PreferenceCategory;

    if-eqz v5, :cond_6

    .line 639
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mCallsPreference:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mPocketMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 643
    :cond_6
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mCallsPreference:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mPocketMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 647
    :cond_7
    const-string v5, "ringtone_weaken"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtoneWeaken:Landroid/preference/CheckBoxPreference;

    .line 648
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtoneWeaken:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_9

    .line 649
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtoneWeaken:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 650
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtoneWeaken:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v6, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getRingtoneWeakenEnabled(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 651
    iget-boolean v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mIsSilentMode:Z

    if-eqz v5, :cond_8

    .line 652
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtoneWeaken:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 656
    :cond_8
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mCallsPreference:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtoneWeaken:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 660
    :cond_9
    const-string v5, "haptic_feedback"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 661
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_a

    .line 662
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 663
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v6, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v6, p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticFeedbackEnabled(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 665
    :cond_a
    const-string v5, "notifications_ringtone"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/DefaultRingtonePreference;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mNotify:Lcom/android/settings/DefaultRingtonePreference;

    .line 666
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mNotify:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v5, :cond_b

    .line 670
    :cond_b
    const-string v5, "phone_ringtone"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtone:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    .line 671
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtone:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    if-eqz v5, :cond_c

    .line 672
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtone:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    invoke-virtual {v5, p1}, Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;->setProfile(Ljava/lang/String;)V

    .line 673
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtone:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    invoke-virtual {v5, v9}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 676
    :cond_c
    const-string v5, "phone_ringtone_2"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtone_2:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    .line 677
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtone_2:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    if-eqz v5, :cond_d

    .line 678
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtone_2:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    invoke-virtual {v5, p1}, Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;->setProfile(Ljava/lang/String;)V

    .line 679
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtone_2:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    invoke-virtual {v5, v10}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 682
    :cond_d
    const-string v5, "sim_binding_phone_ringtone"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    .line 683
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    if-eqz v5, :cond_e

    .line 684
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    invoke-virtual {v5, v9}, Lcom/android/settings/audioprofile/SimBindingRingtonePreference;->setRingtoneType(I)V

    .line 687
    :cond_e
    const-string v5, "sim_binding_phone_ringtone_2"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    .line 688
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    if-eqz v5, :cond_f

    .line 689
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    invoke-virtual {v5, v10}, Lcom/android/settings/audioprofile/SimBindingRingtonePreference;->setRingtoneType(I)V

    .line 692
    :cond_f
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    if-eqz v5, :cond_10

    .line 696
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mCallsPreference:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 698
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    const v6, 0x7f09010d

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 709
    :cond_10
    const-string v5, "video_call_ringtone"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVideoCall:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    .line 710
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVideoCall:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    if-eqz v5, :cond_11

    .line 711
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVideoCall:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    invoke-virtual {v5, p1}, Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;->setProfile(Ljava/lang/String;)V

    .line 712
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVideoCall:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 715
    :cond_11
    const-string v5, "sms_notifi_tone"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSmsNotifiTone:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    .line 716
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSmsNotifiTone:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    if-eqz v5, :cond_12

    .line 717
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSmsNotifiTone:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    invoke-virtual {v5, p1}, Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;->setProfile(Ljava/lang/String;)V

    .line 718
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSmsNotifiTone:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    const-string v6, "RING"

    invoke-virtual {v5, v6}, Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;->setStreamType(Ljava/lang/String;)V

    .line 719
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSmsNotifiTone:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    invoke-virtual {v5, v7}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 722
    :cond_12
    const-string v5, "sms_notifi_tone_2"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSmsNotifiTone_2:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    .line 723
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSmsNotifiTone_2:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    if-eqz v5, :cond_13

    .line 724
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSmsNotifiTone_2:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    invoke-virtual {v5, p1}, Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;->setProfile(Ljava/lang/String;)V

    .line 725
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSmsNotifiTone_2:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    const-string v6, "RING"

    invoke-virtual {v5, v6}, Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;->setStreamType(Ljava/lang/String;)V

    .line 726
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSmsNotifiTone_2:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 729
    :cond_13
    const-string v5, "no_sim_binding_sms_notifi_tone"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mNoSimBindingSmsNotifiTone:Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;

    .line 730
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mNoSimBindingSmsNotifiTone:Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;

    if-eqz v5, :cond_14

    .line 731
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mNoSimBindingSmsNotifiTone:Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;

    invoke-virtual {v5, v7}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 734
    :cond_14
    const-string v5, "ring_volume"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    iput-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVolume:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    .line 735
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVolume:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    if-eqz v5, :cond_15

    .line 736
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVolume:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    invoke-virtual {v5, p1}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->setProfile(Ljava/lang/String;)V

    .line 737
    iget-boolean v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mIsSilentMode:Z

    if-eqz v5, :cond_15

    .line 738
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVolume:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 742
    :cond_15
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVideoCall:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mCallsPreference:Landroid/preference/PreferenceCategory;

    if-eqz v5, :cond_16

    .line 743
    iget-object v5, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mCallsPreference:Landroid/preference/PreferenceCategory;

    iget-object v6, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVideoCall:Lcom/android/settings/audioprofile/DefaultRingtonePreferenceLenovo;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 745
    :cond_16
    invoke-static {p1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v3

    .line 748
    .local v3, "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    const/4 v1, 0x0

    .line 749
    .local v1, "profileTitle":Ljava/lang/String;
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->CUSTOM:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 756
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09011c

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 757
    .local v4, "title":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 760
    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    sget-object v5, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v3, v5}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 761
    :cond_17
    invoke-direct {p0, v9}, Lcom/android/settings/audioprofile/EditprofileLenovo;->setPreferenceHide(Z)V

    .line 764
    :cond_18
    invoke-direct {p0, v9}, Lcom/android/settings/audioprofile/EditprofileLenovo;->setSupportSimBinding(Z)V

    .line 765
    return-void

    .line 752
    .end local v4    # "title":Ljava/lang/String;
    :cond_19
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a009d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 753
    .local v2, "profileTitles":[Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget-object v1, v2, v5

    goto :goto_0
.end method

.method private updatePreference()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 390
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->isActive(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dtmf_tone"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 392
    .local v1, "enable":I
    iget-object v3, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    if-ne v1, v2, :cond_1

    :goto_0
    invoke-virtual {v3, v4, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->setDtmfToneEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    .end local v1    # "enable":I
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVibrat:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationEnabled(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 399
    iget-object v2, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneEnabled(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 400
    iget-object v2, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectEnabled(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 401
    iget-object v2, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mLockSounds:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenEnabled(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 402
    iget-object v2, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v4, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticFeedbackEnabled(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 404
    return-void

    .line 392
    .restart local v1    # "enable":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 394
    .end local v1    # "enable":I
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 502
    const-string v0, "Settings/EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mCurOrientation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mCurOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 505
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mCurOrientation:I

    if-eq v0, v1, :cond_0

    .line 506
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mCurOrientation:I

    .line 510
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearScrapViewsIfNeeded()V

    .line 511
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    invoke-direct {p0}, Lcom/android/settings/audioprofile/EditprofileLenovo;->isSmsCapable()Z

    .line 147
    invoke-direct {p0}, Lcom/android/settings/audioprofile/EditprofileLenovo;->isVoiceCapable()Z

    .line 150
    const-string v6, "audio"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    iput-object v6, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mAudioManager:Landroid/media/AudioManager;

    .line 152
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceActivity;

    .line 153
    .local v4, "parentActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    const/4 v5, 0x1

    .line 156
    .local v5, "singlePane":Z
    :goto_0
    if-eqz v5, :cond_3

    .line 157
    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, ":android:show_fragment_args"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 162
    .local v1, "bundle":Landroid/os/Bundle;
    :goto_1
    const-string v6, "Settings/EditProfile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate activity = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",singlePane = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",bundle = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",this = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string v6, "profileKey"

    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "key":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/settings/audioprofile/EditprofileLenovo;->initPreference(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 171
    .local v0, "activity":Landroid/app/Activity;
    instance-of v6, v0, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo$EditprofileActivity;

    if-eqz v6, :cond_1

    move-object v2, v0

    .line 172
    check-cast v2, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo$EditprofileActivity;

    .line 175
    .local v2, "editprofileActivity":Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo$EditprofileActivity;
    iput-object p0, v2, Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo$EditprofileActivity;->mEditprofileLenovo:Lcom/android/settings/audioprofile/EditprofileLenovo;

    .line 178
    .end local v2    # "editprofileActivity":Lcom/android/settings/audioprofile/AudioProfileSettingsLenovo$EditprofileActivity;
    :cond_1
    return-void

    .line 153
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "singlePane":Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 160
    .restart local v5    # "singlePane":Z
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "bundle":Landroid/os/Bundle;
    goto :goto_1
.end method

.method public onNewIntent(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 769
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 770
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 771
    .local v0, "parent":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_1

    .line 772
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 774
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/audioprofile/EditprofileLenovo;->initPreference(Ljava/lang/String;)V

    .line 777
    .end local v0    # "parent":Landroid/preference/PreferenceScreen;
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 206
    const-string v0, "Settings/EditProfile"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVolumePref:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "Settings/EditProfile"

    const-string v1, "pref is not null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVolumePref:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    invoke-virtual {v0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVolumePref:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    invoke-virtual {v0}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 223
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 451
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVibrat:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_2

    .line 452
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mVibrat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 453
    .local v0, "isVibrate":Z
    const-string v1, "Settings/EditProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set vibrate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->setVibrationEnabled(Ljava/lang/String;Z)V

    .line 457
    iget-boolean v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mIsSilentMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    invoke-virtual {v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    if-eqz v0, :cond_1

    .line 459
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 491
    .end local v0    # "isVibrate":Z
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 461
    .restart local v0    # "isVibrate":Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 466
    .end local v0    # "isVibrate":Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_3

    .line 467
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setDtmfToneEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 470
    :cond_3
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mBootAudio:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_4

    .line 471
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mBootAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setBootAudioEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 472
    :cond_4
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mPocketMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_5

    .line 473
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mPocketMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setPocketModeEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 474
    :cond_5
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtoneWeaken:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_6

    .line 475
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mRingtoneWeaken:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setRingtoneWeakenEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 479
    :cond_6
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mHandFree:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_7

    .line 480
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mHandFree:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setHandFreeEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 483
    :cond_7
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_8

    .line 484
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setSoundEffectEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 485
    :cond_8
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_9

    .line 486
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setLockScreenEnabled(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 487
    :cond_9
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v1, :cond_0

    .line 488
    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setHapticFeedbackEnabled(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 411
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 413
    invoke-direct {p0}, Lcom/android/settings/audioprofile/EditprofileLenovo;->updatePreference()V

    .line 415
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mIsSilentMode:Z

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSettingsObserver:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 417
    new-instance v0, Lcom/android/settings/audioprofile/EditprofileLenovo$1;

    invoke-direct {v0, p0}, Lcom/android/settings/audioprofile/EditprofileLenovo$1;-><init>(Lcom/android/settings/audioprofile/EditprofileLenovo;)V

    iput-object v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSettingsObserver:Ljava/util/Observer;

    .line 436
    iget-object v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 439
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 189
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mKey:Ljava/lang/String;

    invoke-static {v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 195
    .local v6, "settingsCursor":Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 196
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 376
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 379
    iget-object v0, p0, Lcom/android/settings/audioprofile/EditprofileLenovo;->mContentQueryMap:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->close()V

    .line 381
    return-void
.end method
