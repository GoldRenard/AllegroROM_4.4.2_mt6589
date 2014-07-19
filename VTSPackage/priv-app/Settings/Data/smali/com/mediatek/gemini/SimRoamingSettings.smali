.class public Lcom/mediatek/gemini/SimRoamingSettings;
.super Landroid/preference/PreferenceActivity;
.source "SimRoamingSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_ROAING_REMINDER_SETTING:Ljava/lang/String; = "roaming_reminder_settings"

.field private static final KEY_ROAMING_ENTRANCE:Ljava/lang/String; = "data_roaming_settings"

.field private static final TAG:Ljava/lang/String; = "SimRoamingSettings"


# instance fields
.field private mExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

.field private mRoamReminder:Landroid/preference/ListPreference;

.field private mRoamingReminderSummary:[Ljava/lang/CharSequence;

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 41
    new-instance v0, Lcom/mediatek/gemini/SimRoamingSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimRoamingSettings$1;-><init>(Lcom/mediatek/gemini/SimRoamingSettings;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mSimReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f060048

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 65
    const-string v0, "roaming_reminder_settings"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mRoamReminder:Landroid/preference/ListPreference;

    .line 66
    iget-object v0, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mRoamReminder:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 67
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a006e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mRoamingReminderSummary:[Ljava/lang/CharSequence;

    .line 69
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 73
    invoke-static {p0}, Lcom/android/settings/Utils;->getSimRoamingExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimRoamingExt;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

    .line 75
    iget-object v0, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mSimReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 100
    iget-object v0, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 102
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "key":Ljava/lang/String;
    const-string v4, "roaming_reminder_settings"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    const-string v4, "SimRoamingSettings"

    const-string v5, "KEY_ROAING_REMINDER_SETTING.equals(key)"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    check-cast p2, Ljava/lang/String;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 113
    .local v3, "value":I
    iget-object v4, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mRoamReminder:Landroid/preference/ListPreference;

    invoke-virtual {v4, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 114
    iget-object v4, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mRoamReminder:Landroid/preference/ListPreference;

    iget-object v5, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mRoamReminder:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "roaming_reminder_mode_setting"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 118
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.ROAMING_REMINDER_SETTING"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "mode"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 126
    if-nez v3, :cond_0

    .line 128
    iget-object v4, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    if-eqz v4, :cond_0

    .line 130
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/ITelephony;->setRoamingIndicatorNeddedProperty(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "value":I
    :cond_0
    :goto_0
    const/4 v4, 0x0

    return v4

    .line 133
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "value":I
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "SimRoamingSettings"

    const-string v5, "mTelephony exception"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 84
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "roaming_reminder_mode_setting"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 87
    .local v1, "prevalue":I
    const-string v2, "SimRoamingSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prevalue is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v2, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mRoamReminder:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 89
    iget-object v2, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mRoamReminder:Landroid/preference/ListPreference;

    iget-object v3, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mRoamingReminderSummary:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    const-string v2, "data_roaming_settings"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 91
    .local v0, "p":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 92
    iget-object v2, p0, Lcom/mediatek/gemini/SimRoamingSettings;->mExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

    invoke-interface {v2, v0}, Lcom/mediatek/settings/ext/ISimRoamingExt;->setSummary(Landroid/preference/Preference;)V

    .line 94
    :cond_0
    return-void
.end method
