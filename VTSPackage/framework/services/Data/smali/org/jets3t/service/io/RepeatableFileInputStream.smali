.class public Lorg/jets3t/service/io/RepeatableFileInputStream;
.super Ljava/io/InputStream;
.source "RepeatableFileInputStream.java"

# interfaces
.implements Lorg/jets3t/service/io/InputStreamWrapper;


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field protected bytesReadPastMarkPoint:J

.field protected file:Ljava/io/File;

.field protected fis:Ljava/io/FileInputStream;

.field protected markPoint:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/jets3t/service/io/RepeatableFileInputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/io/RepeatableFileInputStream;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 39
    iput-object v0, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->file:Ljava/io/File;

    .line 40
    iput-object v0, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    .line 41
    iput-wide v1, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    .line 42
    iput-wide v1, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->markPoint:J

    .line 51
    if-nez p1, :cond_0

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "File cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    .line 55
    iput-object p1, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->file:Ljava/io/File;

    .line 56
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
    .line 111
    iget-object v0, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-object v0, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 117
    return-void
.end method

.method public getWrappedInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public mark(I)V
    .locals 4
    .param p1, "readlimit"    # I

    .prologue
    .line 102
    iget-wide v0, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->markPoint:J

    iget-wide v2, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->markPoint:J

    .line 103
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    .line 104
    sget-object v0, Lorg/jets3t/service/io/RepeatableFileInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lorg/jets3t/service/io/RepeatableFileInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input stream marked at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->markPoint:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 107
    :cond_0
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 121
    iget-object v2, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .line 122
    .local v0, "byteRead":I
    if-eq v0, v1, :cond_0

    .line 123
    iget-wide v1, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    .line 126
    .end local v0    # "byteRead":I
    :goto_0
    return v0

    .restart local v0    # "byteRead":I
    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "arg0"    # [B
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v1, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 133
    .local v0, "count":I
    iget-wide v1, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    .line 134
    return v0
.end method

.method public reset()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v7, 0x0

    .line 76
    :try_start_0
    iget-object v5, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 77
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->file:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v5, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    .line 79
    const-wide/16 v1, 0x0

    .line 80
    .local v1, "skipped":J
    iget-wide v3, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->markPoint:J

    .line 81
    .local v3, "toSkip":J
    :goto_0
    cmp-long v5, v3, v7

    if-lez v5, :cond_0

    .line 82
    invoke-virtual {p0, v3, v4}, Lorg/jets3t/service/io/RepeatableFileInputStream;->skip(J)J

    move-result-wide v1

    .line 83
    sub-long/2addr v3, v1

    goto :goto_0

    .line 86
    :cond_0
    sget-object v5, Lorg/jets3t/service/io/RepeatableFileInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    sget-object v5, Lorg/jets3t/service/io/RepeatableFileInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reset to mark point "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->markPoint:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " after returning "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 89
    :cond_1
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->bytesReadPastMarkPoint:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    return-void

    .line 90
    .end local v1    # "skipped":J
    .end local v3    # "toSkip":J
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lorg/jets3t/service/io/UnrecoverableIOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Input stream is not repeatable: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jets3t/service/io/UnrecoverableIOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public skip(J)J
    .locals 4
    .param p1, "toSkip"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v2, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v0

    .line 61
    .local v0, "skipped":J
    iget-wide v2, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/jets3t/service/io/RepeatableFileInputStream;->bytesReadPastMarkPoint:J

    .line 62
    return-wide v0
.end method
