.class public Lcom/lenovo/lsf/common/Device;
.super Ljava/lang/Object;
.source "Device.java"


# static fields
.field private static deviceID:Ljava/lang/String;

.field private static deviceType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    sput-object v0, Lcom/lenovo/lsf/common/Device;->deviceID:Ljava/lang/String;

    .line 26
    sput-object v0, Lcom/lenovo/lsf/common/Device;->deviceType:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 200
    const-string v2, "android_id"

    .line 199
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "androidId":Ljava/lang/String;
    return-object v0
.end method

.method public static getAppstoreVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 256
    const-string v3, "com.lenovo.leos.appstore"

    const/4 v4, 0x0

    .line 255
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 256
    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .local v1, "version":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 257
    .end local v1    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "unknown"

    .restart local v1    # "version":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getBrand(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getCategory(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 245
    const-string v0, "unknown"

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, "bw":Ljava/io/BufferedReader;
    :try_start_0
    sget-object v7, Lcom/lenovo/lsf/common/Device;->deviceID:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 128
    sget-object v7, Lcom/lenovo/lsf/common/Device;->deviceID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    :try_start_1
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 144
    :cond_0
    :goto_0
    return-object v7

    .line 129
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 130
    .local v6, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "com.lenovo.lsf"

    .line 131
    const/16 v9, 0x80

    .line 130
    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 131
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/files/device.cfg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 130
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 132
    .local v5, "filepath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 133
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 134
    invoke-static {p0}, Lcom/lenovo/lsf/common/Device;->getDeviceId2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/lenovo/lsf/common/Device;->deviceID:Ljava/lang/String;

    .line 135
    sget-object v7, Lcom/lenovo/lsf/common/Device;->deviceID:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v8

    goto :goto_0

    .line 137
    :cond_2
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    .end local v0    # "bw":Ljava/io/BufferedReader;
    .local v1, "bw":Ljava/io/BufferedReader;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "device":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    sput-object v7, Lcom/lenovo/lsf/common/Device;->deviceID:Ljava/lang/String;

    .line 140
    sget-object v7, Lcom/lenovo/lsf/common/Device;->deviceID:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 147
    if-eqz v1, :cond_3

    .line 148
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_1
    move-object v0, v1

    .line 140
    .end local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v0    # "bw":Ljava/io/BufferedReader;
    goto :goto_0

    .line 142
    .end local v2    # "device":Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "filepath":Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v3

    .line 143
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_7
    invoke-static {p0}, Lcom/lenovo/lsf/common/Device;->getDeviceId2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/lenovo/lsf/common/Device;->deviceID:Ljava/lang/String;

    .line 144
    sget-object v7, Lcom/lenovo/lsf/common/Device;->deviceID:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 147
    if-eqz v0, :cond_0

    .line 148
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 150
    :catch_2
    move-exception v8

    goto :goto_0

    .line 145
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 147
    :goto_3
    if-eqz v0, :cond_4

    .line 148
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 152
    :cond_4
    :goto_4
    throw v7

    .line 150
    :catch_3
    move-exception v8

    goto :goto_0

    .end local v0    # "bw":Ljava/io/BufferedReader;
    .restart local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v2    # "device":Ljava/lang/String;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v5    # "filepath":Ljava/lang/String;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_4
    move-exception v8

    goto :goto_1

    .end local v1    # "bw":Ljava/io/BufferedReader;
    .end local v2    # "device":Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "filepath":Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local v0    # "bw":Ljava/io/BufferedReader;
    :catch_5
    move-exception v8

    goto :goto_4

    .line 145
    .end local v0    # "bw":Ljava/io/BufferedReader;
    .restart local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v5    # "filepath":Ljava/lang/String;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v0    # "bw":Ljava/io/BufferedReader;
    goto :goto_3

    .line 142
    .end local v0    # "bw":Ljava/io/BufferedReader;
    .restart local v1    # "bw":Ljava/io/BufferedReader;
    :catch_6
    move-exception v3

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v0    # "bw":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private static getDeviceId2(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    invoke-static {p0}, Lcom/lenovo/lsf/common/Device;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "imei":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 167
    .end local v1    # "imei":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 159
    .restart local v1    # "imei":Ljava/lang/String;
    :cond_0
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "MANUFACTURER":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 161
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lenovo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 162
    invoke-static {p0}, Lcom/lenovo/lsf/common/Device;->getSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 163
    .local v2, "sn":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    .line 164
    goto :goto_0

    .line 167
    .end local v2    # "sn":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/lenovo/lsf/common/Device;->getMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDeviceidType(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    const/4 v0, 0x0

    .line 80
    .local v0, "bw":Ljava/io/BufferedReader;
    :try_start_0
    sget-object v7, Lcom/lenovo/lsf/common/Device;->deviceType:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 81
    sget-object v7, Lcom/lenovo/lsf/common/Device;->deviceType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    :try_start_1
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 98
    :cond_0
    :goto_0
    return-object v7

    .line 82
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 83
    .local v6, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "com.lenovo.lsf"

    .line 84
    const/16 v9, 0x80

    .line 83
    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    .line 84
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/files/device.cfg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 83
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "filepath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 87
    invoke-static {p0}, Lcom/lenovo/lsf/common/Device;->getDeviceidType2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/lenovo/lsf/common/Device;->deviceType:Ljava/lang/String;

    .line 88
    sget-object v7, Lcom/lenovo/lsf/common/Device;->deviceType:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v8

    goto :goto_0

    .line 91
    :cond_2
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 92
    .end local v0    # "bw":Ljava/io/BufferedReader;
    .local v1, "bw":Ljava/io/BufferedReader;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 93
    .local v2, "device":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    sput-object v7, Lcom/lenovo/lsf/common/Device;->deviceType:Ljava/lang/String;

    .line 94
    sget-object v7, Lcom/lenovo/lsf/common/Device;->deviceType:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 101
    if-eqz v1, :cond_3

    .line 102
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_1
    move-object v0, v1

    .line 94
    .end local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v0    # "bw":Ljava/io/BufferedReader;
    goto :goto_0

    .line 96
    .end local v2    # "device":Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "filepath":Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v3

    .line 97
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_7
    invoke-static {p0}, Lcom/lenovo/lsf/common/Device;->getDeviceidType2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/lenovo/lsf/common/Device;->deviceType:Ljava/lang/String;

    .line 98
    sget-object v7, Lcom/lenovo/lsf/common/Device;->deviceType:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 104
    :catch_2
    move-exception v8

    goto :goto_0

    .line 99
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 101
    :goto_3
    if-eqz v0, :cond_4

    .line 102
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 106
    :cond_4
    :goto_4
    throw v7

    .line 104
    :catch_3
    move-exception v8

    goto :goto_0

    .end local v0    # "bw":Ljava/io/BufferedReader;
    .restart local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v2    # "device":Ljava/lang/String;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v5    # "filepath":Ljava/lang/String;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_4
    move-exception v8

    goto :goto_1

    .end local v1    # "bw":Ljava/io/BufferedReader;
    .end local v2    # "device":Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "filepath":Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local v0    # "bw":Ljava/io/BufferedReader;
    :catch_5
    move-exception v8

    goto :goto_4

    .line 99
    .end local v0    # "bw":Ljava/io/BufferedReader;
    .restart local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v4    # "f":Ljava/io/File;
    .restart local v5    # "filepath":Ljava/lang/String;
    .restart local v6    # "pm":Landroid/content/pm/PackageManager;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v0    # "bw":Ljava/io/BufferedReader;
    goto :goto_3

    .line 96
    .end local v0    # "bw":Ljava/io/BufferedReader;
    .restart local v1    # "bw":Ljava/io/BufferedReader;
    :catch_6
    move-exception v3

    move-object v0, v1

    .end local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v0    # "bw":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private static getDeviceidType2(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-static {p0}, Lcom/lenovo/lsf/common/Device;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "imei":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 112
    const-string v3, "imei"

    .line 121
    :goto_0
    return-object v3

    .line 113
    :cond_0
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "MANUFACTURER":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lenovo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 116
    invoke-static {p0}, Lcom/lenovo/lsf/common/Device;->getSerialNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "sn":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 118
    const-string v3, "sn"

    goto :goto_0

    .line 121
    .end local v2    # "sn":Ljava/lang/String;
    :cond_1
    const-string v3, "mac"

    goto :goto_0
