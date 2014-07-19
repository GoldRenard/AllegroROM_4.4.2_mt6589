.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;
.super Ljava/lang/Object;
.source "FileInputPipe.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "FileInputPipe"


# instance fields
.field private contentType:Ljava/lang/String;

.field private file:Ljava/io/File;

.field private lastInputStream:Ljava/io/InputStream;

.field private length:J

.field private maxPointer:J

.field private progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

.field private streamPointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->$assertionsDisabled:Z

    .line 15
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    const-wide/16 v2, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->length:J

    .line 36
    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->streamPointer:J

    .line 37
    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->maxPointer:J

    .line 29
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->file:Ljava/io/File;

    .line 31
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->length:J

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .param p2, "contentType"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->length:J

    .line 36
    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->streamPointer:J

    .line 37
    iput-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->maxPointer:J

    .line 21
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->file:Ljava/io/File;

    .line 24
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->contentType:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->length:J

    .line 26
    return-void
.end method

.method private notifyFinish()V
    .locals 4

    .prologue
    .line 69
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v2, :cond_0

    .line 70
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {v2, v0}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "FileInputPipe"

    const-string v3, "Unexcepted Exception in the progressListener"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyProgress(JI)V
    .locals 7
    .param p1, "currentOffset"    # J
    .param p3, "size"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->maxPointer:J

    cmp-long v0, v3, p1

    if-lez v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 52
    .local v5, "bundle":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->lastInputStream:Ljava/io/InputStream;

    if-nez v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {v0, v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onStart(Landroid/os/Bundle;)V

    .line 56
    :cond_2
    int-to-long v3, p3

    add-long v1, p1, v3

    .line 57
    .local v1, "pointerAfterRead":J
    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->length:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_3

    .line 58
    const-string v0, "FileInputPipe"

    const-string v3, "pointerAfterRead should less than leght, there must be some problem"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->length:J

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    .end local v1    # "pointerAfterRead":J
    .end local v5    # "bundle":Landroid/os/Bundle;
    :catch_0
    move-exception v6

    .line 63
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
    .line 123
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->length:J

    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->contentType:Ljava/lang/String;

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
    .line 134
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 132
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->lastInputStream:Ljava/io/InputStream;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 133
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized read([BJI)I
    .locals 11
    .param p1, "buffer"    # [B
    .param p2, "offsetInPipe"    # J
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v9, 0x0

    .line 80
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->notifyProgress(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :try_start_1
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->lastInputStream:Ljava/io/InputStream;

    if-eqz v6, :cond_0

    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->streamPointer:J

    cmp-long v6, v6, p2

    if-lez v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/io/Closeable;

    const/4 v7, 0x0

    .line 84
    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->lastInputStream:Ljava/io/InputStream;

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 85
    new-instance v6, Ljava/io/FileInputStream;

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->file:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->lastInputStream:Ljava/io/InputStream;

    .line 86
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->streamPointer:J

    .line 89
    :cond_1
    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->streamPointer:J

    sub-long v4, p2, v6

    .line 90
    .local v4, "toSkip":J
    cmp-long v6, v4, v9

    if-lez v6, :cond_2

    .line 91
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->lastInputStream:Ljava/io/InputStream;

    invoke-virtual {v6, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 92
    .local v2, "realSkiped":J
    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->streamPointer:J

    add-long/2addr v6, v2

    iput-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->streamPointer:J

    .line 95
    .end local v2    # "realSkiped":J
    :cond_2
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->lastInputStream:Ljava/io/InputStream;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7, p4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 96
    .local v1, "readSize":I
    if-lez v1, :cond_4

    .line 97
    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->streamPointer:J

    int-to-long v8, v1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->streamPointer:J

    .line 104
    :goto_0
    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->maxPointer:J

    iget-wide v8, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->streamPointer:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 105
    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->streamPointer:J

    iput-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->maxPointer:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :cond_3
    monitor-exit p0

    return v1

    .line 98
    :cond_4
    const/4 v6, 0x1

    :try_start_2
    new-array v6, v6, [Ljava/io/Closeable;

    const/4 v7, 0x0

    .line 99
    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->lastInputStream:Ljava/io/InputStream;

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 100
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->lastInputStream:Ljava/io/InputStream;

    .line 101
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->notifyFinish()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 109
    .end local v1    # "readSize":I
    .end local v4    # "toSkip":J
    :catch_0
    move-exception v0

    .local v0, "ioe":Ljava/io/IOException;
    const/4 v6, 0x1

    :try_start_3
    new-array v6, v6, [Ljava/io/Closeable;

    const/4 v7, 0x0

    .line 110
    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->lastInputStream:Ljava/io/InputStream;

    aput-object v8, v6, v7

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 111
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->lastInputStream:Ljava/io/InputStream;

    .line 112
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 80
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method public setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 0
    .param p1, "progressListener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .line 42
    return-void
.end method
