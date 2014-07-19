.class public Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;
.super Ljava/lang/Object;
.source "RepeatableRequestEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x20000

.field protected static MAX_BYTES_PER_SECOND:J

.field private static volatile bytesWrittenThisSecond:J

.field private static volatile currentSecondMonitored:J

.field private static final log:Lorg/apache/commons/logging/Log;

.field private static final random:Ljava/util/Random;


# instance fields
.field private bytesWritten:J

.field consumed:Z

.field private contentLength:J

.field private contentType:Ljava/lang/String;

.field private dataMD5Hash:[B

.field private is:Ljava/io/InputStream;

.field private isLiveMD5HashingEnabled:Z

.field protected mChunked:Z

.field protected mContentEncoding:Lorg/apache/http/Header;

.field private name:Ljava/lang/String;

.field private progressMonitoredIS:Lorg/jets3t/service/io/ProgressMonitoredInputStream;

.field private repeatableInputStream:Ljava/io/InputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 61
    const-class v0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->log:Lorg/apache/commons/logging/Log;

    .line 72
    sput-wide v1, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->MAX_BYTES_PER_SECOND:J

    .line 73
    sput-wide v1, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->bytesWrittenThisSecond:J

    .line 74
    sput-wide v1, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->currentSecondMonitored:J

    .line 75
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->random:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;JLorg/jets3t/service/Jets3tProperties;Z)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "contentLength"    # J
    .param p6, "jets3tProperties"    # Lorg/jets3t/service/Jets3tProperties;
    .param p7, "enableLiveMD5Hashing"    # Z

    .prologue
    const/high16 v7, 0x20000

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object v3, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->name:Ljava/lang/String;

    .line 64
    iput-object v3, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->is:Ljava/io/InputStream;

    .line 65
    iput-object v3, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->contentType:Ljava/lang/String;

    .line 66
    iput-wide v5, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->contentLength:J

    .line 68
    iput-wide v5, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->bytesWritten:J

    .line 69
    iput-object v3, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->repeatableInputStream:Ljava/io/InputStream;

    .line 70
    iput-object v3, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->progressMonitoredIS:Lorg/jets3t/service/io/ProgressMonitoredInputStream;

    .line 77
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->isLiveMD5HashingEnabled:Z

    .line 78
    iput-object v3, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->dataMD5Hash:[B

    .line 79
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->consumed:Z

    .line 115
    if-nez p2, :cond_0

    .line 116
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "InputStream cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_0
    iput-object p2, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->is:Ljava/io/InputStream;

    .line 119
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->name:Ljava/lang/String;

    .line 120
    iput-wide p4, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->contentLength:J

    .line 121
    iput-object p3, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->contentType:Ljava/lang/String;

    .line 122
    iput-boolean p7, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->isLiveMD5HashingEnabled:Z

    .line 124
    move-object v1, p2

    .line 126
    .local v1, "inputStream":Ljava/io/InputStream;
    :goto_0
    instance-of v2, v1, Lorg/jets3t/service/io/ProgressMonitoredInputStream;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 127
    check-cast v2, Lorg/jets3t/service/io/ProgressMonitoredInputStream;

    iput-object v2, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->progressMonitoredIS:Lorg/jets3t/service/io/ProgressMonitoredInputStream;

    .line 129
    :cond_1
    invoke-virtual {v1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->repeatableInputStream:Ljava/io/InputStream;

    .line 131
    const/4 v0, -0x1

    .line 135
    .local v0, "bufferSize":I
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->repeatableInputStream:Ljava/io/InputStream;

    instance-of v2, v2, Ljava/io/BufferedInputStream;

    if-eqz v2, :cond_3

    .line 136
    const-string v2, "uploads.stream-retry-buffer-size"

    invoke-virtual {p6, v2, v7}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    .line 138
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting conservative read-ahead mark limit for BufferedInputStream since it keeps read data in-memory and can cause memory starvation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (from property \'uploads.stream-retry-buffer-size\')"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 147
    :goto_1
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->repeatableInputStream:Ljava/io/InputStream;

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->mark(I)V

    .line 150
    .end local v0    # "bufferSize":I
    :cond_2
    instance-of v2, v1, Lorg/jets3t/service/io/InputStreamWrapper;

    if-eqz v2, :cond_4

    .line 151
    check-cast v1, Lorg/jets3t/service/io/InputStreamWrapper;

    .end local v1    # "inputStream":Ljava/io/InputStream;
    invoke-interface {v1}, Lorg/jets3t/service/io/InputStreamWrapper;->getWrappedInputStream()Ljava/io/InputStream;

    move-result-object v1

    .restart local v1    # "inputStream":Ljava/io/InputStream;
    goto :goto_0

    .line 142
    .restart local v0    # "bufferSize":I
    :cond_3
    const-wide/32 v2, 0x7fffffff

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 143
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting maximal read-ahead mark limit for markable input stream "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->repeatableInputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " assuming it doesn\'t use in-memory storage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    goto :goto_1

    .line 157
    .end local v0    # "bufferSize":I
    :cond_4
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->repeatableInputStream:Ljava/io/InputStream;

    if-nez v2, :cond_6

    .line 158
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 159
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Wrapping non-repeatable input stream in a RepeatableInputStream"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 161
    :cond_5
    const-string v2, "uploads.stream-retry-buffer-size"

    invoke-virtual {p6, v2, v7}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    .line 163
    .restart local v0    # "bufferSize":I
    new-instance v2, Lorg/jets3t/service/io/RepeatableInputStream;

    invoke-direct {v2, p2, v0}, Lorg/jets3t/service/io/RepeatableInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v2, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->is:Ljava/io/InputStream;

    .line 165
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->is:Ljava/io/InputStream;

    iput-object v2, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->repeatableInputStream:Ljava/io/InputStream;

    .line 168
    .end local v0    # "bufferSize":I
    :cond_6
    const-wide/16 v2, 0x400

    const-string v4, "httpclient.read-throttle"

    invoke-virtual {p6, v4, v5, v6}, Lorg/jets3t/service/Jets3tProperties;->getLongProperty(Ljava/lang/String;J)J

    move-result-wide v4

    mul-long/2addr v2, v4

    sput-wide v2, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->MAX_BYTES_PER_SECOND:J

    .line 169
    return-void
.end method

.method protected static throttle(I)V
    .locals 11
    .param p0, "bytesToWrite"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 310
    sget-wide v6, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->MAX_BYTES_PER_SECOND:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_1

    .line 350
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v0, v6, v8

    .line 320
    .local v0, "currentSecond":J
    sget-object v6, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->random:Ljava/util/Random;

    monitor-enter v6

    .line 322
    :try_start_0
    sget-wide v7, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->currentSecondMonitored:J

    cmp-long v7, v0, v7

    if-nez v7, :cond_4

    move v3, v4

    .line 326
    .local v3, "isCurrentSecond":Z
    :goto_1
    if-eqz v3, :cond_5

    sget-wide v7, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->bytesWrittenThisSecond:J

    int-to-long v9, p0

    add-long/2addr v7, v9

    sget-wide v9, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->MAX_BYTES_PER_SECOND:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_5

    .line 329
    .local v4, "willExceedThrottle":Z
    :goto_2
    if-nez v3, :cond_2

    .line 331
    sput-wide v0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->currentSecondMonitored:J

    .line 332
    int-to-long v7, p0

    sput-wide v7, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->bytesWrittenThisSecond:J

    .line 334
    :cond_2
    if-nez v4, :cond_3

    .line 336
    sget-wide v7, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->bytesWrittenThisSecond:J

    int-to-long v9, p0

    add-long/2addr v7, v9

    sput-wide v7, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->bytesWrittenThisSecond:J

    .line 338
    :cond_3
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    if-eqz v4, :cond_0

    .line 344
    :try_start_1
    sget-object v5, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->random:Ljava/util/Random;

    const/16 v6, 0xfa

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 348
    invoke-static {p0}, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->throttle(I)V

    goto :goto_0

    .end local v3    # "isCurrentSecond":Z
    .end local v4    # "willExceedThrottle":Z
    :cond_4
    move v3, v5

    .line 322
    goto :goto_1

    .restart local v3    # "isCurrentSecond":Z
    :cond_5
    move v4, v5

    .line 326
    goto :goto_2

    .line 338
    .end local v3    # "isCurrentSecond":Z
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 345
    .restart local v3    # "isCurrentSecond":Z
    .restart local v4    # "willExceedThrottle":Z
    :catch_0
    move-exception v2

    .line 346
    .local v2, "e":Ljava/lang/InterruptedException;
    new-instance v5, Ljava/io/IOException;

    const-string v6, "Throttling of transmission was interrupted"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public consumeContent()V
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->consumed:Z

    .line 188
    :try_start_0
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->mContentEncoding:Lorg/apache/http/Header;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->contentLength:J

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 3

    .prologue
    .line 207
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v1, "Content-Type"

    iget-object v2, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getMD5DigestOfData()[B
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->dataMD5Hash:[B

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->dataMD5Hash:[B

    .line 290
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->mChunked:Z

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->consumed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 11
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    .line 232
    iget-wide v4, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->bytesWritten:J

    cmp-long v4, v4, v9

    if-lez v4, :cond_2

    .line 234
    iget-object v4, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->repeatableInputStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->reset()V

    .line 235
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 236
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Repeating transmission of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->bytesWritten:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 240
    :cond_0
    iget-object v4, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->progressMonitoredIS:Lorg/jets3t/service/io/ProgressMonitoredInputStream;

    if-eqz v4, :cond_1

    .line 241
    iget-object v4, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->progressMonitoredIS:Lorg/jets3t/service/io/ProgressMonitoredInputStream;

    invoke-virtual {v4}, Lorg/jets3t/service/io/ProgressMonitoredInputStream;->resetProgressMonitor()V

    .line 244
    :cond_1
    iput-wide v9, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->bytesWritten:J

    .line 247
    :cond_2
    const/4 v2, 0x0

    .line 248
    .local v2, "messageDigest":Ljava/security/MessageDigest;
    iget-boolean v4, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->isLiveMD5HashingEnabled:Z

    if-eqz v4, :cond_3

    .line 250
    :try_start_0
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 258
    :cond_3
    :goto_0
    const/high16 v4, 0x20000

    new-array v3, v4, [B

    .line 259
    .local v3, "tmp":[B
    const/4 v0, 0x0

    .line 261
    .local v0, "count":I
    :cond_4
    :goto_1
    iget-object v4, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->is:Ljava/io/InputStream;

    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-ltz v0, :cond_5

    .line 262
    invoke-static {v0}, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->throttle(I)V

    .line 264
    iget-wide v4, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->bytesWritten:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->bytesWritten:J

    .line 266
    invoke-virtual {p1, v3, v8, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 268
    if-eqz v2, :cond_4

    .line 269
    invoke-virtual {v2, v3, v8, v0}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1

    .line 251
    .end local v0    # "count":I
    .end local v3    # "tmp":[B
    :catch_0
    move-exception v1

    .line 252
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 253
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->log:Lorg/apache/commons/logging/Log;

    const-string v5, "Unable to calculate MD5 hash of data sent as algorithm is not available"

    invoke-interface {v4, v5, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 273
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "count":I
    .restart local v3    # "tmp":[B
    :cond_5
    if-eqz v2, :cond_6

    .line 274
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    iput-object v4, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->dataMD5Hash:[B

    .line 275
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v4}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 276
    sget-object v4, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->log:Lorg/apache/commons/logging/Log;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MD5 digest of data sent for \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' - B64:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->dataMD5Hash:[B

    invoke-static {v6}, Lorg/jets3t/service/utils/ServiceUtils;->toBase64([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Hex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/jets3t/service/impl/rest/httpclient/RepeatableRequestEntity;->dataMD5Hash:[B

    invoke-static {v6}, Lorg/jets3t/service/utils/ServiceUtils;->toHex([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 280
    :cond_6
    return-void
.end method