.end method

.method public static getFamily(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 249
    const-string v0, "unknown"

    return-object v0
.end method

.method public static getFirmwareVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "firmware":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build;->RADIO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    return-object v0
.end method

.method public static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    new-instance v0, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;

    invoke-direct {v0, p0}, Lcom/lenovo/lsf/common/device/DefaultDeviceInfo;-><init>(Landroid/content/Context;)V

    .line 41
    .local v0, "di":Lcom/lenovo/lsf/common/device/DeviceInfo;
    new-instance v1, Lcom/lenovo/lsf/common/device/LeosDeviceInfo;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/lsf/common/device/LeosDeviceInfo;-><init>(Landroid/content/Context;Lcom/lenovo/lsf/common/device/DeviceInfo;)V

    .line 42
    .end local v0    # "di":Lcom/lenovo/lsf/common/device/DeviceInfo;
    .local v1, "di":Lcom/lenovo/lsf/common/device/DeviceInfo;
    new-instance v0, Lcom/lenovo/lsf/common/device/MediatekDeviceInfo;

    invoke-direct {v0, p0, v1}, Lcom/lenovo/lsf/common/device/MediatekDeviceInfo;-><init>(Landroid/content/Context;Lcom/lenovo/lsf/common/device/DeviceInfo;)V

    .line 43
    .end local v1    # "di":Lcom/lenovo/lsf/common/device/DeviceInfo;
    .restart local v0    # "di":Lcom/lenovo/lsf/common/device/DeviceInfo;
    new-instance v1, Lcom/lenovo/lsf/common/device/MultiSIMDeviceInfo;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/lsf/common/device/MultiSIMDeviceInfo;-><init>(Landroid/content/Context;Lcom/lenovo/lsf/common/device/DeviceInfo;)V

    .line 44
    .end local v0    # "di":Lcom/lenovo/lsf/common/device/DeviceInfo;
    .restart local v1    # "di":Lcom/lenovo/lsf/common/device/DeviceInfo;
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/lenovo/lsf/common/device/DeviceInfo;->getIMEI(I)Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "imei":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 46
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 48
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 240
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, "lang":Ljava/lang/String;
    return-object v1
.end method

.method public static getLeosApiLevel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public static getLeosVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 264
    const/4 v2, 0x0

    .line 266
    .local v2, "operating":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    .line 267
    const-string v5, "/etc/version.conf"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x400

    .line 266
    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 268
    .local v3, "reader":Ljava/io/BufferedReader;
    const-string v0, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .local v0, "a":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    .line 276
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 281
    .end local v0    # "a":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    if-nez v2, :cond_2

    .line 282
    const-string v4, "unkown"

    .line 287
    :goto_2
    return-object v4

    .line 271
    .restart local v0    # "a":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    const-string v4, "operating"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 272
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 275
    :catchall_0
    move-exception v4

    .line 276
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 277
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 278
    .end local v0    # "a":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 284
    :cond_2
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "buff":[Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, v1, v4

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_2
.end method

.method public static getMacAddr(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    .line 67
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 66
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 68
    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 70
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 74
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getManufacture(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 183
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getModel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getOsApiLevel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getOsName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const-string v0, "Android"

    return-object v0
.end method

.method public static getOsSdkVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 209
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    return-object v0
.end method

.method public static getOsVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getSerialNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 53
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-gt v1, v2, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-object v0

    .line 55
    :cond_1
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    .line 178
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 177
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 179
    .local v0, "telephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSource(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v2, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .local v2, "version":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "android:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 232
    .end local v2    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "unknown"

    .restart local v2    # "version":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 171
    .line 172
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 173
    .local v0, "telephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
