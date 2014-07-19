.class Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartStartRunnable;
.super Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;
.source "ThreadedS3Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multi/s3/ThreadedS3Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultipartStartRunnable"
.end annotation


# instance fields
.field private bucketName:Ljava/lang/String;

.field private object:Lorg/jets3t/service/model/StorageObject;

.field private result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multi/s3/ThreadedS3Service;Ljava/lang/String;Lorg/jets3t/service/model/StorageObject;)V
    .locals 1
    .param p2, "bucketName"    # Ljava/lang/String;
    .param p3, "object"    # Lorg/jets3t/service/model/StorageObject;

    .prologue
    const/4 v0, 0x0

    .line 306
    iput-object p1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartStartRunnable;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    invoke-direct {p0, p1}, Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;)V

    .line 300
    iput-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartStartRunnable;->bucketName:Ljava/lang/String;

    .line 301
    iput-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartStartRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    .line 303
    iput-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartStartRunnable;->result:Ljava/lang/Object;

    .line 307
    iput-object p2, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartStartRunnable;->bucketName:Ljava/lang/String;

    .line 308
    iput-object p3, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartStartRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    .line 309
    return-void
.end method


# virtual methods
.method public forceInterruptCalled()V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartStartRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 313
    :try_start_0
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartStartRunnable;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;
    invoke-static {v0}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->access$000(Lorg/jets3t/service/multi/s3/ThreadedS3Service;)Lorg/jets3t/service/StorageService;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/S3Service;

    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartStartRunnable;->bucketName:Ljava/lang/String;

    iget-object v2, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartStartRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    invoke-virtual {v2}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartStartRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    invoke-virtual {v3}, Lorg/jets3t/service/model/BaseStorageItem;->getMetadataMap()Ljava/util/Map;

    move-result-object v3

    iget-object v4, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartStartRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    invoke-virtual {v4}, Lorg/jets3t/service/model/StorageObject;->getAcl()Lorg/jets3t/service/acl/AccessControlList;

    move-result-object v4

    iget-object v5, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartStartRunnable;->object:Lorg/jets3t/service/model/StorageObject;

    invoke-virtual {v5}, Lorg/jets3t/service/model/StorageObject;->getStorageClass()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/jets3t/service/S3Service;->multipartStartUpload(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/jets3t/service/acl/AccessControlList;Ljava/lang/String;)Lorg/jets3t/service/model/MultipartUpload;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartStartRunnable;->result:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :goto_0
    return-void

    .line 316
    :catch_0
    move-exception v6

    .line 317
    .local v6, "e":Lorg/jets3t/service/ServiceException;
    iput-object v6, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartStartRunnable;->result:Ljava/lang/Object;

    goto :goto_0
.end method
