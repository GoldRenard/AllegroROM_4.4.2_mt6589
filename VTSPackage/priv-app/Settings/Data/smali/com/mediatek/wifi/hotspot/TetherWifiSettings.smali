.class public Lcom/mediatek/wifi/hotspot/TetherWifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TetherWifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;


# static fields
.field private static final BANDWIDTH:Ljava/lang/String; = "bandwidth_usage"

.field private static final BLOCKED_CATEGORY:Ljava/lang/String; = "blocked_category"

.field private static final CONFIG_SUBTEXT:I = 0x7f09068a

.field private static final CONNECTED_CATEGORY:Ljava/lang/String; = "connected_category"

.field private static final DIALOG_AP_CLIENT_DETAIL:I = 0x3

.field private static final DIALOG_AP_SETTINGS:I = 0x2

.field private static final DIALOG_WPS_CONNECT:I = 0x1

.field private static final KEY_SUSPEND_OPTIMIZATIONS:Ljava/lang/String; = "suspend_optimizations"

.field private static final TAG:Ljava/lang/String; = "TetherWifiSettings"

.field private static final WIFI_AP_AUTO_CHANNEL_TEXT:I = 0x7f090269

.field private static final WIFI_AP_AUTO_CHANNEL_WIDTH_TEXT:I = 0x7f09026a

.field private static final WIFI_AP_FIX_CHANNEL_WIDTH_TEXT:I = 0x7f090268

.field private static final WIFI_AP_SSID_AND_SECURITY:Ljava/lang/String; = "wifi_ap_ssid_and_security"

.field private static final WIFI_AUTO_DISABLE:Ljava/lang/String; = "wifi_auto_disable"

.field private static final WPS_CONNECT:Ljava/lang/String; = "wps_connect"


# instance fields
.field private mBandwidth:Landroid/preference/Preference;

.field private mBlockedCategory:Landroid/preference/PreferenceCategory;

.field private mClientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/HotspotClient;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedCategory:Landroid/preference/PreferenceCategory;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDetailView:Landroid/view/View;

