.class public Lorg/jets3t/service/multi/s3/ThreadedS3Service;
.super Lorg/jets3t/service/multi/ThreadedStorageService;
.source "ThreadedS3Service.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;,
        Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartCompleteRunnable;,
        Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartStartRunnable;
    }
.end annotation


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/jets3t/service/S3Service;Lorg/jets3t/service/multi/StorageServiceEventListener;)V
    .locals 0
    .param p1, "service"    # Lorg/jets3t/service/S3Service;
    .param p2, "listener"    # Lorg/jets3t/service/multi/StorageServiceEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jets3t/service/ServiceException;
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/multi/ThreadedStorageService;-><init>(Lorg/jets3t/service/StorageService;Lorg/jets3t/service/multi/StorageServiceEventListener;)V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lorg/jets3t/service/multi/s3/ThreadedS3Service;)Lorg/jets3t/service/StorageService;
    .locals 1
    .param p0, "x0"    # Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jets3t/service/multi/s3/ThreadedS3Service;)Lorg/jets3t/service/StorageService;
    .locals 1
    .param p0, "x0"    # Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jets3t/service/multi/s3/ThreadedS3Service;)Lorg/jets3t/service/StorageService;
    .locals 1
    .param p0, "x0"    # Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    .prologue
    .line 22
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    return-object v0
.end method

.method private assertIsS3Service()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    instance-of v0, v0, Lorg/jets3t/service/S3Service;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart uploads are only available in Amazon S3, you must use the S3Service implementation of StorageService"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method protected fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V
    .locals 4
    .param p1, "event"    # Lorg/jets3t/service/multi/event/ServiceEvent;

    .prologue
    .line 33
    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->serviceEventListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 34
    sget-object v2, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 35
    sget-object v2, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "ThreadedS3Service invoked without any StorageServiceEventListener objects, this is dangerous!"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 38
    :cond_0
    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->serviceEventListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jets3t/service/multi/StorageServiceEventListener;

    .line 39
    .local v1, "listener":Lorg/jets3t/service/multi/StorageServiceEventListener;
    instance-of v2, v1, Lorg/jets3t/service/multi/s3/S3ServiceEventListener;

    if-eqz v2, :cond_4

    .line 40
    instance-of v2, p1, Lorg/jets3t/service/multi/s3/MultipartUploadsEvent;

    if-eqz v2, :cond_1

    .line 41
    check-cast v1, Lorg/jets3t/service/multi/s3/S3ServiceEventListener;

    .end local v1    # "listener":Lorg/jets3t/service/multi/StorageServiceEventListener;
    move-object v2, p1

    check-cast v2, Lorg/jets3t/service/multi/s3/MultipartUploadsEvent;

    invoke-interface {v1, v2}, Lorg/jets3t/service/multi/s3/S3ServiceEventListener;->event(Lorg/jets3t/service/multi/s3/MultipartUploadsEvent;)V

    goto :goto_0

    .line 42
    .restart local v1    # "listener":Lorg/jets3t/service/multi/StorageServiceEventListener;
    :cond_1
    instance-of v2, p1, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;

    if-eqz v2, :cond_2

    .line 43
    check-cast v1, Lorg/jets3t/service/multi/s3/S3ServiceEventListener;

    .end local v1    # "listener":Lorg/jets3t/service/multi/StorageServiceEventListener;
    move-object v2, p1

    check-cast v2, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;

    invoke-interface {v1, v2}, Lorg/jets3t/service/multi/s3/S3ServiceEventListener;->event(Lorg/jets3t/service/multi/s3/MultipartStartsEvent;)V

    goto :goto_0

    .line 44
    .restart local v1    # "listener":Lorg/jets3t/service/multi/StorageServiceEventListener;
    :cond_2
    instance-of v2, p1, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;

    if-eqz v2, :cond_3

    .line 45
    check-cast v1, Lorg/jets3t/service/multi/s3/S3ServiceEventListener;

    .end local v1    # "listener":Lorg/jets3t/service/multi/StorageServiceEventListener;
    move-object v2, p1

    check-cast v2, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;

    invoke-interface {v1, v2}, Lorg/jets3t/service/multi/s3/S3ServiceEventListener;->event(Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;)V

    goto :goto_0

    .line 47
    .restart local v1    # "listener":Lorg/jets3t/service/multi/StorageServiceEventListener;
    :cond_3
    invoke-super {p0, p1}, Lorg/jets3t/service/multi/ThreadedStorageService;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    goto :goto_0

    .line 50
    :cond_4
    invoke-super {p0, p1}, Lorg/jets3t/service/multi/ThreadedStorageService;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    goto :goto_0

    .line 53
    .end local v1    # "listener":Lorg/jets3t/service/multi/StorageServiceEventListener;
    :cond_5
    return-void
