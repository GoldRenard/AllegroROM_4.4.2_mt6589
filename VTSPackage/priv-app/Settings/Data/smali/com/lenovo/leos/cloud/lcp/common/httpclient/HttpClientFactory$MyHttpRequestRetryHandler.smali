.class Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory$MyHttpRequestRetryHandler;
.super Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;
.source "HttpClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHttpRequestRetryHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory$MyHttpRequestRetryHandler;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory$MyHttpRequestRetryHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 2
    .param p1, "exception"    # Ljava/io/IOException;
    .param p2, "executionCount"    # I
    .param p3, "httpContext"    # Lorg/apache/http/protocol/HttpContext;

    .prologue
    .line 71
    const-string v0, "HttpClientFactory"

    const-string v1, "HttpClient retryRequest, as exception: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 75
    const-string v1, "Exception parameter may not be null"

    .line 74
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    if-nez p3, :cond_1

    .line 78
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 79
    const-string v1, "HTTP context may not be null"

    .line 78
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    invoke-virtual {p0}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->getRetryCount()I

    move-result v0

    if-gt p2, v0, :cond_2

    .line 83
    instance-of v0, p1, Ljava/net/ConnectException;

    if-nez v0, :cond_2

    .line 84
    instance-of v0, p1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpAbortException;

    if-eqz v0, :cond_3

    .line 86
    :cond_2
    const/4 v0, 0x0

    .line 96
    :goto_0
    return v0

    .line 89
    :cond_3
    instance-of v0, p1, Lorg/apache/http/NoHttpResponseException;

    if-nez v0, :cond_4

    .line 90
    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-nez v0, :cond_4

    .line 91
    instance-of v0, p1, Ljava/net/SocketException;

    if-eqz v0, :cond_5

    .line 93
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 96
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v0

    goto :goto_0
.end method
