.class public Lorg/jets3t/service/multi/ThreadedStorageService;
.super Ljava/lang/Object;
.source "ThreadedStorageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;,
        Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;,
        Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;,
        Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;,
        Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;,
        Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;,
        Lorg/jets3t/service/multi/ThreadedStorageService$CreateBucketRunnable;,
        Lorg/jets3t/service/multi/ThreadedStorageService$DeleteObjectRunnable;,
        Lorg/jets3t/service/multi/ThreadedStorageService$GetACLRunnable;,
        Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;,
        Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field protected final isShutdown:[Z

.field protected final serviceEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/multi/StorageServiceEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final sleepTime:J

.field protected storageService:Lorg/jets3t/service/StorageService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lorg/jets3t/service/multi/ThreadedStorageService;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/StorageService;Lorg/jets3t/service/multi/StorageServiceEventListener;)V
    .locals 2
    .param p1, "service"    # Lorg/jets3t/service/StorageService;
    .param p2, "listener"    # Lorg/jets3t/service/multi/StorageServiceEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 106
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jets3t/service/multi/ThreadedStorageService;-><init>(Lorg/jets3t/service/StorageService;Lorg/jets3t/service/multi/StorageServiceEventListener;J)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/StorageService;Lorg/jets3t/service/multi/StorageServiceEventListener;J)V
    .locals 7
    .param p1, "service"    # Lorg/jets3t/service/StorageService;
    .param p2, "listener"    # Lorg/jets3t/service/multi/StorageServiceEventListener;
    .param p3, "threadSleepTimeMS"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x14

    const/4 v4, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    .line 86
    const/4 v3, 0x1

    new-array v3, v3, [Z

    aput-boolean v4, v3, v4

    iput-object v3, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->isShutdown:[Z

    .line 88
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->serviceEventListeners:Ljava/util/List;

    .line 125
    iput-object p1, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    .line 126
    invoke-virtual {p0, p2}, Lorg/jets3t/service/multi/ThreadedStorageService;->addServiceEventListener(Lorg/jets3t/service/multi/StorageServiceEventListener;)V

    .line 127
    iput-wide p3, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->sleepTime:J

    .line 132
    iget-object v3, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    invoke-virtual {v3}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v3

    const-string v4, "threaded-service.admin-max-thread-count"

    invoke-virtual {v3, v4, v6}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    .line 134
    .local v0, "adminMaxThreadCount":I
    iget-object v3, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    invoke-virtual {v3}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v3

    const-string v4, "threaded-service.max-thread-count"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v2

    .line 136
    .local v2, "maxThreadCount":I
    iget-object v3, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    invoke-virtual {v3}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v3

    const-string v4, "httpclient.max-connections"

    invoke-virtual {v3, v4, v6}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    .line 138
    .local v1, "maxConnectionCount":I
    if-ge v1, v2, :cond_0

    .line 139
    new-instance v3, Lorg/jets3t/service/ServiceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insufficient connections available (httpclient.max-connections="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to run (threaded-service.max-thread-count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") simultaneous threads - please adjust JetS3t properties"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 144
    :cond_0
    if-ge v1, v0, :cond_1

    .line 145
    new-instance v3, Lorg/jets3t/service/ServiceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insufficient connections available (httpclient.max-connections="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to run (threaded-service.admin-max-thread-count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") simultaneous admin threads - please adjust JetS3t properties"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jets3t/service/ServiceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 151
    :cond_1
    return-void
.end method

.method static synthetic access$000()Lorg/apache/commons/logging/Log;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method


# virtual methods
.method public addServiceEventListener(Lorg/jets3t/service/multi/StorageServiceEventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jets3t/service/multi/StorageServiceEventListener;

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->serviceEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_0
    return-void
.end method

.method public copyObjects(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;Z)Z
    .locals 15
    .param p1, "sourceBucketName"    # Ljava/lang/String;
    .param p2, "destinationBucketName"    # Ljava/lang/String;
    .param p3, "sourceObjectKeys"    # [Ljava/lang/String;
    .param p4, "destinationObjects"    # [Lorg/jets3t/service/model/StorageObject;
    .param p5, "replaceMetadata"    # Z

    .prologue
    .line 440
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 441
    .local v8, "incompletedObjectsList":Ljava/util/List;
    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 442
    .local v14, "uniqueOperationId":Ljava/lang/Object;
    const/4 v1, 0x1

    new-array v9, v1, [Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 445
    .local v9, "success":[Z
    move-object/from16 v0, p3

    array-length v1, v0

    new-array v13, v1, [Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;

    .line 446
    .local v13, "runnables":[Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v1, v13

    if-ge v12, v1, :cond_0

    .line 447
    aget-object v1, p4, v12

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    new-instance v1, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;

    aget-object v5, p3, v12

    aget-object v6, p4, v12

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;Z)V

    aput-object v1, v13, v12

    .line 446
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 453
    :cond_0
    new-instance v1, Lorg/jets3t/service/multi/ThreadedStorageService$3;

    new-instance v4, Lorg/jets3t/service/multi/ThreadWatcher;

    array-length v2, v13

    int-to-long v2, v2

    invoke-direct {v4, v2, v3}, Lorg/jets3t/service/multi/ThreadWatcher;-><init>(J)V

    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    invoke-virtual {v2}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v5

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, v13

    move-object v7, v14

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v1 .. v11}, Lorg/jets3t/service/multi/ThreadedStorageService$3;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z[Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)V

    invoke-virtual {v1}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->run()V

    .line 492
    const/4 v1, 0x0

    aget-boolean v1, v9, v1

    return v1
.end method

.method public createBuckets([Ljava/lang/String;)Z
    .locals 13
    .param p1, "bucketNames"    # [Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x1

    .line 356
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 357
    .local v7, "incompletedBucketList":Ljava/util/List;
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 358
    .local v6, "uniqueOperationId":Ljava/lang/Object;
    new-array v8, v5, [Z

    aput-boolean v5, v8, v12

    .line 361
    .local v8, "success":[Z
    array-length v0, p1

    new-array v2, v0, [Lorg/jets3t/service/multi/ThreadedStorageService$CreateBucketRunnable;

    .line 362
    .local v2, "runnables":[Lorg/jets3t/service/multi/ThreadedStorageService$CreateBucketRunnable;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v2

    if-ge v9, v0, :cond_0

    .line 363
    aget-object v0, p1, v9

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    new-instance v0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateBucketRunnable;

    aget-object v1, p1, v9

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/multi/ThreadedStorageService$CreateBucketRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;Ljava/lang/String;)V

    aput-object v0, v2, v9

    .line 362
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 369
    :cond_0
    new-instance v0, Lorg/jets3t/service/multi/ThreadedStorageService$2;

    new-instance v3, Lorg/jets3t/service/multi/ThreadWatcher;

    array-length v1, v2

    int-to-long v10, v1

    invoke-direct {v3, v10, v11}, Lorg/jets3t/service/multi/ThreadWatcher;-><init>(J)V

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/multi/ThreadedStorageService$2;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->run()V

    .line 406
    aget-boolean v0, v8, v12

    return v0
.end method

.method public deleteObjects(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKeys"    # [Ljava/lang/String;

    .prologue
    .line 583
    array-length v2, p2

    new-array v1, v2, [Lorg/jets3t/service/model/StorageObject;

    .line 584
    .local v1, "objects":[Lorg/jets3t/service/model/StorageObject;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 585
    new-instance v2, Lorg/jets3t/service/model/StorageObject;

    aget-object v3, p2, v0

    invoke-direct {v2, v3}, Lorg/jets3t/service/model/StorageObject;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 584
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 587
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/jets3t/service/multi/ThreadedStorageService;->deleteObjects(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)Z

    move-result v2

    return v2
.end method

.method public deleteObjects(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)Z
    .locals 13
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objects"    # [Lorg/jets3t/service/model/StorageObject;

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x1

    .line 605
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 606
    .local v7, "objectsToDeleteList":Ljava/util/List;
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 607
    .local v6, "uniqueOperationId":Ljava/lang/Object;
    new-array v8, v5, [Z

    aput-boolean v5, v8, v12

    .line 610
    .local v8, "success":[Z
    array-length v0, p2

    new-array v2, v0, [Lorg/jets3t/service/multi/ThreadedStorageService$DeleteObjectRunnable;

    .line 611
    .local v2, "runnables":[Lorg/jets3t/service/multi/ThreadedStorageService$DeleteObjectRunnable;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v2

    if-ge v9, v0, :cond_0

    .line 612
    aget-object v0, p2, v9

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    new-instance v0, Lorg/jets3t/service/multi/ThreadedStorageService$DeleteObjectRunnable;

    aget-object v1, p2, v9

    invoke-direct {v0, p0, p1, v1}, Lorg/jets3t/service/multi/ThreadedStorageService$DeleteObjectRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;)V

    aput-object v0, v2, v9

    .line 611
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 617
    :cond_0
    new-instance v0, Lorg/jets3t/service/multi/ThreadedStorageService$5;

    new-instance v3, Lorg/jets3t/service/multi/ThreadWatcher;

    array-length v1, v2

    int-to-long v10, v1

    invoke-direct {v3, v10, v11}, Lorg/jets3t/service/multi/ThreadWatcher;-><init>(J)V

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/multi/ThreadedStorageService$5;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->run()V

    .line 654
    aget-boolean v0, v8, v12

    return v0
.end method

.method public downloadObjects(Ljava/lang/String;[Lorg/jets3t/service/multi/DownloadPackage;)Z
    .locals 20
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "downloadPackages"    # [Lorg/jets3t/service/multi/DownloadPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 1010
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1011
    .local v19, "progressWatchers":Ljava/util/List;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1012
    .local v15, "incompleteObjectDownloadList":Ljava/util/List;
    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 1013
    .local v14, "uniqueOperationId":Ljava/lang/Object;
    const/4 v1, 0x1

    new-array v0, v1, [Z

    move-object/from16 v16, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v16, v1

    .line 1015
    .local v16, "success":[Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v1

    const-string v2, "downloads.restoreLastModifiedDate"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/jets3t/service/Jets3tProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v7

    .line 1019
    .local v7, "restoreLastModifiedDate":Z
    move-object/from16 v0, p2

    array-length v1, v0

    new-array v10, v1, [Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;

    .line 1020
    .local v10, "runnables":[Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;
    move-object/from16 v0, p2

    array-length v1, v0

    new-array v0, v1, [Lorg/jets3t/service/model/StorageObject;

    move-object/from16 v18, v0

    .line 1021
    .local v18, "objects":[Lorg/jets3t/service/model/StorageObject;
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    array-length v1, v10

    move/from16 v0, v17

    if-ge v0, v1, :cond_0

    .line 1022
    aget-object v1, p2, v17

    invoke-virtual {v1}, Lorg/jets3t/service/multi/DownloadPackage;->getObject()Lorg/jets3t/service/model/StorageObject;

    move-result-object v1

    aput-object v1, v18, v17

    .line 1024
    new-instance v6, Lorg/jets3t/service/io/BytesProgressWatcher;

    aget-object v1, v18, v17

    invoke-virtual {v1}, Lorg/jets3t/service/model/StorageObject;->getContentLength()J

    move-result-wide v1

    invoke-direct {v6, v1, v2}, Lorg/jets3t/service/io/BytesProgressWatcher;-><init>(J)V

    .line 1026
    .local v6, "progressMonitor":Lorg/jets3t/service/io/BytesProgressWatcher;
    aget-object v1, v18, v17

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1029
    new-instance v1, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;

    aget-object v2, v18, v17

    invoke-virtual {v2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v4

    aget-object v5, p2, v17

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v7}, Lorg/jets3t/service/multi/ThreadedStorageService$DownloadObjectRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/multi/DownloadPackage;Lorg/jets3t/service/io/BytesProgressWatcher;Z)V

    aput-object v1, v10, v17

    .line 1021
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 1034
    .end local v6    # "progressMonitor":Lorg/jets3t/service/io/BytesProgressWatcher;
    :cond_0
    new-instance v11, Lorg/jets3t/service/multi/ThreadWatcher;

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jets3t/service/io/BytesProgressWatcher;

    move-object/from16 v0, v19

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jets3t/service/io/BytesProgressWatcher;

    check-cast v1, [Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-direct {v11, v1}, Lorg/jets3t/service/multi/ThreadWatcher;-><init>([Lorg/jets3t/service/io/BytesProgressWatcher;)V

    .line 1036
    .local v11, "threadWatcher":Lorg/jets3t/service/multi/ThreadWatcher;
    new-instance v8, Lorg/jets3t/service/multi/ThreadedStorageService$10;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v16}, Lorg/jets3t/service/multi/ThreadedStorageService$10;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v8}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->run()V

    .line 1073
    const/4 v1, 0x0

    aget-boolean v1, v16, v1

    return v1
.end method

.method protected fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V
    .locals 5
    .param p1, "event"    # Lorg/jets3t/service/multi/event/ServiceEvent;

    .prologue
    .line 211
    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->serviceEventListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 212
    sget-object v2, Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    sget-object v2, Lorg/jets3t/service/multi/ThreadedStorageService;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "ThreadedStorageService invoked without any StorageServiceEventListener objects, this is dangerous!"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 216
    :cond_0
    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->serviceEventListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jets3t/service/multi/StorageServiceEventListener;

    .line 217
    .local v1, "listener":Lorg/jets3t/service/multi/StorageServiceEventListener;
    instance-of v2, p1, Lorg/jets3t/service/multi/event/CreateObjectsEvent;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 218
    check-cast v2, Lorg/jets3t/service/multi/event/CreateObjectsEvent;

    invoke-interface {v1, v2}, Lorg/jets3t/service/multi/StorageServiceEventListener;->event(Lorg/jets3t/service/multi/event/CreateObjectsEvent;)V

    goto :goto_0

    .line 219
    :cond_1
    instance-of v2, p1, Lorg/jets3t/service/multi/event/CopyObjectsEvent;

    if-eqz v2, :cond_2

    move-object v2, p1

    .line 220
    check-cast v2, Lorg/jets3t/service/multi/event/CopyObjectsEvent;

    invoke-interface {v1, v2}, Lorg/jets3t/service/multi/StorageServiceEventListener;->event(Lorg/jets3t/service/multi/event/CopyObjectsEvent;)V

    goto :goto_0

    .line 221
    :cond_2
    instance-of v2, p1, Lorg/jets3t/service/multi/event/CreateBucketsEvent;

    if-eqz v2, :cond_3

    move-object v2, p1

    .line 222
    check-cast v2, Lorg/jets3t/service/multi/event/CreateBucketsEvent;

    invoke-interface {v1, v2}, Lorg/jets3t/service/multi/StorageServiceEventListener;->event(Lorg/jets3t/service/multi/event/CreateBucketsEvent;)V

    goto :goto_0

    .line 223
    :cond_3
    instance-of v2, p1, Lorg/jets3t/service/multi/event/ListObjectsEvent;

    if-eqz v2, :cond_4

    move-object v2, p1

    .line 224
    check-cast v2, Lorg/jets3t/service/multi/event/ListObjectsEvent;

    invoke-interface {v1, v2}, Lorg/jets3t/service/multi/StorageServiceEventListener;->event(Lorg/jets3t/service/multi/event/ListObjectsEvent;)V

    goto :goto_0

    .line 225
    :cond_4
    instance-of v2, p1, Lorg/jets3t/service/multi/event/DeleteObjectsEvent;

    if-eqz v2, :cond_5

    move-object v2, p1

    .line 226
    check-cast v2, Lorg/jets3t/service/multi/event/DeleteObjectsEvent;

    invoke-interface {v1, v2}, Lorg/jets3t/service/multi/StorageServiceEventListener;->event(Lorg/jets3t/service/multi/event/DeleteObjectsEvent;)V

    goto :goto_0

    .line 227
    :cond_5
    instance-of v2, p1, Lorg/jets3t/service/multi/event/GetObjectsEvent;

    if-eqz v2, :cond_6

    move-object v2, p1

    .line 228
    check-cast v2, Lorg/jets3t/service/multi/event/GetObjectsEvent;

    invoke-interface {v1, v2}, Lorg/jets3t/service/multi/StorageServiceEventListener;->event(Lorg/jets3t/service/multi/event/GetObjectsEvent;)V

    goto :goto_0

    .line 229
    :cond_6
    instance-of v2, p1, Lorg/jets3t/service/multi/event/GetObjectHeadsEvent;

    if-eqz v2, :cond_7

    move-object v2, p1

    .line 230
    check-cast v2, Lorg/jets3t/service/multi/event/GetObjectHeadsEvent;

    invoke-interface {v1, v2}, Lorg/jets3t/service/multi/StorageServiceEventListener;->event(Lorg/jets3t/service/multi/event/GetObjectHeadsEvent;)V

    goto :goto_0

    .line 231
    :cond_7
    instance-of v2, p1, Lorg/jets3t/service/multi/event/LookupACLEvent;

    if-eqz v2, :cond_8

    move-object v2, p1

    .line 232
    check-cast v2, Lorg/jets3t/service/multi/event/LookupACLEvent;

    invoke-interface {v1, v2}, Lorg/jets3t/service/multi/StorageServiceEventListener;->event(Lorg/jets3t/service/multi/event/LookupACLEvent;)V

    goto :goto_0

    .line 233
    :cond_8
    instance-of v2, p1, Lorg/jets3t/service/multi/event/UpdateACLEvent;

    if-eqz v2, :cond_9

    move-object v2, p1

    .line 234
    check-cast v2, Lorg/jets3t/service/multi/event/UpdateACLEvent;

    invoke-interface {v1, v2}, Lorg/jets3t/service/multi/StorageServiceEventListener;->event(Lorg/jets3t/service/multi/event/UpdateACLEvent;)V

    goto :goto_0

    .line 235
    :cond_9
    instance-of v2, p1, Lorg/jets3t/service/multi/event/DownloadObjectsEvent;

    if-eqz v2, :cond_a

    move-object v2, p1

    .line 236
    check-cast v2, Lorg/jets3t/service/multi/event/DownloadObjectsEvent;

    invoke-interface {v1, v2}, Lorg/jets3t/service/multi/StorageServiceEventListener;->event(Lorg/jets3t/service/multi/event/DownloadObjectsEvent;)V

    goto :goto_0

    .line 239
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Listener not invoked for event class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 242
    .end local v1    # "listener":Lorg/jets3t/service/multi/StorageServiceEventListener;
    :cond_b
    return-void
.end method

.method public getObjectACLs(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)Z
    .locals 13
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objects"    # [Lorg/jets3t/service/model/StorageObject;

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x1

    .line 865
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 866
    .local v7, "pendingObjectsList":Ljava/util/List;
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 867
    .local v6, "uniqueOperationId":Ljava/lang/Object;
    new-array v8, v5, [Z

    aput-boolean v5, v8, v12

    .line 870
    .local v8, "success":[Z
    array-length v0, p2

    new-array v2, v0, [Lorg/jets3t/service/multi/ThreadedStorageService$GetACLRunnable;

    .line 871
    .local v2, "runnables":[Lorg/jets3t/service/multi/ThreadedStorageService$GetACLRunnable;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v2

    if-ge v9, v0, :cond_0

    .line 872
    aget-object v0, p2, v9

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 873
    new-instance v0, Lorg/jets3t/service/multi/ThreadedStorageService$GetACLRunnable;

    aget-object v1, p2, v9

    invoke-direct {v0, p0, p1, v1}, Lorg/jets3t/service/multi/ThreadedStorageService$GetACLRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;)V

    aput-object v0, v2, v9

    .line 871
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 877
    :cond_0
    new-instance v0, Lorg/jets3t/service/multi/ThreadedStorageService$8;

    new-instance v3, Lorg/jets3t/service/multi/ThreadWatcher;

    array-length v1, v2

    int-to-long v10, v1

    invoke-direct {v3, v10, v11}, Lorg/jets3t/service/multi/ThreadWatcher;-><init>(J)V

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/multi/ThreadedStorageService$8;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->run()V

    .line 914
    aget-boolean v0, v8, v12

    return v0
.end method

.method public getObjects(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 12
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKeys"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 693
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 694
    .local v7, "pendingObjectKeysList":Ljava/util/List;
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 695
    .local v6, "uniqueOperationId":Ljava/lang/Object;
    new-array v8, v0, [Z

    aput-boolean v0, v8, v5

    .line 698
    .local v8, "success":[Z
    array-length v0, p2

    new-array v2, v0, [Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;

    .line 699
    .local v2, "runnables":[Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v2

    if-ge v9, v0, :cond_0

    .line 700
    aget-object v0, p2, v9

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    new-instance v0, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;

    aget-object v1, p2, v9

    invoke-direct {v0, p0, p1, v1, v5}, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v2, v9

    .line 699
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 705
    :cond_0
    new-instance v0, Lorg/jets3t/service/multi/ThreadedStorageService$6;

    new-instance v3, Lorg/jets3t/service/multi/ThreadWatcher;

    array-length v1, v2

    int-to-long v10, v1

    invoke-direct {v3, v10, v11}, Lorg/jets3t/service/multi/ThreadWatcher;-><init>(J)V

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/multi/ThreadedStorageService$6;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->run()V

    .line 750
    aget-boolean v0, v8, v5

    return v0
.end method

.method public getObjects(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)Z
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objects"    # [Lorg/jets3t/service/model/StorageObject;

    .prologue
    .line 670
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 671
    .local v1, "objectKeys":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 672
    aget-object v2, p2, v0

    invoke-virtual {v2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 674
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/jets3t/service/multi/ThreadedStorageService;->getObjects(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public getObjectsHeads(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 13
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objectKeys"    # [Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x1

    .line 789
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 790
    .local v7, "pendingObjectKeysList":Ljava/util/List;
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 791
    .local v6, "uniqueOperationId":Ljava/lang/Object;
    new-array v8, v5, [Z

    aput-boolean v5, v8, v12

    .line 794
    .local v8, "success":[Z
    array-length v0, p2

    new-array v2, v0, [Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;

    .line 795
    .local v2, "runnables":[Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v2

    if-ge v9, v0, :cond_0

    .line 796
    aget-object v0, p2, v9

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    new-instance v0, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;

    aget-object v1, p2, v9

    invoke-direct {v0, p0, p1, v1, v5}, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v0, v2, v9

    .line 795
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 801
    :cond_0
    new-instance v0, Lorg/jets3t/service/multi/ThreadedStorageService$7;

    new-instance v3, Lorg/jets3t/service/multi/ThreadWatcher;

    array-length v1, v2

    int-to-long v10, v1

    invoke-direct {v3, v10, v11}, Lorg/jets3t/service/multi/ThreadWatcher;-><init>(J)V

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/multi/ThreadedStorageService$7;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->run()V

    .line 846
    aget-boolean v0, v8, v12

    return v0
.end method

.method public getObjectsHeads(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)Z
    .locals 3
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objects"    # [Lorg/jets3t/service/model/StorageObject;

    .prologue
    .line 766
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 767
    .local v1, "objectKeys":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 768
    aget-object v2, p2, v0

    invoke-virtual {v2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 770
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/jets3t/service/multi/ThreadedStorageService;->getObjectsHeads(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public getProviderCredentials()Lorg/jets3t/service/security/ProviderCredentials;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    invoke-virtual {v0}, Lorg/jets3t/service/StorageService;->getProviderCredentials()Lorg/jets3t/service/security/ProviderCredentials;

    move-result-object v0

    return-object v0
.end method

.method public getStorageService()Lorg/jets3t/service/StorageService;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    return-object v0
.end method

.method public isAuthenticatedConnection()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    invoke-virtual {v0}, Lorg/jets3t/service/StorageService;->isAuthenticatedConnection()Z

    move-result v0

    return v0
.end method

.method public isShutdown()Z
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->isShutdown:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public listObjects(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 12
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "prefixes"    # [Ljava/lang/String;
    .param p3, "delimiter"    # Ljava/lang/String;
    .param p4, "maxListingLength"    # J

    .prologue
    .line 296
    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 297
    .local v11, "uniqueOperationId":Ljava/lang/Object;
    const/4 v0, 0x1

    new-array v10, v0, [Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    .line 300
    .local v10, "success":[Z
    array-length v0, p2

    new-array v9, v0, [Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;

    .line 301
    .local v9, "runnables":[Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v9

    if-ge v8, v0, :cond_0

    .line 302
    new-instance v0, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;

    aget-object v3, p2, v8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v7}, Lorg/jets3t/service/multi/ThreadedStorageService$ListObjectsRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    aput-object v0, v9, v8

    .line 301
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 307
    :cond_0
    new-instance v0, Lorg/jets3t/service/multi/ThreadedStorageService$1;

    new-instance v3, Lorg/jets3t/service/multi/ThreadWatcher;

    array-length v1, v9

    int-to-long v1, v1

    invoke-direct {v3, v1, v2}, Lorg/jets3t/service/multi/ThreadWatcher;-><init>(J)V

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, v9

    move-object v6, v11

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lorg/jets3t/service/multi/ThreadedStorageService$1;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->run()V

    .line 340
    const/4 v0, 0x0

    aget-boolean v0, v10, v0

    return v0
.end method

.method public putACLs(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)Z
    .locals 13
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objects"    # [Lorg/jets3t/service/model/StorageObject;

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x1

    .line 933
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 934
    .local v7, "pendingObjectsList":Ljava/util/List;
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 935
    .local v6, "uniqueOperationId":Ljava/lang/Object;
    new-array v8, v5, [Z

    aput-boolean v5, v8, v12

    .line 938
    .local v8, "success":[Z
    array-length v0, p2

    new-array v2, v0, [Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;

    .line 939
    .local v2, "runnables":[Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v2

    if-ge v9, v0, :cond_0

    .line 940
    aget-object v0, p2, v9

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 941
    new-instance v0, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;

    aget-object v1, p2, v9

    invoke-direct {v0, p0, p1, v1}, Lorg/jets3t/service/multi/ThreadedStorageService$PutACLRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;)V

    aput-object v0, v2, v9

    .line 939
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 945
    :cond_0
    new-instance v0, Lorg/jets3t/service/multi/ThreadedStorageService$9;

    new-instance v3, Lorg/jets3t/service/multi/ThreadWatcher;

    array-length v1, v2

    int-to-long v10, v1

    invoke-direct {v3, v10, v11}, Lorg/jets3t/service/multi/ThreadWatcher;-><init>(J)V

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/multi/ThreadedStorageService$9;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->run()V

    .line 982
    aget-boolean v0, v8, v12

    return v0
.end method

.method public putObjects(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)Z
    .locals 12
    .param p1, "bucketName"    # Ljava/lang/String;
    .param p2, "objects"    # [Lorg/jets3t/service/model/StorageObject;

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 510
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 511
    .local v7, "incompletedObjectsList":Ljava/util/List;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v11, "progressWatchers":Ljava/util/List;
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 513
    .local v6, "uniqueOperationId":Ljava/lang/Object;
    new-array v8, v0, [Z

    aput-boolean v0, v8, v5

    .line 516
    .local v8, "success":[Z
    array-length v0, p2

    new-array v2, v0, [Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;

    .line 517
    .local v2, "runnables":[Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v2

    if-ge v9, v0, :cond_0

    .line 518
    aget-object v0, p2, v9

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    new-instance v10, Lorg/jets3t/service/io/BytesProgressWatcher;

    aget-object v0, p2, v9

    invoke-virtual {v0}, Lorg/jets3t/service/model/StorageObject;->getContentLength()J

    move-result-wide v0

    invoke-direct {v10, v0, v1}, Lorg/jets3t/service/io/BytesProgressWatcher;-><init>(J)V

    .line 520
    .local v10, "progressMonitor":Lorg/jets3t/service/io/BytesProgressWatcher;
    new-instance v0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;

    aget-object v1, p2, v9

    invoke-direct {v0, p0, p1, v1, v10}, Lorg/jets3t/service/multi/ThreadedStorageService$CreateObjectRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;Lorg/jets3t/service/io/BytesProgressWatcher;)V

    aput-object v0, v2, v9

    .line 521
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 525
    .end local v10    # "progressMonitor":Lorg/jets3t/service/io/BytesProgressWatcher;
    :cond_0
    new-instance v3, Lorg/jets3t/service/multi/ThreadWatcher;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jets3t/service/io/BytesProgressWatcher;

    check-cast v0, [Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-direct {v3, v0}, Lorg/jets3t/service/multi/ThreadWatcher;-><init>([Lorg/jets3t/service/io/BytesProgressWatcher;)V

    .line 527
    .local v3, "threadWatcher":Lorg/jets3t/service/multi/ThreadWatcher;
    new-instance v0, Lorg/jets3t/service/multi/ThreadedStorageService$4;

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/multi/ThreadedStorageService$4;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->run()V

    .line 565
    aget-boolean v0, v8, v5

    return v0
.end method

.method public removeServiceEventListener(Lorg/jets3t/service/multi/StorageServiceEventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jets3t/service/multi/StorageServiceEventListener;

    .prologue
    .line 200
    if-eqz p1, :cond_0

    .line 201
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->serviceEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 203
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->isShutdown:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 161
    invoke-virtual {p0}, Lorg/jets3t/service/multi/ThreadedStorageService;->getStorageService()Lorg/jets3t/service/StorageService;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jets3t/service/StorageService;->shutdown()V

    .line 162
    return-void
.end method