.field private mDialog:Lcom/android/settings/wifi/WifiApDialog;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurityType:[Ljava/lang/String;

.field private mSuspendOptimizations:Landroid/preference/CheckBoxPreference;

.field private mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

.field private mWifiAutoDisable:Landroid/preference/ListPreference;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private mWpsConnect:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 104
    new-instance v0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings$1;-><init>(Lcom/mediatek/wifi/hotspot/TetherWifiSettings;)V

    iput-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/wifi/hotspot/TetherWifiSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wifi/hotspot/TetherWifiSettings;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->handleWifiApClientsChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/wifi/hotspot/TetherWifiSettings;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/wifi/hotspot/TetherWifiSettings;
    .param p1, "x1"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->handleWifiApStateChanged(I)V

    return-void
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "ifaces"    # [Ljava/lang/String;
    .param p1, "regexes"    # [Ljava/lang/String;

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 305
    .local v4, "iface":Ljava/lang/String;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 306
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 311
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "regex":Ljava/lang/String;
    :goto_2
    return-object v4

    .line 305
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v4    # "iface":Ljava/lang/String;
    .restart local v6    # "len$":I
    .restart local v7    # "regex":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 304
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 311
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "iface":Ljava/lang/String;
    .end local v6    # "len$":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private handleWifiApClientsChanged()V
    .locals 6

    .prologue
    .line 359
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mConnectedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 360
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBlockedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 361
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getHotspotClients()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mClientList:Ljava/util/List;

    .line 362
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mClientList:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 363
    const-string v3, "TetherWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "client number is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mClientList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mClientList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/HotspotClient;

    .line 365
    .local v0, "client":Landroid/net/wifi/HotspotClient;
    new-instance v2, Lcom/mediatek/wifi/hotspot/ButtonPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v0, p0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;-><init>(Landroid/content/Context;Landroid/net/wifi/HotspotClient;Lcom/mediatek/wifi/hotspot/ButtonPreference$OnButtonClickCallback;)V

    .line 366
    .local v2, "preference":Lcom/mediatek/wifi/hotspot/ButtonPreference;
    iget-object v3, v0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->setMacAddress(Ljava/lang/String;)V

    .line 367
    iget-boolean v3, v0, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    if-eqz v3, :cond_0

    .line 368
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090297

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->setButtonText(Ljava/lang/String;)V

    .line 369
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBlockedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 370
    const-string v3, "TetherWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "blocked client MAC is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 372
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090296

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->setButtonText(Ljava/lang/String;)V

    .line 373
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mConnectedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 374
    const-string v3, "TetherWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connected client MAC is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 377
    .end local v0    # "client":Landroid/net/wifi/HotspotClient;
    .end local v2    # "preference":Lcom/mediatek/wifi/hotspot/ButtonPreference;
    :cond_1
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mConnectedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 378
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 379
    .local v2, "preference":Landroid/preference/Preference;
    const v3, 0x7f090304

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 380
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mConnectedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 382
    .end local v2    # "preference":Landroid/preference/Preference;
    :cond_2
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBlockedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-nez v3, :cond_3

    .line 383
    new-instance v2, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 384
    .restart local v2    # "preference":Landroid/preference/Preference;
    const v3, 0x7f090305

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setTitle(I)V

    .line 385
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBlockedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 388
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "preference":Landroid/preference/Preference;
    :cond_3
    return-void
.end method

.method private handleWifiApStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 391
    packed-switch p1, :pswitch_data_0

    .line 413
    :goto_0
    return-void

    .line 393
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->setPreferenceState(Z)V

    .line 394
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSuspendOptimizations:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 397
    :pswitch_1
    invoke-direct {p0, v2}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->setPreferenceState(Z)V

    .line 398
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSuspendOptimizations:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 401
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->setPreferenceState(Z)V

    .line 402
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSuspendOptimizations:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 403
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    goto :goto_0

    .line 406
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->setPreferenceState(Z)V

    .line 407
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSuspendOptimizations:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 408
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initWifiTethering()V
    .locals 10

    .prologue
    const v9, 0x7f09068a

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 176
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 178
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 180
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 181
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0014

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSecurityType:[Ljava/lang/String;

    .line 183
    const-string v3, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mCreateNetwork:Landroid/preference/Preference;

    .line 184
    const-string v3, "suspend_optimizations"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSuspendOptimizations:Landroid/preference/CheckBoxPreference;

    .line 185
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v3, :cond_0

    .line 186
    const-string v3, "wlan"

    const-string v4, "SSID"

    const v5, 0x1040436

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/mediatek/custom/CustomProperties;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, "s":Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v2, v5, v7

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v7

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 198
    .end local v2    # "s":Ljava/lang/String;
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v3}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 193
    .local v1, "index":I
    const-string v3, "TetherWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v6, v5, v7

    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v6, v6, v1

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPreferenceState(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 416
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBandwidth:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 417
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 419
    const-string v0, "TetherWifiSettings"

    const-string v1, "security is wpa psk, disable wps connect preference"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/4 p1, 0x0

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWpsConnect:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 423
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 315
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 317
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    .line 323
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 324
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 325
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 329
    :goto_0
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v1}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 330
    .local v0, "index":I
    if-nez v0, :cond_0

    .line 331
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0902fd

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09068a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 338
    .end local v0    # "index":I
    :cond_1
    return-void

    .line 327
    :cond_2
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;Landroid/net/wifi/HotspotClient;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "client"    # Landroid/net/wifi/HotspotClient;

    .prologue
    .line 340
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0201

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 341
    iget-boolean v0, p2, Landroid/net/wifi/HotspotClient;->isBlocked:Z

    if-eqz v0, :cond_1

    .line 342
    const-string v0, "TetherWifiSettings"

    const-string v1, "onClick,client is blocked, unblock now"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiManager;->unblockClient(Landroid/net/wifi/HotspotClient;)Z

    .line 348
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->handleWifiApClientsChanged()V

    .line 350
    :cond_0
    return-void

    .line 345
    :cond_1
    const-string v0, "TetherWifiSettings"

    const-string v1, "onClick,client isn\'t blocked, block now"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p2}, Landroid/net/wifi/WifiManager;->blockClient(Landroid/net/wifi/HotspotClient;)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 353
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 354
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApDialog;->closeSpinnerDialog()V

    .line 357
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x10

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 124
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const v6, 0x7f06004f

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 127
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 129
    .local v1, "activity":Landroid/app/Activity;
    const-string v6, "wifi_auto_disable"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiAutoDisable:Landroid/preference/ListPreference;

    .line 130
    const-string v6, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 131
    .local v5, "wifiApSettings":Landroid/preference/Preference;
    const-string v6, "wps_connect"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWpsConnect:Landroid/preference/Preference;

    .line 132
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWpsConnect:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 133
    const-string v6, "bandwidth_usage"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBandwidth:Landroid/preference/Preference;

    .line 134
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBandwidth:Landroid/preference/Preference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 136
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 144
    .local v2, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x207000b

    invoke-virtual {v6, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 148
    .local v0, "actionBarSwitch":Landroid/widget/Switch;
    instance-of v6, v1, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_1

    move-object v4, v1

    .line 149
    check-cast v4, Landroid/preference/PreferenceActivity;

    .line 150
    .local v4, "preferenceActivity":Landroid/preference/PreferenceActivity;
    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_1

    .line 151
    :cond_0
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 153
    .local v3, "padding":I
    invoke-virtual {v0, v8, v8, v3, v8}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 154
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v10, v10}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 156
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const v8, 0x800015

    invoke-direct {v7, v9, v9, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v0, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 163
    .end local v3    # "padding":I
    .end local v4    # "preferenceActivity":Landroid/preference/PreferenceActivity;
    :cond_1
    new-instance v6, Lcom/android/settings/wifi/WifiApEnabler;

    invoke-direct {v6, v1, v0}, Lcom/android/settings/wifi/WifiApEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    .line 164
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->initWifiTethering()V

    .line 166
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifi.WIFI_HOTSPOT_CLIENTS_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 167
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v7, "android.net.wifi.WIFI_WPS_CHECK_PIN_FAIL"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v7, "android.net.wifi.WIFI_HOTSPOT_OVERLAP"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    iget-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v7, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v6, "connected_category"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mConnectedCategory:Landroid/preference/PreferenceCategory;

    .line 171
    const-string v6, "blocked_category"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mBlockedCategory:Landroid/preference/PreferenceCategory;

    .line 172
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f0400f0

    invoke-virtual {v6, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    .line 173
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    .line 233
    const/4 v4, 0x2

    if-ne p1, v4, :cond_0

    .line 234
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 235
    .local v0, "activity":Landroid/app/Activity;
    new-instance v4, Lcom/android/settings/wifi/WifiApDialog;

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4, v0, p0, v5}, Lcom/android/settings/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 236
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 238
    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDialog:Lcom/android/settings/wifi/WifiApDialog;

    .line 259
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_0
    return-object v1

    .line 239
    :cond_0
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 240
    new-instance v1, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/mediatek/wifi/hotspot/WifiApWpsDialog;-><init>(Landroid/content/Context;)V

    .line 241
    .local v1, "d":Landroid/app/Dialog;
    const-string v4, "mydialog"

    const-string v5, "onCreateDialog, return dialog"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    .end local v1    # "d":Landroid/app/Dialog;
    :cond_1
    const/4 v4, 0x3

    if-ne p1, v4, :cond_3

    .line 244
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 245
    .local v3, "parent":Landroid/view/ViewParent;
    if-eqz v3, :cond_2

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 246
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3    # "parent":Landroid/view/ViewParent;
    iget-object v4, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 248
    :cond_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090298

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/high16 v5, 0x1040000

    new-instance v6, Lcom/mediatek/wifi/hotspot/TetherWifiSettings$2;

    invoke-direct {v6, p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings$2;-><init>(Lcom/mediatek/wifi/hotspot/TetherWifiSettings;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .local v2, "dialog":Landroid/app/AlertDialog;
    move-object v1, v2

    .line 256
    goto :goto_0

    .line 259
    .end local v2    # "dialog":Landroid/app/AlertDialog;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 222
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 223
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 224
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiApEnabler;->pause()V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiAutoDisable:Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiAutoDisable:Landroid/preference/ListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 230
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 263
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 264
    .local v0, "key":Ljava/lang/String;
    const-string v1, "TetherWifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v1, "wifi_auto_disable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_hotspot_auto_disable"

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 268
    const-string v1, "TetherWifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange auto disable value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const v7, 0x7f0b02fc

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 275
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 278
    .local v1, "cm":Landroid/net/ConnectivityManager;
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mCreateNetwork:Landroid/preference/Preference;

    if-ne p2, v5, :cond_1

    .line 279
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 300
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 280
    :cond_1
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWpsConnect:Landroid/preference/Preference;

    if-ne p2, v5, :cond_2

    .line 281
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v5, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSuspendOptimizations:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_4

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_hotspot_suspend_optimizations_enabled"

    iget-object v7, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSuspendOptimizations:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1

    .line 285
    :cond_4
    instance-of v3, p2, Lcom/mediatek/wifi/hotspot/ButtonPreference;

    if-eqz v3, :cond_0

    .line 286
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    move-object v0, p2

    .line 287
    check-cast v0, Lcom/mediatek/wifi/hotspot/ButtonPreference;

    .line 289
    .local v0, "client":Lcom/mediatek/wifi/hotspot/ButtonPreference;
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    const v5, 0x7f0b02fb

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->getMacAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    invoke-virtual {v0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->isBlocked()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 291
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :goto_2
    invoke-virtual {p0, v6}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 293
    :cond_5
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 294
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Lcom/mediatek/wifi/hotspot/ButtonPreference;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->getClientIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "ipAddr":Ljava/lang/String;
    const-string v3, "TetherWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "connected client ip address is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mDetailView:Landroid/view/View;

    const v4, 0x7f0b02fd

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 202
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 204
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    if-eqz v2, :cond_0

    .line 205
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiApEnabler:Lcom/android/settings/wifi/WifiApEnabler;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiApEnabler;->resume()V

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiAutoDisable:Landroid/preference/ListPreference;

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiAutoDisable:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_hotspot_auto_disable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 211
    .local v0, "value":I
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mWifiAutoDisable:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 214
    .end local v0    # "value":I
    :cond_1
    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mSuspendOptimizations:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_hotspot_suspend_optimizations_enabled"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    :goto_0
    invoke-virtual {v2, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 217
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 218
    invoke-direct {p0}, Lcom/mediatek/wifi/hotspot/TetherWifiSettings;->handleWifiApClientsChanged()V

    .line 219
    return-void

    .line 214
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
