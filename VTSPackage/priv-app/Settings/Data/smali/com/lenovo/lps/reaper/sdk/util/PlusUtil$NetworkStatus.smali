.class public Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;
.super Ljava/lang/Object;
.source "PlusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lps/reaper/sdk/util/PlusUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkStatus"
.end annotation


# static fields
.field private static isRoaming:Z

.field private static netSubtype:I

.field private static networkStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->isRoaming:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetSubtype()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->netSubtype:I

    return v0
.end method

.method public static getNetworkStatus()I
    .locals 1

    .prologue
    .line 44
    sget v0, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->networkStatus:I

    return v0
.end method

.method public static isOnline()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 37
    sget v1, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->networkStatus:I

    if-ne v1, v0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 40
    :cond_0
    return v0
.end method

.method public static isRoaming()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->isRoaming:Z

    return v0
.end method

.method public static setNetworkStatus(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 58
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 59
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    sput-boolean v4, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->isRoaming:Z

    .line 60
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 62
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 63
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-nez v4, :cond_2

    .line 64
    :cond_0
    sput v5, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->networkStatus:I

    .line 94
    :cond_1
    :goto_0
    return-void

    .line 68
    :cond_2
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 69
    .local v1, "netType":I
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v4

    sput v4, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->netSubtype:I

    .line 71
    if-ne v1, v5, :cond_3

    .line 72
    sput v6, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->networkStatus:I

    goto :goto_0

    .line 76
    :cond_3
    if-nez v1, :cond_5

    .line 77
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    sget v4, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->netSubtype:I

    if-eq v4, v5, :cond_4

    sget v4, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->netSubtype:I

    if-eq v4, v6, :cond_4

    sget v4, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->netSubtype:I

    if-eq v4, v7, :cond_4

    .line 81
    const/4 v4, 0x3

    sput v4, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->networkStatus:I

    goto :goto_0

    .line 84
    :cond_4
    sput v7, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->networkStatus:I

    goto :goto_0

    .line 91
    :cond_5
    const/4 v4, 0x0

    sput v4, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->networkStatus:I

    goto :goto_0
.end method
