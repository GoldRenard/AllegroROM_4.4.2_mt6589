.class Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;
.super Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;
.source "ThreadedStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multi/ThreadedStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CopyObjectRunnable"
.end annotation


# instance fields
.field private destinationBucketName:Ljava/lang/String;

.field private destinationObject:Lorg/jets3t/service/model/StorageObject;

.field private replaceMetadata:Z

.field private result:Ljava/lang/Object;

.field private sourceBucketName:Ljava/lang/String;

.field private sourceObjectKey:Ljava/lang/String;

.field final synthetic this$0:Lorg/jets3t/service/multi/ThreadedStorageService;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multi/ThreadedStorageService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;Z)V
    .locals 2
    .param p2, "sourceBucketName"    # Ljava/lang/String;
    .param p3, "destinationBucketName"    # Ljava/lang/String;
    .param p4, "sourceObjectKey"    # Ljava/lang/String;
    .param p5, "destinationObject"    # Lorg/jets3t/service/model/StorageObject;
    .param p6, "replaceMetadata"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1369
    iput-object p1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    invoke-direct {p0, p1}, Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;)V

    .line 1359
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;->sourceBucketName:Ljava/lang/String;

    .line 1360
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;->destinationBucketName:Ljava/lang/String;

    .line 1361
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;->sourceObjectKey:Ljava/lang/String;

    .line 1362
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;->destinationObject:Lorg/jets3t/service/model/StorageObject;

    .line 1363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;->replaceMetadata:Z

    .line 1365
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;->result:Ljava/lang/Object;

    .line 1370
    iput-object p2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;->sourceBucketName:Ljava/lang/String;

    .line 1371
    iput-object p3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;->destinationBucketName:Ljava/lang/String;

    .line 1372
    iput-object p4, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;->sourceObjectKey:Ljava/lang/String;

    .line 1373
    iput-object p5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;->destinationObject:Lorg/jets3t/service/model/StorageObject;

    .line 1374
    iput-boolean p6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;->replaceMetadata:Z

    .line 1375
    return-void
.end method


# virtual methods
.method public forceInterruptCalled()V
    .locals 0

    .prologue
    .line 1394
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1388
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 1379
    :try_start_0
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v0, v0, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;->sourceBucketName:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;->sourceObjectKey:Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;->destinationBucketName:Ljava/lang/String;

    iget-object v4, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;->destinationObject:Lorg/jets3t/service/model/StorageObject;

    iget-boolean v5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;->replaceMetadata:Z

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/StorageService;->copyObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;->result:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1384
    :goto_0
    return-void

    .line 1381
    :catch_0
    move-exception v6

    .line 1382
    .local v6, "e":Lorg/jets3t/service/ServiceException;
    iput-object v6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CopyObjectRunnable;->result:Ljava/lang/Object;

    goto :goto_0
.end method
