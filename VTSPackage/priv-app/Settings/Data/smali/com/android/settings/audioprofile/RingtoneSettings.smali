.class public Lcom/android/settings/audioprofile/RingtoneSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RingtoneSettings.java"


# static fields
.field public static final KEY_BOOTAUDIO:Ljava/lang/String; = "boot_audio"

.field private static final KEY_NOTIFICATION_SOUND:Ljava/lang/String; = "notification_sound"

.field public static final KEY_NO_SIM_BINDING_SMS_NOTIFI:Ljava/lang/String; = "no_sim_binding_sms_notifi_tone"

.field public static final KEY_SIM_BINDING_RINGTONE:Ljava/lang/String; = "sim_binding_phone_ringtone"

.field public static final KEY_SIM_BINDING_RINGTONE_2:Ljava/lang/String; = "sim_binding_phone_ringtone_2"

.field private static final MSG_UPDATE_NOTIFICATION_SUMMARY:I = 0x2

.field private static final MSG_UPDATE_RINGTONE_SUMMARY:I = 0x1

.field private static final MSG_UPDATE_RINGTONE_SUMMARY_2:I = 0x3

.field private static final MSG_UPDATE_SMS_SUMMARY:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ringtoneSettings"


# instance fields
.field private mAudioProfileListenr:Lcom/mediatek/common/audioprofile/AudioProfileListener;

.field private mBootAudio:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mNoSimBindingSmsNotifiTone:Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private mRingerVolumePreferenceLenovo:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

.field private mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

.field private ringtoneModeBr:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 91
    new-instance v0, Lcom/android/settings/audioprofile/RingtoneSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/audioprofile/RingtoneSettings$1;-><init>(Lcom/android/settings/audioprofile/RingtoneSettings;)V

    iput-object v0, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mHandler:Landroid/os/Handler;

    .line 198
    new-instance v0, Lcom/android/settings/audioprofile/RingtoneSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/audioprofile/RingtoneSettings$3;-><init>(Lcom/android/settings/audioprofile/RingtoneSettings;)V

    iput-object v0, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mAudioProfileListenr:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    .line 215
    new-instance v0, Lcom/android/settings/audioprofile/RingtoneSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/audioprofile/RingtoneSettings$4;-><init>(Lcom/android/settings/audioprofile/RingtoneSettings;)V

    iput-object v0, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->ringtoneModeBr:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/audioprofile/RingtoneSettings;)Lcom/android/settings/audioprofile/SimBindingRingtonePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/RingtoneSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/audioprofile/RingtoneSettings;ILandroid/preference/Preference;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/RingtoneSettings;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/preference/Preference;
    .param p3, "x3"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/audioprofile/RingtoneSettings;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/audioprofile/RingtoneSettings;)Lcom/android/settings/audioprofile/SimBindingRingtonePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/RingtoneSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/audioprofile/RingtoneSettings;)Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/RingtoneSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mNoSimBindingSmsNotifiTone:Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/audioprofile/RingtoneSettings;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/RingtoneSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/audioprofile/RingtoneSettings;)Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/RingtoneSettings;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mRingerVolumePreferenceLenovo:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    return-object v0
.end method

