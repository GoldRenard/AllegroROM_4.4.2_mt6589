.class public Lcom/mediatek/audioprofile/Editprofile;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Editprofile.java"


# static fields
.field public static final CONFIRM_FOR_SIM_SLOT_ID_REQUEST:I = 0x7c

.field public static final KEY_CATEGORY_NOTIFICATION:Ljava/lang/String; = "notifications"

.field public static final KEY_CATEGORY_RINGTONE:Ljava/lang/String; = "ringtone"

.field public static final KEY_DTMF_TONE:Ljava/lang/String; = "audible_touch_tones"

.field public static final KEY_HAPTIC_FEEDBACK:Ljava/lang/String; = "haptic_feedback"

.field public static final KEY_LOCK_SOUNDS:Ljava/lang/String; = "screen_lock_sounds"

.field public static final KEY_NOTIFY:Ljava/lang/String; = "notifications_ringtone"

.field public static final KEY_RINGTONE:Ljava/lang/String; = "phone_ringtone"

.field public static final KEY_SIP_RINGTONE:Ljava/lang/String; = "sip_call_ringtone"

.field public static final KEY_SOUND_EFFECTS:Ljava/lang/String; = "audible_selection"

.field public static final KEY_VIBRATE:Ljava/lang/String; = "phone_vibrate"

.field public static final KEY_VIDEO_RINGTONE:Ljava/lang/String; = "video_call_ringtone"

.field public static final KEY_VOLUME:Ljava/lang/String; = "ring_volume"

.field public static final RINGTONE_INDEX:I = 0x1

.field private static final SINGLE_SIMCARD:I = 0x1

.field public static final SIP_RINGTONE_INDEX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Settings/EditProfile"

.field public static final VIDEO_RINGTONE_INDEX:I = 0x2


# instance fields
.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mCurOrientation:I

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mIsMeetingMode:Z

.field private mIsSilentMode:Z

.field private mKey:Ljava/lang/String;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

.field private mSIMSelectorTitle:Ljava/lang/String;

.field private mSelectRingtongType:I

.field private mSettingsCursor:Landroid/database/Cursor;

.field private mSettingsObserver:Ljava/util/Observer;

.field private mSimId:J

.field private mSipRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mTeleManager:Landroid/telephony/TelephonyManager;

.field private mVibrat:Landroid/preference/CheckBoxPreference;

.field private mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

.field private mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

