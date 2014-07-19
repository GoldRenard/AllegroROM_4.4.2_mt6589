.class public Lcom/lenovo/setupwizard/fragments/FmtCommonSettings;
.super Lcom/android/settings/tabsettings/CommonSettings;
.source "FmtCommonSettings.java"


# static fields
.field private static final BLUETOOTH_SETTINGS_KEY:Ljava/lang/String; = "bluetooth_settings"

.field private static final DATA_CONNECT_KEY:Ljava/lang/String; = "data_connect_settings"

.field private static final THEME_KEY:Ljava/lang/String; = "theme"

.field private static final WALLPAPER_KEY:Ljava/lang/String; = "wallpaper"

.field private static final WIFI_KEY:Ljava/lang/String; = "wifi_settings"


# instance fields
.field TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/settings/tabsettings/CommonSettings;-><init>()V

    .line 18
    const-string v0, "lenovo_wizard"

    iput-object v0, p0, Lcom/lenovo/setupwizard/fragments/FmtCommonSettings;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/android/settings/tabsettings/CommonSettings;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "wifi_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 31
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "data_connect_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 32
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "bluetooth_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 33
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "wallpaper"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 34
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "theme"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 36
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    const v1, 0x7f09010d

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingNotifitone:Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingNotifitone_2:Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

    if-eqz v0, :cond_3

    .line 57
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingNotifitone_2:Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingNotifitone:Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

    const v1, 0x7f090116

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 70
    :cond_3
    return-void
.end method
