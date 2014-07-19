.class public Lorg/jets3t/service/io/ProgressMonitoredOutputStream;
.super Ljava/io/OutputStream;
.source "ProgressMonitoredOutputStream.java"

# interfaces
.implements Lorg/jets3t/service/io/OutputStreamWrapper;


# instance fields
.field private outputStream:Ljava/io/OutputStream;

.field private progressWatcher:Lorg/jets3t/service/io/BytesProgressWatcher;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lorg/jets3t/service/io/BytesProgressWatcher;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "progressWatcher"    # Lorg/jets3t/service/io/BytesProgressWatcher;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 33
    iput-object v0, p0, Lorg/jets3t/service/io/ProgressMonitoredOutputStream;->outputStream:Ljava/io/OutputStream;

    .line 34
    iput-object v0, p0, Lorg/jets3t/service/io/ProgressMonitoredOutputStream;->progressWatcher:Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 47
    if-nez p1, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ProgressMonitoredOutputStream cannot run with a null OutputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lorg/jets3t/service/io/ProgressMonitoredOutputStream;->outputStream:Ljava/io/OutputStream;

    .line 52
    iput-object p2, p0, Lorg/jets3t/service/io/ProgressMonitoredOutputStream;->progressWatcher:Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 53
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lorg/jets3t/service/io/ProgressMonitoredOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 86
    return-void
.end method

.method public getWrappedOutputStream()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/jets3t/service/io/ProgressMonitoredOutputStream;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public resetProgressMonitor()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jets3t/service/io/ProgressMonitoredOutputStream;->progressWatcher:Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-virtual {v0}, Lorg/jets3t/service/io/BytesProgressWatcher;->resetWatcher()V

    .line 67
    return-void
.end method

.method public sendNotificationUpdate(J)V
    .locals 1
    .param p1, "bytesTransmitted"    # J

    .prologue
    .line 62
    iget-object v0, p0, Lorg/jets3t/service/io/ProgressMonitoredOutputStream;->progressWatcher:Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-virtual {v0, p1, p2}, Lorg/jets3t/service/io/BytesProgressWatcher;->updateBytesTransferred(J)V

    .line 63
    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lorg/jets3t/service/io/ProgressMonitoredOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 71
    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/jets3t/service/io/ProgressMonitoredOutputStream;->sendNotificationUpdate(J)V

    .line 72
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lorg/jets3t/service/io/ProgressMonitoredOutputStream;->outputStream:Ljava/io/OutputStream;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 81
    array-length v0, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/jets3t/service/io/ProgressMonitoredOutputStream;->sendNotificationUpdate(J)V

    .line 82
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lorg/jets3t/service/io/ProgressMonitoredOutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 76
    sub-int v0, p3, p2

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/jets3t/service/io/ProgressMonitoredOutputStream;->sendNotificationUpdate(J)V

    .line 77
    return-void
.end method