.field private mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 104
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSimId:J

    .line 112
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSelectRingtongType:I

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/audioprofile/Editprofile;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/Editprofile;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/audioprofile/Editprofile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/Editprofile;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/audioprofile/Editprofile;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/audioprofile/Editprofile;

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private initPreference()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 221
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 223
    .local v1, "parent":Landroid/preference/PreferenceScreen;
    const-string v4, "phone_vibrate"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    .line 224
    const-string v4, "audible_touch_tones"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 225
    const-string v4, "audible_selection"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 226
    const-string v4, "screen_lock_sounds"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 227
    const-string v4, "haptic_feedback"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 228
    const-string v4, "ring_volume"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/mediatek/audioprofile/RingerVolumePreference;

    iput-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    .line 229
    const-string v4, "ringtone"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceGroup;

    .line 230
    .local v3, "parentRingtone":Landroid/preference/PreferenceGroup;
    const-string v4, "notifications"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 231
    .local v2, "parentNotify":Landroid/preference/PreferenceGroup;
    const-string v4, "notifications_ringtone"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    .line 235
    .local v0, "notify":Lcom/mediatek/audioprofile/DefaultRingtonePreference;
    iget-boolean v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsSilentMode:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsMeetingMode:Z

    if-eqz v4, :cond_2

    .line 236
    :cond_0
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 237
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 238
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 239
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 240
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 241
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 242
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 313
    :cond_1
    :goto_0
    return-void

    .line 246
    :cond_2
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    if-eqz v4, :cond_3

    .line 247
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    iget-object v5, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mediatek/audioprofile/RingerVolumePreference;->setProfile(Ljava/lang/String;)V

    .line 250
    :cond_3
    if-eqz v0, :cond_4

    .line 251
    const-string v4, "NOTIFICATION"

    invoke-virtual {v0, v4}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setStreamType(Ljava/lang/String;)V

    .line 252
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setProfile(Ljava/lang/String;)V

    .line 253
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 254
    invoke-virtual {v0, v6}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setmNoNeedSIMSelector(Z)V

    .line 257
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->isVoiceCapable()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 258
    const-string v4, "phone_ringtone"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iput-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    .line 260
    const-string v4, "video_call_ringtone"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iput-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    .line 262
    const-string v4, "sip_call_ringtone"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iput-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mSipRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    .line 273
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mSipRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 285
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    if-eqz v4, :cond_5

    .line 286
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const-string v5, "RING"

    invoke-virtual {v4, v5}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setStreamType(Ljava/lang/String;)V

    .line 288
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iget-object v5, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setProfile(Ljava/lang/String;)V

    .line 289
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v4, v6}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 292
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v4, v6}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setmNoNeedSIMSelector(Z)V

    .line 296
    :cond_5
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    if-eqz v4, :cond_1

    .line 297
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const-string v5, "RING"

    invoke-virtual {v4, v5}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setStreamType(Ljava/lang/String;)V

    .line 299
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    iget-object v5, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setProfile(Ljava/lang/String;)V

    .line 300
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 303
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v4, v6}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setmNoNeedSIMSelector(Z)V

    goto/16 :goto_0

    .line 307
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->isSmsCapable()Z

    move-result v4

    if-nez v4, :cond_7

    .line 308
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 310
    :cond_7
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 311
    invoke-virtual {v1, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0
.end method

.method private isSmsCapable()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVoiceCapable()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setRingtoneSIMId(J)V
    .locals 1
    .param p1, "simId"    # J

    .prologue
    .line 463
    iget v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSelectRingtongType:I

    packed-switch v0, :pswitch_data_0

    .line 475
    :goto_0
    return-void

    .line 465
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setSimId(J)V

    .line 466
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->simSelectorOnClick()V

    goto :goto_0

    .line 469
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->setSimId(J)V

    .line 470
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/DefaultRingtonePreference;->simSelectorOnClick()V

    goto :goto_0

    .line 463
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setRingtoneType(I)V
    .locals 2
    .param p1, "keyIndex"    # I

    .prologue
    .line 414
    packed-switch p1, :pswitch_data_0

    .line 424
    :goto_0
    return-void

    .line 416
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVoiceRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    goto :goto_0

    .line 419
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVideoRingtone:Lcom/mediatek/audioprofile/DefaultRingtonePreference;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    goto :goto_0

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setRingtongTypeAndStartSIMSelector(I)V
    .locals 3
    .param p1, "keyIndex"    # I

    .prologue
    .line 398
    const-string v0, "Settings/EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected ringtone type index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return-void
.end method

.method private startSIMCardSelectorActivity()V
    .locals 2

    .prologue
    .line 427
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 428
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.mediatek.gemini.action.SELECT_SIM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const/16 v1, 0x1e61

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 430
    return-void
.end method

.method private updatePreference()V
    .locals 3

    .prologue
    .line 319
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 320
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getDtmfToneEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 321
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getSoundEffectEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 322
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getLockScreenEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 323
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mediatek/audioprofile/AudioProfileManager;->getHapticFeedbackEnabled(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 325
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 451
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 452
    const-string v0, "Settings/EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult requestCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "resultCode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/16 v0, 0x1e61

    if-ne p1, v0, :cond_1

    .line 454
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 455
    const-string v0, "simid"

    const-wide/16 v1, -0x1

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSimId:J

    .line 456
    iget-wide v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSimId:J

    invoke-direct {p0, v0, v1}, Lcom/mediatek/audioprofile/Editprofile;->setRingtoneSIMId(J)V

    .line 458
    :cond_0
    const-string v0, "Settings/EditProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Select SIM id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mSimId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 440
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

    iget v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mCurOrientation:I

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

    .line 442
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 443
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mCurOrientation:I

    if-eq v0, v1, :cond_0

    .line 444
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mCurOrientation:I

    .line 446
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearScrapViewsIfNeeded()V

    .line 447
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v4, 0x7f06001e

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 131
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 133
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 134
    .local v1, "parentActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v3, 0x1

    .line 137
    .local v3, "singlePane":Z
    :goto_0
    if-eqz v3, :cond_2

    .line 138
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 143
    .local v0, "bundle":Landroid/os/Bundle;
    :goto_1
    const-string v4, "Settings/EditProfile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCreate activity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",singlePane = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",bundle = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",this = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v4, "profileKey"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    .line 148
    const-string v4, "audioprofile"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/audioprofile/AudioProfileManager;

    iput-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 149
    iget-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-static {v4}, Lcom/mediatek/audioprofile/AudioProfileManager;->getScenario(Ljava/lang/String;)Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    move-result-object v2

    .line 151
    .local v2, "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->SILENT:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsSilentMode:Z

    .line 152
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mCurOrientation:I

    .line 153
    sget-object v4, Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;->MEETING:Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;

    invoke-virtual {v2, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsMeetingMode:Z

    .line 154
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f0904fe

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/audioprofile/Editprofile;->mSIMSelectorTitle:Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->initPreference()V

    .line 157
    return-void

    .line 134
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "scenario":Lcom/mediatek/audioprofile/AudioProfileManager$Scenario;
    .end local v3    # "singlePane":Z
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 141
    .restart local v3    # "singlePane":Z
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .restart local v0    # "bundle":Landroid/os/Bundle;
    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 202
    const-string v0, "Settings/EditProfile"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "Settings/EditProfile"

    const-string v1, "pref is not null"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->stopPlaying()V

    .line 206
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mVolumePref:Lcom/mediatek/audioprofile/RingerVolumePreference;

    invoke-virtual {v0}, Lcom/mediatek/audioprofile/RingerVolumePreference;->revertVolume()V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_2

    .line 212
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    .line 215
    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 373
    const-string v1, "Settings/EditProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Key :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phone_vibrate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mVibrat:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 376
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

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->setVibrationEnabled(Ljava/lang/String;Z)V

    .line 394
    .end local v0    # "isVibrate":Z
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 378
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audible_touch_tones"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 379
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setDtmfToneEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 380
    :cond_2
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "audible_selection"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 381
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setSoundEffectEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 383
    :cond_3
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "screen_lock_sounds"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 384
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setLockScreenEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 385
    :cond_4
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "haptic_feedback"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 386
    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mProfileManager:Lcom/mediatek/audioprofile/AudioProfileManager;

    iget-object v2, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/mediatek/audioprofile/Editprofile;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/audioprofile/AudioProfileManager;->setHapticFeedbackEnabled(Ljava/lang/String;Z)V

    goto :goto_0

    .line 388
    :cond_5
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "phone_ringtone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 389
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/Editprofile;->setRingtongTypeAndStartSIMSelector(I)V

    goto :goto_0

    .line 390
    :cond_6
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_call_ringtone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 391
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/mediatek/audioprofile/Editprofile;->setRingtongTypeAndStartSIMSelector(I)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 332
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 334
    invoke-direct {p0}, Lcom/mediatek/audioprofile/Editprofile;->updatePreference()V

    .line 336
    iget-boolean v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mIsSilentMode:Z

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 338
    new-instance v0, Lcom/mediatek/audioprofile/Editprofile$1;

    invoke-direct {v0, p0}, Lcom/mediatek/audioprofile/Editprofile$1;-><init>(Lcom/mediatek/audioprofile/Editprofile;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    .line 357
    iget-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 360
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 184
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/mediatek/audioprofile/Editprofile;->mKey:Ljava/lang/String;

    invoke-static {v6}, Lcom/mediatek/audioprofile/AudioProfileManager;->getVibrationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    .line 190
    new-instance v0, Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/mediatek/audioprofile/Editprofile;->mSettingsCursor:Landroid/database/Cursor;

    const-string v3, "name"

    invoke-direct {v0, v1, v3, v7, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/audioprofile/Editprofile;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 192
    return-void
.end method
