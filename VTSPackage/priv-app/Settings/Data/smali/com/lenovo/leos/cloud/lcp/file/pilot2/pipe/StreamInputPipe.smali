.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;
.super Ljava/lang/Object;
.source "StreamInputPipe.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "FileInputPipe"


# instance fields
.field private contentType:Ljava/lang/String;

.field private inputStream:Ljava/io/InputStream;

.field private length:J

.field private maxPointer:J

.field private progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->$assertionsDisabled:Z

    .line 13
    return-void

    .line 12
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->length:J

    .line 27
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->maxPointer:J

    .line 19
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 21
    :cond_0
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->inputStream:Ljava/io/InputStream;

    .line 22
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->contentType:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->length:J

    .line 24
    return-void
.end method

.method private notifyFinish()V
    .locals 4

    .prologue
    .line 59
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v2, :cond_0

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {v2, v0}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FileInputPipe"

    const-string v3, "Unexcepted Exception in the progressListener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyProgress(JI)V
    .locals 9
    .param p1, "currentOffset"    # J
    .param p3, "size"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->maxPointer:J

    cmp-long v0, v3, p1

    if-lez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 42
    .local v5, "bundle":Landroid/os/Bundle;
    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->maxPointer:J

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_2

    .line 43
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {v0, v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onStart(Landroid/os/Bundle;)V

    .line 46
    :cond_2
    int-to-long v3, p3

    add-long v1, p1, v3

    .line 47
    .local v1, "pointerAfterRead":J
    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->length:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_3

    .line 48
    const-string v0, "FileInputPipe"

    const-string v3, "pointerAfterRead should less than leght, there must be some problem"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_3
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->length:J

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    .end local v1    # "pointerAfterRead":J
    .end local v5    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v6

    .line 53
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "FileInputPipe"

    const-string v3, "Unexcepted Exception in the progressListener"

    invoke-static {v0, v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->length:J

    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 121
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 119
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->inputStream:Ljava/io/InputStream;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 120
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized read([BJI)I
    .locals 10
    .param p1, "buffer"    # [B
    .param p2, "offsetInPipe"    # J
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    .line 70
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->notifyProgress(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :try_start_1
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->inputStream:Ljava/io/InputStream;

    if-nez v6, :cond_0

    .line 74
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6}, Ljava/io/IOException;-><init>()V

    throw v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :catch_0
    move-exception v0

    .local v0, "ioe":Ljava/io/IOException;
    const/4 v6, 0x1

    :try_start_2
    new-array v6, v6, [Ljava/io/Closeable;

    const/4 v7, 0x0

    .line 97
    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->inputStream:Ljava/io/InputStream;

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 98
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->inputStream:Ljava/io/InputStream;

    .line 99
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 77
    :cond_0
    :try_start_3
    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->maxPointer:J

    sub-long v4, p2, v6

    .line 79
    .local v4, "toSkip":J
    cmp-long v6, v4, v8

    if-gez v6, :cond_1

    .line 80
    new-instance v6, Ljava/io/IOException;

    const-string v7, "current inputStream is unrepeatable!"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 81
    :cond_1
    cmp-long v6, v4, v8

    if-lez v6, :cond_2

    .line 82
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v6, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 83
    .local v2, "realSkiped":J
    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->maxPointer:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->maxPointer:J

    .line 86
    .end local v2    # "realSkiped":J
    :cond_2
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->inputStream:Ljava/io/InputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7, p4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 87
    .local v1, "readSize":I
    if-lez v1, :cond_3

    .line 88
    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->maxPointer:J

    int-to-long v8, v1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->maxPointer:J
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    :goto_0
    monitor-exit p0

    return v1

    .line 89
    :cond_3
    const/4 v6, 0x1

    :try_start_4
    new-array v6, v6, [Ljava/io/Closeable;

    const/4 v7, 0x0

    .line 90
    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->inputStream:Ljava/io/InputStream;

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 91
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->inputStream:Ljava/io/InputStream;

    .line 92
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->notifyFinish()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 0
    .param p1, "progressListener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/StreamInputPipe;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .line 32
    return-void
.end method
