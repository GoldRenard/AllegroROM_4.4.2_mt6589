.class public Lcom/mediatek/settings/deviceinfo/StatusGemini;
.super Landroid/preference/PreferenceActivity;
.source "StatusGemini.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/deviceinfo/StatusGemini$MyHandler;
    }
.end annotation


# static fields
.field private static final CDMA:Ljava/lang/String; = "CDMA"

.field private static final EVENT_UPDATE_STATS:I = 0x1f4

.field private static final KEY_BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field private static final KEY_BATTERY_STATUS:Ljava/lang/String; = "battery_status"

.field private static final KEY_BT_ADDRESS:Ljava/lang/String; = "bt_address"

.field private static final KEY_SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field private static final KEY_SIM_STATUS:Ljava/lang/String; = "sim_status"

.field private static final KEY_SLOT_STATUS:Ljava/lang/String; = "slot_status"

.field private static final KEY_UP_TIME:Ljava/lang/String; = "up_time"

.field private static final KEY_WIFI_IP_ADDRESS:Ljava/lang/String; = "wifi_ip_address"

.field private static final KEY_WIFI_MAC_ADDRESS:Ljava/lang/String; = "wifi_mac_address"

.field private static final KEY_WIMAX_MAC_ADDRESS:Ljava/lang/String; = "wimax_mac_address"

.field private static final SLOT_ALL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Gemini_Aboutphone"

.field private static final WIMAX_ADDRESS:Ljava/lang/String; = "net.wimax.mac.address"

.field private static sUnknown:Ljava/lang/String;


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field mExt:Lcom/mediatek/settings/ext/IStatusGeminiExt;

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mHandler:Landroid/os/Handler;

.field mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mRes:Landroid/content/res/Resources;

.field private mSimStatus:Landroid/preference/Preference;

.field private mUptime:Landroid/preference/Preference;

