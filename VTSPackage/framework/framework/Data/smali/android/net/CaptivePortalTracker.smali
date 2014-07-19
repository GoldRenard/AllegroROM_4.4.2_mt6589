.class public Landroid/net/CaptivePortalTracker;
.super Lcom/android/internal/util/StateMachine;
.source "CaptivePortalTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;,
        Landroid/net/CaptivePortalTracker$ActiveNetworkState;,
        Landroid/net/CaptivePortalTracker$NoActiveNetworkState;,
        Landroid/net/CaptivePortalTracker$DefaultState;,
        Landroid/net/CaptivePortalTracker$ProvisioningObserver;
    }
.end annotation


# static fields
.field private static final ACCEPT_CHARSET_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "utf-8, utf-16, *;q=0.7"

.field private static final ACCEPT_ENCODING_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "gzip,deflate"

.field private static final ACCEPT_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

.field private static final ACCEPT_LANGUAGE_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "zh-CN, en-US"

.field public static final ACTION_NETWORK_CONDITIONS_MEASURED:Ljava/lang/String; = "android.net.conn.NETWORK_CONDITIONS_MEASURED"

.field private static final CMD_CONNECTIVITY_CHANGE:I = 0x1

.field private static final CMD_DELAYED_CAPTIVE_CHECK:I = 0x2

.field private static final CMD_DETECT_PORTAL:I = 0x0

.field private static final CONNECTION_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "keep-alive"

.field private static final DBG:Z = true

.field private static final DEFAULT_SERVER:Ljava/lang/String; = "clients3.google.com"

.field private static final DELAYED_CHECK_INTERVAL_MS:I = 0x1f4

.field public static final EXTRA_BSSID:Ljava/lang/String; = "extra_bssid"

.field public static final EXTRA_CELL_ID:Ljava/lang/String; = "extra_cellid"

.field public static final EXTRA_CONNECTIVITY_TYPE:Ljava/lang/String; = "extra_connectivity_type"

.field public static final EXTRA_IS_CAPTIVE_PORTAL:Ljava/lang/String; = "extra_is_captive_portal"

.field public static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "extra_network_type"

.field public static final EXTRA_REQUEST_TIMESTAMP_MS:Ljava/lang/String; = "extra_request_timestamp_ms"

.field public static final EXTRA_RESPONSE_RECEIVED:Ljava/lang/String; = "extra_response_received"

.field public static final EXTRA_RESPONSE_TIMESTAMP_MS:Ljava/lang/String; = "extra_response_timestamp_ms"

.field public static final EXTRA_SSID:Ljava/lang/String; = "extra_ssid"

.field private static final FILE_WIFI_SUPPLICANT:Ljava/lang/String; = "/data/misc/wifi/wpa_supplicant.conf"

.field private static final HTTP_HEADER_NAME_ACCEPT:Ljava/lang/String; = "Accept"

.field private static final HTTP_HEADER_NAME_ACCEPT_CHARSET:Ljava/lang/String; = "Accept-Charset"

.field private static final HTTP_HEADER_NAME_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final HTTP_HEADER_NAME_ACCEPT_LANGUAGE:Ljava/lang/String; = "Accept-Language"

.field private static final HTTP_HEADER_NAME_CONNECTION:Ljava/lang/String; = "Connection"

.field private static final HTTP_HEADER_NAME_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final HTTP_HEADER_NAME_X_REQUESTED_WITH:Ljava/lang/String; = "X-Requested-with"

.field private static final HTTP_HEADER_NAME_X_WAP_PROFILE:Ljava/lang/String; = "x-wap-profile"

.field private static final PERMISSION_ACCESS_NETWORK_CONDITIONS:Ljava/lang/String; = "android.permission.ACCESS_NETWORK_CONDITIONS"

.field private static final SETUP_WIZARD_PACKAGE:Ljava/lang/String; = "com.google.android.setupwizard"

.field private static final SOCKET_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "CaptivePortalTracker"

.field private static final USER_AGENT_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "Lenovo-S960/S104 Linux/3.0.13 Android/4.2 Release/07.05.2013 Browser/AppleWebKit534.30 Profile/ configuration"

.field private static final X_REQUESTED_WITH_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "com.lenovo.browser"

.field private static final X_WAP_PROFILE_HEADER_DEFAULT_VALUE:Ljava/lang/String; = "http://218.249.47.94/xianghe/MTK_Phone_JB_UAprofile.xml"


# instance fields
.field private mActiveNetworkState:Lcom/android/internal/util/State;

.field private mConnService:Landroid/net/IConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDefaultState:Lcom/android/internal/util/State;

.field private mDelayedCaptiveCheckState:Lcom/android/internal/util/State;

.field private mDelayedCheckToken:I

.field private mDeviceProvisioned:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mIsCaptiveOverMobile:Z

.field private mIsCaptivePortalCheckEnabled:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNoActiveNetworkState:Lcom/android/internal/util/State;

