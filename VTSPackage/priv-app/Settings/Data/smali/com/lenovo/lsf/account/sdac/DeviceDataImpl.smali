.class public Lcom/lenovo/lsf/account/sdac/DeviceDataImpl;
.super Ljava/lang/Object;
.source "DeviceDataImpl.java"

# interfaces
.implements Lcom/lenovo/lsf/account/sdac/IDeviceData;


# static fields
.field private static instance:Lcom/lenovo/lsf/account/sdac/IDeviceData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/lsf/account/sdac/DeviceDataImpl;->instance:Lcom/lenovo/lsf/account/sdac/IDeviceData;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static getInstance()Lcom/lenovo/lsf/account/sdac/IDeviceData;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/lenovo/lsf/account/sdac/DeviceDataImpl;->instance:Lcom/lenovo/lsf/account/sdac/IDeviceData;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/lenovo/lsf/account/sdac/DeviceDataImpl;

    invoke-direct {v0}, Lcom/lenovo/lsf/account/sdac/DeviceDataImpl;-><init>()V

    sput-object v0, Lcom/lenovo/lsf/account/sdac/DeviceDataImpl;->instance:Lcom/lenovo/lsf/account/sdac/IDeviceData;

    .line 20
    :cond_0
    sget-object v0, Lcom/lenovo/lsf/account/sdac/DeviceDataImpl;->instance:Lcom/lenovo/lsf/account/sdac/IDeviceData;

    return-object v0
.end method


# virtual methods
.method public getIMEI(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "simId"    # I

    .prologue
    .line 25
    invoke-static {p1}, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;->getInstance(Landroid/content/Context;)Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;->getDeviceId(I)Ljava/lang/String;

    move-result-object v1

    .line 28
    .local v1, "imei":Ljava/lang/String;
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 31
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 33
    :cond_0
    :try_start_0
    const-string v3, "getDeviceIdGemini"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/lenovo/lsf/account/sdac/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 40
    :cond_2
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 42
    :cond_3
    return-object v1

    .line 35
    :catch_0
    move-exception v3

    goto :goto_0
.end method
