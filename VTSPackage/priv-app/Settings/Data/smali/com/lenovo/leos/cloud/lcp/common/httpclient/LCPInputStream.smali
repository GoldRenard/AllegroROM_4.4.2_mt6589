.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;
.super Ljava/io/InputStream;
.source "LCPInputStream.java"


# instance fields
.field private delegateInputStream:Ljava/io/InputStream;

.field private httpResponse:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;

.field private releaseTriggerFieldName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "httpResponse"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;
    .param p2, "delegateInputStream"    # Ljava/io/InputStream;

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->delegateInputStream:Ljava/io/InputStream;

    .line 14
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->httpResponse:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;

    .line 104
    const-string v0, "releaseTrigger"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->releaseTriggerFieldName:Ljava/lang/String;

    .line 18
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 20
    const-string v1, "Parameter LCPHttpResponse and  InputStream  can not be null"

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->delegateInputStream:Ljava/io/InputStream;

    .line 24
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->httpResponse:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;

    .line 25
    return-void
.end method

.method private checkAbortAndReleaseConnection(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 4
    .param p1, "response"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;
    .param p2, "ex"    # Ljava/io/IOException;

    .prologue
    .line 86
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v1

    .line 87
    .local v1, "request":Lorg/apache/http/client/methods/HttpRequestBase;
    move-object v2, p2

    .line 89
    .local v2, "toReturn":Ljava/io/IOException;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->isAborted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->findReleaseTrigger(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/impl/conn/AbstractClientConnAdapter;

    move-result-object v0

    .line 95
    .local v0, "releaseTrigger":Lorg/apache/http/impl/conn/AbstractClientConnAdapter;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;->releaseConnection()V

    .line 98
    :cond_0
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpAbortException;

    .end local v2    # "toReturn":Ljava/io/IOException;
    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpAbortException;-><init>()V

    .line 101
    .end local v0    # "releaseTrigger":Lorg/apache/http/impl/conn/AbstractClientConnAdapter;
    .restart local v2    # "toReturn":Ljava/io/IOException;
    :cond_1
    return-object v2
.end method

.method private findReleaseTrigger(Lorg/apache/http/client/methods/HttpRequestBase;)Lorg/apache/http/impl/conn/AbstractClientConnAdapter;
    .locals 2
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;

    .prologue
    .line 109
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->releaseTriggerFieldName:Ljava/lang/String;

    .line 108
    invoke-static {p1, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/ReflectUtil;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/http/impl/conn/AbstractClientConnAdapter;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-object v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const/4 v1, 0x0

    goto :goto_0
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
    .line 39
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->delegateInputStream:Ljava/io/InputStream;

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
    .line 44
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->delegateInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 45
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readlimit"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->delegateInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    .line 30
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->delegateInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->delegateInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->httpResponse:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;

    invoke-direct {p0, v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->checkAbortAndReleaseConnection(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->delegateInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->httpResponse:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;

    invoke-direct {p0, v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->checkAbortAndReleaseConnection(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->delegateInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    .local v0, "ex":Ljava/io/IOException;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->httpResponse:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;

    invoke-direct {p0, v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->checkAbortAndReleaseConnection(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->delegateInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    .line 50
    return-void
.end method

.method public skip(J)J
    .locals 2
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;->delegateInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    return-wide v0
.end method