.end method

.method public multipartCompleteUploads(Ljava/util/List;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/MultipartUpload;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "multipartUploads":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/MultipartUpload;>;"
    const/4 v5, 0x1

    const/4 v12, 0x0

    .line 158
    invoke-direct {p0}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->assertIsS3Service()V

    .line 159
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v7, "incompletedObjectsList":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/MultipartUpload;>;"
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 161
    .local v6, "uniqueOperationId":Ljava/lang/Object;
    new-array v8, v5, [Z

    aput-boolean v5, v8, v12

    .line 164
    .local v8, "success":[Z
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v11, "runnableList":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartCompleteRunnable;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jets3t/service/model/MultipartUpload;

    .line 166
    .local v10, "multipartUpload":Lorg/jets3t/service/model/MultipartUpload;
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartCompleteRunnable;

    invoke-direct {v0, p0, v10}, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartCompleteRunnable;-><init>(Lorg/jets3t/service/multi/s3/ThreadedS3Service;Lorg/jets3t/service/model/MultipartUpload;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    .end local v10    # "multipartUpload":Lorg/jets3t/service/model/MultipartUpload;
    :cond_0
    new-instance v3, Lorg/jets3t/service/multi/ThreadWatcher;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {v3, v0, v1}, Lorg/jets3t/service/multi/ThreadWatcher;-><init>(J)V

    .line 172
    .local v3, "threadWatcher":Lorg/jets3t/service/multi/ThreadWatcher;
    new-instance v0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;

    new-array v1, v12, [Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartCompleteRunnable;

    invoke-interface {v11, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;-><init>(Lorg/jets3t/service/multi/s3/ThreadedS3Service;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->run()V

    .line 210
    aget-boolean v0, v8, v12

    return v0
.end method

.method public multipartStartUploads(Ljava/lang/String;Ljava/util/List;)Z
    .locals 13
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/model/StorageObject;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/StorageObject;>;"
    const/4 v5, 0x1

    const/4 v12, 0x0

    .line 79
    invoke-direct {p0}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->assertIsS3Service()V

    .line 80
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v7, "incompletedObjectsList":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/StorageObject;>;"
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 82
    .local v6, "uniqueOperationId":Ljava/lang/Object;
    new-array v8, v5, [Z

    aput-boolean v5, v8, v12

    .line 85
    .local v8, "success":[Z
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 86
    .local v11, "runnableList":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartStartRunnable;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/jets3t/service/model/StorageObject;

    .line 87
    .local v10, "object":Lorg/jets3t/service/model/StorageObject;
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartStartRunnable;

    invoke-direct {v0, p0, p1, v10}, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartStartRunnable;-><init>(Lorg/jets3t/service/multi/s3/ThreadedS3Service;Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v10    # "object":Lorg/jets3t/service/model/StorageObject;
    :cond_0
    new-instance v3, Lorg/jets3t/service/multi/ThreadWatcher;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {v3, v0, v1}, Lorg/jets3t/service/multi/ThreadWatcher;-><init>(J)V

    .line 93
    .local v3, "threadWatcher":Lorg/jets3t/service/multi/ThreadWatcher;
    new-instance v0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;

    new-array v1, v12, [Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartStartRunnable;

    invoke-interface {v11, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v4

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;-><init>(Lorg/jets3t/service/multi/s3/ThreadedS3Service;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->run()V

    .line 141
    aget-boolean v0, v8, v12

    return v0
.end method

.method public multipartUploadParts(Ljava/util/List;)Z
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/multi/s3/MultipartUploadAndParts;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "uploadAndPartsList":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/multi/s3/MultipartUploadAndParts;>;"
    invoke-direct/range {p0 .. p0}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->assertIsS3Service()V

    .line 230
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v14, "incompletedObjectsList":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/StorageObject;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v20, "progressWatchers":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/io/BytesProgressWatcher;>;"
    new-instance v13, Ljava/lang/Object;

    invoke-direct {v13}, Ljava/lang/Object;-><init>()V

    .line 233
    .local v13, "uniqueOperationId":Ljava/lang/Object;
    const/4 v1, 0x1

    new-array v15, v1, [Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v15, v1

    .line 236
    .local v15, "success":[Z
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v21, "runnableList":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/jets3t/service/multi/s3/MultipartUploadAndParts;

    .line 239
    .local v18, "multipartUploadAndParts":Lorg/jets3t/service/multi/s3/MultipartUploadAndParts;
    invoke-virtual/range {v18 .. v18}, Lorg/jets3t/service/multi/s3/MultipartUploadAndParts;->getPartNumberOffset()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 240
    .local v19, "partNumber":I
    invoke-virtual/range {v18 .. v18}, Lorg/jets3t/service/multi/s3/MultipartUploadAndParts;->getPartObjects()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jets3t/service/model/S3Object;

    .line 241
    .local v5, "partObject":Lorg/jets3t/service/model/S3Object;
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v6, Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-virtual {v5}, Lorg/jets3t/service/model/StorageObject;->getContentLength()J

    move-result-wide v1

    invoke-direct {v6, v1, v2}, Lorg/jets3t/service/io/BytesProgressWatcher;-><init>(J)V

    .line 243
    .local v6, "progressMonitor":Lorg/jets3t/service/io/BytesProgressWatcher;
    new-instance v1, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;

    invoke-virtual/range {v18 .. v18}, Lorg/jets3t/service/multi/s3/MultipartUploadAndParts;->getMultipartUpload()Lorg/jets3t/service/model/MultipartUpload;

    move-result-object v3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;-><init>(Lorg/jets3t/service/multi/s3/ThreadedS3Service;Lorg/jets3t/service/model/MultipartUpload;Ljava/lang/Integer;Lorg/jets3t/service/model/S3Object;Lorg/jets3t/service/io/BytesProgressWatcher;)V

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    add-int/lit8 v19, v19, 0x1

    .line 248
    goto :goto_0

    .line 252
    .end local v5    # "partObject":Lorg/jets3t/service/model/S3Object;
    .end local v6    # "progressMonitor":Lorg/jets3t/service/io/BytesProgressWatcher;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "multipartUploadAndParts":Lorg/jets3t/service/multi/s3/MultipartUploadAndParts;
    .end local v19    # "partNumber":I
    :cond_1
    new-instance v10, Lorg/jets3t/service/multi/ThreadWatcher;

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jets3t/service/io/BytesProgressWatcher;

    move-object/from16 v0, v20

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-direct {v10, v1}, Lorg/jets3t/service/multi/ThreadWatcher;-><init>([Lorg/jets3t/service/io/BytesProgressWatcher;)V

    .line 254
    .local v10, "threadWatcher":Lorg/jets3t/service/multi/ThreadWatcher;
    new-instance v7, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;

    move-object/from16 v0, v21

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    invoke-virtual {v1}, Lorg/jets3t/service/StorageService;->getJetS3tProperties()Lorg/jets3t/service/Jets3tProperties;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v15}, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;-><init>(Lorg/jets3t/service/multi/s3/ThreadedS3Service;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V

    invoke-virtual {v7}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->run()V

    .line 292
    const/4 v1, 0x0

    aget-boolean v1, v15, v1

    return v1
.end method
