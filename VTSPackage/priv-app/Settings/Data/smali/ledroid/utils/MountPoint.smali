.class public final Lledroid/utils/MountPoint;
.super Ljava/lang/Object;
.source "MountPoint.java"


# static fields
.field private static DEVICE_CACH:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static MOUNT_POINT_CACH:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v5, 0xa

    .line 14
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v4, Lledroid/utils/MountPoint;->MOUNT_POINT_CACH:Ljava/util/HashMap;

    .line 15
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    sput-object v4, Lledroid/utils/MountPoint;->DEVICE_CACH:Ljava/util/HashMap;

    .line 18
    const/4 v2, 0x0

    .line 20
    .local v2, "mountPointReader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    const-string v7, "/proc/mounts"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .end local v2    # "mountPointReader":Ljava/io/BufferedReader;
    .local v3, "mountPointReader":Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .line 22
    .local v0, "buffer":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 23
    sget-object v4, Lledroid/utils/MountPoint;->MOUNT_POINT_CACH:Ljava/util/HashMap;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v4, Lledroid/utils/MountPoint;->DEVICE_CACH:Ljava/util/HashMap;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 25
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v1, :cond_0

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v4, Lledroid/utils/MountPoint;->DEVICE_CACH:Ljava/util/HashMap;

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 31
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    move-object v2, v3

    .line 33
    .end local v0    # "buffer":Ljava/lang/String;
    .end local v3    # "mountPointReader":Ljava/io/BufferedReader;
    .restart local v2    # "mountPointReader":Ljava/io/BufferedReader;
    :goto_1
    invoke-static {v2}, Lledroid/utils/FileUtils;->closeIOCloseable(Ljava/io/Closeable;)V

    .line 35
    :goto_2
    return-void

    .line 33
    .end local v2    # "mountPointReader":Ljava/io/BufferedReader;
    .restart local v0    # "buffer":Ljava/lang/String;
    .restart local v3    # "mountPointReader":Ljava/io/BufferedReader;
    :cond_1
    invoke-static {v3}, Lledroid/utils/FileUtils;->closeIOCloseable(Ljava/io/Closeable;)V

    move-object v2, v3

    .line 34
    .end local v3    # "mountPointReader":Ljava/io/BufferedReader;
    .restart local v2    # "mountPointReader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 33
    .end local v0    # "buffer":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :goto_3
    invoke-static {v2}, Lledroid/utils/FileUtils;->closeIOCloseable(Ljava/io/Closeable;)V

    throw v4

    .end local v2    # "mountPointReader":Ljava/io/BufferedReader;
    .restart local v0    # "buffer":Ljava/lang/String;
    .restart local v3    # "mountPointReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "mountPointReader":Ljava/io/BufferedReader;
    .restart local v2    # "mountPointReader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 31
    .end local v0    # "buffer":Ljava/lang/String;
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "mountPoint"    # Ljava/lang/String;

    .prologue
    .line 42
    if-nez p0, :cond_1

    .line 43
    const/4 v0, 0x0

    .line 51
    :cond_0
    :goto_0
    return-object v0

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    .local v0, "deviceName":Ljava/lang/String;
    sget-object v1, Lledroid/utils/MountPoint;->MOUNT_POINT_CACH:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    sget-object v1, Lledroid/utils/MountPoint;->MOUNT_POINT_CACH:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "deviceName":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "deviceName":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getMountPoints(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "deviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    sget-object v0, Lledroid/utils/MountPoint;->DEVICE_CACH:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static hasMultiMountPoint(Ljava/lang/String;)Z
    .locals 3
    .param p0, "deviceName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 55
    invoke-static {p0}, Lledroid/utils/MountPoint;->getMountPoints(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 56
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 59
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isMountPoint(Ljava/lang/String;)Z
    .locals 1
    .param p0, "mountPoint"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {p0}, Lledroid/utils/MountPoint;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
