.class public Lcom/android/settings/wifi/WifiApEnabler;
.super Landroid/app/Fragment;
.source "WifiApEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final INVALID:I = -0x1

.field private static final PROVISION_REQUEST:I = 0x0

.field static final TAG:Ljava/lang/String; = "WifiApEnabler"

.field private static final WIFI_IPV4:I = 0xf

.field private static final WIFI_IPV6:I = 0xf0

.field private static final WIFI_SWITCH_SETTINGS:Ljava/lang/String; = "wifi_tether_settings"

.field private static final WIFI_TETHERING:I


# instance fields
.field mCm:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field mExt:Lcom/mediatek/settings/ext/IWifiExt;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mOriginalSummary:Ljava/lang/CharSequence;

.field private mProvisionApp:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

.field private mTetherChoice:I

.field private mTetherSettings:Lcom/android/settings/TetherSettings;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mTetherChoice:I

    .line 74
    new-instance v0, Lcom/android/settings/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApEnabler$1;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 104
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->init(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preference"    # Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mTetherChoice:I

    .line 74
    new-instance v0, Lcom/android/settings/wifi/WifiApEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApEnabler$1;-><init>(Lcom/android/settings/wifi/WifiApEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    .line 111
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->init(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApEnabler;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnabler;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiApEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnabler;
    .param p1, "x1"    # [Ljava/lang/Object;
    .param p2, "x2"    # [Ljava/lang/Object;
    .param p3, "x3"    # [Ljava/lang/Object;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/wifi/WifiApEnabler;->updateTetherStateForIpv6([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApEnabler;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiApEnabler;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    return-void
.end method

.method private enableWifiCheckBox()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 155
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 157
    .local v0, "isAirplaneMode":Z
    :goto_0
    if-nez v0, :cond_1

    .line 158
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    .line 165
    :goto_1
    return-void

    .end local v0    # "isAirplaneMode":Z
    :cond_0
    move v0, v2

    .line 155
    goto :goto_0

    .line 160
    .restart local v0    # "isAirplaneMode":Z
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 163
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    goto :goto_1
.end method

.method private handleWifiApStateChanged(I)V
    .locals 9
    .param p1, "state"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 320
    packed-switch p1, :pswitch_data_0

    .line 357
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 322
    :pswitch_0
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    .line 323
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiApEnabler;->setStartTime(Z)V

    .line 324
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v4, :cond_0

    .line 325
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    const v5, 0x7f090685

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 333
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 334
    .local v2, "eableEndTime":J
    const-string v4, "WifiHotspotPerformanceTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Performance test][Settings][wifi hotspot] wifi hotspot turn on end ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 336
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    .line 337
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiApEnabler;->setStartTime(Z)V

    goto :goto_0

    .line 340
    .end local v2    # "eableEndTime":J
    :pswitch_2
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    .line 341
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v4, :cond_0

    .line 342
    const-string v4, "WifiApEnabler"

    const-string v5, "wifi_stopping"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    const v5, 0x7f090686

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 347
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 348
    .local v0, "disableEndTime":J
    const-string v4, "WifiHotspotPerformanceTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Performance test][Settings][wifi hotspot] wifi hotspot turn off end ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiApEnabler;->setSwitchChecked(Z)V

    .line 350
    invoke-direct {p0, v8}, Lcom/android/settings/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    .line 351
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v4, :cond_1

    .line 352
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiApEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 354
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    goto/16 :goto_0

    .line 320
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setStartTime(Z)V
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const-wide/16 v6, 0x0

    .line 432
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_hotspot_start_time"

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 434
    .local v2, "startTime":J
    if-eqz p1, :cond_1

    .line 435
    cmp-long v4, v2, v6

    if-nez v4, :cond_0

    .line 436
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_hotspot_start_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 438
    const-string v4, "WifiApEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enable value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    const-wide/16 v0, 0x0

    .line 442
    .local v0, "newValue":J
    const-string v4, "WifiApEnabler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disable value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_hotspot_start_time"

    invoke-static {v4, v5, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0
.end method

.method private setSwitchChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mStateMachineEvent:Z

    .line 363
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 368
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mStateMachineEvent:Z

    .line 369
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private setSwitchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 376
    :goto_0
    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .param p1, "choice"    # I

    .prologue
    const/4 v4, 0x0

    .line 407
    iput p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mTetherChoice:I

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApEnabler;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 412
    const-string v1, "WifiApEnabler"

    const-string v2, "startProvisioningIfNecessary, startActivityForResult"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 414
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 2

    .prologue
    .line 426
    iget v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mTetherChoice:I

    if-nez v0, :cond_0

    .line 427
    const-string v0, "WifiApEnabler"

    const-string v1, "startTethering, setSoftapEnabled"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 430
    :cond_0
    return-void
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 14
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    .line 289
    const/4 v11, 0x0

    .line 290
    .local v11, "wifiTethered":Z
    const/4 v10, 0x0

    .line 292
    .local v10, "wifiErrored":Z
    move-object/from16 v0, p2

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .local v6, "o":Ljava/lang/Object;
    move-object v8, v6

    .line 293
    check-cast v8, Ljava/lang/String;

    .line 294
    .local v8, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 295
    .local v7, "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 296
    const/4 v11, 0x1

    .line 294
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 292
    .end local v7    # "regex":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 300
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "s":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    .restart local v0    # "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .restart local v6    # "o":Ljava/lang/Object;
    move-object v8, v6

    .line 301
    check-cast v8, Ljava/lang/String;

    .line 302
    .restart local v8    # "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    .line 303
    .restart local v7    # "regex":Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 304
    const/4 v10, 0x1

    .line 302
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 300
    .end local v7    # "regex":Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_2

    .line 309
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "o":Ljava/lang/Object;
    .end local v8    # "s":Ljava/lang/String;
    :cond_5
    if-eqz v11, :cond_7

    .line 310
    iget-object v12, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 311
    .local v9, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 317
    .end local v9    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 312
    :cond_7
    if-eqz v10, :cond_6

    .line 313
    iget-object v12, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v12, :cond_6

    .line 314
    iget-object v12, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    const v13, 0x7f0905f7

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_4
.end method

.method private updateTetherStateForIpv6([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 19
    .param p1, "available"    # [Ljava/lang/Object;
    .param p2, "tethered"    # [Ljava/lang/Object;
    .param p3, "errored"    # [Ljava/lang/Object;

    .prologue
    .line 216
    const/4 v15, 0x0

    .line 217
    .local v15, "wifiTethered":Z
    const/4 v14, 0x0

    .line 219
    .local v14, "wifiErrored":Z
    const/4 v12, 0x0

    .line 220
    .local v12, "wifiErrorIpv4":I
    const/16 v13, 0x10

    .line 221
    .local v13, "wifiErrorIpv6":I
    move-object/from16 v1, p1

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v7, v1, v4

    .local v7, "o":Ljava/lang/Object;
    move-object v9, v7

    .line 222
    check-cast v9, Ljava/lang/String;

    .line 223
    .local v9, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v6, v2

    .local v6, "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_1
    if-ge v3, v6, :cond_2

    aget-object v8, v2, v3

    .line 224
    .local v8, "regex":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 225
    if-nez v12, :cond_0

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v16

    and-int/lit8 v12, v16, 0xf

    .line 228
    :cond_0
    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v13, v0, :cond_1

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    and-int/lit16 v13, v0, 0xf0

    .line 223
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 221
    .end local v8    # "regex":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 235
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "o":Ljava/lang/Object;
    .end local v9    # "s":Ljava/lang/String;
    :cond_3
    move-object/from16 v1, p2

    .restart local v1    # "arr$":[Ljava/lang/Object;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    move v4, v3

    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .restart local v4    # "i$":I
    :goto_2
    if-ge v4, v5, :cond_6

    aget-object v7, v1, v4

    .restart local v7    # "o":Ljava/lang/Object;
    move-object v9, v7

    .line 236
    check-cast v9, Ljava/lang/String;

    .line 237
    .restart local v9    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v6, v2

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_3
    if-ge v3, v6, :cond_5

    aget-object v8, v2, v3

    .line 238
    .restart local v8    # "regex":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 239
    const/4 v15, 0x1

    .line 241
    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v13, v0, :cond_4

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    and-int/lit16 v13, v0, 0xf0

    .line 237
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 235
    .end local v8    # "regex":Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_2

    .line 249
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "o":Ljava/lang/Object;
    .end local v9    # "s":Ljava/lang/String;
    :cond_6
    move-object/from16 v1, p3

    .restart local v1    # "arr$":[Ljava/lang/Object;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    move v4, v3

    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v3    # "i$":I
    .end local v5    # "len$":I
    .restart local v4    # "i$":I
    :goto_4
    if-ge v4, v5, :cond_9

    aget-object v7, v1, v4

    .restart local v7    # "o":Ljava/lang/Object;
    move-object v9, v7

    .line 250
    check-cast v9, Ljava/lang/String;

    .line 251
    .restart local v9    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v6, v2

    .restart local v6    # "len$":I
    const/4 v3, 0x0

    .end local v4    # "i$":I
    .restart local v3    # "i$":I
    :goto_5
    if-ge v3, v6, :cond_8

    aget-object v8, v2, v3

    .line 252
    .restart local v8    # "regex":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 253
    const/4 v14, 0x1

    .line 251
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 249
    .end local v8    # "regex":Ljava/lang/String;
    :cond_8
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_4

    .line 258
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v7    # "o":Ljava/lang/Object;
    .end local v9    # "s":Ljava/lang/String;
    :cond_9
    if-eqz v15, :cond_c

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v11

    .line 260
    .local v11, "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/wifi/WifiApEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x1040436

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 263
    .restart local v9    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x7f090687

    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    if-nez v11, :cond_b

    .end local v9    # "s":Ljava/lang/String;
    :goto_6
    aput-object v9, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 267
    .local v10, "tetheringActive":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mTetherSettings:Lcom/android/settings/TetherSettings;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    move-object/from16 v16, v0

    if-nez v16, :cond_a

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mTetherSettings:Lcom/android/settings/TetherSettings;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Lcom/android/settings/TetherSettings;->getIPV6String(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 276
    .end local v10    # "tetheringActive":Ljava/lang/String;
    .end local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_a
    :goto_7
    return-void

    .line 263
    .restart local v9    # "s":Ljava/lang/String;
    .restart local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_b
    iget-object v9, v11, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_6

    .line 271
    .end local v9    # "s":Ljava/lang/String;
    .end local v11    # "wifiConfig":Landroid/net/wifi/WifiConfiguration;
    :cond_c
    if-eqz v14, :cond_a

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    move-object/from16 v16, v0

    if-nez v16, :cond_a

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    move-object/from16 v16, v0

    const v17, 0x7f0905f7

    invoke-virtual/range {v16 .. v17}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_7
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 122
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 124
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 125
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    .line 130
    return-void
.end method

.method isProvisioningNeeded()Z
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mProvisionApp:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 418
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 419
    if-nez p1, :cond_0

    .line 420
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 421
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->startTethering()V

    .line 424
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v3, 0x0

    .line 393
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mStateMachineEvent:Z

    if-eqz v0, :cond_0

    .line 402
    :goto_0
    return-void

    .line 396
    :cond_0
    const-string v0, "WifiApEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged, isChecked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    if-eqz p2, :cond_1

    .line 398
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiApEnabler;->startProvisioningIfNecessary(I)V

    goto :goto_0

    .line 400
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 379
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi_tether_settings"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 381
    .local v0, "isChecked":Z
    const-string v1, "WifiApEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange, isChecked:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    if-eqz v0, :cond_1

    .line 383
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiApEnabler;->startProvisioningIfNecessary(I)V

    .line 388
    .end local v0    # "isChecked":Z
    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 385
    .restart local v0    # "isChecked":Z
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApEnabler;->enableWifiCheckBox()V

    .line 142
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public setSoftapEnabled(Z)V
    .locals 8
    .param p1, "enable"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 168
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 172
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 173
    .local v3, "wifiState":I
    if-eqz p1, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 175
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 176
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 179
    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 181
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/WifiApEnabler;->setSwitchEnabled(Z)V

    .line 191
    :cond_2
    :goto_0
    if-nez p1, :cond_3

    .line 192
    const/4 v2, 0x0

    .line 194
    .local v2, "wifiSavedState":I
    :try_start_0
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 198
    :goto_1
    if-ne v2, v7, :cond_3

    .line 199
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 200
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 203
    .end local v2    # "wifiSavedState":I
    :cond_3
    return-void

    .line 183
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v4, :cond_2

    .line 184
    iget-object v4, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    const v5, 0x7f0905f7

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 195
    .restart local v2    # "wifiSavedState":I
    :catch_0
    move-exception v1

    .line 196
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "WifiApEnabler"

    const-string v5, "SettingNotFoundException"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setTetherSettings(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .param p1, "tetherSettings"    # Lcom/android/settings/TetherSettings;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mTetherSettings:Lcom/android/settings/TetherSettings;

    .line 286
    return-void
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 206
    const-string v1, "wlan"

    const-string v2, "SSID"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v4, 0x1040436

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mediatek/custom/CustomProperties;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    .local v0, "s":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitch:Landroid/widget/Switch;

    if-nez v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApEnabler;->mSwitchPreference:Lcom/mediatek/wifi/hotspot/HotspotSwitchPreference;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApEnabler;->mContext:Landroid/content/Context;

    const v3, 0x7f090687

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    if-nez p1, :cond_1

    .end local v0    # "s":Ljava/lang/String;
    :goto_0
    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 213
    :cond_0
    return-void

    .line 210
    .restart local v0    # "s":Ljava/lang/String;
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method
