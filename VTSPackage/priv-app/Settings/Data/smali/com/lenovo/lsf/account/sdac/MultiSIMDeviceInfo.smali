.class public Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;
.super Ljava/lang/Object;
.source "MultiSIMDeviceInfo.java"


# static fields
.field public static final GEMINI_SIM_1:I = 0x0

.field public static final GEMINI_SIM_2:I = 0x1

.field private static final KEY_INVOCK_CLASS:Ljava/lang/String; = "android.provider.MultiSIMUtils"

.field private static final KEY_INVOCK_INIT_METHOD:Ljava/lang/String; = "getDefault"

.field private static instance:Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;


# instance fields
.field private multiSIMUtils:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;->instance:Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "android.provider.MultiSIMUtils"

    const-string v1, "getDefault"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/lsf/account/sdac/ReflectUtils;->invokeClass(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;->multiSIMUtils:Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const-class v1, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;->instance:Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;

    invoke-direct {v0, p0}, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;->instance:Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;

    .line 29
    :cond_0
    sget-object v0, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;->instance:Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private invokeMethod(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "obj":Ljava/lang/Object;
    iget-object v1, p0, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;->multiSIMUtils:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;->multiSIMUtils:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, p1, v2, v3}, Lcom/lenovo/lsf/account/sdac/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 118
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 115
    .restart local v0    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getCellId(I)I
    .locals 3
    .param p1, "simId"    # I

    .prologue
    .line 33
    const/4 v1, -0x1

    .line 35
    .local v1, "cid":I
    :try_start_0
    const-string v2, "getCellLocation"

    invoke-direct {p0, v2, p1}, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;->invokeMethod(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellLocation;

    .line 38
    .local v0, "cell":Landroid/telephony/CellLocation;
    instance-of v2, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v2, :cond_0

    .line 39
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .end local v0    # "cell":Landroid/telephony/CellLocation;
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    .line 45
    :goto_0
    return v1

    .line 41
    .restart local v0    # "cell":Landroid/telephony/CellLocation;
    :cond_0
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v0    # "cell":Landroid/telephony/CellLocation;
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 42
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 50
    :try_start_0
    const-string v0, "getCellLocation"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;->invokeMethod(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    return-object v0

    .line 52
    :catch_0
    move-exception v0

    .line 54
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 62
    const-string v0, "getDeviceId"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;->invokeMethod(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 75
    const-string v0, "getNetworkOperator"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;->invokeMethod(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneType(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 88
    :try_start_0
    const-string v0, "getPhoneType"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;->invokeMethod(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 91
    :goto_0
    return v0

    .line 89
    :catch_0
    move-exception v0

    .line 91
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 79
    const-string v0, "getSimOperator"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;->invokeMethod(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 83
    const-string v0, "getSimSerialNumber"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;->invokeMethod(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSimState(I)I
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 96
    :try_start_0
    const-string v0, "getSimState"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;->invokeMethod(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 99
    :goto_0
    return v0

    .line 97
    :catch_0
    move-exception v0

    .line 99
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getSmsCenter()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    const-string v1, "getScAddress"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;->invokeMethod(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    .local v0, "sms":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 69
    :cond_0
    const-string v1, "getScAddress"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;->invokeMethod(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "sms":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 71
    .restart local v0    # "sms":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 58
    const-string v0, "getSubscriberId"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lsf/account/sdac/MultiSIMDeviceInfo;->invokeMethod(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