.field private mProvisioningObserver:Landroid/net/CaptivePortalTracker$ProvisioningObserver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mServer:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUrl:Ljava/lang/String;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cs"    # Landroid/net/IConnectivityManager;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 161
    const-string v1, "CaptivePortalTracker"

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 128
    iput-boolean v3, p0, Landroid/net/CaptivePortalTracker;->mIsCaptivePortalCheckEnabled:Z

    .line 145
    iput v3, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    .line 147
    new-instance v1, Landroid/net/CaptivePortalTracker$DefaultState;

    invoke-direct {v1, p0, v4}, Landroid/net/CaptivePortalTracker$DefaultState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lcom/android/internal/util/State;

    .line 148
    new-instance v1, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;

    invoke-direct {v1, p0, v4}, Landroid/net/CaptivePortalTracker$NoActiveNetworkState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;

    .line 149
    new-instance v1, Landroid/net/CaptivePortalTracker$ActiveNetworkState;

    invoke-direct {v1, p0, v4}, Landroid/net/CaptivePortalTracker$ActiveNetworkState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;

    .line 150
    new-instance v1, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;

    invoke-direct {v1, p0, v4}, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;-><init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mDelayedCaptiveCheckState:Lcom/android/internal/util/State;

    .line 153
    iput-boolean v3, p0, Landroid/net/CaptivePortalTracker;->mDeviceProvisioned:Z

    .line 157
    iput-boolean v3, p0, Landroid/net/CaptivePortalTracker;->mIsCaptiveOverMobile:Z

    .line 214
    new-instance v1, Landroid/net/CaptivePortalTracker$1;

    invoke-direct {v1, p0}, Landroid/net/CaptivePortalTracker$1;-><init>(Landroid/net/CaptivePortalTracker;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1124
    iput-object v4, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    .line 163
    iput-object p1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    .line 164
    iput-object p2, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    .line 165
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 166
    const-string/jumbo v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 167
    new-instance v1, Landroid/net/CaptivePortalTracker$ProvisioningObserver;

    invoke-direct {v1, p0}, Landroid/net/CaptivePortalTracker$ProvisioningObserver;-><init>(Landroid/net/CaptivePortalTracker;)V

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mProvisioningObserver:Landroid/net/CaptivePortalTracker$ProvisioningObserver;

    .line 169
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 170
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/net/CaptivePortalTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "captive_portal_server"

    invoke-static {v1, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    .line 183
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "clients3.google.com"

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    .line 185
    :cond_0
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "captive_portal_detection_enabled"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/net/CaptivePortalTracker;->mIsCaptivePortalCheckEnabled:Z

    .line 188
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/CaptivePortalTracker;->addState(Lcom/android/internal/util/State;)V

    .line 189
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/CaptivePortalTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 190
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/CaptivePortalTracker;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/CaptivePortalTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 191
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mDelayedCaptiveCheckState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/CaptivePortalTracker;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 192
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/CaptivePortalTracker;->setInitialState(Lcom/android/internal/util/State;)V

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x20c0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/net/CaptivePortalTracker;->mIsCaptiveOverMobile:Z

    .line 197
    return-void

    :cond_1
    move v1, v3

    .line 185
    goto :goto_0
.end method

.method static synthetic access$1000(Landroid/net/CaptivePortalTracker;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/net/CaptivePortalTracker;->setNotificationOff()V

    return-void
.end method

.method static synthetic access$1100(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 102
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 102
    iput-object p1, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->isActiveNetwork(Landroid/net/NetworkInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 102
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCaptiveCheckState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 102
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mNoActiveNetworkState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2000(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/net/CaptivePortalTracker;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/net/CaptivePortalTracker;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 102
    iget v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    return v0
.end method

.method static synthetic access$2304(Landroid/net/CaptivePortalTracker;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 102
    iget v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I

    return v0
.end method

.method static synthetic access$2400(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 102
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Landroid/net/CaptivePortalTracker;Ljava/net/InetAddress;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/net/InetAddress;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->isCaptivePortal(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Landroid/net/CaptivePortalTracker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/net/CaptivePortalTracker;->autoAuthorize()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Landroid/net/CaptivePortalTracker;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/net/CaptivePortalTracker;->showCaptivePortalDialog()V

    return-void
.end method

.method static synthetic access$3000(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/net/CaptivePortalTracker;->getTopVisiblePackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/net/CaptivePortalTracker;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/net/CaptivePortalTracker;->showInvalidWLANDialog()V

    return-void
.end method

.method static synthetic access$3300(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo;
    .param p2, "x2"    # Z

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Landroid/net/CaptivePortalTracker;->notifyPortalCheckCompleted(Landroid/net/NetworkInfo;Z)V

    return-void
.end method

.method static synthetic access$3600(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 102
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/net/CaptivePortalTracker;)Landroid/net/IConnectivityManager;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 102
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 102
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/CaptivePortalTracker;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 102
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/CaptivePortalTracker;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 102
    iget-boolean v0, p0, Landroid/net/CaptivePortalTracker;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$502(Landroid/net/CaptivePortalTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 102
    iput-boolean p1, p0, Landroid/net/CaptivePortalTracker;->mDeviceProvisioned:Z

    return p1
.end method

.method static synthetic access$600(Landroid/net/CaptivePortalTracker;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;

    .prologue
    .line 102
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$602(Landroid/net/CaptivePortalTracker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 102
    iput-object p1, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$700(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo;

    .prologue
    .line 102
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker;->notifyPortalCheckComplete(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$900(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Landroid/net/CaptivePortalTracker;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private addDefaultHeader(Lorg/apache/http/client/methods/HttpGet;)V
    .locals 2
    .param p1, "getMethod"    # Lorg/apache/http/client/methods/HttpGet;

    .prologue
    .line 676
    if-nez p1, :cond_0

    .line 688
    :goto_0
    return-void

    .line 679
    :cond_0
    const-string v0, "Connection"

    const-string v1, "keep-alive"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    const-string v0, "Accept"

    const-string/jumbo v1, "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const-string/jumbo v0, "x-wap-profile"

    const-string v1, "http://218.249.47.94/xianghe/MTK_Phone_JB_UAprofile.xml"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    const-string v0, "User-Agent"

    const-string v1, "Lenovo-S960/S104 Linux/3.0.13 Android/4.2 Release/07.05.2013 Browser/AppleWebKit534.30 Profile/ configuration"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip,deflate"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    const-string v0, "Accept-Language"

    const-string/jumbo v1, "zh-CN, en-US"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const-string v0, "Accept-Charset"

    const-string/jumbo v1, "utf-8, utf-16, *;q=0.7"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const-string v0, "X-Requested-with"

    const-string v1, "com.lenovo.browser"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private autoAuthorize()Z
    .locals 26

    .prologue
    .line 881
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 883
    .local v10, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    const/4 v8, 0x0

    .line 885
    .local v8, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    const/4 v14, 0x0

    .line 887
    .local v14, "response":Lorg/apache/http/HttpResponse;
    const/16 v18, 0x0

    .line 889
    .local v18, "statusCode":I
    const/4 v15, 0x0

    .line 891
    .local v15, "responseString":Ljava/lang/String;
    const/16 v20, 0x0

    .line 893
    .local v20, "uriString":Ljava/lang/String;
    const/16 v19, 0x1

    .line 895
    .local v19, "step":I
    const/4 v13, 0x0

    .line 897
    .local v13, "redirect_count":I
    const-string v23, "CaptivePortalTracker"

    const-string v24, "[ Auto Authorize ] :: autoAuthorize Begin"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    if-nez v10, :cond_0

    .line 901
    const-string v23, "CaptivePortalTracker"

    const-string v24, "[ Auto Authorize ] :: autoAuthorize, Null HTTP Client"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    const/16 v23, 0x0

    .line 1120
    :goto_0
    return v23

    .line 906
    :cond_0
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v12

    .line 907
    .local v12, "params":Lorg/apache/http/params/HttpParams;
    if-eqz v12, :cond_1

    .line 909
    const-string v23, "http.protocol.handle-redirects"

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-interface {v12, v0, v1}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 912
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/net/CaptivePortalTracker;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v17

    .line 914
    .local v17, "server":Ljava/net/InetAddress;
    if-nez v17, :cond_2

    .line 915
    const/16 v23, 0x0

    goto :goto_0

    .line 917
    :cond_2
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "http://"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/generate_204"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 922
    :cond_3
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step 1, uri: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :try_start_0
    new-instance v9, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .local v9, "getMethod":Lorg/apache/http/client/methods/HttpGet;
    move-object v8, v9

    .line 935
    .end local v9    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    .restart local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    :goto_1
    if-nez v8, :cond_4

    .line 937
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Null Get Method"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 927
    :catch_0
    move-exception v4

    .line 929
    .local v4, "e0":Ljava/lang/IllegalArgumentException;
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", create HttpGet Fail, IllegalArgumentException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 930
    .end local v4    # "e0":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 932
    .local v3, "e":Ljava/lang/Exception;
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", create HttpGet Fail, Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 941
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/net/CaptivePortalTracker;->addDefaultHeader(Lorg/apache/http/client/methods/HttpGet;)V

    .line 945
    :try_start_1
    invoke-virtual {v10, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v14

    .line 960
    :goto_2
    if-nez v14, :cond_5

    .line 962
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Null HTTP Response"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 946
    :catch_2
    move-exception v5

    .line 948
    .local v5, "e1":Lorg/apache/http/client/ClientProtocolException;
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, ClientProtocolException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 949
    .end local v5    # "e1":Lorg/apache/http/client/ClientProtocolException;
    :catch_3
    move-exception v6

    .line 951
    .local v6, "e2":Ljava/io/IOException;
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, IOException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 952
    .end local v6    # "e2":Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 954
    .local v7, "e3":Ljava/lang/IllegalStateException;
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, IllegalStateException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 955
    .end local v7    # "e3":Ljava/lang/IllegalStateException;
    :catch_5
    move-exception v3

    .line 957
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 966
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_5
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    .line 968
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", responseCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const/16 v23, 0x12d

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    const/16 v23, 0x12e

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    .line 972
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "http://"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v17 .. v17}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/generate_204"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 974
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Unexpected HTTP ResponseCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 980
    :cond_6
    const-string v23, "location"

    move-object/from16 v0, v23

    invoke-interface {v14, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v11

    .line 982
    .local v11, "locationHeader":Lorg/apache/http/Header;
    if-nez v11, :cond_7

    .line 984
    const-string v23, "CaptivePortalTracker"

    const-string v24, "[ Auto Authorize ] :: autoAuthorize, Step 1, Location Header Not Found"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 988
    :cond_7
    invoke-interface {v11}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v20

    .line 990
    add-int/lit8 v13, v13, 0x1

    .line 1005
    .end local v11    # "locationHeader":Lorg/apache/http/Header;
    :cond_8
    const/16 v23, 0x12d

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_9

    const/16 v23, 0x12e

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_a

    :cond_9
    const/16 v23, 0x3

    move/from16 v0, v23

    if-le v13, v0, :cond_3

    .line 1007
    :cond_a
    const/16 v23, 0x3

    move/from16 v0, v23

    if-le v13, v0, :cond_c

    const/16 v23, 0x12d

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_b

    const/16 v23, 0x12e

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 1009
    :cond_b
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Too Many Redirect"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1013
    :cond_c
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step 1 Complete, Redirect to: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    add-int/lit8 v19, v19, 0x1

    .line 1018
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    .end local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1020
    .restart local v8    # "getMethod":Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/net/CaptivePortalTracker;->addDefaultHeader(Lorg/apache/http/client/methods/HttpGet;)V

    .line 1024
    :try_start_2
    invoke-virtual {v10, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    move-result-object v14

    .line 1036
    :goto_3
    if-nez v14, :cond_d

    .line 1038
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Null HTTP Response"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1025
    :catch_6
    move-exception v5

    .line 1027
    .restart local v5    # "e1":Lorg/apache/http/client/ClientProtocolException;
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, ClientProtocolException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1028
    .end local v5    # "e1":Lorg/apache/http/client/ClientProtocolException;
    :catch_7
    move-exception v6

    .line 1030
    .restart local v6    # "e2":Ljava/io/IOException;
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, IOException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1031
    .end local v6    # "e2":Ljava/io/IOException;
    :catch_8
    move-exception v3

    .line 1033
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1042
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_d
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    .line 1044
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", responseCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const/16 v23, 0x191

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_e

    .line 1048
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step 2 Complete, Authorization is NOT requested, ResponseCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1052
    :cond_e
    const-string v23, "CaptivePortalTracker"

    const-string v24, "[ Auto Authorize ] :: autoAuthorize, Step 2 Complete, Authorization is requested"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    add-int/lit8 v19, v19, 0x1

    .line 1057
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/net/CaptivePortalTracker;->getUserNameAndPasswordForHost(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1059
    .local v16, "result":[Ljava/lang/String;
    if-nez v16, :cond_f

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    const-string/jumbo v24, "wifi"

    invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/WifiManager;

    .line 1063
    .local v22, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v22, :cond_f

    .line 1065
    invoke-virtual/range {v22 .. v22}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v21

    .line 1067
    .local v21, "wifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v21, :cond_f

    .line 1069
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/net/CaptivePortalTracker;->getUserNameAndPasswordForAP(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1074
    .end local v21    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    .end local v22    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_f
    if-nez v16, :cond_10

    .line 1076
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Username & Password Not Found, Authorize Fail"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1080
    :cond_10
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Username: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v25, v16, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Password: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "*"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    new-instance v2, Lorg/apache/http/auth/NTCredentials;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v24, 0x0

    aget-object v24, v16, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ":"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x1

    aget-object v24, v16, v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Lorg/apache/http/auth/NTCredentials;-><init>(Ljava/lang/String;)V

    .line 1084
    .local v2, "creds":Lorg/apache/http/auth/NTCredentials;
    invoke-virtual {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v23

    sget-object v24, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 1088
    :try_start_3
    invoke-virtual {v10, v8}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_b

    move-result-object v14

    .line 1100
    :goto_4
    if-nez v14, :cond_11

    .line 1102
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Null HTTP Response"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1089
    :catch_9
    move-exception v5

    .line 1091
    .restart local v5    # "e1":Lorg/apache/http/client/ClientProtocolException;
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, ClientProtocolException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1092
    .end local v5    # "e1":Lorg/apache/http/client/ClientProtocolException;
    :catch_a
    move-exception v6

    .line 1094
    .restart local v6    # "e2":Ljava/io/IOException;
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, IOException occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1095
    .end local v6    # "e2":Ljava/io/IOException;
    :catch_b
    move-exception v3

    .line 1097
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", execute() Fail, Exception: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " occured"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1106
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_11
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    .line 1108
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", responseCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    const/16 v23, 0x191

    move/from16 v0, v18

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    .line 1112
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step 3 Complete, Authorization is FAIL, ResponseCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 1116
    :cond_12
    const-string v23, "CaptivePortalTracker"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "[ Auto Authorize ] :: autoAuthorize, Step 3 Complete, Authorization is SUCCESS, ResponseCode: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const-string v23, "CaptivePortalTracker"

    const-string v24, "[ Auto Authorize ] :: autoAuthorize End"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const/16 v23, 0x1

    goto/16 :goto_0
.end method

.method private getTopVisiblePackageName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1206
    const/4 v1, 0x0

    .line 1208
    .local v1, "packageName":Ljava/lang/String;
    iget-object v4, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1210
    .local v0, "activityManager":Landroid/app/ActivityManager;
    if-eqz v0, :cond_0

    .line 1212
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 1214
    .local v3, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1217
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1219
    .local v2, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_0

    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 1222
    iget-object v4, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1224
    const-string v4, "CaptivePortalTracker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTopVisiblePackageName, packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", topActivity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    .end local v2    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    return-object v1
.end method

.method private getUserNameAndPasswordForAP(Ljava/lang/String;)[Ljava/lang/String;
    .locals 20
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 693
    const/16 v16, 0x0

    .local v16, "userName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 695
    .local v9, "passWord":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 696
    const/4 v14, 0x0

    .line 866
    :cond_0
    :goto_0
    return-object v14

    .line 698
    :cond_1
    const-string v17, "CaptivePortalTracker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, ssid: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    const/4 v12, 0x0

    .line 704
    .local v12, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string v17, "/data/misc/wifi/wpa_supplicant.conf"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 706
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_2

    .line 708
    const-string v17, "CaptivePortalTracker"

    const-string v18, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, Supplicant file NOT Exist"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 709
    const/4 v14, 0x0

    .line 791
    if-eqz v12, :cond_0

    .line 795
    :try_start_1
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 796
    :catch_0
    move-exception v4

    .line 798
    .local v4, "e2":Ljava/io/IOException;
    const-string v17, "CaptivePortalTracker"

    const-string v18, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, IOException occured when close BufferReader"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 712
    .end local v4    # "e2":Ljava/io/IOException;
    :cond_2
    :try_start_2
    new-instance v13, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/FileReader;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 714
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .local v13, "reader":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 718
    .local v8, "networkInfoMask":Z
    const/4 v11, 0x0

    .local v11, "preSharedKey":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "identity":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "password":Ljava/lang/String;
    const/4 v2, 0x0

    .line 720
    .local v2, "SSID":Ljava/lang/String;
    :cond_3
    :goto_1
    :try_start_3
    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 722
    const/4 v15, 0x0

    .line 724
    .local v15, "start":I
    const-string/jumbo v17, "network={"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 726
    const/4 v8, 0x1

    .line 728
    const/4 v2, 0x0

    .line 729
    const/4 v6, 0x0

    .line 730
    const/4 v10, 0x0

    .line 731
    const/4 v11, 0x0

    .line 757
    :cond_4
    if-eqz v8, :cond_3

    .line 759
    const-string/jumbo v17, "ssid="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_a

    .line 761
    const-string/jumbo v17, "ssid="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const-string/jumbo v18, "ssid="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v15, v17, v18

    .line 763
    invoke-virtual {v7, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 733
    :cond_5
    const-string/jumbo v17, "}"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 735
    const/4 v8, 0x0

    .line 737
    const-string v17, "CaptivePortalTracker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, Read AP Info From Supplicant, ssid: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", identity: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", password: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "*"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", psk: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "*"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    if-eqz v2, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v17

    if-eqz v17, :cond_4

    .line 742
    if-eqz v6, :cond_9

    if-eqz v10, :cond_9

    .line 744
    move-object/from16 v16, v6

    .line 745
    move-object v9, v10

    .line 791
    .end local v15    # "start":I
    :cond_6
    :goto_2
    if-eqz v13, :cond_7

    .line 795
    :try_start_4
    invoke-virtual {v13}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 856
    :cond_7
    :goto_3
    if-eqz v16, :cond_8

    if-nez v9, :cond_e

    .line 858
    :cond_8
    const-string v17, "CaptivePortalTracker"

    const-string v18, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, Get UserName & Password Fail"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 747
    .restart local v15    # "start":I
    :cond_9
    if-eqz v11, :cond_6

    .line 749
    :try_start_5
    const-string v16, ""

    .line 750
    move-object v9, v11

    goto :goto_2

    .line 765
    :cond_a
    const-string v17, "identity="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_b

    .line 767
    const-string v17, "identity="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const-string v18, "identity="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v15, v17, v18

    .line 769
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 771
    :cond_b
    const-string/jumbo v17, "password="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_c

    .line 773
    const-string/jumbo v17, "password="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const-string/jumbo v18, "password="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v15, v17, v18

    .line 775
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 777
    :cond_c
    const-string/jumbo v17, "psk="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-lez v17, :cond_3

    .line 779
    const-string/jumbo v17, "psk="

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const-string/jumbo v18, "psk="

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v15, v17, v18

    .line 781
    add-int/lit8 v17, v15, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v11

    goto/16 :goto_1

    .line 796
    .end local v15    # "start":I
    :catch_1
    move-exception v4

    .line 798
    .restart local v4    # "e2":Ljava/io/IOException;
    const-string v17, "CaptivePortalTracker"

    const-string v18, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, IOException occured when close BufferReader"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 785
    .end local v2    # "SSID":Ljava/lang/String;
    .end local v4    # "e2":Ljava/io/IOException;
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "identity":Ljava/lang/String;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "networkInfoMask":Z
    .end local v10    # "password":Ljava/lang/String;
    .end local v11    # "preSharedKey":Ljava/lang/String;
    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v3

    .line 787
    .local v3, "e1":Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v17, "CaptivePortalTracker"

    const-string v18, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, IOException occured"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 788
    const/4 v14, 0x0

    .line 791
    if-eqz v12, :cond_0

    .line 795
    :try_start_7
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 796
    :catch_3
    move-exception v4

    .line 798
    .restart local v4    # "e2":Ljava/io/IOException;
    const-string v17, "CaptivePortalTracker"

    const-string v18, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, IOException occured when close BufferReader"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 791
    .end local v3    # "e1":Ljava/io/IOException;
    .end local v4    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    :goto_5
    if-eqz v12, :cond_d

    .line 795
    :try_start_8
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 799
    :cond_d
    :goto_6
    throw v17

    .line 796
    :catch_4
    move-exception v4

    .line 798
    .restart local v4    # "e2":Ljava/io/IOException;
    const-string v18, "CaptivePortalTracker"

    const-string v19, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, IOException occured when close BufferReader"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 862
    .end local v4    # "e2":Ljava/io/IOException;
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "SSID":Ljava/lang/String;
    .restart local v5    # "file":Ljava/io/File;
    .restart local v6    # "identity":Ljava/lang/String;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "networkInfoMask":Z
    .restart local v10    # "password":Ljava/lang/String;
    .restart local v11    # "preSharedKey":Ljava/lang/String;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :cond_e
    const-string v17, "CaptivePortalTracker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[ Auto Authorize ] :: getUserNameAndPasswordForAP, ssid: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", userName: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", passWord: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "*"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v14, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object v16, v14, v17

    const/16 v17, 0x1

    aput-object v9, v14, v17

    .line 866
    .local v14, "result":[Ljava/lang/String;
    goto/16 :goto_0

    .line 791
    .end local v7    # "line":Ljava/lang/String;
    .end local v14    # "result":[Ljava/lang/String;
    :catchall_1
    move-exception v17

    move-object v12, v13

    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    goto :goto_5

    .line 785
    .end local v12    # "reader":Ljava/io/BufferedReader;
    .restart local v13    # "reader":Ljava/io/BufferedReader;
    :catch_5
    move-exception v3

    move-object v12, v13

    .end local v13    # "reader":Ljava/io/BufferedReader;
    .restart local v12    # "reader":Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private getUserNameAndPasswordForHost(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "hostName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 871
    const/4 v1, 0x0

    .local v1, "userName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 873
    .local v0, "passWord":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 876
    :cond_0
    return-object v2
.end method

.method private isActiveNetwork(Landroid/net/NetworkInfo;)Z
    .locals 5
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    const/4 v2, 0x0

    .line 484
    :try_start_0
    iget-object v3, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v3}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 485
    .local v0, "active":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 488
    iget-boolean v3, p0, Landroid/net/CaptivePortalTracker;->mIsCaptiveOverMobile:Z

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    .line 496
    .end local v0    # "active":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v2

    .line 491
    .restart local v0    # "active":Landroid/net/NetworkInfo;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 493
    .end local v0    # "active":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 494
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isCaptivePortal(Ljava/net/InetAddress;)Z
    .locals 13
    .param p1, "server"    # Ljava/net/InetAddress;

    .prologue
    const/4 v3, 0x1

    const/4 v12, 0x0

    .line 515
    const/4 v11, 0x0

    .line 516
    .local v11, "urlConnection":Ljava/net/HttpURLConnection;
    iget-boolean v1, p0, Landroid/net/CaptivePortalTracker;->mIsCaptivePortalCheckEnabled:Z

    if-nez v1, :cond_1

    move v3, v12

    .line 554
    :cond_0
    :goto_0
    return v3

    .line 518
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/generate_204"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    .line 519
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    .line 520
    const-wide/16 v4, -0x1

    .line 522
    .local v4, "requestTimestamp":J
    :try_start_0
    new-instance v10, Ljava/net/URL;

    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mUrl:Ljava/lang/String;

    invoke-direct {v10, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 523
    .local v10, "url":Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v11, v0

    .line 524
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 525
    const/16 v1, 0x2710

    invoke-virtual {v11, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 526
    const/16 v1, 0x2710

    invoke-virtual {v11, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 527
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 530
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 532
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 535
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 538
    .local v6, "responseTimestamp":J
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    .line 539
    .local v9, "rspCode":I
    const/16 v1, 0xcc

    if-eq v9, v1, :cond_2

    .line 541
    .local v3, "isCaptivePortal":Z
    :goto_1
    const/4 v2, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/net/CaptivePortalTracker;->sendNetworkConditionsBroadcast(ZZJJ)V

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCaptivePortal: ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rspCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    if-eqz v11, :cond_0

    .line 554
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .end local v3    # "isCaptivePortal":Z
    :cond_2
    move v3, v12

    .line 539
    goto :goto_1

    .line 546
    .end local v6    # "responseTimestamp":J
    .end local v9    # "rspCode":I
    .end local v10    # "url":Ljava/net/URL;
    :catch_0
    move-exception v8

    .line 547
    .local v8, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Probably not a portal: exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    .line 548
    const-wide/16 v1, -0x1

    cmp-long v1, v4, v1

    if-eqz v1, :cond_3

    .line 549
    invoke-direct {p0, v4, v5}, Landroid/net/CaptivePortalTracker;->sendFailedCaptivePortalCheckBroadcast(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    :cond_3
    if-eqz v11, :cond_4

    .line 554
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    move v3, v12

    goto/16 :goto_0

    .line 553
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    if-eqz v11, :cond_5

    .line 554
    invoke-virtual {v11}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    throw v1
.end method

.method private lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 9
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 562
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 568
    .local v4, "inetAddress":[Ljava/net/InetAddress;
    move-object v1, v4

    .local v1, "arr$":[Ljava/net/InetAddress;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v1, v3

    .line 569
    .local v0, "a":Ljava/net/InetAddress;
    instance-of v7, v0, Ljava/net/Inet4Address;

    if-eqz v7, :cond_0

    .line 573
    .end local v0    # "a":Ljava/net/InetAddress;
    .end local v1    # "arr$":[Ljava/net/InetAddress;
    .end local v3    # "i$":I
    .end local v4    # "inetAddress":[Ljava/net/InetAddress;
    .end local v5    # "len$":I
    :goto_1
    return-object v0

    .line 563
    :catch_0
    move-exception v2

    .line 564
    .local v2, "e":Ljava/net/UnknownHostException;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Landroid/net/CaptivePortalTracker;->sendFailedCaptivePortalCheckBroadcast(J)V

    move-object v0, v6

    .line 565
    goto :goto_1

    .line 568
    .end local v2    # "e":Ljava/net/UnknownHostException;
    .restart local v0    # "a":Ljava/net/InetAddress;
    .restart local v1    # "arr$":[Ljava/net/InetAddress;
    .restart local v3    # "i$":I
    .restart local v4    # "inetAddress":[Ljava/net/InetAddress;
    .restart local v5    # "len$":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 572
    .end local v0    # "a":Ljava/net/InetAddress;
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-direct {p0, v7, v8}, Landroid/net/CaptivePortalTracker;->sendFailedCaptivePortalCheckBroadcast(J)V

    move-object v0, v6

    .line 573
    goto :goto_1
.end method

.method public static makeCaptivePortalTracker(Landroid/content/Context;Landroid/net/IConnectivityManager;)Landroid/net/CaptivePortalTracker;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cs"    # Landroid/net/IConnectivityManager;

    .prologue
    .line 244
    new-instance v0, Landroid/net/CaptivePortalTracker;

    invoke-direct {v0, p0, p1}, Landroid/net/CaptivePortalTracker;-><init>(Landroid/content/Context;Landroid/net/IConnectivityManager;)V

    .line 245
    .local v0, "captivePortal":Landroid/net/CaptivePortalTracker;
    invoke-virtual {v0}, Landroid/net/CaptivePortalTracker;->start()V

    .line 246
    return-object v0
.end method

.method private notifyPortalCheckComplete(Landroid/net/NetworkInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 457
    if-nez p1, :cond_0

    .line 458
    const-string/jumbo v1, "notifyPortalCheckComplete on null"

    invoke-virtual {p0, v1}, Landroid/net/CaptivePortalTracker;->loge(Ljava/lang/String;)V

    .line 467
    :goto_0
    return-void

    .line 462
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyPortalCheckComplete: ni="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    .line 463
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->captivePortalCheckComplete(Landroid/net/NetworkInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 464
    :catch_0
    move-exception v0

    .line 465
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private notifyPortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    .locals 3
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "isCaptivePortal"    # Z

    .prologue
    .line 470
    if-nez p1, :cond_0

    .line 471
    const-string/jumbo v1, "notifyPortalCheckComplete on null"

    invoke-virtual {p0, v1}, Landroid/net/CaptivePortalTracker;->loge(Ljava/lang/String;)V

    .line 480
    :goto_0
    return-void

    .line 475
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyPortalCheckCompleted: captive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ni="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    .line 476
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->captivePortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 477
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendFailedCaptivePortalCheckBroadcast(J)V
    .locals 7
    .param p1, "requestTimestampMs"    # J

    .prologue
    const/4 v1, 0x0

    .line 577
    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, v1

    move-wide v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/net/CaptivePortalTracker;->sendNetworkConditionsBroadcast(ZZJJ)V

    .line 579
    return-void
.end method

.method private sendNetworkConditionsBroadcast(ZZJJ)V
    .locals 13
    .param p1, "responseReceived"    # Z
    .param p2, "isCaptivePortal"    # Z
    .param p3, "requestTimestampMs"    # J
    .param p5, "responseTimestampMs"    # J

    .prologue
    .line 587
    iget-object v10, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "wifi_scan_always_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_1

    .line 589
    const-string v10, "Don\'t send network conditions - lacking user consent."

    invoke-virtual {p0, v10}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 593
    :cond_1
    new-instance v7, Landroid/content/Intent;

    const-string v10, "android.net.conn.NETWORK_CONDITIONS_MEASURED"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 594
    .local v7, "latencyBroadcast":Landroid/content/Intent;
    iget-object v10, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 606
    :pswitch_0
    const-string v10, "extra_network_type"

    iget-object v11, p0, Landroid/net/CaptivePortalTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 607
    iget-object v10, p0, Landroid/net/CaptivePortalTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v6

    .line 608
    .local v6, "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v6, :cond_0

    .line 609
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 610
    .local v9, "uniqueCellId":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 611
    .local v8, "numRegisteredCellInfo":I
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 612
    .local v3, "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 613
    add-int/lit8 v8, v8, 0x1

    .line 614
    const/4 v10, 0x1

    if-le v8, v10, :cond_6

    .line 615
    const-string/jumbo v10, "more than one registered CellInfo.  Can\'t tell which is active.  Bailing."

    invoke-virtual {p0, v10}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 596
    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .end local v8    # "numRegisteredCellInfo":I
    .end local v9    # "uniqueCellId":Ljava/lang/StringBuffer;
    :pswitch_1
    iget-object v10, p0, Landroid/net/CaptivePortalTracker;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 597
    .local v4, "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_5

    .line 598
    const-string v10, "extra_ssid"

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string v10, "extra_bssid"

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 641
    .end local v4    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_3
    const-string v10, "extra_connectivity_type"

    iget-object v11, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v11}, Landroid/net/NetworkInfo;->getType()I

    move-result v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 642
    const-string v10, "extra_response_received"

    invoke-virtual {v7, v10, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 643
    const-string v10, "extra_request_timestamp_ms"

    move-wide/from16 v0, p3

    invoke-virtual {v7, v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 645
    if-eqz p1, :cond_4

    .line 646
    const-string v10, "extra_is_captive_portal"

    invoke-virtual {v7, v10, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 647
    const-string v10, "extra_response_timestamp_ms"

    move-wide/from16 v0, p5

    invoke-virtual {v7, v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 649
    :cond_4
    iget-object v10, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.ACCESS_NETWORK_CONDITIONS"

    invoke-virtual {v10, v7, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 601
    .restart local v4    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_5
    const-string/jumbo v10, "network info is TYPE_WIFI but no ConnectionInfo found"

    invoke-virtual {p0, v10}, Landroid/net/CaptivePortalTracker;->logw(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 619
    .end local v4    # "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .restart local v8    # "numRegisteredCellInfo":I
    .restart local v9    # "uniqueCellId":Ljava/lang/StringBuffer;
    :cond_6
    instance-of v10, v3, Landroid/telephony/CellInfoCdma;

    if-eqz v10, :cond_7

    .line 620
    check-cast v3, Landroid/telephony/CellInfoCdma;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v2

    .line 621
    .local v2, "cellId":Landroid/telephony/CellIdentityCdma;
    const-string v10, "extra_cellid"

    invoke-virtual {v7, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 622
    .end local v2    # "cellId":Landroid/telephony/CellIdentityCdma;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_7
    instance-of v10, v3, Landroid/telephony/CellInfoGsm;

    if-eqz v10, :cond_8

    .line 623
    check-cast v3, Landroid/telephony/CellInfoGsm;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v2

    .line 624
    .local v2, "cellId":Landroid/telephony/CellIdentityGsm;
    const-string v10, "extra_cellid"

    invoke-virtual {v7, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 625
    .end local v2    # "cellId":Landroid/telephony/CellIdentityGsm;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_8
    instance-of v10, v3, Landroid/telephony/CellInfoLte;

    if-eqz v10, :cond_9

    .line 626
    check-cast v3, Landroid/telephony/CellInfoLte;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    .line 627
    .local v2, "cellId":Landroid/telephony/CellIdentityLte;
    const-string v10, "extra_cellid"

    invoke-virtual {v7, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 628
    .end local v2    # "cellId":Landroid/telephony/CellIdentityLte;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_9
    instance-of v10, v3, Landroid/telephony/CellInfoWcdma;

    if-eqz v10, :cond_a

    .line 629
    check-cast v3, Landroid/telephony/CellInfoWcdma;

    .end local v3    # "cellInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v3}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v2

    .line 630
    .local v2, "cellId":Landroid/telephony/CellIdentityWcdma;
    const-string v10, "extra_cellid"

    invoke-virtual {v7, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 632
    .end local v2    # "cellId":Landroid/telephony/CellIdentityWcdma;
    .restart local v3    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_a
    const-string v10, "Registered cellinfo is unrecognized"

    invoke-virtual {p0, v10}, Landroid/net/CaptivePortalTracker;->logw(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 594
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setNotificationOff()V
    .locals 6

    .prologue
    .line 501
    :try_start_0
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    .line 502
    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mConnService:Landroid/net/IConnectivityManager;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/net/IConnectivityManager;->setProvisioningNotificationVisible(ZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNotificationOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showCaptivePortalDialog()V
    .locals 3

    .prologue
    .line 1128
    const-string v0, "CaptivePortalTracker"

    const-string/jumbo v1, "showCaptivePortalDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1133
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    .line 1136
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x30b0024

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x30b0025

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x30b0026

    new-instance v2, Landroid/net/CaptivePortalTracker$2;

    invoke-direct {v2, p0}, Landroid/net/CaptivePortalTracker$2;-><init>(Landroid/net/CaptivePortalTracker;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    .line 1191
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1193
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1194
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1196
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1200
    :cond_1
    return-void
.end method

.method private showInvalidWLANDialog()V
    .locals 3

    .prologue
    .line 1234
    const-string v0, "CaptivePortalTracker"

    const-string/jumbo v1, "showInvalidWLANDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1239
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    .line 1242
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x30b0027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x30b0028

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x30b0029

    new-instance v2, Landroid/net/CaptivePortalTracker$3;

    invoke-direct {v2, p0}, Landroid/net/CaptivePortalTracker$3;-><init>(Landroid/net/CaptivePortalTracker;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    .line 1261
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1263
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1264
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1266
    iget-object v0, p0, Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1270
    :cond_1
    return-void
.end method


# virtual methods
.method public detectCaptivePortal(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 250
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/net/CaptivePortalTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/CaptivePortalTracker;->sendMessage(Landroid/os/Message;)V

    .line 251
    return-void
.end method
