.class public Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;
.super Ljava/lang/Object;
.source "PlusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/util/PlusUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceIdentify"
.end annotation


# static fields
.field private static final WIFI_MAC:Ljava/lang/String; = "mac"

.field private static context:Landroid/content/Context;

.field private static deviceId:Ljava/lang/String;

.field private static deviceIdType:Ljava/lang/String;

.field private static wifiReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const-string v0, "000000000000"

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->deviceId:Ljava/lang/String;

    .line 104
    const-string v0, "mac"

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->deviceIdType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->getAndSaveMac()Z

    move-result v0

    return v0
.end method

.method private static getAndSaveMac()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 173
    sget-object v6, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->context:Landroid/content/Context;

    const-string v7, "PlusUtil"

    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 175
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v6, "mac"

    invoke-interface {v2, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 176
    const-string v5, "mac"

    sget-object v6, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->deviceId:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mac"

    invoke-static {v5, v6}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->setDeviceIdentify(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    return v4

    .line 179
    :cond_0
    sget-object v6, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->context:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 180
    .local v3, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 181
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "macAddress":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 183
    const-string v5, "MAC: "

    invoke-static {v5, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "mac"

    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 185
    const-string v5, "mac"

    sget-object v6, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->deviceId:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "mac"

    invoke-static {v5, v6}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->setDeviceIdentify(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v4, v5

    .line 188
    goto :goto_0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceIdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->deviceIdType:Ljava/lang/String;

    return-object v0
.end method

.method private static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 214
    .local v0, "telephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getIMEI(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "simId"    # I

    .prologue
    .line 219
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/sdac/DeviceDataImpl;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/sdac/DeviceDataImpl;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/lenovo/lps/reaper/sdk/sdac/DeviceDataImpl;->getIMEI(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getSN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 225
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 227
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initialDeviceIdentify(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    sput-object p0, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->context:Landroid/content/Context;

    .line 117
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->getIMEI(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "imei":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "00000000"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "imei"

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->setDeviceIdentify(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->isLenovoDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->getSN()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "sn":Ljava/lang/String;
    const-string v2, "SN: "

    invoke-static {v2, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 127
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sn"

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->setDeviceIdentify(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    .end local v1    # "sn":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->setOnWifiListener()V

    goto :goto_0
.end method

.method private static isLenovoDevice()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 233
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "manufacturer":Ljava/lang/String;
    if-eqz v0, :cond_1

    const-string v3, "lenovo"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v2

    .line 237
    :cond_1
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "model":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v3, "lenovo"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 241
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static setDeviceIdentify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "deviceId"    # Ljava/lang/String;
    .param p1, "deviceIdType"    # Ljava/lang/String;

    .prologue
    .line 203
    sput-object p0, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->deviceId:Ljava/lang/String;

    .line 204
    sput-object p1, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->deviceIdType:Ljava/lang/String;

    .line 205
    const-string v0, "PlusUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DeviceType&Id is Set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->getDeviceIdType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public static setOffWifiListener()V
    .locals 3

    .prologue
    .line 136
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->wifiReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 138
    :try_start_0
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->context:Landroid/content/Context;

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->wifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 139
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 140
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "PlusUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setOnWifiListener()V
    .locals 3

    .prologue
    .line 149
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "mIntentFilter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->getAndSaveMac()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->wifiReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 157
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify$1;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify$1;-><init>()V

    sput-object v1, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->wifiReceiver:Landroid/content/BroadcastReceiver;

    .line 166
    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->context:Landroid/content/Context;

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->wifiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method
