.class public Lcom/mediatek/nfc/NfcSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NfcSettings.java"


# static fields
.field private static final KEY_ANDROID_BEAM:Ljava/lang/String; = "nfc_android_beam"

.field private static final KEY_CARD_EMULATION:Ljava/lang/String; = "nfc_card_emulation"

.field private static final KEY_CARD_EMULATION_CATEGORY:Ljava/lang/String; = "nfc_card_emulation_category"

.field private static final KEY_NFC_P2P_MODE:Ljava/lang/String; = "nfc_p2p_mode"

.field private static final KEY_NFC_TAG_RW:Ljava/lang/String; = "nfc_rw_tag"

.field private static final TAG:Ljava/lang/String; = "NfcSettings"


# instance fields
.field private EMULATION_OFF:Ljava/lang/String;

.field private mAndroidBeam:Landroid/preference/Preference;

.field private mCardEmulationExist:Z

.field private mCardEmulationPref:Landroid/preference/Preference;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

.field private mNfcP2pModePref:Landroid/preference/CheckBoxPreference;

.field private mNfcRwTagPref:Landroid/preference/CheckBoxPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationExist:Z

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    .line 68
    new-instance v0, Lcom/mediatek/nfc/NfcSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/nfc/NfcSettings$1;-><init>(Lcom/mediatek/nfc/NfcSettings;)V

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/nfc/NfcSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/nfc/NfcSettings;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mediatek/nfc/NfcSettings;->updatePreferences()V

    return-void
.end method

.method private getEmulationOffConstant()V
    .locals 7

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "nfc_multise_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    .local v2, "list":Ljava/lang/String;
    const-string v0, "[,]"

    .line 199
    .local v0, "delims":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, "tokens":[Ljava/lang/String;
    array-length v1, v3

    .line 201
    .local v1, "length":I
    iget-object v4, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 202
    add-int/lit8 v4, v1, -0x1

    aget-object v4, v3, v4

    iput-object v4, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    .line 203
    const-string v4, "NfcSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EMULATION_OFF is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    return-void
.end method

.method private initPreferences()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 127
    const-string v1, "nfc_p2p_mode"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/preference/CheckBoxPreference;

    .line 128
    const-string v1, "nfc_android_beam"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mAndroidBeam:Landroid/preference/Preference;

    .line 129
    const-string v1, "nfc_rw_tag"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    iput-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/preference/CheckBoxPreference;

    .line 132
    const-string v1, "nfc_card_emulation"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationPref:Landroid/preference/Preference;

    .line 133
    const-string v1, "nfc_card_emulation_category"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 135
    .local v0, "cardCategory":Landroid/preference/PreferenceCategory;
    const-string v1, "NfcSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NFC_MULTISE_ON is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nfc_multise_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_on"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 138
    iput-boolean v5, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationExist:Z

    .line 142
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/nfc/NfcSettings;->getEmulationOffConstant()V

    goto :goto_0
.end method

.method private updatePreferenceEnabledStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 146
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 148
    iget-boolean v0, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationExist:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationPref:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 153
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 154
    iget-boolean v0, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationExist:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationPref:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updatePreferences()V
    .locals 7

    .prologue
    const v6, 0x7f0905e8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 166
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mAndroidBeam:Landroid/preference/Preference;

    const v4, 0x7f0905e7

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 174
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/nfc/NfcSettings;->updatePreferenceEnabledStatus()V

    .line 176
    iget-object v4, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Landroid/nfc/NfcAdapter;->getModeFlag(I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 179
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->getModeFlag(I)I

    move-result v4

    if-ne v4, v2, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 181
    iget-boolean v1, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationExist:Z

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_active"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "activeMode":Ljava/lang/String;
    const-string v1, "NfcSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferences, active mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 186
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationPref:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 191
    .end local v0    # "activeMode":Ljava/lang/String;
    :cond_0
    :goto_3
    return-void

    .line 170
    :cond_1
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mAndroidBeam:Landroid/preference/Preference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 176
    goto :goto_1

    :cond_3
    move v2, v3

    .line 179
    goto :goto_2

    .line 188
    .restart local v0    # "activeMode":Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationPref:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x10

    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 80
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v3, 0x7f06002c

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 84
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 87
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x207000b

    invoke-virtual {v3, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 91
    .local v1, "mActionBarSwitch":Landroid/widget/Switch;
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 93
    .local v2, "padding":I
    invoke-virtual {v1, v5, v5, v2, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 94
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 96
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const v5, 0x800015

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v1, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 101
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f0905e4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 103
    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 104
    iget-object v3, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v3, :cond_0

    .line 105
    const-string v3, "NfcSettings"

    const-string v4, "Nfc adapter is null, finish Nfc settings"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 108
    :cond_0
    new-instance v3, Lcom/mediatek/nfc/MtkNfcEnabler;

    iget-object v4, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {v3, v0, v8, v1, v4}, Lcom/mediatek/nfc/MtkNfcEnabler;-><init>(Landroid/content/Context;Lcom/mediatek/nfc/NfcPreference;Landroid/widget/Switch;Landroid/nfc/NfcAdapter;)V

    iput-object v3, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    .line 111
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/mediatek/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 113
    invoke-direct {p0}, Lcom/mediatek/nfc/NfcSettings;->initPreferences()V

    .line 115
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 120
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 121
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 238
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 239
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 240
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    invoke-virtual {v0}, Lcom/mediatek/nfc/MtkNfcEnabler;->pause()V

    .line 243
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 209
    iget-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mAndroidBeam:Landroid/preference/Preference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 210
    const-string v1, "com.mediatek.nfc.MtkAndroidBeam"

    invoke-virtual {p0, p0, v1, v0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    .line 225
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 211
    :cond_1
    iget-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 212
    const-string v2, "NfcSettings"

    const-string v3, "p2p mode"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 215
    .local v0, "flag":I
    :cond_2
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/nfc/NfcAdapter;->setModeFlag(II)V

    goto :goto_0

    .line 216
    .end local v0    # "flag":I
    :cond_3
    iget-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 217
    const-string v2, "NfcSettings"

    const-string v3, "tag rw mode"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 220
    .restart local v0    # "flag":I
    :cond_4
    iget-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2, v1, v0}, Landroid/nfc/NfcAdapter;->setModeFlag(II)V

    goto :goto_0

    .line 221
    .end local v0    # "flag":I
    :cond_5
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationPref:Landroid/preference/Preference;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const-string v1, "NfcSettings"

    const-string v2, "card emulation mode"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-string v1, "com.mediatek.nfc.CardEmulationSettings"

    invoke-virtual {p0, p0, v1, v0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 230
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    invoke-virtual {v0}, Lcom/mediatek/nfc/MtkNfcEnabler;->resume()V

    .line 233
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 234
    invoke-direct {p0}, Lcom/mediatek/nfc/NfcSettings;->updatePreferences()V

    .line 235
    return-void
.end method
