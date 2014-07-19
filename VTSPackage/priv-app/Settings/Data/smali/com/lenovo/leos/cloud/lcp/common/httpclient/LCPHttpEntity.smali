.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;
.super Ljava/lang/Object;
.source "LCPHttpEntity.java"

# interfaces
.implements Lorg/apache/http/HttpEntity;


# instance fields
.field private delegateHttpEntity:Lorg/apache/http/HttpEntity;

.field private httpResponse:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;Lorg/apache/http/HttpEntity;)V
    .locals 2
    .param p1, "httpResponse"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;
    .param p2, "delegateHttpEntity"    # Lorg/apache/http/HttpEntity;

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->delegateHttpEntity:Lorg/apache/http/HttpEntity;

    .line 12
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->httpResponse:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;

    .line 15
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter LCPHttpResponse and  HttpEntity  can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_1
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->delegateHttpEntity:Lorg/apache/http/HttpEntity;

    .line 20
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->httpResponse:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;

    .line 22
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->delegateHttpEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 27
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->httpResponse:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->delegateHttpEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPInputStream;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;Ljava/io/InputStream;)V

    return-object v0
.end method

.method public getContentEncoding()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->delegateHttpEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->delegateHttpEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->delegateHttpEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public isChunked()Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->delegateHttpEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v0

    return v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->delegateHttpEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v0

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->delegateHttpEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isStreaming()Z

    move-result v0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "outstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;->delegateHttpEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 67
    return-void
.end method