.field private myReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 127
    new-instance v0, Lcom/mediatek/settings/deviceinfo/StatusGemini$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/deviceinfo/StatusGemini$1;-><init>(Lcom/mediatek/settings/deviceinfo/StatusGemini;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 389
    new-instance v0, Lcom/mediatek/settings/deviceinfo/StatusGemini$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/deviceinfo/StatusGemini$2;-><init>(Lcom/mediatek/settings/deviceinfo/StatusGemini;)V

    iput-object v0, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->myReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/deviceinfo/StatusGemini;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/StatusGemini;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/deviceinfo/StatusGemini;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/StatusGemini;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/deviceinfo/StatusGemini;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/StatusGemini;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/StatusGemini;->setWifiStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/settings/deviceinfo/StatusGemini;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/deviceinfo/StatusGemini;

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/StatusGemini;->setBtStatus()V

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 7
    .param p1, "t"    # J

    .prologue
    const-wide/16 v5, 0x3c

    .line 381
    rem-long v3, p1, v5

    long-to-int v2, v3

    .line 382
    .local v2, "s":I
    div-long v3, p1, v5

    rem-long/2addr v3, v5

    long-to-int v1, v3

    .line 383
    .local v1, "m":I
    const-wide/16 v3, 0xe10

    div-long v3, p1, v3

    long-to-int v0, v3

    .line 385
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/mediatek/settings/deviceinfo/StatusGemini;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/mediatek/settings/deviceinfo/StatusGemini;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 373
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 374
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 376
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 343
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 344
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 346
    .local v2, "btAddressPref":Landroid/preference/Preference;
    if-nez v1, :cond_1

    .line 348
    if-eqz v2, :cond_0

    .line 349
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "address":Ljava/lang/String;
    :goto_1
    if-eqz v2, :cond_0

    .line 355
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .end local v0    # "address":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 352
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 355
    .restart local v0    # "address":Ljava/lang/String;
    :cond_3
    const v3, 0x7f09072c

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setSimListEntrance()V
    .locals 4

    .prologue
    .line 256
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mExt:Lcom/mediatek/settings/ext/IStatusGeminiExt;

    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mSimStatus:Landroid/preference/Preference;

    invoke-interface {v1, v2, v3}, Lcom/mediatek/settings/ext/IStatusGeminiExt;->initUI(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V

    .line 257
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mSimStatus:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 258
    invoke-static {p0}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v0

    .line 259
    .local v0, "simNum":I
    const-string v1, "Gemini_Aboutphone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simNum num "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-nez v0, :cond_0

    .line 261
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mSimStatus:Landroid/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 265
    .end local v0    # "simNum":I
    :cond_0
    return-void
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "preference"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 268
    const-string v2, "Gemini_Aboutphone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with text="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 270
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090419

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 272
    :cond_0
    const-string v2, "slot_status"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 274
    .local v1, "parent":Landroid/preference/PreferenceScreen;
    invoke-virtual {v1, p1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 275
    .local v0, "p":Landroid/preference/Preference;
    if-nez v0, :cond_2

    .line 276
    const-string v2, "Gemini_Aboutphone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slot_status not find preference "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_1

    .line 280
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 285
    :cond_1
    :goto_0
    return-void

    .line 283
    :cond_2
    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setWifiStatus()V
    .locals 9

    .prologue
    const v8, 0x7f09072c

    .line 309
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 310
    .local v6, "wifiManager":Landroid/net/wifi/WifiManager;
    const/4 v3, 0x0

    .line 311
    .local v3, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v6, :cond_0

    .line 312
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 315
    :cond_0
    const-string v7, "wifi_mac_address"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 316
    .local v5, "wifiMacAddressPref":Landroid/preference/Preference;
    if-nez v3, :cond_2

    const/4 v2, 0x0

    .line 317
    .local v2, "macAddress":Ljava/lang/String;
    :goto_0
    if-eqz v5, :cond_1

    .line 322
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v1, 0x1

    .line 323
    .local v1, "isWifiMacAddressAvailable":Z
    :goto_1
    if-eqz v1, :cond_4

    .end local v2    # "macAddress":Ljava/lang/String;
    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    .end local v1    # "isWifiMacAddressAvailable":Z
    :cond_1
    const-string v7, "wifi_ip_address"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 329
    .local v4, "wifiIpAddressPref":Landroid/preference/Preference;
    invoke-static {p0}, Lcom/android/settings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 333
    .local v0, "ipAddress":Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 335
    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 340
    :goto_3
    return-void

    .line 316
    .end local v0    # "ipAddress":Ljava/lang/String;
    .end local v4    # "wifiIpAddressPref":Landroid/preference/Preference;
    :cond_2
    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 322
    .restart local v2    # "macAddress":Ljava/lang/String;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 323
    .restart local v1    # "isWifiMacAddressAvailable":Z
    :cond_4
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 337
    .end local v1    # "isWifiMacAddressAvailable":Z
    .end local v2    # "macAddress":Ljava/lang/String;
    .restart local v0    # "ipAddress":Ljava/lang/String;
    .restart local v4    # "wifiIpAddressPref":Landroid/preference/Preference;
    :cond_5
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method private setWimaxStatus()V
    .locals 8

    .prologue
    .line 288
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 289
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 290
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 291
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 294
    :cond_0
    if-nez v2, :cond_2

    .line 295
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 296
    .local v4, "root":Landroid/preference/PreferenceScreen;
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 297
    .local v3, "ps":Landroid/preference/Preference;
    if-eqz v3, :cond_1

    .line 298
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 306
    .end local v3    # "ps":Landroid/preference/Preference;
    .end local v4    # "root":Landroid/preference/PreferenceScreen;
    :cond_1
    :goto_0
    return-void

    .line 301
    :cond_2
    const-string v6, "wimax_mac_address"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 302
    .local v5, "wimaxMacAddressPref":Landroid/preference/Preference;
    const-string v6, "net.wimax.mac.address"

    const v7, 0x7f09072c

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, "macAddress":Ljava/lang/String;
    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 169
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 170
    const v5, 0x7f06001a

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 171
    const-string v5, "Gemini_Aboutphone"

    const-string v7, "Enter StatusGemini onCreate function."

    invoke-static {v5, v7}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static {p0}, Lcom/android/settings/Utils;->getStatusGeminiExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/IStatusGeminiExt;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mExt:Lcom/mediatek/settings/ext/IStatusGeminiExt;

    .line 173
    invoke-static {p0}, Lcom/android/settings/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 175
    new-instance v5, Lcom/mediatek/settings/deviceinfo/StatusGemini$MyHandler;

    invoke-direct {v5, p0}, Lcom/mediatek/settings/deviceinfo/StatusGemini$MyHandler;-><init>(Lcom/mediatek/settings/deviceinfo/StatusGemini;)V

    iput-object v5, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mHandler:Landroid/os/Handler;

    .line 176
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v5, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 178
    const-string v5, "battery_level"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mBatteryLevel:Landroid/preference/Preference;

    .line 179
    const-string v5, "battery_status"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mBatteryStatus:Landroid/preference/Preference;

    .line 180
    const-string v5, "up_time"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mUptime:Landroid/preference/Preference;

    .line 182
    const-string v5, "sim_status"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mSimStatus:Landroid/preference/Preference;

    .line 184
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mRes:Landroid/content/res/Resources;

    .line 185
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mRes:Landroid/content/res/Resources;

    const v7, 0x7f090419

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/mediatek/settings/deviceinfo/StatusGemini;->sUnknown:Ljava/lang/String;

    .line 187
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 189
    .local v0, "cm":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 190
    .local v2, "sIsWifiOnly":Z
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {v0, v6}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v2, 0x1

    .line 193
    :goto_0
    const-string v5, "Gemini_Aboutphone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sIsWifiOnly="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    if-nez v2, :cond_4

    .line 197
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/StatusGemini;->setSimListEntrance()V

    .line 199
    sget-object v3, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 200
    .local v3, "serial":Ljava/lang/String;
    if-eqz v3, :cond_3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 201
    const-string v5, "serial_number"

    invoke-direct {p0, v5, v3}, Lcom/mediatek/settings/deviceinfo/StatusGemini;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .end local v3    # "serial":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v6

    .line 191
    goto :goto_0

    .line 203
    .restart local v3    # "serial":Ljava/lang/String;
    :cond_3
    const-string v5, "serial_number"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 204
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 210
    .end local v1    # "pref":Landroid/preference/Preference;
    .end local v3    # "serial":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mSimStatus:Landroid/preference/Preference;

    if-eqz v5, :cond_5

    .line 211
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mSimStatus:Landroid/preference/Preference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 215
    :cond_5
    const-string v5, "slot_status"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 216
    .local v4, "slotStatus":Landroid/preference/Preference;
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 248
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 249
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 250
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->myReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 251
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 252
    return-void
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 224
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 226
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 228
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    const v3, 0x7f0901cb

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "newTitle":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    const v3, 0x7f0901cc

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "newSummary":Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mSimStatus:Landroid/preference/Preference;

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mSimStatus:Landroid/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 237
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->myReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 238
    iget-object v2, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->myReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/StatusGemini;->setWimaxStatus()V

    .line 242
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/StatusGemini;->setWifiStatus()V

    .line 243
    invoke-direct {p0}, Lcom/mediatek/settings/deviceinfo/StatusGemini;->setBtStatus()V

    .line 244
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 362
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 363
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 365
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 366
    const-wide/16 v2, 0x1

    .line 369
    :cond_0
    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/mediatek/settings/deviceinfo/StatusGemini;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 370
    return-void
.end method
