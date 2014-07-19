.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;
.super Ljava/lang/Object;
.source "LCPHttpResponse.java"

# interfaces
.implements Lorg/apache/http/HttpResponse;


# instance fields
.field private delegateResponse:Lorg/apache/http/HttpResponse;

.field private httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 2
    .param p1, "delegate"    # Lorg/apache/http/HttpResponse;
    .param p2, "httpRequest"    # Lorg/apache/http/client/methods/HttpRequestBase;

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    .line 16
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 19
    if-nez p1, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter \'HttpResponse delegate\' can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 23
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    .line 24
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public addHeader(Lorg/apache/http/Header;)V
    .locals 1
    .param p1, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->addHeader(Lorg/apache/http/Header;)V

    .line 29
    return-void
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllHeaders()[Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getEntity()Lorg/apache/http/HttpEntity;
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpEntity;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;Lorg/apache/http/HttpEntity;)V

    return-object v0
.end method

.method public getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->httpRequest:Lorg/apache/http/client/methods/HttpRequestBase;

    return-object v0
.end method

.method public getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    return-object v0
.end method

.method public getProtocolVersion()Lorg/apache/http/ProtocolVersion;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getStatusLine()Lorg/apache/http/StatusLine;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    return-object v0
.end method

.method public headerIterator()Lorg/apache/http/HeaderIterator;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->headerIterator()Lorg/apache/http/HeaderIterator;

    move-result-object v0

    return-object v0
.end method

.method public headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Lorg/apache/http/Header;)V
    .locals 1
    .param p1, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->removeHeader(Lorg/apache/http/Header;)V

    .line 84
    return-void
.end method

.method public removeHeaders(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->removeHeaders(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public setEntity(Lorg/apache/http/HttpEntity;)V
    .locals 1
    .param p1, "entity"    # Lorg/apache/http/HttpEntity;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 129
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/HttpResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public setHeader(Lorg/apache/http/Header;)V
    .locals 1
    .param p1, "header"    # Lorg/apache/http/Header;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->setHeader(Lorg/apache/http/Header;)V

    .line 94
    return-void
.end method

.method public setHeaders([Lorg/apache/http/Header;)V
    .locals 1
    .param p1, "headers"    # [Lorg/apache/http/Header;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->setHeaders([Lorg/apache/http/Header;)V

    .line 104
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->setLocale(Ljava/util/Locale;)V

    .line 134
    return-void
.end method

.method public setParams(Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .param p1, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 109
    return-void
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public setStatusCode(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 144
    return-void
.end method

.method public setStatusLine(Lorg/apache/http/ProtocolVersion;I)V
    .locals 1
    .param p1, "ver"    # Lorg/apache/http/ProtocolVersion;
    .param p2, "code"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1, p2}, Lorg/apache/http/HttpResponse;->setStatusLine(Lorg/apache/http/ProtocolVersion;I)V

    .line 154
    return-void
.end method

.method public setStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V
    .locals 1
    .param p1, "ver"    # Lorg/apache/http/ProtocolVersion;
    .param p2, "code"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/http/HttpResponse;->setStatusLine(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 159
    return-void
.end method

.method public setStatusLine(Lorg/apache/http/StatusLine;)V
    .locals 1
    .param p1, "statusline"    # Lorg/apache/http/StatusLine;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;->delegateResponse:Lorg/apache/http/HttpResponse;

    invoke-interface {v0, p1}, Lorg/apache/http/HttpResponse;->setStatusLine(Lorg/apache/http/StatusLine;)V

    .line 149
    return-void
.end method
