.class public Lcom/android/settings/wifi/WifiBackupSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiBackupSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mBackup:Landroid/preference/PreferenceScreen;

.field private mRestore:Landroid/preference/PreferenceScreen;

.field private mWifiBR:Lcom/android/settings/wifi/WifiBR;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 79
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v1, 0x7f06005b

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 48
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 49
    .local v0, "screen":Landroid/preference/PreferenceScreen;
    const-string v1, "lenovo_backup_wifi"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiBackupSettings;->mBackup:Landroid/preference/PreferenceScreen;

    .line 50
    const-string v1, "lenovo_restore_wifi"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiBackupSettings;->mRestore:Landroid/preference/PreferenceScreen;

    .line 52
    new-instance v1, Lcom/android/settings/wifi/WifiBR;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/wifi/WifiBR;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiBackupSettings;->mWifiBR:Lcom/android/settings/wifi/WifiBR;

    .line 53
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/WifiBackupSettings;->mBackup:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/settings/wifi/WifiBackupSettings;->mWifiBR:Lcom/android/settings/wifi/WifiBR;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiBR;->backupWifi()Z

    .line 73
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiBackupSettings;->mRestore:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiBackupSettings;->mWifiBR:Lcom/android/settings/wifi/WifiBR;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiBR;->restoreWifi()Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 58
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 63
    return-void
.end method
