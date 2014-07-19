.class public Lcom/lenovo/lsf/common/device/LeosDeviceInfo;
.super Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;
.source "LeosDeviceInfo.java"


# instance fields
.field private tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/lsf/common/device/DeviceInfo;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "di"    # Lcom/lenovo/lsf/common/device/DeviceInfo;

    .prologue
    .line 27
    invoke-direct {p0, p2}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;-><init>(Lcom/lenovo/lsf/common/device/DeviceInfo;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lsf/common/device/LeosDeviceInfo;->tm:Landroid/telephony/TelephonyManager;

    .line 29
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 28
    iput-object v0, p0, Lcom/lenovo/lsf/common/device/LeosDeviceInfo;->tm:Landroid/telephony/TelephonyManager;

    .line 30
    return-void
.end method

.method private getVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v2, Ljava/io/File;

    const-string v3, "/etc/version.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    .line 54
    const-string v3, "/etc/version.conf"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x400

    .line 53
    invoke-direct {v1, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 55
    .local v1, "reader":Ljava/io/BufferedReader;
    const-string v0, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .local v0, "a":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_2

    .line 63
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    .end local v0    # "a":Ljava/lang/String;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    const-string v2, ""

    :goto_1
    return-object v2

    .line 58
    .restart local v0    # "a":Ljava/lang/String;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :cond_2
    :try_start_3
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 59
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 63
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    .line 65
    .end local v0    # "a":Ljava/lang/String;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 62
    .restart local v0    # "a":Ljava/lang/String;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v2

    .line 63
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 64
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
.end method


# virtual methods
.method protected getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDeviceId(I)Ljava/lang/String;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 78
    sget-object v0, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    return-object v0
.end method

.method protected getNetworkOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 122
    sget-object v0, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    return-object v0
.end method

.method protected getSMSCentor(I)Ljava/lang/String;
    .locals 12
    .param p1, "idx"    # I

    .prologue
    .line 95
    sget-object v4, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    .line 96
    .local v4, "smsc":Ljava/lang/String;
    if-nez p1, :cond_0

    const-class v7, Landroid/telephony/SmsManager;

    const-string v8, "getSmscOnIcc"

    invoke-static {v7, v8}, Lcom/lenovo/lsf/common/ReflectUtils;->hasMethod(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 98
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v3

    .line 99
    .local v3, "smsManager":Landroid/telephony/SmsManager;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getSmscOnIcc"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 100
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "smsManager":Landroid/telephony/SmsManager;
    :cond_0
    :goto_0
    sget-object v7, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    if-eq v4, v7, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 108
    :cond_1
    :try_start_1
    const-string v7, "android.telephony.SmsManager"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 109
    .local v5, "tmex":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v7, "getDefault"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 110
    .local v6, "tmexMethod":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v6, v5, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 111
    .local v2, "object":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getSmscOnIcc"

    .line 112
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    const/4 v10, 0x0

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v10

    .line 111
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 113
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v1, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "object":Ljava/lang/Object;
    .end local v5    # "tmex":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "tmexMethod":Ljava/lang/reflect/Method;
    :cond_2
    :goto_1
    return-object v4

    .line 114
    :catch_0
    move-exception v7

    goto :goto_1

    .line 101
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method public getSWVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    const-string v1, "build_number"

    invoke-direct {p0, v1}, Lcom/lenovo/lsf/common/device/LeosDeviceInfo;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "softVerison":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    const-string v1, "buildnumber"

    invoke-direct {p0, v1}, Lcom/lenovo/lsf/common/device/LeosDeviceInfo;->getVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    :cond_0
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    invoke-super {p0}, Lcom/lenovo/lsf/common/device/AbstractDeviceInfo;->getSWVersion()Ljava/lang/String;

    move-result-object v0

    .line 46
    .end local v0    # "softVerison":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method protected getSubscriberId(I)Ljava/lang/String;
    .locals 6
    .param p1, "idx"    # I

    .prologue
    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lsf/common/device/LeosDeviceInfo;->tm:Landroid/telephony/TelephonyManager;

    const-string v1, "getSubscriberId"

    .line 86
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 85
    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/lsf/common/ReflectUtils;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    return-object v0

    .line 87
    :catch_0
    move-exception v0

    .line 90
    sget-object v0, Lcom/lenovo/lsf/common/device/DeviceInfo$Unknown;->STRING:Ljava/lang/String;

    goto :goto_0
.end method
