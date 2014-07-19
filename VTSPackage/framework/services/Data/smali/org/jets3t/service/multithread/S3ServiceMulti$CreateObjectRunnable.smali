.class Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;
.super Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;
.source "S3ServiceMulti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multithread/S3ServiceMulti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateObjectRunnable"
.end annotation


# instance fields
.field private bucket:Lorg/jets3t/service/model/S3Bucket;

.field private interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

.field private progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

.field private result:Ljava/lang/Object;

.field private s3Object:Lorg/jets3t/service/model/S3Object;

.field final synthetic this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/model/S3Bucket;Lorg/jets3t/service/model/S3Object;Lorg/jets3t/service/io/BytesProgressWatcher;)V
    .locals 1
    .param p2, "bucket"    # Lorg/jets3t/service/model/S3Bucket;
    .param p3, "s3Object"    # Lorg/jets3t/service/model/S3Object;
    .param p4, "progressMonitor"    # Lorg/jets3t/service/io/BytesProgressWatcher;

    .prologue
    const/4 v0, 0x0

    .line 2123
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    invoke-direct {p0, p1, v0}, Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;Lorg/jets3t/service/multithread/S3ServiceMulti$1;)V

    .line 2116
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 2117
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->s3Object:Lorg/jets3t/service/model/S3Object;

    .line 2118
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    .line 2119
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 2121
    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->result:Ljava/lang/Object;

    .line 2124
    iput-object p2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    .line 2125
    iput-object p3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->s3Object:Lorg/jets3t/service/model/S3Object;

    .line 2126
    iput-object p4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 2127
    return-void
.end method


# virtual methods
.method public forceInterruptCalled()V
    .locals 1

    .prologue
    .line 2156
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    if-eqz v0, :cond_0

    .line 2157
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    invoke-virtual {v0}, Lorg/jets3t/service/io/InterruptableInputStream;->interrupt()V

    .line 2159
    :cond_0
    return-void
.end method

.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2151
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 2131
    :try_start_0
    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->s3Object:Lorg/jets3t/service/model/S3Object;

    invoke-virtual {v3}, Lorg/jets3t/service/model/StorageObject;->getDataInputFile()Ljava/io/File;

    move-result-object v2

    .line 2133
    .local v2, "underlyingFile":Ljava/io/File;
    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->s3Object:Lorg/jets3t/service/model/S3Object;

    invoke-virtual {v3}, Lorg/jets3t/service/model/StorageObject;->getDataInputStream()Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2134
    new-instance v3, Lorg/jets3t/service/io/InterruptableInputStream;

    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->s3Object:Lorg/jets3t/service/model/S3Object;

    invoke-virtual {v4}, Lorg/jets3t/service/model/StorageObject;->getDataInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jets3t/service/io/InterruptableInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    .line 2135
    new-instance v0, Lorg/jets3t/service/io/ProgressMonitoredInputStream;

    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->interruptableInputStream:Lorg/jets3t/service/io/InterruptableInputStream;

    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->progressMonitor:Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-direct {v0, v3, v4}, Lorg/jets3t/service/io/ProgressMonitoredInputStream;-><init>(Ljava/io/InputStream;Lorg/jets3t/service/io/BytesProgressWatcher;)V

    .line 2137
    .local v0, "pmInputStream":Lorg/jets3t/service/io/ProgressMonitoredInputStream;
    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->s3Object:Lorg/jets3t/service/model/S3Object;

    invoke-virtual {v3, v0}, Lorg/jets3t/service/model/StorageObject;->setDataInputStream(Ljava/io/InputStream;)V

    .line 2139
    .end local v0    # "pmInputStream":Lorg/jets3t/service/io/ProgressMonitoredInputStream;
    :cond_0
    iget-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->s3Service:Lorg/jets3t/service/S3Service;
    invoke-static {v3}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$100(Lorg/jets3t/service/multithread/S3ServiceMulti;)Lorg/jets3t/service/S3Service;

    move-result-object v3

    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->bucket:Lorg/jets3t/service/model/S3Bucket;

    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->s3Object:Lorg/jets3t/service/model/S3Object;

    invoke-virtual {v3, v4, v5}, Lorg/jets3t/service/S3Service;->putObject(Lorg/jets3t/service/model/S3Bucket;Lorg/jets3t/service/model/S3Object;)Lorg/jets3t/service/model/S3Object;

    move-result-object v3

    iput-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->result:Ljava/lang/Object;

    .line 2141
    instance-of v3, v2, Lorg/jets3t/service/io/TempFile;

    if-eqz v3, :cond_1

    .line 2142
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Lorg/jets3t/service/ServiceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2147
    .end local v2    # "underlyingFile":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 2144
    :catch_0
    move-exception v1

    .line 2145
    .local v1, "se":Lorg/jets3t/service/ServiceException;
    new-instance v3, Lorg/jets3t/service/S3ServiceException;

    invoke-direct {v3, v1}, Lorg/jets3t/service/S3ServiceException;-><init>(Lorg/jets3t/service/ServiceException;)V

    iput-object v3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$CreateObjectRunnable;->result:Ljava/lang/Object;

    goto :goto_0
.end method
