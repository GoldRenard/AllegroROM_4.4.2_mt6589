.class public Lorg/jets3t/service/io/ProgressMonitoredInputStream;
.super Ljava/io/InputStream;
.source "ProgressMonitoredInputStream.java"

# interfaces
.implements Lorg/jets3t/service/io/InputStreamWrapper;


# instance fields
.field private inputStream:Ljava/io/InputStream;

.field protected progressWatcher:Lorg/jets3t/service/io/BytesProgressWatcher;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/jets3t/service/io/BytesProgressWatcher;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "progressWatcher"    # Lorg/jets3t/service/io/BytesProgressWatcher;

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 32
    iput-object v0, p0, Lorg/jets3t/service/io/ProgressMonitoredInputStream;->inputStream:Ljava/io/InputStream;

    .line 33
    iput-object v0, p0, Lorg/jets3t/service/io/ProgressMonitoredInputStream;->progressWatcher:Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ProgressMonitoredInputStream cannot run with a null InputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    iput-object p1, p0, Lorg/jets3t/service/io/ProgressMonitoredInputStream;->inputStream:Ljava/io/InputStream;

    .line 51
    iput-object p2, p0, Lorg/jets3t/service/io/ProgressMonitoredInputStream;->progressWatcher:Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 52
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lorg/jets3t/service/io/ProgressMonitoredInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    iget-object v0, p0, Lorg/jets3t/service/io/ProgressMonitoredInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    iget-object v0, p0, Lorg/jets3t/service/io/ProgressMonitoredInputStream;->progressWatcher:Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-virtual {v0}, Lorg/jets3t/service/io/BytesProgressWatcher;->clearHistory()V

    .line 107
    return-void

    .line 105
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/jets3t/service/io/ProgressMonitoredInputStream;->progressWatcher:Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-virtual {v1}, Lorg/jets3t/service/io/BytesProgressWatcher;->clearHistory()V

    throw v0
.end method

.method public getWrappedInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/jets3t/service/io/ProgressMonitoredInputStream;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v1, p0, Lorg/jets3t/service/io/ProgressMonitoredInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 71
    .local v0, "read":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 72
    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Lorg/jets3t/service/io/ProgressMonitoredInputStream;->sendNotificationUpdate(J)V

    .line 74
    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v1, p0, Lorg/jets3t/service/io/ProgressMonitoredInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 89
    .local v0, "read":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 90
    int-to-long v1, v0

    invoke-virtual {p0, v1, v2}, Lorg/jets3t/service/io/ProgressMonitoredInputStream;->sendNotificationUpdate(J)V

    .line 92
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v1, p0, Lorg/jets3t/service/io/ProgressMonitoredInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 80
    .local v0, "read":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 81
    int-to-long v1, v0

    invoke-virtual {p0, v1, v2}, Lorg/jets3t/service/io/ProgressMonitoredInputStream;->sendNotificationUpdate(J)V

    .line 83
    :cond_0
    return v0
.end method

.method public resetProgressMonitor()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/jets3t/service/io/ProgressMonitoredInputStream;->progressWatcher:Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-virtual {v0}, Lorg/jets3t/service/io/BytesProgressWatcher;->resetWatcher()V

    .line 66
    return-void
.end method

.method public sendNotificationUpdate(J)V
    .locals 1
    .param p1, "bytesTransmitted"    # J

    .prologue
    .line 61
    iget-object v0, p0, Lorg/jets3t/service/io/ProgressMonitoredInputStream;->progressWatcher:Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-virtual {v0, p1, p2}, Lorg/jets3t/service/io/BytesProgressWatcher;->updateBytesTransferred(J)V

    .line 62
    return-void
.end method