.method private lookupRingtoneNames()V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "preference"    # Landroid/preference/Preference;
    .param p3, "msg"    # I

    .prologue
    .line 253
    if-nez p2, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 255
    .local v6, "context":Landroid/content/Context;
    if-eqz v6, :cond_0

    .line 256
    invoke-static {v6, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 257
    .local v1, "ringtoneUri":Landroid/net/Uri;
    const v0, 0x1040430

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 259
    .local v8, "summary":Ljava/lang/CharSequence;
    if-nez v1, :cond_2

    .line 260
    const v0, 0x104042e

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 264
    :cond_2
    :try_start_0
    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 266
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 267
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 270
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 294
    const v0, 0x7f090b9b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 115
    .local v3, "resolver":Landroid/content/ContentResolver;
    const v5, 0x7f060035

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 117
    const-string v5, "notification_sound"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mNotificationPreference:Landroid/preference/Preference;

    .line 119
    const-string v5, "sim_binding_phone_ringtone"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    iput-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    .line 120
    iget-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    if-eqz v5, :cond_0

    .line 121
    iget-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    invoke-virtual {v5, v7}, Lcom/android/settings/audioprofile/SimBindingRingtonePreference;->setRingtoneType(I)V

    .line 124
    :cond_0
    const-string v5, "sim_binding_phone_ringtone_2"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    iput-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    .line 125
    iget-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    if-eqz v5, :cond_1

    .line 126
    iget-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Lcom/android/settings/audioprofile/SimBindingRingtonePreference;->setRingtoneType(I)V

    .line 129
    :cond_1
    iget-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    if-eqz v5, :cond_3

    .line 133
    const-string v5, "ringtone_category"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 134
    .local v4, "ringtone":Landroid/preference/PreferenceCategory;
    if-eqz v4, :cond_2

    .line 135
    iget-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 138
    :cond_2
    iget-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    const v6, 0x7f09010d

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 152
    .end local v4    # "ringtone":Landroid/preference/PreferenceCategory;
    :cond_3
    const-string v5, "no_sim_binding_sms_notifi_tone"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;

    iput-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mNoSimBindingSmsNotifiTone:Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;

    .line 153
    iget-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mNoSimBindingSmsNotifiTone:Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;

    if-eqz v5, :cond_4

    .line 154
    iget-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mNoSimBindingSmsNotifiTone:Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 157
    :cond_4
    const-string v5, "boot_audio"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/CheckBoxPreference;

    iput-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mBootAudio:Landroid/preference/CheckBoxPreference;

    .line 158
    iget-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mBootAudio:Landroid/preference/CheckBoxPreference;

    if-eqz v5, :cond_5

    .line 159
    iget-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mBootAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 160
    const-string v5, "persist.sys.boot_audio"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 161
    .local v0, "i":I
    if-ne v0, v7, :cond_7

    .line 162
    iget-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mBootAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 167
    .end local v0    # "i":I
    :cond_5
    :goto_0
    const-string v5, "sound_settings"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    iput-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mRingerVolumePreferenceLenovo:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    .line 168
    iget-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mRingerVolumePreferenceLenovo:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    if-eqz v5, :cond_6

    .line 169
    const-string v5, "audioprofile"

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 170
    .local v1, "mProfile":Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-virtual {v1}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v2

    .line 171
    .local v2, "profile":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mRingerVolumePreferenceLenovo:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    invoke-virtual {v5, v2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->setProfile(Ljava/lang/String;)V

    .line 173
    iget-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mAudioProfileListenr:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    invoke-virtual {v1, v5, v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 175
    .end local v1    # "mProfile":Lcom/mediatek/audioprofile/AudioProfileManager;
    .end local v2    # "profile":Ljava/lang/String;
    :cond_6
    new-instance v5, Lcom/android/settings/audioprofile/RingtoneSettings$2;

    invoke-direct {v5, p0}, Lcom/android/settings/audioprofile/RingtoneSettings$2;-><init>(Lcom/android/settings/audioprofile/RingtoneSettings;)V

    iput-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 196
    return-void

    .line 164
    .restart local v0    # "i":I
    :cond_7
    iget-object v5, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mBootAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 243
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->ringtoneModeBr:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mRingerVolumePreferenceLenovo:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mRingerVolumePreferenceLenovo:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    invoke-virtual {v0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->stopPlayWhenOnPause()V

    .line 250
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mBootAudio:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_0

    .line 286
    const-string v1, "persist.sys.boot_audio"

    iget-object v0, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mBootAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 286
    :cond_1
    const-string v0, "0"

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 208
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/audioprofile/RingtoneSettings;->setStartSoundEnable()V

    .line 210
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 211
    .local v0, "fliter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->ringtoneModeBr:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 212
    invoke-direct {p0}, Lcom/android/settings/audioprofile/RingtoneSettings;->lookupRingtoneNames()V

    .line 214
    return-void
.end method

.method public setStartSoundEnable()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 224
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 226
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 227
    .local v2, "ringerMode":I
    if-eqz v2, :cond_0

    if-ne v2, v5, :cond_1

    .line 228
    :cond_0
    iget-object v3, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mBootAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 238
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v3, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mBootAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 231
    const-string v3, "persist.sys.boot_audio"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 232
    .local v1, "i":I
    if-ne v1, v5, :cond_2

    .line 233
    iget-object v3, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mBootAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 235
    :cond_2
    iget-object v3, p0, Lcom/android/settings/audioprofile/RingtoneSettings;->mBootAudio:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method
