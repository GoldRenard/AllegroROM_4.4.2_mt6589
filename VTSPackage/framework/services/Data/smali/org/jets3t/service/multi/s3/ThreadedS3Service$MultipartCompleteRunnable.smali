.class Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartCompleteRunnable;
.super Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;
.source "ThreadedS3Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multi/s3/ThreadedS3Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultipartCompleteRunnable"
.end annotation


# instance fields
.field private multipartUpload:Lorg/jets3t/service/model/MultipartUpload;

.field private result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multi/s3/ThreadedS3Service;Lorg/jets3t/service/model/MultipartUpload;)V
    .locals 1
    .param p2, "multipartUpload"    # Lorg/jets3t/service/model/MultipartUpload;

    .prologue
    const/4 v0, 0x0

    .line 341
    iput-object p1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartCompleteRunnable;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    invoke-direct {p0, p1}, Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;)V

    .line 336
    iput-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartCompleteRunnable;->multipartUpload:Lorg/jets3t/service/model/MultipartUpload;

    .line 338
    iput-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartCompleteRunnable;->result:Ljava/lang/Object;

    .line 342
    iput-object p2, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartCompleteRunnable;->multipartUpload:Lorg/jets3t/service/model/MultipartUpload;

    .line 343
    return-void
.end method


# virtual methods
.method public forceInterruptCalled()V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartCompleteRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 347
    :try_start_0
    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartCompleteRunnable;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;
    invoke-static {v1}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->access$100(Lorg/jets3t/service/multi/s3/ThreadedS3Service;)Lorg/jets3t/service/StorageService;

    move-result-object v1

    check-cast v1, Lorg/jets3t/service/S3Service;

    iget-object v2, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartCompleteRunnable;->multipartUpload:Lorg/jets3t/service/model/MultipartUpload;

    invoke-virtual {v1, v2}, Lorg/jets3t/service/S3Service;->multipartCompleteUpload(Lorg/jets3t/service/model/MultipartUpload;)Lorg/jets3t/service/model/MultipartCompleted;

    move-result-object v1

    iput-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartCompleteRunnable;->result:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Lorg/jets3t/service/ServiceException;
    iput-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartCompleteRunnable;->result:Ljava/lang/Object;

    goto :goto_0
.end method
