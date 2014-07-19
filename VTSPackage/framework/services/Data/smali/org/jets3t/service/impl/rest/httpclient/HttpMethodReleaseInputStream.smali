.class public Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;
.super Ljava/io/InputStream;
.source "HttpMethodReleaseInputStream.java"

# interfaces
.implements Lorg/jets3t/service/io/InputStreamWrapper;


# static fields
.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private alreadyReleased:Z

.field private httpResponse:Lorg/apache/http/HttpResponse;

.field private inputStream:Ljava/io/InputStream;

.field private underlyingStreamConsumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/HttpResponse;)V
    .locals 4
    .param p1, "httpMethod"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 64
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 51
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;

    .line 52
    iput-object v1, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->httpResponse:Lorg/apache/http/HttpResponse;

    .line 53
    iput-boolean v3, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->alreadyReleased:Z

    .line 54
    iput-boolean v3, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->underlyingStreamConsumed:Z

    .line 65
    iput-object p1, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->httpResponse:Lorg/apache/http/HttpResponse;

    .line 67
    :try_start_0
    new-instance v1, Lorg/jets3t/service/io/InterruptableInputStream;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jets3t/service/io/InterruptableInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Unable to obtain HttpMethod\'s response data stream"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 73
    :cond_0
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    :goto_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    new-array v2, v3, [B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v1, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;

    goto :goto_0

    .line 74
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    :try_start_0
    iget-object v1, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 174
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->releaseConnection()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 180
    :goto_0
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    sget-object v1, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Released HttpMethod as its response data stream threw an exception"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 183
    :cond_0
    throw v0

    .line 177
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->alreadyReleased:Z

    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->releaseConnection()V

    .line 195
    sget-object v0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Released HttpMethod as its response data stream is closed"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 200
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 213
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->alreadyReleased:Z

    if-nez v0, :cond_1

    .line 214
    sget-object v0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Attempting to release HttpMethod in finalize() as its response data stream has gone out of scope. This attempt will not always succeed and cannot be relied upon! Please ensure response data streams are always fully consumed or closed to avoid HTTP connection starvation."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 219
    :cond_0
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->releaseConnection()V

    .line 220
    sget-object v0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    sget-object v0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v1, "Successfully released HttpMethod in finalize(). You were lucky this time... Please ensure response data streams are always fully consumed or closed."

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V

    .line 225
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 226
    return-void
.end method

.method public getHttpResponse()Lorg/apache/http/HttpResponse;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->httpResponse:Lorg/apache/http/HttpResponse;

    return-object v0
.end method

.method public getWrappedInputStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    :try_start_0
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 116
    .local v1, "read":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 117
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->underlyingStreamConsumed:Z

    .line 118
    iget-boolean v2, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->alreadyReleased:Z

    if-nez v2, :cond_0

    .line 119
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->releaseConnection()V

    .line 120
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Released HttpMethod as its response data stream is fully consumed"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :cond_0
    return v1

    .line 126
    .end local v1    # "read":I
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->releaseConnection()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 132
    :goto_0
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Released HttpMethod as its response data stream threw an exception"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 135
    :cond_1
    throw v0

    .line 129
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    :try_start_0
    iget-object v2, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 147
    .local v1, "read":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 148
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->underlyingStreamConsumed:Z

    .line 149
    iget-boolean v2, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->alreadyReleased:Z

    if-nez v2, :cond_0

    .line 150
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->releaseConnection()V

    .line 151
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Released HttpMethod as its response data stream is fully consumed"

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    return v1

    .line 157
    .end local v1    # "read":I
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {p0}, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->releaseConnection()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 163
    :goto_0
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    sget-object v2, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->log:Lorg/apache/commons/logging/Log;

    const-string v3, "Released HttpMethod as its response data stream threw an exception"

    invoke-interface {v2, v3, v0}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 166
    :cond_1
    throw v0

    .line 160
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method protected releaseConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->alreadyReleased:Z

    if-nez v0, :cond_1

    .line 99
    iget-boolean v0, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->underlyingStreamConsumed:Z

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->httpResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->consume(Lorg/apache/http/HttpEntity;)V

    .line 104
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jets3t/service/impl/rest/httpclient/HttpMethodReleaseInputStream;->alreadyReleased:Z

    .line 106
    :cond_1
    return-void
.end method
