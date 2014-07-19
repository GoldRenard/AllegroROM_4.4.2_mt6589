.class public Lcom/lenovo/lsf/util/PsDeviceInfo;
.super Ljava/lang/Object;
.source "PsDeviceInfo.java"


# static fields
.field private static deviceID:Ljava/lang/String;

.field private static deviceType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/lenovo/lsf/util/PsDeviceInfo;->deviceID:Ljava/lang/String;

    .line 25
    sput-object v0, Lcom/lenovo/lsf/util/PsDeviceInfo;->deviceType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "androidId":Ljava/lang/String;
    return-object v0
.end method

.method public static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 261
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 262
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v3

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 267
    const-string v3, ""

    goto :goto_0
.end method

.method public static getAppstoreVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.lenovo.leos.appstore"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .local v1, "version":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 224
    .end local v1    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "unknown"

    .restart local v1    # "version":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getDeviceBrand(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceCategory(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    const-string v0, "unknown"

    return-object v0
.end method

.method public static getDeviceFamily(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    const-string v0, "unknown"

    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "bw":Ljava/io/BufferedReader;
    :try_start_0
    sget-object v7, Lcom/lenovo/lsf/util/PsDeviceInfo;->deviceID:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 100
    sget-object v7, Lcom/lenovo/lsf/util/PsDeviceInfo;->deviceID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    :try_start_1
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 123
    :cond_0
    :goto_0
    return-object v7

    .line 101
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 102
    .local v6, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.lenovo.lsf"

    const/16 v9, 0x80

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/files/device.cfg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 103
    .local v5, "filepath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 105
    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceId2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/lenovo/lsf/util/PsDeviceInfo;->deviceID:Ljava/lang/String;

    .line 106
    sget-object v7, Lcom/lenovo/lsf/util/PsDeviceInfo;->deviceID:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v8

    goto :goto_0

    .line 108
    :cond_2
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 109
    .end local v0    # "bw":Ljava/io/BufferedReader;
    .local v1, "bw":Ljava/io/BufferedReader;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "device":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 111
    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v7, v7, v8

    sput-object v7, Lcom/lenovo/lsf/util/PsDeviceInfo;->deviceID:Ljava/lang/String;

    .line 113
    :cond_3
    sget-object v7, Lcom/lenovo/lsf/util/PsDeviceInfo;->deviceID:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 120
    if-eqz v1, :cond_4

    .line 121
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    :goto_1
    move-object v0, v1

    .line 123
    .end local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v0    # "bw":Ljava/io/BufferedReader;
    goto :goto_0

    .line 115
    .end local v2    # "device":Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "filepath":Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v3

    .line 116
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_7
    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceId2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/lenovo/lsf/util/PsDeviceInfo;->deviceID:Ljava/lang/String;

    .line 117
    sget-object v7, Lcom/lenovo/lsf/util/PsDeviceInfo;->deviceID:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 123
    :catch_2
    move-exception v8

    goto :goto_0

    .line 119
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 120
    :goto_3
    if-eqz v0, :cond_5

    .line 121
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 123
    :cond_5
    :goto_4
    throw v7

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

    .line 119
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

    .line 115
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
    .line 128
    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getImeiAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "imei":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 138
    .end local v1    # "imei":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 131
    .restart local v1    # "imei":Ljava/lang/String;
    :cond_0
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "MANUFACTURER":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lenovo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 133
    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getSnAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "sn":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    .line 135
    goto :goto_0

    .line 138
    .end local v2    # "sn":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getMacAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getDeviceModel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceVendor(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceidType(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 54
    .local v0, "bw":Ljava/io/BufferedReader;
    :try_start_0
    sget-object v7, Lcom/lenovo/lsf/util/PsDeviceInfo;->deviceType:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 55
    sget-object v7, Lcom/lenovo/lsf/util/PsDeviceInfo;->deviceType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    :try_start_1
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 78
    :cond_0
    :goto_0
    return-object v7

    .line 56
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 57
    .local v6, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "com.lenovo.lsf"

    const/16 v9, 0x80

    invoke-virtual {v6, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/files/device.cfg"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, "filepath":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2

    .line 60
    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceidType2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/lenovo/lsf/util/PsDeviceInfo;->deviceType:Ljava/lang/String;

    .line 61
    sget-object v7, Lcom/lenovo/lsf/util/PsDeviceInfo;->deviceType:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v8

    goto :goto_0

    .line 63
    :cond_2
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 64
    .end local v0    # "bw":Ljava/io/BufferedReader;
    .local v1, "bw":Ljava/io/BufferedReader;
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 65
    .local v2, "device":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 66
    const-string v7, "="

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    sput-object v7, Lcom/lenovo/lsf/util/PsDeviceInfo;->deviceType:Ljava/lang/String;

    .line 68
    :cond_3
    sget-object v7, Lcom/lenovo/lsf/util/PsDeviceInfo;->deviceType:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 75
    if-eqz v1, :cond_4

    .line 76
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_4
    :goto_1
    move-object v0, v1

    .line 78
    .end local v1    # "bw":Ljava/io/BufferedReader;
    .restart local v0    # "bw":Ljava/io/BufferedReader;
    goto :goto_0

    .line 70
    .end local v2    # "device":Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    .end local v5    # "filepath":Ljava/lang/String;
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v3

    .line 71
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_7
    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceidType2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/lenovo/lsf/util/PsDeviceInfo;->deviceType:Ljava/lang/String;

    .line 72
    sget-object v7, Lcom/lenovo/lsf/util/PsDeviceInfo;->deviceType:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 75
    if-eqz v0, :cond_0

    .line 76
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_0

    .line 78
    :catch_2
    move-exception v8

    goto :goto_0

    .line 74
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 75
    :goto_3
    if-eqz v0, :cond_5

    .line 76
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 78
    :cond_5
    :goto_4
    throw v7

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

    .line 74
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

    .line 70
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
    .line 83
    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getImeiAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "imei":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 85
    const-string v3, "imei"

    .line 93
    :goto_0
    return-object v3

    .line 86
    :cond_0
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "MANUFACTURER":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "lenovo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 88
    invoke-static {p0}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getSnAddr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "sn":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string v3, "unknown"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 90
    const-string v3, "sn"

    goto :goto_0

    .line 93
    .end local v2    # "sn":Ljava/lang/String;
    :cond_1
    const-string v3, "mac"

    goto :goto_0
.end method

.method public static getFirmwareVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "firmware":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->RADIO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    return-object v0
.end method

.method public static getImeiAddr(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-static {}, Lcom/lenovo/lsf/account/sdac/DeviceDataImpl;->getInstance()Lcom/lenovo/lsf/account/sdac/IDeviceData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/lenovo/lsf/account/sdac/IDeviceData;->getIMEI(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLanguage(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 208
    .local v0, "configuration":Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "lang":Ljava/lang/String;
    return-object v1
.end method

.method public static getLeosApiLevel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    return-object v0
.end method

.method public static getLeosVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    const/4 v2, 0x0

    .line 233
    .local v2, "operating":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/etc/version.conf"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x400

    invoke-direct {v3, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 234
    .local v3, "reader":Ljava/io/BufferedReader;
    const-string v0, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .local v0, "a":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    const-string v4, "operating"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 238
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_0

    .line 242
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 247
    .end local v0    # "a":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    if-nez v2, :cond_2

    .line 248
    const-string v4, "unkown"

    .line 253
    :goto_2
    return-object v4

    .line 242
    .restart local v0    # "a":Ljava/lang/String;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v4
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 244
    .end local v0    # "a":Ljava/lang/String;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    goto :goto_1

    .line 250
    :cond_2
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 253
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
    .line 45
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 46
    .local v1, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 48
    .local v0, "info":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getOsApiLevel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getOsName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    const-string v0, "Android"

    return-object v0
.end method

.method public static getOsSdkVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    return-object v0
.end method

.method public static getOsVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getSimOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 147
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 148
    .local v0, "telephonyMgr":Landroid/telephony/TelephonyManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSnAddr(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 33
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-gt v1, v2, :cond_1

    .line 41
    :cond_0
    :goto_0
    return-object v0

    .line 35
    :cond_1
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 36
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getSource(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 199
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

    .line 203
    .local v2, "version":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    .line 200
    .end local v2    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "unknown"

    .restart local v2    # "version":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getSubscriberId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 143
    .local v0, "telephonyMgr":Landroid/telephony/TelephonyManager;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
