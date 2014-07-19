.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;
.super Lorg/apache/http/entity/mime/content/FileBody;
.source "FileBodyOffset.java"


# static fields
.field public static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private mCancel:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

.field private mListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

.field private offset:J

.field private progress:I

.field private size:J


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;JJ)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "charset"    # Ljava/lang/String;
    .param p3, "offset"    # J
    .param p5, "size"    # J

    .prologue
    .line 41
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/octet-stream"

    invoke-direct {p0, p1, v2, v3, p2}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->progress:I

    .line 42
    iput-wide p5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->size:J

    .line 43
    iput-wide p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->offset:J

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 46
    .local v0, "length":J
    const-wide/16 v2, 0x1

    add-long/2addr v2, p3

    sub-long v2, v0, v2

    invoke-static {p5, p6, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->size:J

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;
    .param p4, "offset"    # J
    .param p6, "size"    # J

    .prologue
    .line 32
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, p2, p3}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->progress:I

    .line 33
    iput-wide p6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->size:J

    .line 34
    iput-wide p4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->offset:J

    .line 36
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 37
    .local v0, "length":J
    const-wide/16 v2, 0x1

    add-long/2addr v2, p4

    sub-long v2, v0, v2

    invoke-static {p6, p7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->size:J

    .line 38
    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->size:J

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/content/FileBody;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public setListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .param p2, "cancel"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->mListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .line 51
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->mCancel:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    .line 52
    return-void
.end method

.method protected updateProgress(J)V
    .locals 7
    .param p1, "transportSize"    # J

    .prologue
    .line 96
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->mListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v0, :cond_0

    .line 98
    long-to-float v0, p1

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->size:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 99
    .local v6, "p":I
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->progress:I

    if-eq v6, v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->mListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->size:J

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    int-to-long v1, v1

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->size:J

    long-to-int v3, v3

    int-to-long v3, v3

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onSubProgress(JJLandroid/os/Bundle;)V

    .line 101
    iput v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->progress:I

    .line 104
    .end local v6    # "p":I
    :cond_0
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 9
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Output stream may not be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 64
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lorg/apache/http/entity/mime/content/FileBody;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 66
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->offset:J

    invoke-virtual {v0, v5, v6}, Ljava/io/FileInputStream;->skip(J)J

    .line 68
    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->size:J

    .line 69
    .local v2, "remaing":J
    const/16 v5, 0x2000

    new-array v4, v5, [B

    .line 70
    .local v4, "tmp":[B
    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    .line 89
    :goto_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 93
    return-void

    .line 73
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->mCancel:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->mCancel:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-interface {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 74
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v6}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .end local v1    # "len":I
    .end local v2    # "remaing":J
    .end local v4    # "tmp":[B
    :catchall_0
    move-exception v5

    .line 91
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 92
    throw v5

    .line 77
    .restart local v1    # "len":I
    .restart local v2    # "remaing":J
    .restart local v4    # "tmp":[B
    :cond_2
    int-to-long v5, v1

    cmp-long v5, v2, v5

    if-lez v5, :cond_3

    .line 78
    int-to-long v5, v1

    sub-long/2addr v2, v5

    .line 79
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {p1, v4, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 80
    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->size:J

    sub-long/2addr v5, v2

    invoke-virtual {p0, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->updateProgress(J)V

    goto :goto_0

    .line 82
    :cond_3
    const-string v5, "File"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-wide/16 v7, 0x1

    add-long/2addr v7, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 84
    int-to-long v5, v1

    sub-long/2addr v2, v5

    .line 85
    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->size:J

    sub-long/2addr v5, v2

    invoke-virtual {p0, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/FileBodyOffset;->updateProgress(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
