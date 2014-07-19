.class public Lorg/jets3t/service/io/RepeatableInputStream;
.super Ljava/io/InputStream;
.source "RepeatableInputStream.java"

# interfaces
.implements Lorg/jets3t/service/io/InputStreamWrapper;


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private buffer:[B

.field private bufferOffset:I

.field private bufferSize:I

.field private bytesReadPastMark:J

.field private is:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/jets3t/service/io/RepeatableInputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/io/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "bufferSize"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 48
    iput-object v2, p0, Lorg/jets3t/service/io/RepeatableInputStream;->is:Ljava/io/InputStream;

    .line 49
    iput v0, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferSize:I

    .line 50
    iput v0, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferOffset:I

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bytesReadPastMark:J

    .line 52
    iput-object v2, p0, Lorg/jets3t/service/io/RepeatableInputStream;->buffer:[B

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iput-object p1, p0, Lorg/jets3t/service/io/RepeatableInputStream;->is:Ljava/io/InputStream;

    .line 69
    iput p2, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferSize:I

    .line 70
    iget v0, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jets3t/service/io/RepeatableInputStream;->buffer:[B

    .line 72
    sget-object v0, Lorg/jets3t/service/io/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    sget-object v0, Lorg/jets3t/service/io/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Underlying input stream will be repeatable up to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jets3t/service/io/RepeatableInputStream;->buffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 75
    :cond_1
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
    .line 131
    iget-object v0, p0, Lorg/jets3t/service/io/RepeatableInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

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
    .line 136
    iget-object v0, p0, Lorg/jets3t/service/io/RepeatableInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 137
    return-void
.end method

.method public getWrappedInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/jets3t/service/io/RepeatableInputStream;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method public declared-synchronized mark(I)V
    .locals 8
    .param p1, "readlimit"    # I

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    sget-object v1, Lorg/jets3t/service/io/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    sget-object v1, Lorg/jets3t/service/io/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input stream marked at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bytesReadPastMark:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 113
    :cond_0
    iget-wide v1, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bytesReadPastMark:J

    iget v3, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferSize:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gtz v1, :cond_1

    iget-object v1, p0, Lorg/jets3t/service/io/RepeatableInputStream;->buffer:[B

    if-eqz v1, :cond_1

    .line 116
    iget v1, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferSize:I

    new-array v0, v1, [B

    .line 117
    .local v0, "newBuffer":[B
    iget-object v1, p0, Lorg/jets3t/service/io/RepeatableInputStream;->buffer:[B

    iget v2, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferOffset:I

    const/4 v3, 0x0

    iget-wide v4, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bytesReadPastMark:J

    iget v6, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferOffset:I

    int-to-long v6, v6

    sub-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iput-object v0, p0, Lorg/jets3t/service/io/RepeatableInputStream;->buffer:[B

    .line 119
    iget-wide v1, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bytesReadPastMark:J

    iget v3, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferOffset:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bytesReadPastMark:J

    .line 120
    const/4 v1, 0x0

    iput v1, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .end local v0    # "newBuffer":[B
    :goto_0
    monitor-exit p0

    return-void

    .line 123
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferOffset:I

    .line 124
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bytesReadPastMark:J

    .line 125
    iget v1, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/jets3t/service/io/RepeatableInputStream;->buffer:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    const/4 v2, 0x1

    new-array v1, v2, [B

    .line 187
    .local v1, "tmp":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 188
    .local v0, "count":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 189
    const/4 v2, 0x0

    aget-byte v0, v1, v2

    .line 191
    .end local v0    # "count":I
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 8
    .param p1, "out"    # [B
    .param p2, "outOffset"    # I
    .param p3, "outLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 141
    new-array v2, p3, [B

    .line 144
    .local v2, "tmp":[B
    iget v3, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferOffset:I

    int-to-long v3, v3

    iget-wide v5, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bytesReadPastMark:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    iget-object v3, p0, Lorg/jets3t/service/io/RepeatableInputStream;->buffer:[B

    if-eqz v3, :cond_2

    .line 146
    array-length v0, v2

    .line 147
    .local v0, "bytesFromBuffer":I
    iget v3, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferOffset:I

    add-int/2addr v3, v0

    int-to-long v3, v3

    iget-wide v5, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bytesReadPastMark:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 148
    iget-wide v3, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bytesReadPastMark:J

    long-to-int v3, v3

    iget v4, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferOffset:I

    sub-int v0, v3, v4

    .line 152
    :cond_0
    iget-object v3, p0, Lorg/jets3t/service/io/RepeatableInputStream;->buffer:[B

    iget v4, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferOffset:I

    invoke-static {v3, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    iget v3, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferOffset:I

    move v1, v0

    .line 181
    .end local v0    # "bytesFromBuffer":I
    :cond_1
    :goto_0
    return v1

    .line 158
    :cond_2
    iget-object v3, p0, Lorg/jets3t/service/io/RepeatableInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v3, v2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 160
    .local v1, "count":I
    if-lez v1, :cond_1

    .line 165
    iget-wide v3, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bytesReadPastMark:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iget v5, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferSize:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_4

    .line 166
    iget-object v3, p0, Lorg/jets3t/service/io/RepeatableInputStream;->buffer:[B

    iget-wide v4, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bytesReadPastMark:J

    long-to-int v4, v4

    invoke-static {v2, v7, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    iget v3, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferOffset:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferOffset:I

    .line 178
    :cond_3
    :goto_1
    invoke-static {v2, v7, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    iget-wide v3, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bytesReadPastMark:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bytesReadPastMark:J

    goto :goto_0

    .line 168
    :cond_4
    iget-object v3, p0, Lorg/jets3t/service/io/RepeatableInputStream;->buffer:[B

    if-eqz v3, :cond_3

    .line 170
    sget-object v3, Lorg/jets3t/service/io/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v3}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 171
    sget-object v3, Lorg/jets3t/service/io/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Buffer size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has been exceeded and the input stream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "will not be repeatable until the next mark. Freeing buffer memory"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 174
    :cond_5
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/jets3t/service/io/RepeatableInputStream;->buffer:[B

    goto :goto_1
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-wide v0, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bytesReadPastMark:J

    iget v2, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferSize:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 88
    sget-object v0, Lorg/jets3t/service/io/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lorg/jets3t/service/io/RepeatableInputStream;->log:Lorg/apache/commons/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reset after reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bytesReadPastMark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 91
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferOffset:I

    .line 97
    return-void

    .line 93
    :cond_1
    new-instance v0, Lorg/jets3t/service/io/UnrecoverableIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Input stream cannot be reset as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bytesReadPastMark:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes have been written, exceeding the available buffer size of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jets3t/service/io/RepeatableInputStream;->bufferSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jets3t/service/io/UnrecoverableIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
