.class public Lcom/lenovo/lsf/common/device/MultiSIMDeviceInfo;
.super Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;
.source "MultiSIMDeviceInfo.java"


# static fields
.field private static final CLASS_NAME_MultiSIMUtils:Ljava/lang/String; = "android.provider.MultiSIMUtils"

.field private static final METHOD_INSTANCE:Ljava/lang/String; = "getDefault"


# instance fields
.field private multiSIMUtils:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/lsf/common/device/DeviceInfo;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Lcom/lenovo/lsf/common/device/DeviceInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    invoke-direct {p0, p2}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;-><init>(Lcom/lenovo/lsf/common/device/DeviceInfo;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lsf/common/device/MultiSIMDeviceInfo;->multiSIMUtils:Ljava/lang/Object;

    .line 17
    const-string v0, "android.provider.MultiSIMUtils"

    .line 18
    const-string v1, "getDefault"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    .line 17
    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/lsf/common/ReflectUtils;->invokeClass(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lsf/common/device/MultiSIMDeviceInfo;->multiSIMUtils:Ljava/lang/Object;

    .line 19
    return-void
.end method

.method private invokeMethod(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "simId"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "obj":Ljava/lang/Object;
    iget-object v1, p0, Lcom/lenovo/lsf/common/device/MultiSIMDeviceInfo;->multiSIMUtils:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/lsf/common/device/MultiSIMDeviceInfo;->multiSIMUtils:Ljava/lang/Object;

    .line 65
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

    .line 64
    invoke-static {v1, p1, v2, v3}, Lcom/lenovo/lsf/common/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    .end local v0    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 66
    .restart local v0    # "obj":Ljava/lang/Object;
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 25
    :try_start_0
    const-string v0, "getCellLocation"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lsf/common/device/MultiSIMDeviceInfo;->invokeMethod(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-object v0

    .line 26
    :catch_0
    move-exception v0

    .line 28
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 38
    const-string v0, "getDeviceId"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lsf/common/device/MultiSIMDeviceInfo;->invokeMethod(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 49
    const-string v0, "getNetworkOperator"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lsf/common/device/MultiSIMDeviceInfo;->invokeMethod(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getSMSCentor(I)Ljava/lang/String;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 43
    const-string v0, "getScAddress"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lsf/common/device/MultiSIMDeviceInfo;->invokeMethod(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 1
    .param p1, "simId"    # I

    .prologue
    .line 33
    const-string v0, "getSubscriberId"

    invoke-direct {p0, v0, p1}, Lcom/lenovo/lsf/common/device/MultiSIMDeviceInfo;->invokeMethod(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
