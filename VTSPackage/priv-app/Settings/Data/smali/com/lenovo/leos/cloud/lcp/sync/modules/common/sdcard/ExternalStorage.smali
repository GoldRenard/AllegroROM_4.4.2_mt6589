.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;
.super Ljava/lang/Object;
.source "ExternalStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;,
        Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;
    }
.end annotation


# static fields
.field public static final ROOT_NAME:Ljava/lang/String; = "LesyncDownload"

.field private static sStorageRemovabe:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->sStorageRemovabe:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method static synthetic access$0()Ljava/util/Map;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->sStorageRemovabe:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1(Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 208
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->loadStorageVolumneList(Ljava/util/Map;)V

    return-void
.end method

.method private static findSDDirectory(I)Ljava/lang/String;
    .locals 8
    .param p0, "sdCardType"    # I

    .prologue
    .line 73
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;-><init>()V

    .line 74
    .local v2, "fstabReader":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->getStorages()Ljava/util/List;

    move-result-object v4

    .line 76
    .local v4, "storages":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;>;"
    const/4 v3, 0x0

    .line 78
    .local v3, "path":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 90
    if-nez v3, :cond_3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    :goto_0
    move-object v5, v6

    :goto_1
    return-object v5

    .line 78
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;

    .line 79
    .local v0, "entry":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;
    iget-object v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    .line 81
    .local v5, "temp":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v1, "f":Ljava/io/File;
    if-nez v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 83
    move-object v3, v5

    .line 86
    :cond_2
    iget v7, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->diskType:I

    if-ne v7, p0, :cond_0

    goto :goto_1

    .end local v0    # "entry":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;
    .end local v1    # "f":Ljava/io/File;
    .end local v5    # "temp":Ljava/lang/String;
    :cond_3
    move-object v6, v3

    .line 90
    goto :goto_0
.end method

.method public static getAvailableSize(Landroid/content/Context;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 507
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->getAvailableStorage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 509
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 511
    :cond_1
    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 512
    .local v1, "stat":Landroid/os/StatFs;
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method public static getAvailableStorage(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;-><init>()V

    .line 143
    .local v0, "fsReader":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->getStorages()Ljava/util/List;

    move-result-object v2

    .line 144
    .local v2, "storages":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 145
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 153
    :goto_0
    return-object v3

    .line 145
    :cond_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 148
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 153
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;

    iget-object v3, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    goto :goto_0

    .line 148
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;

    .line 149
    .local v1, "st":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;
    iget-wide v4, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->availableSpace:J

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    const-wide/16 v6, 0xa

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 150
    iget-object v3, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getAvailableStorageInfo(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 158
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;-><init>()V

    .line 159
    .local v0, "fsReader":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->getStorages()Ljava/util/List;

    move-result-object v3

    .line 160
    .local v3, "storages":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 161
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 170
    :cond_1
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 161
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;

    .line 162
    .local v1, "st":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;
    iget-wide v5, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->availableSpace:J

    const-wide/16 v7, 0x400

    div-long/2addr v5, v7

    const-wide/16 v7, 0xa

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 163
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;-><init>()V

    .line 164
    .local v2, "storageInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "LesyncDownload"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    .line 165
    iget-wide v4, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->availableSpace:J

    iput-wide v4, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->availableSpace:J

    goto :goto_0
.end method

.method public static getExternalSDDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->findSDDirectory(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInternalSDDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->findSDDirectory(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStorageAvailableSpace(Landroid/content/Context;)J
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;-><init>()V

    .line 180
    .local v2, "fsReader":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->getStorages()Ljava/util/List;

    move-result-object v4

    .line 181
    .local v4, "storages":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 182
    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->getSystemAvailableSize()J

    move-result-wide v0

    .line 188
    :cond_1
    return-wide v0

    .line 184
    :cond_2
    const-wide/16 v0, 0x0

    .line 185
    .local v0, "availableSize":J
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;

    .line 186
    .local v3, "st":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;
    iget-wide v6, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->availableSpace:J

    add-long/2addr v0, v6

    goto :goto_0
.end method

.method private static getStorageManager()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 282
    :try_start_0
    const-string v3, "android.os.storage.StorageManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 284
    .local v1, "storageManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/Looper;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 285
    .local v2, "storageManagerConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v3

    .line 308
    .end local v2    # "storageManagerConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    return-object v3

    .line 286
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 308
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 289
    :catch_1
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 292
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_2
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 295
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 298
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 301
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :catch_5
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 304
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static getStorageRootPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->getAvailableStorage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "availableRootPath":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "LesyncDownload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getSwitchStorage()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 456
    :try_start_0
    const-class v5, Landroid/os/Build;

    const-string v6, "getString"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 457
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 458
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 459
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "persist.sys.switch_storage"

    aput-object v8, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 460
    .local v0, "characteristics":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 461
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 462
    .local v3, "sp":[Ljava/lang/String;
    array-length v5, v3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const-string v5, "0"

    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 463
    const/4 v5, 0x0

    aget-object v4, v3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    .end local v0    # "characteristics":Ljava/lang/String;
    .end local v3    # "sp":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v4

    .line 467
    :catch_0
    move-exception v1

    .line 468
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getSystemAvailableSize()J
    .locals 10

    .prologue
    .line 194
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 195
    .local v4, "path":Ljava/io/File;
    if-eqz v4, :cond_0

    .line 196
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 197
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 199
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 201
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v5    # "stat":Landroid/os/StatFs;
    :goto_0
    return-wide v6

    .line 203
    :catch_0
    move-exception v6

    .line 205
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method public static isExternalStorageDirectory(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    const/4 v3, 0x0

    .line 60
    :goto_0
    return v3

    .line 50
    :cond_0
    :try_start_0
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->sStorageRemovabe:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 51
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_2

    .line 60
    .end local v1    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 51
    .restart local v1    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 52
    .local v2, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->sStorageRemovabe:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_0

    .line 56
    .end local v1    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "prefix":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static isStorageExist(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 112
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v1

    .line 115
    :cond_1
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;-><init>()V

    .line 116
    .local v0, "fsReader":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->size()I

    move-result v2

    if-gtz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static loadStorageVolumneList(Ljava/util/Map;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->clear()V

    .line 211
    const-string v14, "sdcard"

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->getSwitchStorage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 212
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v0, p0

    invoke-interface {v0, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->getStorageManager()Ljava/lang/Object;

    move-result-object v11

    .line 217
    .local v11, "sm":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 218
    .local v6, "method":Ljava/lang/reflect/Method;
    if-eqz v11, :cond_2

    .line 219
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 220
    .local v7, "methods":[Ljava/lang/reflect/Method;
    array-length v15, v7

    const/4 v14, 0x0

    :goto_1
    if-lt v14, v15, :cond_4

    .line 229
    .end local v7    # "methods":[Ljava/lang/reflect/Method;
    :cond_2
    :goto_2
    if-eqz v6, :cond_0

    .line 230
    const/4 v14, 0x1

    :try_start_0
    invoke-virtual {v6, v14}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 231
    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-virtual {v6, v11, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Ljava/lang/Object;

    .line 232
    .local v13, "volums":[Ljava/lang/Object;
    array-length v0, v13

    move/from16 v16, v0

    const/4 v14, 0x0

    move v15, v14

    :goto_3
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    aget-object v12, v13, v15

    .line 233
    .local v12, "sv":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 234
    .local v10, "path":Ljava/lang/String;
    const/4 v5, 0x0

    .line 236
    .local v5, "mRemovable":Ljava/lang/Boolean;
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 237
    .local v3, "fields":[Ljava/lang/reflect/Field;
    array-length v0, v3

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_4
    move/from16 v0, v17

    if-lt v14, v0, :cond_6

    .line 261
    if-eqz v10, :cond_3

    if-eqz v5, :cond_3

    .line 262
    const-string v14, "usb"

    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v14

    if-eqz v14, :cond_c

    .line 232
    :cond_3
    :goto_5
    add-int/lit8 v14, v15, 0x1

    move v15, v14

    goto :goto_3

    .line 220
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    .end local v5    # "mRemovable":Ljava/lang/Boolean;
    .end local v10    # "path":Ljava/lang/String;
    .end local v12    # "sv":Ljava/lang/Object;
    .end local v13    # "volums":[Ljava/lang/Object;
    .restart local v7    # "methods":[Ljava/lang/reflect/Method;
    :cond_4
    aget-object v4, v7, v14

    .line 221
    .local v4, "m":Ljava/lang/reflect/Method;
    const-string v16, "getVolumeList"

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 222
    move-object v6, v4

    .line 223
    goto :goto_2

    .line 220
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 237
    .end local v4    # "m":Ljava/lang/reflect/Method;
    .end local v7    # "methods":[Ljava/lang/reflect/Method;
    .restart local v3    # "fields":[Ljava/lang/reflect/Field;
    .restart local v5    # "mRemovable":Ljava/lang/Boolean;
    .restart local v10    # "path":Ljava/lang/String;
    .restart local v12    # "sv":Ljava/lang/Object;
    .restart local v13    # "volums":[Ljava/lang/Object;
    :cond_6
    :try_start_1
    aget-object v2, v3, v14

    .line 238
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    .line 240
    .local v8, "name":Ljava/lang/String;
    const-string v18, "mPath"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 241
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 242
    invoke-virtual {v2, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 243
    .local v9, "p":Ljava/lang/Object;
    if-nez v9, :cond_8

    .line 237
    .end local v9    # "p":Ljava/lang/Object;
    :cond_7
    :goto_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 246
    .restart local v9    # "p":Ljava/lang/Object;
    :cond_8
    instance-of v0, v9, Ljava/lang/String;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    .line 247
    move-object v0, v9

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 255
    .end local v9    # "p":Ljava/lang/Object;
    :cond_9
    :goto_7
    const-string v18, "mRemovable"

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 256
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 257
    invoke-virtual {v2, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "mRemovable":Ljava/lang/Boolean;
    check-cast v5, Ljava/lang/Boolean;

    .restart local v5    # "mRemovable":Ljava/lang/Boolean;
    goto :goto_6

    .line 248
    .restart local v9    # "p":Ljava/lang/Object;
    :cond_a
    instance-of v0, v9, Ljava/io/File;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    .line 249
    check-cast v9, Ljava/io/File;

    .end local v9    # "p":Ljava/lang/Object;
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 250
    goto :goto_7

    .line 251
    .restart local v9    # "p":Ljava/lang/Object;
    :cond_b
    const-string v18, "DEBUG"

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Unsupport this type: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_7

    .line 270
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    .end local v5    # "mRemovable":Ljava/lang/Boolean;
    .end local v8    # "name":Ljava/lang/String;
    .end local v9    # "p":Ljava/lang/Object;
    .end local v10    # "path":Ljava/lang/String;
    .end local v12    # "sv":Ljava/lang/Object;
    .end local v13    # "volums":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 271
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 266
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "fields":[Ljava/lang/reflect/Field;
    .restart local v5    # "mRemovable":Ljava/lang/Boolean;
    .restart local v10    # "path":Ljava/lang/String;
    .restart local v12    # "sv":Ljava/lang/Object;
    .restart local v13    # "volums":[Ljava/lang/Object;
    :cond_c
    :try_start_2
    move-object/from16 v0, p0

    invoke-interface {v0, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_5

    .line 272
    .end local v3    # "fields":[Ljava/lang/reflect/Field;
    .end local v5    # "mRemovable":Ljava/lang/Boolean;
    .end local v10    # "path":Ljava/lang/String;
    .end local v12    # "sv":Ljava/lang/Object;
    .end local v13    # "volums":[Ljava/lang/Object;
    :catch_1
    move-exception v1

    .line 273
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 274
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 275
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method
