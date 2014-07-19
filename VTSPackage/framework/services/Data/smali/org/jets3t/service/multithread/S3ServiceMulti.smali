.class public Lorg/jets3t/service/multithread/S3ServiceMulti;
.super Ljava/lang/Object;
.source "S3ServiceMulti.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;,
        Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;,
        Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;,
        Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;,
        Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;,
        Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;,
        Lorg/jets3t/service/multithread/S3ServiceMulti$ListObjectsRunnable;,
        Lorg/jets3t/service/multithread/S3ServiceMulti$CreateBucketRunnable;,
        Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;,
        Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;,
        Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;,
        Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;,
        Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private final isShutdown:[Z

.field private s3Service:Lorg/jets3t/service/S3Service;

.field private final serviceEventListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jets3t/service/multithread/S3ServiceEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final sleepTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lorg/jets3t/service/multithread/S3ServiceMulti;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/S3Service;Lorg/jets3t/service/multithread/S3ServiceEventListener;)V
    .locals 2
    .param p1, "s3Service"    # Lorg/jets3t/service/S3Service;
    .param p2, "listener"    # Lorg/jets3t/service/multithread/S3ServiceEventListener;

    .prologue
    .line 106
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;-><init>(Lorg/jets3t/service/S3Service;Lorg/jets3t/service/multithread/S3ServiceEventListener;J)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/S3Service;Lorg/jets3t/service/multithread/S3ServiceEventListener;J)V
    .locals 7
    .param p1, "s3Service"    # Lorg/jets3t/service/S3Service;
    .param p2, "listener"    # Lorg/jets3t/service/multithread/S3ServiceEventListener;
    .param p3, "threadSleepTimeMS"    # J

    .prologue
    const/16 v6, 0x14

    const/4 v4, 0x0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    .line 88
    const/4 v3, 0x1

    new-array v3, v3, [Z

    aput-boolean v4, v3, v4

    iput-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->isShutdown:[Z

    .line 90
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->serviceEventListeners:Ljava/util/ArrayList;

    .line 125
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    .line 126
    invoke-virtual {p0, p2}, Lorg/jets3t/service/multithread/S3ServiceMulti;->addServiceEventListener(Lorg/jets3t/service/multithread/S3ServiceEventListener;)V

    .line 127
    iput-wide p3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->sleepTime:J

    .line 132
    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v3}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v3

    const-string v4, "s3service.admin-max-thread-count"

    invoke-virtual {v3, v4, v6}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    .line 134
    .local v0, "adminMaxThreadCount":I
    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v3}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v3

    const-string v4, "s3service.max-thread-count"

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v2

    .line 136
    .local v2, "maxThreadCount":I
    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v3}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v3

    const-string v4, "httpclient.max-connections"

    invoke-virtual {v3, v4, v6}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v1

    .line 138
    .local v1, "maxConnectionCount":I
    if-ge v1, v2, :cond_0

    .line 139
    sget-object v3, Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    sget-object v3, Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insufficient connections available (httpclient.max-connections="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to run "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simultaneous threads (s3service.max-thread-count) - please adjust JetS3t settings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 145
    :cond_0
    if-ge v1, v0, :cond_1

    .line 146
    sget-object v3, Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 147
    sget-object v3, Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insufficient connections available (httpclient.max-connections="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to run "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " simultaneous admin threads (s3service.admin-max-thread-count) - please adjust JetS3t settings"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 152
    :cond_1
    return-void
.end method

.method static synthetic access$100(Lorg/jets3t/service/multithread/S3ServiceMulti;)Lorg/jets3t/service/S3Service;
    .locals 1
    .param p0, "x0"    # Lorg/jets3t/service/multithread/S3ServiceMulti;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    return-object v0
.end method

.method static synthetic access$200()Lorg/apache/commons/logging/Log;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method static synthetic access$500(Lorg/jets3t/service/multithread/S3ServiceMulti;)[Z
    .locals 1
    .param p0, "x0"    # Lorg/jets3t/service/multithread/S3ServiceMulti;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->isShutdown:[Z

    return-object v0
.end method

.method static synthetic access$600(Lorg/jets3t/service/multithread/S3ServiceMulti;)J
    .locals 2
    .param p0, "x0"    # Lorg/jets3t/service/multithread/S3ServiceMulti;

    .prologue
    .line 83
    iget-wide v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->sleepTime:J

    return-wide v0
.end method


# virtual methods
.method public addServiceEventListener(Lorg/jets3t/service/multithread/S3ServiceEventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jets3t/service/multithread/S3ServiceEventListener;

    .prologue
    .line 195
    if-eqz p1, :cond_0

    .line 196
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->serviceEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_0
    return-void
.end method

.method public copyObjects(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Lorg/jets3t/service/model/S3Object;Z)Z
    .locals 15
    .param p1, "sourceBucketName"    # Ljava/lang/String;
    .param p2, "destinationBucketName"    # Ljava/lang/String;
    .param p3, "sourceObjectKeys"    # [Ljava/lang/String;
    .param p4, "destinationObjects"    # [Lorg/jets3t/service/model/S3Object;
    .param p5, "replaceMetadata"    # Z

    .prologue
    .line 452
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 453
    .local v8, "incompletedObjectsList":Ljava/util/List;
    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 454
    .local v14, "uniqueOperationId":Ljava/lang/Object;
    const/4 v1, 0x1

    new-array v9, v1, [Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 457
    .local v9, "success":[Z
    move-object/from16 v0, p3

    array-length v1, v0

    new-array v13, v1, [Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;

    .line 458
    .local v13, "runnables":[Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v1, v13

    if-ge v12, v1, :cond_0

    .line 459
    aget-object v1, p4, v12

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    new-instance v1, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;

    aget-object v5, p3, v12

    aget-object v6, p4, v12

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/jets3t/service/multithread/S3ServiceMulti$CopyObjectRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/model/S3Object;Z)V

    aput-object v1, v13, v12

    .line 458
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 465
    :cond_0
    new-instance v1, Lorg/jets3t/service/multithread/S3ServiceMulti$3;

    new-instance v4, Lorg/jets3t/service/multithread/ThreadWatcher;

    array-length v2, v13

    int-to-long v2, v2

    invoke-direct {v4, v2, v3}, Lorg/jets3t/service/multithread/ThreadWatcher;-><init>(J)V

    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v2}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v5

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, v13

    move-object v7, v14

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v1 .. v11}, Lorg/jets3t/service/multithread/S3ServiceMulti$3;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z[Ljava/lang/String;[Lorg/jets3t/service/model/S3Object;)V

    invoke-virtual {v1}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->run()V

    .line 504
    const/4 v1, 0x0

    aget-boolean v1, v9, v1

    return v1
.end method

.method public createBuckets([Lorg/jets3t/service/model/S3Bucket;)Z
    .locals 13
    .param p1, "buckets"    # [Lorg/jets3t/service/model/S3Bucket;

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x1

    .line 368
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v7, "incompletedBucketList":Ljava/util/List;
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 370
    .local v6, "uniqueOperationId":Ljava/lang/Object;
    new-array v8, v5, [Z

    aput-boolean v5, v8, v12

    .line 373
    .local v8, "success":[Z
    array-length v0, p1

    new-array v2, v0, [Lorg/jets3t/service/multithread/S3ServiceMulti$CreateBucketRunnable;

    .line 374
    .local v2, "runnables":[Lorg/jets3t/service/multithread/S3ServiceMulti$CreateBucketRunnable;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v2

    if-ge v9, v0, :cond_0

    .line 375
    aget-object v0, p1, v9

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateBucketRunnable;

    aget-object v1, p1, v9

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateBucketRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/model/S3Bucket;)V

    aput-object v0, v2, v9

    .line 374
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 381
    :cond_0
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$2;

    new-instance v3, Lorg/jets3t/service/multithread/ThreadWatcher;

    array-length v1, v2

    int-to-long v10, v1

    invoke-direct {v3, v10, v11}, Lorg/jets3t/service/multithread/ThreadWatcher;-><init>(J)V

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/multithread/S3ServiceMulti$2;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->run()V

    .line 418
    aget-boolean v0, v8, v12

    return v0
.end method

.method public deleteObjects(Lorg/jets3t/service/model/S3Bucket;[Ljava/lang/String;)Z
    .locals 4
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objectKeys"    # [Ljava/lang/String;

    .prologue
    .line 595
    array-length v2, p2

    new-array v1, v2, [Lorg/jets3t/service/model/S3Object;

    .line 596
    .local v1, "objects":[Lorg/jets3t/service/model/S3Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 597
    new-instance v2, Lorg/jets3t/service/model/S3Object;

    aget-object v3, p2, v0

    invoke-direct {v2, v3}, Lorg/jets3t/service/model/S3Object;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 596
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 599
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->deleteObjects(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/model/S3Object;)Z

    move-result v2

    return v2
.end method

.method public deleteObjects(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/model/S3Object;)Z
    .locals 13
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objects"    # [Lorg/jets3t/service/model/S3Object;

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x1

    .line 617
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .local v7, "objectsToDeleteList":Ljava/util/List;
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 619
    .local v6, "uniqueOperationId":Ljava/lang/Object;
    new-array v8, v5, [Z

    aput-boolean v5, v8, v12

    .line 622
    .local v8, "success":[Z
    array-length v0, p2

    new-array v2, v0, [Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;

    .line 623
    .local v2, "runnables":[Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v2

    if-ge v9, v0, :cond_0

    .line 624
    aget-object v0, p2, v9

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;

    aget-object v1, p2, v9

    invoke-direct {v0, p0, p1, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/model/S3Bucket;Lorg/jets3t/service/model/S3Object;)V

    aput-object v0, v2, v9

    .line 623
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 629
    :cond_0
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;

    new-instance v3, Lorg/jets3t/service/multithread/ThreadWatcher;

    array-length v1, v2

    int-to-long v10, v1

    invoke-direct {v3, v10, v11}, Lorg/jets3t/service/multithread/ThreadWatcher;-><init>(J)V

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/multithread/S3ServiceMulti$5;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->run()V

    .line 666
    aget-boolean v0, v8, v12

    return v0
.end method

.method public deleteObjects([Ljava/lang/String;)Z
    .locals 12
    .param p1, "signedDeleteUrls"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1549
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    instance-of v0, v0, Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;

    if-nez v0, :cond_0

    .line 1550
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "S3ServiceMutli\'s underlying S3Service must implement theSignedUrlHandler interface to make the method deleteObjects(String[] signedDeleteURLs) available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1554
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1555
    .local v7, "objectsToDeleteList":Ljava/util/List;
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 1556
    .local v6, "uniqueOperationId":Ljava/lang/Object;
    const/4 v0, 0x1

    new-array v8, v0, [Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 1559
    .local v8, "success":[Z
    array-length v0, p1

    new-array v2, v0, [Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;

    .line 1560
    .local v2, "runnables":[Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v2

    if-ge v9, v0, :cond_1

    .line 1561
    new-instance v11, Ljava/net/URL;

    aget-object v0, p1, v9

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1562
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v3}, Lorg/jets3t/service/StorageService;->getEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lorg/jets3t/service/utils/ServiceUtils;->buildObjectFromUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;

    move-result-object v10

    .line 1564
    .local v10, "object":Lorg/jets3t/service/model/S3Object;
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1566
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;

    aget-object v1, p1, v9

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteObjectRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Ljava/lang/String;)V

    aput-object v0, v2, v9

    .line 1560
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1570
    .end local v10    # "object":Lorg/jets3t/service/model/S3Object;
    .end local v11    # "url":Ljava/net/URL;
    :cond_1
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$15;

    new-instance v3, Lorg/jets3t/service/multithread/ThreadWatcher;

    array-length v1, v2

    int-to-long v4, v1

    invoke-direct {v3, v4, v5}, Lorg/jets3t/service/multithread/ThreadWatcher;-><init>(J)V

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/multithread/S3ServiceMulti$15;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->run()V

    .line 1607
    const/4 v0, 0x0

    aget-boolean v0, v8, v0

    return v0
.end method

.method public deleteVersionsOfObject([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "versionIds"    # [Ljava/lang/String;
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 781
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/multithread/S3ServiceMulti;->deleteVersionsOfObjectWithMFA([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteVersionsOfObjectWithMFA([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 13
    .param p1, "versionIds"    # [Ljava/lang/String;
    .param p2, "multiFactorSerialNumber"    # Ljava/lang/String;
    .param p3, "multiFactorAuthCode"    # Ljava/lang/String;
    .param p4, "bucketName"    # Ljava/lang/String;
    .param p5, "objectKey"    # Ljava/lang/String;

    .prologue
    .line 696
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 697
    .local v8, "versionsToDeleteList":Ljava/util/List;
    new-instance v12, Ljava/lang/Object;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 698
    .local v12, "uniqueOperationId":Ljava/lang/Object;
    const/4 v1, 0x1

    new-array v9, v1, [Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v9, v1

    .line 701
    .local v9, "success":[Z
    array-length v1, p1

    new-array v11, v1, [Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;

    .line 703
    .local v11, "runnables":[Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    array-length v1, v11

    if-ge v10, v1, :cond_0

    .line 704
    new-instance v1, Lorg/jets3t/service/model/S3Version;

    aget-object v2, p1, v10

    move-object/from16 v0, p5

    invoke-direct {v1, v0, v2}, Lorg/jets3t/service/model/S3Version;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    new-instance v1, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;

    aget-object v3, p1, v10

    move-object v2, p0

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v1 .. v7}, Lorg/jets3t/service/multithread/S3ServiceMulti$DeleteVersionedObjectRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v11, v10

    .line 703
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 711
    :cond_0
    new-instance v1, Lorg/jets3t/service/multithread/S3ServiceMulti$6;

    new-instance v4, Lorg/jets3t/service/multithread/ThreadWatcher;

    array-length v2, v11

    int-to-long v2, v2

    invoke-direct {v4, v2, v3}, Lorg/jets3t/service/multithread/ThreadWatcher;-><init>(J)V

    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v2}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v5

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, v11

    move-object v7, v12

    invoke-direct/range {v1 .. v9}, Lorg/jets3t/service/multithread/S3ServiceMulti$6;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v1}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->run()V

    .line 756
    const/4 v1, 0x0

    aget-boolean v1, v9, v1

    return v1
.end method

.method public downloadObjects(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/multithread/DownloadPackage;)Z
    .locals 22
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "downloadPackages"    # [Lorg/jets3t/service/multithread/DownloadPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1140
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 1141
    .local v20, "progressWatchers":Ljava/util/List;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1142
    .local v15, "incompleteObjectDownloadList":Ljava/util/List;
    new-instance v14, Ljava/lang/Object;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 1143
    .local v14, "uniqueOperationId":Ljava/lang/Object;
    const/4 v1, 0x1

    new-array v0, v1, [Z

    move-object/from16 v16, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v16, v1

    .line 1145
    .local v16, "success":[Z
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v1

    const-string v2, "downloads.restoreLastModifiedDate"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/jets3t/service/Jets3tProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v7

    .line 1149
    .local v7, "restoreLastModifiedDate":Z
    move-object/from16 v0, p2

    array-length v1, v0

    new-array v10, v1, [Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;

    .line 1150
    .local v10, "runnables":[Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;
    move-object/from16 v0, p2

    array-length v1, v0

    new-array v0, v1, [Lorg/jets3t/service/model/S3Object;

    move-object/from16 v19, v0

    .line 1151
    .local v19, "objects":[Lorg/jets3t/service/model/S3Object;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    array-length v1, v10

    move/from16 v0, v18

    if-ge v0, v1, :cond_2

    .line 1152
    aget-object v1, p2, v18

    invoke-virtual {v1}, Lorg/jets3t/service/multithread/DownloadPackage;->getObject()Lorg/jets3t/service/model/S3Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1157
    :try_start_0
    new-instance v21, Ljava/net/URL;

    aget-object v1, p2, v18

    invoke-virtual {v1}, Lorg/jets3t/service/multithread/DownloadPackage;->getSignedUrl()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1158
    .local v21, "url":Ljava/net/URL;
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v3}, Lorg/jets3t/service/StorageService;->getEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/jets3t/service/utils/ServiceUtils;->buildObjectFromUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;

    move-result-object v1

    aput-object v1, v19, v18
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1170
    .end local v21    # "url":Ljava/net/URL;
    :goto_1
    new-instance v6, Lorg/jets3t/service/io/BytesProgressWatcher;

    aget-object v1, v19, v18

    invoke-virtual {v1}, Lorg/jets3t/service/model/StorageObject;->getContentLength()J

    move-result-wide v1

    invoke-direct {v6, v1, v2}, Lorg/jets3t/service/io/BytesProgressWatcher;-><init>(J)V

    .line 1172
    .local v6, "progressMonitor":Lorg/jets3t/service/io/BytesProgressWatcher;
    aget-object v1, v19, v18

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1173
    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1175
    aget-object v1, p2, v18

    invoke-virtual {v1}, Lorg/jets3t/service/multithread/DownloadPackage;->isSignedDownload()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1176
    new-instance v1, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;

    aget-object v2, p2, v18

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v2, v6, v7}, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/multithread/DownloadPackage;Lorg/jets3t/service/io/BytesProgressWatcher;Z)V

    aput-object v1, v10, v18

    .line 1151
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 1160
    .end local v6    # "progressMonitor":Lorg/jets3t/service/io/BytesProgressWatcher;
    :catch_0
    move-exception v17

    .line 1161
    .local v17, "e":Ljava/lang/RuntimeException;
    throw v17

    .line 1162
    .end local v17    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v17

    .line 1163
    .local v17, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to determine S3 Object key name from signed URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p2, v18

    invoke-virtual {v3}, Lorg/jets3t/service/multithread/DownloadPackage;->getSignedUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jets3t/service/S3ServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1167
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_0
    aget-object v1, p2, v18

    invoke-virtual {v1}, Lorg/jets3t/service/multithread/DownloadPackage;->getObject()Lorg/jets3t/service/model/S3Object;

    move-result-object v1

    aput-object v1, v19, v18

    goto :goto_1

    .line 1179
    .restart local v6    # "progressMonitor":Lorg/jets3t/service/io/BytesProgressWatcher;
    :cond_1
    new-instance v1, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;

    aget-object v2, v19, v18

    invoke-virtual {v2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v4

    aget-object v5, p2, v18

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v7}, Lorg/jets3t/service/multithread/S3ServiceMulti$DownloadObjectRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;Lorg/jets3t/service/multithread/DownloadPackage;Lorg/jets3t/service/io/BytesProgressWatcher;Z)V

    aput-object v1, v10, v18

    goto :goto_2

    .line 1185
    .end local v6    # "progressMonitor":Lorg/jets3t/service/io/BytesProgressWatcher;
    :cond_2
    new-instance v11, Lorg/jets3t/service/multithread/ThreadWatcher;

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jets3t/service/io/BytesProgressWatcher;

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jets3t/service/io/BytesProgressWatcher;

    check-cast v1, [Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-direct {v11, v1}, Lorg/jets3t/service/multithread/ThreadWatcher;-><init>([Lorg/jets3t/service/io/BytesProgressWatcher;)V

    .line 1187
    .local v11, "threadWatcher":Lorg/jets3t/service/multithread/ThreadWatcher;
    new-instance v8, Lorg/jets3t/service/multithread/S3ServiceMulti$11;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v9, p0

    invoke-direct/range {v8 .. v16}, Lorg/jets3t/service/multithread/S3ServiceMulti$11;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v8}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->run()V

    .line 1224
    const/4 v1, 0x0

    aget-boolean v1, v16, v1

    return v1
.end method

.method public downloadObjects([Lorg/jets3t/service/multithread/DownloadPackage;)Z
    .locals 4
    .param p1, "downloadPackages"    # [Lorg/jets3t/service/multithread/DownloadPackage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 1257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1258
    aget-object v1, p1, v0

    invoke-virtual {v1}, Lorg/jets3t/service/multithread/DownloadPackage;->isSignedDownload()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1259
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The downloadObjects(DownloadPackage[]) method may only be used with download packages based on signed URLs. Download package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not based on a signed URL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jets3t/service/S3ServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1257
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1265
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->downloadObjects(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/multithread/DownloadPackage;)Z

    move-result v1

    return v1
.end method

.method protected fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V
    .locals 5
    .param p1, "event"    # Lorg/jets3t/service/multithread/ServiceEvent;

    .prologue
    .line 218
    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->serviceEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 219
    sget-object v2, Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    sget-object v2, Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "S3ServiceMulti invoked without any S3ServiceEventListener objects, this is dangerous!"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 223
    :cond_0
    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->serviceEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 224
    .local v1, "listenerIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jets3t/service/multithread/S3ServiceEventListener;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 225
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/multithread/S3ServiceEventListener;

    .line 227
    .local v0, "listener":Lorg/jets3t/service/multithread/S3ServiceEventListener;
    instance-of v2, p1, Lorg/jets3t/service/multithread/CreateObjectsEvent;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 228
    check-cast v2, Lorg/jets3t/service/multithread/CreateObjectsEvent;

    invoke-interface {v0, v2}, Lorg/jets3t/service/multithread/S3ServiceEventListener;->s3ServiceEventPerformed(Lorg/jets3t/service/multithread/CreateObjectsEvent;)V

    goto :goto_0

    .line 229
    :cond_1
    instance-of v2, p1, Lorg/jets3t/service/multithread/CopyObjectsEvent;

    if-eqz v2, :cond_2

    move-object v2, p1

    .line 230
    check-cast v2, Lorg/jets3t/service/multithread/CopyObjectsEvent;

    invoke-interface {v0, v2}, Lorg/jets3t/service/multithread/S3ServiceEventListener;->s3ServiceEventPerformed(Lorg/jets3t/service/multithread/CopyObjectsEvent;)V

    goto :goto_0

    .line 231
    :cond_2
    instance-of v2, p1, Lorg/jets3t/service/multithread/CreateBucketsEvent;

    if-eqz v2, :cond_3

    move-object v2, p1

    .line 232
    check-cast v2, Lorg/jets3t/service/multithread/CreateBucketsEvent;

    invoke-interface {v0, v2}, Lorg/jets3t/service/multithread/S3ServiceEventListener;->s3ServiceEventPerformed(Lorg/jets3t/service/multithread/CreateBucketsEvent;)V

    goto :goto_0

    .line 233
    :cond_3
    instance-of v2, p1, Lorg/jets3t/service/multithread/ListObjectsEvent;

    if-eqz v2, :cond_4

    move-object v2, p1

    .line 234
    check-cast v2, Lorg/jets3t/service/multithread/ListObjectsEvent;

    invoke-interface {v0, v2}, Lorg/jets3t/service/multithread/S3ServiceEventListener;->s3ServiceEventPerformed(Lorg/jets3t/service/multithread/ListObjectsEvent;)V

    goto :goto_0

    .line 235
    :cond_4
    instance-of v2, p1, Lorg/jets3t/service/multithread/DeleteObjectsEvent;

    if-eqz v2, :cond_5

    move-object v2, p1

    .line 236
    check-cast v2, Lorg/jets3t/service/multithread/DeleteObjectsEvent;

    invoke-interface {v0, v2}, Lorg/jets3t/service/multithread/S3ServiceEventListener;->s3ServiceEventPerformed(Lorg/jets3t/service/multithread/DeleteObjectsEvent;)V

    goto :goto_0

    .line 237
    :cond_5
    instance-of v2, p1, Lorg/jets3t/service/multithread/DeleteVersionedObjectsEvent;

    if-eqz v2, :cond_6

    move-object v2, p1

    .line 238
    check-cast v2, Lorg/jets3t/service/multithread/DeleteVersionedObjectsEvent;

    invoke-interface {v0, v2}, Lorg/jets3t/service/multithread/S3ServiceEventListener;->s3ServiceEventPerformed(Lorg/jets3t/service/multithread/DeleteVersionedObjectsEvent;)V

    goto :goto_0

    .line 239
    :cond_6
    instance-of v2, p1, Lorg/jets3t/service/multithread/GetObjectsEvent;

    if-eqz v2, :cond_7

    move-object v2, p1

    .line 240
    check-cast v2, Lorg/jets3t/service/multithread/GetObjectsEvent;

    invoke-interface {v0, v2}, Lorg/jets3t/service/multithread/S3ServiceEventListener;->s3ServiceEventPerformed(Lorg/jets3t/service/multithread/GetObjectsEvent;)V

    goto :goto_0

    .line 241
    :cond_7
    instance-of v2, p1, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;

    if-eqz v2, :cond_8

    move-object v2, p1

    .line 242
    check-cast v2, Lorg/jets3t/service/multithread/GetObjectHeadsEvent;

    invoke-interface {v0, v2}, Lorg/jets3t/service/multithread/S3ServiceEventListener;->s3ServiceEventPerformed(Lorg/jets3t/service/multithread/GetObjectHeadsEvent;)V

    goto :goto_0

    .line 243
    :cond_8
    instance-of v2, p1, Lorg/jets3t/service/multithread/LookupACLEvent;

    if-eqz v2, :cond_9

    move-object v2, p1

    .line 244
    check-cast v2, Lorg/jets3t/service/multithread/LookupACLEvent;

    invoke-interface {v0, v2}, Lorg/jets3t/service/multithread/S3ServiceEventListener;->s3ServiceEventPerformed(Lorg/jets3t/service/multithread/LookupACLEvent;)V

    goto :goto_0

    .line 245
    :cond_9
    instance-of v2, p1, Lorg/jets3t/service/multithread/UpdateACLEvent;

    if-eqz v2, :cond_a

    move-object v2, p1

    .line 246
    check-cast v2, Lorg/jets3t/service/multithread/UpdateACLEvent;

    invoke-interface {v0, v2}, Lorg/jets3t/service/multithread/S3ServiceEventListener;->s3ServiceEventPerformed(Lorg/jets3t/service/multithread/UpdateACLEvent;)V

    goto :goto_0

    .line 247
    :cond_a
    instance-of v2, p1, Lorg/jets3t/service/multithread/DownloadObjectsEvent;

    if-eqz v2, :cond_b

    move-object v2, p1

    .line 248
    check-cast v2, Lorg/jets3t/service/multithread/DownloadObjectsEvent;

    invoke-interface {v0, v2}, Lorg/jets3t/service/multithread/S3ServiceEventListener;->s3ServiceEventPerformed(Lorg/jets3t/service/multithread/DownloadObjectsEvent;)V

    goto/16 :goto_0

    .line 250
    :cond_b
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

    .line 253
    .end local v0    # "listener":Lorg/jets3t/service/multithread/S3ServiceEventListener;
    :cond_c
    return-void
.end method

.method public getAWSCredentials()Lorg/jets3t/service/security/ProviderCredentials;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v0}, Lorg/jets3t/service/S3Service;->getAWSCredentials()Lorg/jets3t/service/security/ProviderCredentials;

    move-result-object v0

    return-object v0
.end method

.method public getObjectACLs(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/model/S3Object;)Z
    .locals 13
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objects"    # [Lorg/jets3t/service/model/S3Object;

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x1

    .line 992
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 993
    .local v7, "pendingObjectsList":Ljava/util/List;
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 994
    .local v6, "uniqueOperationId":Ljava/lang/Object;
    new-array v8, v5, [Z

    aput-boolean v5, v8, v12

    .line 997
    .local v8, "success":[Z
    array-length v0, p2

    new-array v2, v0, [Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;

    .line 998
    .local v2, "runnables":[Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v2

    if-ge v9, v0, :cond_0

    .line 999
    aget-object v0, p2, v9

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1000
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;

    aget-object v1, p2, v9

    invoke-direct {v0, p0, p1, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/model/S3Bucket;Lorg/jets3t/service/model/S3Object;)V

    aput-object v0, v2, v9

    .line 998
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1004
    :cond_0
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$9;

    new-instance v3, Lorg/jets3t/service/multithread/ThreadWatcher;

    array-length v1, v2

    int-to-long v10, v1

    invoke-direct {v3, v10, v11}, Lorg/jets3t/service/multithread/ThreadWatcher;-><init>(J)V

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/multithread/S3ServiceMulti$9;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->run()V

    .line 1041
    aget-boolean v0, v8, v12

    return v0
.end method

.method public getObjects(Lorg/jets3t/service/model/S3Bucket;[Ljava/lang/String;)Z
    .locals 12
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objectKeys"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 820
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 821
    .local v7, "pendingObjectKeysList":Ljava/util/List;
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 822
    .local v6, "uniqueOperationId":Ljava/lang/Object;
    new-array v8, v0, [Z

    aput-boolean v0, v8, v5

    .line 825
    .local v8, "success":[Z
    array-length v0, p2

    new-array v2, v0, [Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;

    .line 826
    .local v2, "runnables":[Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v2

    if-ge v9, v0, :cond_0

    .line 827
    aget-object v0, p2, v9

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 828
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;

    aget-object v1, p2, v9

    invoke-direct {v0, p0, p1, v1, v5}, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;Z)V

    aput-object v0, v2, v9

    .line 826
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 832
    :cond_0
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$7;

    new-instance v3, Lorg/jets3t/service/multithread/ThreadWatcher;

    array-length v1, v2

    int-to-long v10, v1

    invoke-direct {v3, v10, v11}, Lorg/jets3t/service/multithread/ThreadWatcher;-><init>(J)V

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/multithread/S3ServiceMulti$7;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->run()V

    .line 877
    aget-boolean v0, v8, v5

    return v0
.end method

.method public getObjects(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/model/S3Object;)Z
    .locals 3
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objects"    # [Lorg/jets3t/service/model/S3Object;

    .prologue
    .line 797
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 798
    .local v1, "objectKeys":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 799
    aget-object v2, p2, v0

    invoke-virtual {v2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 798
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 801
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->getObjects(Lorg/jets3t/service/model/S3Bucket;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public getObjects([Ljava/lang/String;)Z
    .locals 14
    .param p1, "signedGetURLs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1291
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    instance-of v0, v0, Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;

    if-nez v0, :cond_0

    .line 1292
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "S3ServiceMutli\'s underlying S3Service must implement theSignedUrlHandler interface to make the method getObjects(String[] signedGetURLs) available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1296
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1297
    .local v7, "pendingObjectKeysList":Ljava/util/List;
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 1298
    .local v6, "uniqueOperationId":Ljava/lang/Object;
    new-array v8, v1, [Z

    aput-boolean v1, v8, v5

    .line 1301
    .local v8, "success":[Z
    array-length v0, p1

    new-array v2, v0, [Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;

    .line 1302
    .local v2, "runnables":[Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v2

    if-ge v9, v0, :cond_1

    .line 1303
    new-instance v11, Ljava/net/URL;

    aget-object v0, p1, v9

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1304
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v3}, Lorg/jets3t/service/StorageService;->getEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lorg/jets3t/service/utils/ServiceUtils;->buildObjectFromUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;

    move-result-object v10

    .line 1306
    .local v10, "object":Lorg/jets3t/service/model/S3Object;
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1308
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;

    aget-object v1, p1, v9

    invoke-direct {v0, p0, v1, v5}, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Ljava/lang/String;Z)V

    aput-object v0, v2, v9

    .line 1302
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1312
    .end local v10    # "object":Lorg/jets3t/service/model/S3Object;
    .end local v11    # "url":Ljava/net/URL;
    :cond_1
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$12;

    new-instance v3, Lorg/jets3t/service/multithread/ThreadWatcher;

    array-length v1, v2

    int-to-long v12, v1

    invoke-direct {v3, v12, v13}, Lorg/jets3t/service/multithread/ThreadWatcher;-><init>(J)V

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/multithread/S3ServiceMulti$12;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->run()V

    .line 1357
    aget-boolean v0, v8, v5

    return v0
.end method

.method public getObjectsACLs([Ljava/lang/String;)Z
    .locals 14
    .param p1, "signedAclURLs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1724
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    instance-of v0, v0, Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;

    if-nez v0, :cond_0

    .line 1725
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "S3ServiceMutli\'s underlying S3Service must implement theSignedUrlHandler interface to make the method getObjects(String[] signedGetURLs) available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1729
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1730
    .local v7, "pendingObjectKeysList":Ljava/util/List;
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 1731
    .local v6, "uniqueOperationId":Ljava/lang/Object;
    new-array v8, v1, [Z

    aput-boolean v1, v8, v5

    .line 1734
    .local v8, "success":[Z
    array-length v0, p1

    new-array v2, v0, [Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;

    .line 1735
    .local v2, "runnables":[Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v2

    if-ge v9, v0, :cond_1

    .line 1736
    new-instance v11, Ljava/net/URL;

    aget-object v0, p1, v9

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1737
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v3}, Lorg/jets3t/service/StorageService;->getEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lorg/jets3t/service/utils/ServiceUtils;->buildObjectFromUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;

    move-result-object v10

    .line 1739
    .local v10, "object":Lorg/jets3t/service/model/S3Object;
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1741
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;

    aget-object v1, p1, v9

    invoke-direct {v0, p0, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti$GetACLRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Ljava/lang/String;)V

    aput-object v0, v2, v9

    .line 1735
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1745
    .end local v10    # "object":Lorg/jets3t/service/model/S3Object;
    .end local v11    # "url":Ljava/net/URL;
    :cond_1
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$17;

    new-instance v3, Lorg/jets3t/service/multithread/ThreadWatcher;

    array-length v1, v2

    int-to-long v12, v1

    invoke-direct {v3, v12, v13}, Lorg/jets3t/service/multithread/ThreadWatcher;-><init>(J)V

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/multithread/S3ServiceMulti$17;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->run()V

    .line 1789
    aget-boolean v0, v8, v5

    return v0
.end method

.method public getObjectsHeads(Lorg/jets3t/service/model/S3Bucket;[Ljava/lang/String;)Z
    .locals 13
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objectKeys"    # [Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x1

    .line 916
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 917
    .local v7, "pendingObjectKeysList":Ljava/util/List;
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 918
    .local v6, "uniqueOperationId":Ljava/lang/Object;
    new-array v8, v5, [Z

    aput-boolean v5, v8, v12

    .line 921
    .local v8, "success":[Z
    array-length v0, p2

    new-array v2, v0, [Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;

    .line 922
    .local v2, "runnables":[Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v2

    if-ge v9, v0, :cond_0

    .line 923
    aget-object v0, p2, v9

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;

    aget-object v1, p2, v9

    invoke-direct {v0, p0, p1, v1, v5}, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/model/S3Bucket;Ljava/lang/String;Z)V

    aput-object v0, v2, v9

    .line 922
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 928
    :cond_0
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$8;

    new-instance v3, Lorg/jets3t/service/multithread/ThreadWatcher;

    array-length v1, v2

    int-to-long v10, v1

    invoke-direct {v3, v10, v11}, Lorg/jets3t/service/multithread/ThreadWatcher;-><init>(J)V

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/multithread/S3ServiceMulti$8;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->run()V

    .line 973
    aget-boolean v0, v8, v12

    return v0
.end method

.method public getObjectsHeads(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/model/S3Object;)Z
    .locals 3
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objects"    # [Lorg/jets3t/service/model/S3Object;

    .prologue
    .line 893
    array-length v2, p2

    new-array v1, v2, [Ljava/lang/String;

    .line 894
    .local v1, "objectKeys":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 895
    aget-object v2, p2, v0

    invoke-virtual {v2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 894
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 897
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->getObjectsHeads(Lorg/jets3t/service/model/S3Bucket;[Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public getObjectsHeads([Ljava/lang/String;)Z
    .locals 12
    .param p1, "signedHeadURLs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1383
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    instance-of v0, v0, Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;

    if-nez v0, :cond_0

    .line 1384
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "S3ServiceMutli\'s underlying S3Service must implement theSignedUrlHandler interface to make the method getObjectsHeads(String[] signedHeadURLs) available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1388
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1389
    .local v7, "pendingObjectKeysList":Ljava/util/List;
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 1390
    .local v6, "uniqueOperationId":Ljava/lang/Object;
    const/4 v0, 0x1

    new-array v8, v0, [Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 1393
    .local v8, "success":[Z
    array-length v0, p1

    new-array v2, v0, [Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;

    .line 1394
    .local v2, "runnables":[Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v2

    if-ge v9, v0, :cond_1

    .line 1395
    new-instance v11, Ljava/net/URL;

    aget-object v0, p1, v9

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1396
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v3}, Lorg/jets3t/service/StorageService;->getEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lorg/jets3t/service/utils/ServiceUtils;->buildObjectFromUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;

    move-result-object v10

    .line 1398
    .local v10, "object":Lorg/jets3t/service/model/S3Object;
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1400
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;

    aget-object v1, p1, v9

    const/4 v3, 0x1

    invoke-direct {v0, p0, v1, v3}, Lorg/jets3t/service/multithread/S3ServiceMulti$GetObjectRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Ljava/lang/String;Z)V

    aput-object v0, v2, v9

    .line 1394
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1404
    .end local v10    # "object":Lorg/jets3t/service/model/S3Object;
    .end local v11    # "url":Ljava/net/URL;
    :cond_1
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$13;

    new-instance v3, Lorg/jets3t/service/multithread/ThreadWatcher;

    array-length v1, v2

    int-to-long v4, v1

    invoke-direct {v3, v4, v5}, Lorg/jets3t/service/multithread/ThreadWatcher;-><init>(J)V

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/multithread/S3ServiceMulti$13;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->run()V

    .line 1449
    const/4 v0, 0x0

    aget-boolean v0, v8, v0

    return v0
.end method

.method public getS3Service()Lorg/jets3t/service/S3Service;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    return-object v0
.end method

.method public isAuthenticatedConnection()Z
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v0}, Lorg/jets3t/service/StorageService;->isAuthenticatedConnection()Z

    move-result v0

    return v0
.end method

.method public isShutdown()Z
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->isShutdown:[Z

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
    .line 308
    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 309
    .local v11, "uniqueOperationId":Ljava/lang/Object;
    const/4 v0, 0x1

    new-array v10, v0, [Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v10, v0

    .line 312
    .local v10, "success":[Z
    array-length v0, p2

    new-array v9, v0, [Lorg/jets3t/service/multithread/S3ServiceMulti$ListObjectsRunnable;

    .line 313
    .local v9, "runnables":[Lorg/jets3t/service/multithread/S3ServiceMulti$ListObjectsRunnable;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v9

    if-ge v8, v0, :cond_0

    .line 314
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$ListObjectsRunnable;

    aget-object v3, p2, v8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v7}, Lorg/jets3t/service/multithread/S3ServiceMulti$ListObjectsRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    aput-object v0, v9, v8

    .line 313
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 319
    :cond_0
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$1;

    new-instance v3, Lorg/jets3t/service/multithread/ThreadWatcher;

    array-length v1, v9

    int-to-long v1, v1

    invoke-direct {v3, v1, v2}, Lorg/jets3t/service/multithread/ThreadWatcher;-><init>(J)V

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, v9

    move-object v6, v11

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lorg/jets3t/service/multithread/S3ServiceMulti$1;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->run()V

    .line 352
    const/4 v0, 0x0

    aget-boolean v0, v10, v0

    return v0
.end method

.method public putACLs(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/model/S3Object;)Z
    .locals 13
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objects"    # [Lorg/jets3t/service/model/S3Object;

    .prologue
    const/4 v12, 0x0

    const/4 v5, 0x1

    .line 1060
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1061
    .local v7, "pendingObjectsList":Ljava/util/List;
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 1062
    .local v6, "uniqueOperationId":Ljava/lang/Object;
    new-array v8, v5, [Z

    aput-boolean v5, v8, v12

    .line 1065
    .local v8, "success":[Z
    array-length v0, p2

    new-array v2, v0, [Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;

    .line 1066
    .local v2, "runnables":[Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v2

    if-ge v9, v0, :cond_0

    .line 1067
    aget-object v0, p2, v9

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1068
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;

    aget-object v1, p2, v9

    invoke-direct {v0, p0, p1, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/model/S3Bucket;Lorg/jets3t/service/model/S3Object;)V

    aput-object v0, v2, v9

    .line 1066
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1072
    :cond_0
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$10;

    new-instance v3, Lorg/jets3t/service/multithread/ThreadWatcher;

    array-length v1, v2

    int-to-long v10, v1

    invoke-direct {v3, v10, v11}, Lorg/jets3t/service/multithread/ThreadWatcher;-><init>(J)V

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/multithread/S3ServiceMulti$10;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->run()V

    .line 1109
    aget-boolean v0, v8, v12

    return v0
.end method

.method public putObjects(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/model/S3Object;)Z
    .locals 12
    .param p1, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p2, "objects"    # [Lorg/jets3t/service/model/S3Object;

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 522
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 523
    .local v7, "incompletedObjectsList":Ljava/util/List;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 524
    .local v11, "progressWatchers":Ljava/util/List;
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 525
    .local v6, "uniqueOperationId":Ljava/lang/Object;
    new-array v8, v0, [Z

    aput-boolean v0, v8, v5

    .line 528
    .local v8, "success":[Z
    array-length v0, p2

    new-array v2, v0, [Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;

    .line 529
    .local v2, "runnables":[Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v2

    if-ge v9, v0, :cond_0

    .line 530
    aget-object v0, p2, v9

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    new-instance v10, Lorg/jets3t/service/io/BytesProgressWatcher;

    aget-object v0, p2, v9

    invoke-virtual {v0}, Lorg/jets3t/service/model/StorageObject;->getContentLength()J

    move-result-wide v0

    invoke-direct {v10, v0, v1}, Lorg/jets3t/service/io/BytesProgressWatcher;-><init>(J)V

    .line 532
    .local v10, "progressMonitor":Lorg/jets3t/service/io/BytesProgressWatcher;
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;

    aget-object v1, p2, v9

    invoke-direct {v0, p0, p1, v1, v10}, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/model/S3Bucket;Lorg/jets3t/service/model/S3Object;Lorg/jets3t/service/io/BytesProgressWatcher;)V

    aput-object v0, v2, v9

    .line 533
    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 537
    .end local v10    # "progressMonitor":Lorg/jets3t/service/io/BytesProgressWatcher;
    :cond_0
    new-instance v3, Lorg/jets3t/service/multithread/ThreadWatcher;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-interface {v11, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jets3t/service/io/BytesProgressWatcher;

    check-cast v0, [Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-direct {v3, v0}, Lorg/jets3t/service/multithread/ThreadWatcher;-><init>([Lorg/jets3t/service/io/BytesProgressWatcher;)V

    .line 539
    .local v3, "threadWatcher":Lorg/jets3t/service/multithread/ThreadWatcher;
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$4;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/multithread/S3ServiceMulti$4;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->run()V

    .line 577
    aget-boolean v0, v8, v5

    return v0
.end method

.method public putObjects([Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;)Z
    .locals 13
    .param p1, "signedPutUrlAndObjects"    # [Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 1632
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    instance-of v0, v0, Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;

    if-nez v0, :cond_0

    .line 1633
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "S3ServiceMutli\'s underlying S3Service must implement theSignedUrlHandler interface to make the method putObjects(SignedUrlAndObject[] signedPutUrlAndObjects) available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1637
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1638
    .local v12, "progressWatchers":Ljava/util/List;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1639
    .local v7, "incompletedObjectsList":Ljava/util/List;
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 1640
    .local v6, "uniqueOperationId":Ljava/lang/Object;
    new-array v8, v1, [Z

    aput-boolean v1, v8, v5

    .line 1643
    .local v8, "success":[Z
    array-length v0, p1

    new-array v10, v0, [Lorg/jets3t/service/model/S3Object;

    .line 1644
    .local v10, "objects":[Lorg/jets3t/service/model/S3Object;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, p1

    if-ge v9, v0, :cond_1

    .line 1645
    aget-object v0, p1, v9

    invoke-virtual {v0}, Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;->getObject()Lorg/jets3t/service/model/S3Object;

    move-result-object v0

    aput-object v0, v10, v9

    .line 1644
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1649
    :cond_1
    array-length v0, p1

    new-array v2, v0, [Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;

    .line 1650
    .local v2, "runnables":[Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;
    const/4 v9, 0x0

    :goto_1
    array-length v0, v2

    if-ge v9, v0, :cond_2

    .line 1651
    new-instance v11, Lorg/jets3t/service/io/BytesProgressWatcher;

    aget-object v0, v10, v9

    invoke-virtual {v0}, Lorg/jets3t/service/model/StorageObject;->getContentLength()J

    move-result-wide v0

    invoke-direct {v11, v0, v1}, Lorg/jets3t/service/io/BytesProgressWatcher;-><init>(J)V

    .line 1652
    .local v11, "progressMonitor":Lorg/jets3t/service/io/BytesProgressWatcher;
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1653
    aget-object v0, p1, v9

    invoke-virtual {v0}, Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;->getObject()Lorg/jets3t/service/model/S3Object;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1654
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;

    aget-object v1, p1, v9

    invoke-direct {v0, p0, v1, v11}, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;Lorg/jets3t/service/io/BytesProgressWatcher;)V

    aput-object v0, v2, v9

    .line 1650
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1658
    .end local v11    # "progressMonitor":Lorg/jets3t/service/io/BytesProgressWatcher;
    :cond_2
    new-instance v3, Lorg/jets3t/service/multithread/ThreadWatcher;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jets3t/service/io/BytesProgressWatcher;

    check-cast v0, [Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-direct {v3, v0}, Lorg/jets3t/service/multithread/ThreadWatcher;-><init>([Lorg/jets3t/service/io/BytesProgressWatcher;)V

    .line 1660
    .local v3, "threadWatcher":Lorg/jets3t/service/multithread/ThreadWatcher;
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$16;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/multithread/S3ServiceMulti$16;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->run()V

    .line 1697
    aget-boolean v0, v8, v5

    return v0
.end method

.method public putObjectsACLs([Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)Z
    .locals 12
    .param p1, "signedURLs"    # [Ljava/lang/String;
    .param p2, "acl"    # Lorg/jets3t/service/acl/AccessControlList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 1472
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1473
    .local v7, "pendingObjectsList":Ljava/util/List;
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 1474
    .local v6, "uniqueOperationId":Ljava/lang/Object;
    const/4 v0, 0x1

    new-array v8, v0, [Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-boolean v1, v8, v0

    .line 1477
    .local v8, "success":[Z
    array-length v0, p1

    new-array v2, v0, [Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;

    .line 1478
    .local v2, "runnables":[Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v0, v2

    if-ge v9, v0, :cond_0

    .line 1479
    new-instance v11, Ljava/net/URL;

    aget-object v0, p1, v9

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1480
    .local v11, "url":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v3}, Lorg/jets3t/service/StorageService;->getEndpoint()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lorg/jets3t/service/utils/ServiceUtils;->buildObjectFromUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/S3Object;

    move-result-object v10

    .line 1482
    .local v10, "object":Lorg/jets3t/service/model/S3Object;
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1483
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;

    aget-object v1, p1, v9

    invoke-direct {v0, p0, v1, p2}, Lorg/jets3t/service/multithread/S3ServiceMulti$PutACLRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Ljava/lang/String;Lorg/jets3t/service/acl/AccessControlList;)V

    aput-object v0, v2, v9

    .line 1478
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1487
    .end local v10    # "object":Lorg/jets3t/service/model/S3Object;
    .end local v11    # "url":Ljava/net/URL;
    :cond_0
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$14;

    new-instance v3, Lorg/jets3t/service/multithread/ThreadWatcher;

    array-length v1, v2

    int-to-long v4, v1

    invoke-direct {v3, v4, v5}, Lorg/jets3t/service/multithread/ThreadWatcher;-><init>(J)V

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    const/4 v5, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/multithread/S3ServiceMulti$14;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->run()V

    .line 1524
    const/4 v0, 0x0

    aget-boolean v0, v8, v0

    return v0
.end method

.method public removeServiceEventListener(Lorg/jets3t/service/multithread/S3ServiceEventListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/jets3t/service/multithread/S3ServiceEventListener;

    .prologue
    .line 207
    if-eqz p1, :cond_0

    .line 208
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->serviceEventListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 210
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/S3ServiceException;
        }
    .end annotation

    .prologue
    .line 163
    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti;->isShutdown:[Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lorg/jets3t/service/multithread/S3ServiceMulti;->getS3Service()Lorg/jets3t/service/S3Service;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->shutdown()V
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "se":Lorg/jets3t/service/ServiceException;
    new-instance v1, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v1, v0}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    throw v1
.end method
