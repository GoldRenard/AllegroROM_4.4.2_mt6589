.class Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;
.super Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;
.source "S3ServiceMulti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multithread/S3ServiceMulti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SignedPutRunnable"
.end annotation


# instance fields
.field private interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

.field private progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

.field private result:Ljava/lang/Object;

.field private signedUrlAndObject:Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;

.field final synthetic this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;Lorg/jets3t/service/io/BytesProgressWatcher;)V
    .locals 1
    .param p2, "signedUrlAndObject"    # Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;
    .param p3, "progressMonitor"    # Lorg/jets3t/service/io/BytesProgressWatcher;

    .prologue
    const/4 v0, 0x0

    .line 2450
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    invoke-direct {p0, p1, v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/multithread/S3ServiceMulti$1;)V

    .line 2444
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->signedUrlAndObject:Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;

    .line 2445
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    .line 2446
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 2448
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->result:Ljava/lang/Object;

    .line 2451
    iput-object p2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->signedUrlAndObject:Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;

    .line 2452
    iput-object p3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 2453
    return-void
.end method


# virtual methods
.method public forceInterruptCalled()V
    .locals 1

    .prologue
    .line 2493
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    if-eqz v0, :cond_0

    .line 2494
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    invoke-virtual {v0}, Lorg/jets3t/service/io/InterruptableInputStream;->interrupt()V

    .line 2496
    :cond_0
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2488
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 2457
    :try_start_0
    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->signedUrlAndObject:Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;

    invoke-virtual {v5}, Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;->getObject()Lorg/jets3t/service/model/S3Object;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jets3t/service/model/StorageObject;->getDataInputFile()Ljava/io/File;

    move-result-object v4

    .line 2459
    .local v4, "underlyingFile":Ljava/io/File;
    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->signedUrlAndObject:Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;

    invoke-virtual {v5}, Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;->getObject()Lorg/jets3t/service/model/S3Object;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jets3t/service/model/StorageObject;->getDataInputStream()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2460
    new-instance v5, Lorg/jets3t/service/io/InterruptableInputStream;

    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->signedUrlAndObject:Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;

    invoke-virtual {v6}, Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;->getObject()Lorg/jets3t/service/model/S3Object;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jets3t/service/model/StorageObject;->getDataInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jets3t/service/io/InterruptableInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    .line 2462
    new-instance v1, Lorg/jets3t/service/io/ProgressMonitoredInputStream;

    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-direct {v1, v5, v6}, Lorg/jets3t/service/io/ProgressMonitoredInputStream;-><init>(Ljava/io/InputStream;Lorg/jets3t/service/io/BytesProgressWatcher;)V

    .line 2464
    .local v1, "pmInputStream":Lorg/jets3t/service/io/ProgressMonitoredInputStream;
    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->signedUrlAndObject:Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;

    invoke-virtual {v5}, Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;->getObject()Lorg/jets3t/service/model/S3Object;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/jets3t/service/model/StorageObject;->setDataInputStream(Ljava/io/InputStream;)V

    .line 2466
    .end local v1    # "pmInputStream":Lorg/jets3t/service/io/ProgressMonitoredInputStream;
    :cond_0
    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;
    invoke-static {v5}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$100(Lorg/jets3t/service/multithread/S3ServiceMulti;)Lorg/jets3t/service/S3Service;

    move-result-object v3

    .line 2467
    .local v3, "signedPutUploader":Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;
    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->signedUrlAndObject:Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;

    invoke-virtual {v5}, Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;->getSignedUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->signedUrlAndObject:Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;

    invoke-virtual {v6}, Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;->getObject()Lorg/jets3t/service/model/S3Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;->putObjectWithSignedUrl(Ljava/lang/String;Lorg/jets3t/service/model/S3Object;)Lorg/jets3t/service/model/S3Object;

    move-result-object v5

    iput-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->result:Ljava/lang/Object;

    .line 2470
    instance-of v5, v4, Lorg/jets3t/service/io/TempFile;

    if-eqz v5, :cond_1

    .line 2471
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2477
    :cond_1
    :try_start_1
    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->signedUrlAndObject:Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;

    invoke-virtual {v5}, Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;->getObject()Lorg/jets3t/service/model/S3Object;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jets3t/service/model/StorageObject;->closeDataInputStream()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2484
    .end local v3    # "signedPutUploader":Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;
    .end local v4    # "underlyingFile":Ljava/io/File;
    :cond_2
    :goto_0
    return-void

    .line 2478
    .restart local v3    # "signedPutUploader":Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;
    .restart local v4    # "underlyingFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 2479
    .local v0, "e":Ljava/io/IOException;
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2480
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v5

    const-string v6, "Unable to close Object\'s input stream"

    invoke-interface {v5, v6, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2473
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "signedPutUploader":Lorg/jets3t/service/utils/signedurl/SignedUrlHandler;
    .end local v4    # "underlyingFile":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 2474
    .local v2, "se":Lorg/jets3t/service/ServiceException;
    :try_start_2
    new-instance v5, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v5, v2}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    iput-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->result:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2477
    :try_start_3
    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->signedUrlAndObject:Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;

    invoke-virtual {v5}, Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;->getObject()Lorg/jets3t/service/model/S3Object;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jets3t/service/model/StorageObject;->closeDataInputStream()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 2478
    :catch_2
    move-exception v0

    .line 2479
    .restart local v0    # "e":Ljava/io/IOException;
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2480
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v5

    const-string v6, "Unable to close Object\'s input stream"

    invoke-interface {v5, v6, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2476
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "se":Lorg/jets3t/service/ServiceException;
    :catchall_0
    move-exception v5

    .line 2477
    :try_start_4
    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$SignedPutRunnable;->signedUrlAndObject:Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;

    invoke-virtual {v6}, Lorg/jets3t/service/utils/signedurl/SignedUrlAndObject;->getObject()Lorg/jets3t/service/model/S3Object;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jets3t/service/model/StorageObject;->closeDataInputStream()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 2482
    :cond_3
    :goto_1
    throw v5

    .line 2478
    :catch_3
    move-exception v0

    .line 2479
    .restart local v0    # "e":Ljava/io/IOException;
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2480
    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->log:Lorg/apache/commons/logging/Log;
    invoke-static {}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$200()Lorg/apache/commons/logging/Log;

    move-result-object v6

    const-string v7, "Unable to close Object\'s input stream"

    invoke-interface {v6, v7, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
