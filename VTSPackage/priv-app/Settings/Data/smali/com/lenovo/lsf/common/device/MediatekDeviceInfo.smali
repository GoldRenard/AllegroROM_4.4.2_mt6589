.class public Lcom/lenovo/lsf/common/device/MediatekDeviceInfo;
.super Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;
.source "MediatekDeviceInfo.java"


# instance fields
.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/lsf/common/device/DeviceInfo;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "di"    # Lcom/lenovo/lsf/common/device/DeviceInfo;

    .prologue
    .line 24
    invoke-direct {p0, p2}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;-><init>(Lcom/lenovo/lsf/common/device/DeviceInfo;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lsf/common/device/MediatekDeviceInfo;->tm:Landroid/telephony/TelephonyManager;

    .line 26
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 25
    iput-object v0, p0, Lcom/lenovo/lsf/common/device/MediatekDeviceInfo;->tm:Landroid/telephony/TelephonyManager;

    .line 27
    return-void
.end method


# virtual methods
.method protected getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 6
    .param p1, "idx"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 32
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/MediatekDeviceInfo;->tm:Landroid/telephony/TelephonyManager;

    const-string v1, "getCellLocationGemini"

    .line 33
    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    .line 31
    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/lsf/common/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellLocation;

    return-object v0
.end method

.method protected getDeviceId(I)Ljava/lang/String;
    .locals 8
    .param p1, "idx"    # I

    .prologue
    .line 38
    sget-object v1, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    .line 40
    .local v1, "imei":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/lsf/common/device/MediatekDeviceInfo;->tm:Landroid/telephony/TelephonyManager;

    const-string v3, "getDeviceIdGemini"

    .line 41
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 40
    invoke-static {v2, v3, v4, v5}, Lcom/lenovo/lsf/common/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-object v1

    .line 42
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected getNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 98
    sget-object v0, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    return-object v0
.end method

.method protected getSMSCentor(I)Ljava/lang/String;
    .locals 11
    .param p1, "idx"    # I

    .prologue
    .line 64
    sget-object v3, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    .line 68
    .local v3, "smsc":Ljava/lang/String;
    :try_start_0
    const-string v6, "com.mediatek.telephony.TelephonyManagerEx"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 69
    .local v4, "tmex":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "getDefault"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 70
    .local v5, "tmexMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 71
    .local v2, "object":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getScAddress"

    .line 72
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    .line 71
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 73
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 78
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "object":Ljava/lang/Object;
    .end local v4    # "tmex":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "tmexMethod":Ljava/lang/reflect/Method;
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 81
    :cond_0
    :try_start_1
    const-string v6, "android.telephony.TelephonyManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 82
    .restart local v4    # "tmex":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v6, "getDefault"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 83
    .restart local v5    # "tmexMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 84
    .restart local v2    # "object":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getScAddress"

    .line 85
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    .line 84
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 86
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "object":Ljava/lang/Object;
    .end local v4    # "tmex":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "tmexMethod":Ljava/lang/reflect/Method;
    :cond_1
    :goto_1
    return-object v3

    .line 87
    :catch_0
    move-exception v6

    goto :goto_1

    .line 74
    :catch_1
    move-exception v6

    goto :goto_0
.end method

.method protected getSubscriberId(I)Ljava/lang/String;
    .locals 8
    .param p1, "idx"    # I

    .prologue
    .line 50
    sget-object v1, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    .line 53
    .local v1, "imsi":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/lsf/common/device/MediatekDeviceInfo;->tm:Landroid/telephony/TelephonyManager;

    .line 54
    const-string v3, "getSubscriberIdGemini"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 53
    invoke-static {v2, v3, v4, v5}, Lcom/lenovo/lsf/common/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    return-object v1

    .line 56
    :catch_0
    move-exception v2

    goto :goto_0
.end method
