.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;
.super Ljava/lang/Object;
.source "ExternalStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FstabReader"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$OnFsFoundListener;
    }
.end annotation


# instance fields
.field private etcDirectoryPath:Ljava/lang/String;

.field private fstabFileSubfix:Ljava/lang/String;

.field storages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 360
    const-string v0, "/system/etc/"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->etcDirectoryPath:Ljava/lang/String;

    .line 361
    const-string v0, ".fstab"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->fstabFileSubfix:Ljava/lang/String;

    .line 313
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->init()V

    .line 314
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->fstabFileSubfix:Ljava/lang/String;

    return-object v0
.end method

.method private browseFstabFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$OnFsFoundListener;Ljava/io/File;)V
    .locals 16
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$OnFsFoundListener;
    .param p2, "fstabFile"    # Ljava/io/File;

    .prologue
    .line 406
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 407
    const/4 v5, 0x0

    .line 408
    .local v5, "reader":Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    .line 410
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/InputStreamReader;

    new-instance v12, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v13, "UTF-8"

    invoke-direct {v6, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .local v6, "reader":Ljava/io/InputStreamReader;
    if-eqz v6, :cond_1

    .line 412
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 413
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    .line 414
    .local v8, "s":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v8, :cond_3

    move-object v1, v2

    .line 441
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v8    # "s":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :cond_1
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/io/Closeable;

    const/4 v13, 0x0

    .line 442
    aput-object v6, v12, v13

    invoke-static {v12}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/io/Closeable;

    const/4 v13, 0x0

    .line 443
    aput-object v1, v12, v13

    invoke-static {v12}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 446
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    :cond_2
    :goto_1
    return-void

    .line 415
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v8    # "s":Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v12, "dev_mount"

    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 416
    const-string v12, "\\s"

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 417
    .local v11, "tokens":[Ljava/lang/String;
    if-eqz v11, :cond_0

    array-length v12, v11

    const/4 v13, 0x3

    if-lt v12, v13, :cond_0

    .line 422
    const/4 v12, 0x2

    aget-object v4, v11, v12

    .line 423
    .local v4, "path":Ljava/lang/String;
    new-instance v9, Landroid/os/StatFs;

    invoke-direct {v9, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 424
    .local v9, "stat":Landroid/os/StatFs;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    .local v7, "rootPath":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 427
    new-instance v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;

    invoke-direct {v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;-><init>()V

    .line 428
    .local v10, "storage":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;
    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v12

    iput v12, v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->availableBlocks:I

    .line 429
    const-wide/16 v12, 0x1

    invoke-virtual {v9}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v14

    int-to-long v14, v14

    mul-long/2addr v12, v14

    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v14

    int-to-long v14, v14

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    iput-wide v12, v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->availableSpace:J

    .line 430
    const-wide/16 v12, 0x1

    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockCount()I

    move-result v14

    int-to-long v14, v14

    mul-long/2addr v12, v14

    invoke-virtual {v9}, Landroid/os/StatFs;->getBlockSize()I

    move-result v14

    int-to-long v14, v14

    mul-long/2addr v12, v14

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    iput-wide v12, v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->totalSpace:J

    .line 431
    iput-object v4, v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    .line 432
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$OnFsFoundListener;->onFsFound(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;)V

    .line 436
    .end local v4    # "path":Ljava/lang/String;
    .end local v7    # "rootPath":Ljava/io/File;
    .end local v9    # "stat":Landroid/os/StatFs;
    .end local v10    # "storage":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;
    .end local v11    # "tokens":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v8

    goto :goto_0

    .line 439
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .end local v8    # "s":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v3

    .line 440
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 441
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/io/Closeable;

    const/4 v13, 0x0

    .line 442
    aput-object v5, v12, v13

    invoke-static {v12}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/io/Closeable;

    const/4 v13, 0x0

    .line 443
    aput-object v1, v12, v13

    invoke-static {v12}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto/16 :goto_1

    .line 441
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    :goto_3
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    .line 442
    aput-object v5, v13, v14

    invoke-static {v13}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/io/Closeable;

    const/4 v14, 0x0

    .line 443
    aput-object v1, v13, v14

    invoke-static {v13}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 444
    throw v12

    .line 441
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_3

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v12

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_3

    .line 439
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :catch_1
    move-exception v3

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_2

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/InputStreamReader;
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    goto :goto_2
.end method

.method private findFstabFiles()[Ljava/io/File;
    .locals 2

    .prologue
    .line 364
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->etcDirectoryPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 365
    .local v0, "etcDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 366
    :cond_0
    const/4 v1, 0x0

    .line 369
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$2;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$2;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method

.method private getStorageInfoList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v0, "storageList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;>;"
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$1;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;Ljava/util/List;)V

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->iterateFileSystem(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$OnFsFoundListener;)V

    .line 353
    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 339
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->getStorageInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->storages:Ljava/util/List;

    .line 340
    return-void
.end method


# virtual methods
.method public browseDefaultStorage(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$OnFsFoundListener;)V
    .locals 12
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$OnFsFoundListener;

    .prologue
    const-wide/16 v10, 0x400

    const-wide/16 v8, 0x1

    .line 391
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 392
    .local v1, "externalStorageFile":Ljava/io/File;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 393
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, "absolutePath":Ljava/lang/String;
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 395
    .local v2, "stat":Landroid/os/StatFs;
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;

    invoke-direct {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;-><init>()V

    .line 396
    .local v3, "storage":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    iput v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->availableBlocks:I

    .line 397
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v8

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    div-long/2addr v4, v10

    iput-wide v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->availableSpace:J

    .line 398
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v8

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v4, v6

    div-long/2addr v4, v10

    iput-wide v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->totalSpace:J

    .line 399
    iput-object v0, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    .line 401
    invoke-interface {p1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$OnFsFoundListener;->onFsFound(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;)V

    .line 403
    .end local v0    # "absolutePath":Ljava/lang/String;
    .end local v2    # "stat":Landroid/os/StatFs;
    .end local v3    # "storage":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;
    :cond_0
    return-void
.end method

.method public getStorages()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 321
    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->sStorageRemovabe:Ljava/util/Map;
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->access$0()Ljava/util/Map;

    move-result-object v2

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->loadStorageVolumneList(Ljava/util/Map;)V
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->access$1(Ljava/util/Map;)V

    .line 323
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->storages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->storages:Ljava/util/List;

    return-object v2

    .line 323
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;

    .line 324
    .local v1, "si":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;
    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->sStorageRemovabe:Ljava/util/Map;
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->access$0()Ljava/util/Map;

    move-result-object v2

    iget-object v5, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 325
    .local v0, "b":Ljava/lang/Boolean;
    if-nez v0, :cond_2

    .line 326
    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->sStorageRemovabe:Ljava/util/Map;
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->access$0()Ljava/util/Map;

    move-result-object v2

    iget-object v5, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->sStorageRemovabe:Ljava/util/Map;
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;->access$0()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    iput v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->diskType:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 327
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 328
    const/4 v2, 0x2

    iput v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->diskType:I

    goto :goto_0

    .line 330
    :cond_3
    iput v3, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->diskType:I

    goto :goto_0
.end method

.method protected iterateFileSystem(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$OnFsFoundListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$OnFsFoundListener;

    .prologue
    .line 378
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->findFstabFiles()[Ljava/io/File;

    move-result-object v1

    .line 379
    .local v1, "fstabFiles":[Ljava/io/File;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_2

    .line 381
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->browseDefaultStorage(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$OnFsFoundListener;)V

    .line 388
    :cond_1
    return-void

    .line 385
    :cond_2
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 386
    .local v0, "fstabFile":Ljava/io/File;
    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->browseFstabFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$OnFsFoundListener;Ljava/io/File;)V

    .line 385
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->storages:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->storages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method
