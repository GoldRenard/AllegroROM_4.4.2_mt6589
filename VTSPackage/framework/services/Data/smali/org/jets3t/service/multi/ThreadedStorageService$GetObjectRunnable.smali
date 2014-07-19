.class Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;
.super Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;
.source "ThreadedStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multi/ThreadedStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetObjectRunnable"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private headOnly:Z

.field private objectKey:Ljava/lang/String;

.field private result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/jets3t/service/multi/ThreadedStorageService;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multi/ThreadedStorageService;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "objectKey"    # Ljava/lang/String;
    .param p4, "headOnly"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1407
    iput-object p1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    invoke-direct {p0, p1}, Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;)V

    .line 1401
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;->bucketName:Ljava/lang/String;

    .line 1402
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;->objectKey:Ljava/lang/String;

    .line 1403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;->headOnly:Z

    .line 1405
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;->result:Ljava/lang/Object;

    .line 1408
    iput-object p2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;->bucketName:Ljava/lang/String;

    .line 1409
    iput-object p3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;->objectKey:Ljava/lang/String;

    .line 1410
    iput-boolean p4, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;->headOnly:Z

    .line 1411
    return-void
.end method


# virtual methods
.method public forceInterruptCalled()V
    .locals 0

    .prologue
    .line 1435
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1429
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1415
    :try_start_0
    iget-boolean v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;->headOnly:Z

    if-eqz v1, :cond_0

    .line 1416
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v1, v1, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;->bucketName:Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;->objectKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/jets3t/service/StorageService;->getObjectDetails(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v1

    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;->result:Ljava/lang/Object;

    .line 1425
    :goto_0
    return-void

    .line 1419
    :cond_0
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v1, v1, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;->bucketName:Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;->objectKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/jets3t/service/StorageService;->getObject(Ljava/lang/String;Ljava/lang/String;)Lorg/jets3t/service/model/StorageObject;

    move-result-object v1

    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;->result:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1422
    :catch_0
    move-exception v0

    .line 1423
    .local v0, "e":Lorg/jets3t/service/ServiceException;
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$GetObjectRunnable;->result:Ljava/lang/Object;

    goto :goto_0
.end method
