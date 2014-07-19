.class Lorg/jets3t/service/multi/ThreadedStorageService$CreateBucketRunnable;
.super Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;
.source "ThreadedStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multi/ThreadedStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateBucketRunnable"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/jets3t/service/multi/ThreadedStorageService;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multi/ThreadedStorageService;Ljava/lang/String;)V
    .locals 1
    .param p2, "bucketName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1223
    iput-object p1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateBucketRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    invoke-direct {p0, p1}, Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;)V

    .line 1220
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateBucketRunnable;->bucketName:Ljava/lang/String;

    .line 1221
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateBucketRunnable;->result:Ljava/lang/Object;

    .line 1224
    iput-object p2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateBucketRunnable;->bucketName:Ljava/lang/String;

    .line 1225
    return-void
.end method


# virtual methods
.method public forceInterruptCalled()V
    .locals 0

    .prologue
    .line 1243
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1237
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateBucketRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1229
    :try_start_0
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateBucketRunnable;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v1, v1, Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;

    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateBucketRunnable;->bucketName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jets3t/service/StorageService;->createBucket(Ljava/lang/String;)Lorg/jets3t/service/model/StorageBucket;

    move-result-object v1

    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateBucketRunnable;->result:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1233
    :goto_0
    return-void

    .line 1230
    :catch_0
    move-exception v0

    .line 1231
    .local v0, "e":Lorg/jets3t/service/ServiceException;
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$CreateBucketRunnable;->result:Ljava/lang/Object;

    goto :goto_0
.end method
