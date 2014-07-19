.class Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;
.super Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;
.source "ThreadedS3Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multi/s3/ThreadedS3Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultipartUploadObjectRunnable"
.end annotation


# instance fields
.field private interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

.field private multipartUpload:Lorg/jets3t/service/model/MultipartUpload;

.field private object:Lorg/jets3t/service/model/S3Object;

.field private partNumber:Ljava/lang/Integer;

.field private progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

.field private result:Ljava/lang/Object;

.field final synthetic this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multi/s3/ThreadedS3Service;Lorg/jets3t/service/model/MultipartUpload;Ljava/lang/Integer;Lorg/jets3t/service/model/S3Object;Lorg/jets3t/service/io/BytesProgressWatcher;)V
    .locals 1
    .param p2, "multipartUpload"    # Lorg/jets3t/service/model/MultipartUpload;
    .param p3, "partNumber"    # Ljava/lang/Integer;
    .param p4, "object"    # Lorg/jets3t/service/model/S3Object;
    .param p5, "progressMonitor"    # Lorg/jets3t/service/io/BytesProgressWatcher;

    .prologue
    const/4 v0, 0x0

    .line 381
    iput-object p1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    invoke-direct {p0, p1}, Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;)V

    .line 371
    iput-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->multipartUpload:Lorg/jets3t/service/model/MultipartUpload;

    .line 372
    iput-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->partNumber:Ljava/lang/Integer;

    .line 373
    iput-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->object:Lorg/jets3t/service/model/S3Object;

    .line 374
    iput-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    .line 375
    iput-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 377
    iput-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->result:Ljava/lang/Object;

    .line 382
    iput-object p2, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->multipartUpload:Lorg/jets3t/service/model/MultipartUpload;

    .line 383
    iput-object p3, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->partNumber:Ljava/lang/Integer;

    .line 384
    iput-object p4, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->object:Lorg/jets3t/service/model/S3Object;

    .line 385
    iput-object p5, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 386
    return-void
.end method


# virtual methods
.method public forceInterruptCalled()V
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    invoke-virtual {v0}, Lorg/jets3t/service/io/InterruptableInputStream;->interrupt()V

    .line 414
    :cond_0
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 390
    :try_start_0
    iget-object v2, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->object:Lorg/jets3t/service/model/S3Object;

    invoke-virtual {v2}, Lorg/jets3t/service/model/StorageObject;->getDataInputStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 391
    new-instance v2, Lorg/jets3t/service/io/InterruptableInputStream;

    iget-object v3, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->object:Lorg/jets3t/service/model/S3Object;

    invoke-virtual {v3}, Lorg/jets3t/service/model/StorageObject;->getDataInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jets3t/service/io/InterruptableInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    .line 392
    new-instance v1, Lorg/jets3t/service/io/ProgressMonitoredInputStream;

    iget-object v2, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    iget-object v3, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-direct {v1, v2, v3}, Lorg/jets3t/service/io/ProgressMonitoredInputStream;-><init>(Ljava/io/InputStream;Lorg/jets3t/service/io/BytesProgressWatcher;)V

    .line 394
    .local v1, "pmInputStream":Lorg/jets3t/service/io/ProgressMonitoredInputStream;
    iget-object v2, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->object:Lorg/jets3t/service/model/S3Object;

    invoke-virtual {v2, v1}, Lorg/jets3t/service/model/StorageObject;->setDataInputStream(Ljava/io/InputStream;)V

    .line 396
    .end local v1    # "pmInputStream":Lorg/jets3t/service/io/ProgressMonitoredInputStream;
    :cond_0
    iget-object v2, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService;->storageService:Lorg/jets3t/service/StorageService;
    invoke-static {v2}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->access$200(Lorg/jets3t/service/multi/s3/ThreadedS3Service;)Lorg/jets3t/service/StorageService;

    move-result-object v2

    check-cast v2, Lorg/jets3t/service/S3Service;

    iget-object v3, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->multipartUpload:Lorg/jets3t/service/model/MultipartUpload;

    iget-object v4, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->partNumber:Ljava/lang/Integer;

    iget-object v5, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->object:Lorg/jets3t/service/model/S3Object;

    invoke-virtual {v2, v3, v4, v5}, Lorg/jets3t/service/S3Service;->multipartUploadPart(Lorg/jets3t/service/model/MultipartUpload;Ljava/lang/Integer;Lorg/jets3t/service/model/S3Object;)Lorg/jets3t/service/model/MultipartPart;

    .line 398
    iget-object v2, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->object:Lorg/jets3t/service/model/S3Object;

    iput-object v2, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->result:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :goto_0
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Lorg/jets3t/service/ServiceException;
    iput-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$MultipartUploadObjectRunnable;->result:Ljava/lang/Object;

    goto :goto_0
.end method
