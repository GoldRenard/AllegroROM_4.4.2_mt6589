.class public abstract Lcom/lenovo/lsf/http/AbstractHttpRequest;
.super Ljava/lang/Object;
.source "AbstractHttpRequest.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CONTENT_TYPE_URLENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static final TAG:Ljava/lang/String; = "AbstractHttpRequest"


# instance fields
.field private httpClient:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/lenovo/lsf/http/AbstractHttpRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/lsf/http/AbstractHttpRequest;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/apache/http/client/HttpClient;)V
    .locals 1
    .param p1, "client"    # Lorg/apache/http/client/HttpClient;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lsf/http/AbstractHttpRequest;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 28
    iput-object p1, p0, Lcom/lenovo/lsf/http/AbstractHttpRequest;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 29
    return-void
.end method

.method private final executeRequest(ZLorg/apache/http/client/methods/HttpUriRequest;)Z
    .locals 6
    .param p1, "keepalive"    # Z
    .param p2, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/lsf/http/RequestFailedException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 104
    sget-boolean v3, Lcom/lenovo/lsf/http/AbstractHttpRequest;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/lsf/http/AbstractHttpRequest;->httpClient:Lorg/apache/http/client/HttpClient;

    if-nez v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 105
    :cond_0
    if-nez p2, :cond_1

    .line 138
    :goto_0
    return v2

    .line 111
    :cond_1
    if-eqz p1, :cond_2

    .line 112
    :try_start_0
    const-string v3, "Keep-Alive"

    const-string v4, "timeout=20, max=20"

    invoke-interface {p2, v3, v4}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_2
    const-string v3, "AbstractHttpRequest"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Execute request:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v3, p0, Lcom/lenovo/lsf/http/AbstractHttpRequest;->httpClient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v3, p2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 119
    .local v1, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    .line 120
    invoke-virtual {p0, v1}, Lcom/lenovo/lsf/http/AbstractHttpRequest;->handleSuccess(Lorg/apache/http/HttpResponse;)V

    .line 121
    const/4 v2, 0x1

    goto :goto_0

    .line 123
    :cond_3
    invoke-virtual {p0, v1}, Lcom/lenovo/lsf/http/AbstractHttpRequest;->handleError(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 126
    .end local v1    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    new-instance v2, Lcom/lenovo/lsf/http/RequestFailedException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ClientProtocolException while excuting request:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/lenovo/lsf/http/RequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 129
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "https"

    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 131
    const-string v2, "AbstractHttpRequest"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") to execute request:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", retring http."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    invoke-direct {p0, p2}, Lcom/lenovo/lsf/http/AbstractHttpRequest;->toHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/lenovo/lsf/http/AbstractHttpRequest;->executeRequest(ZLorg/apache/http/client/methods/HttpUriRequest;)Z

    move-result v2

    goto/16 :goto_0

    .line 134
    :cond_4
    new-instance v2, Lcom/lenovo/lsf/http/RequestFailedException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException while excuting request:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/lenovo/lsf/http/RequestFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static generateGetRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpGet;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 50
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "httpget":Lorg/apache/http/client/methods/HttpGet;
    return-object v0
.end method

.method protected static generatePostRequest(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "postData"    # Ljava/lang/String;

    .prologue
    .line 37
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 38
    .local v1, "httppost":Lorg/apache/http/client/methods/HttpPost;
    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/message/AbstractHttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :try_start_0
    new-instance v2, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v2, p1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-object v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected static parseParams(Ljava/lang/String;)Ljava/util/Map;
    .locals 10
    .param p0, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 56
    const-string v5, "&"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 57
    .local v3, "params":[Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    array-length v7, v3

    move v5, v6

    :goto_0
    if-lt v5, v7, :cond_0

    .line 64
    return-object v0

    .line 58
    :cond_0
    aget-object v2, v3, v5

    .line 60
    .local v2, "param":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v1, v8, v6

    .line 61
    .local v1, "name":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v4, v8, v9

    .line 62
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private final toHttpRequest(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 10
    .param p1, "req"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    .line 72
    const/4 v2, 0x0

    .line 73
    .local v2, "httpRequest":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "method":Ljava/lang/String;
    const/4 v5, 0x0

    .line 77
    .local v5, "uri":Ljava/net/URI;
    :try_start_0
    new-instance v6, Ljava/net/URI;

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "https"

    const-string v9, "http"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .end local v5    # "uri":Ljava/net/URI;
    .local v6, "uri":Ljava/net/URI;
    const-string v7, "POST"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 84
    instance-of v7, p1, Lorg/apache/http/client/methods/HttpPost;

    if-eqz v7, :cond_0

    move-object v4, p1

    .line 85
    check-cast v4, Lorg/apache/http/client/methods/HttpPost;

    .line 86
    .local v4, "post":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v4, v6}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 87
    move-object v2, v4

    .end local v4    # "post":Lorg/apache/http/client/methods/HttpPost;
    :cond_0
    :goto_0
    move-object v5, v6

    .end local v6    # "uri":Ljava/net/URI;
    .restart local v5    # "uri":Ljava/net/URI;
    move-object v7, v2

    .line 99
    :goto_1
    return-object v7

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e1":Ljava/net/URISyntaxException;
    const-string v7, "AbstractHttpRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failed to transform https request to http:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const/4 v7, 0x0

    goto :goto_1

    .line 89
    .end local v0    # "e1":Ljava/net/URISyntaxException;
    .end local v5    # "uri":Ljava/net/URI;
    .restart local v6    # "uri":Ljava/net/URI;
    :cond_1
    const-string v7, "GET"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 90
    instance-of v7, p1, Lorg/apache/http/client/methods/HttpGet;

    if-eqz v7, :cond_0

    move-object v1, p1

    .line 91
    check-cast v1, Lorg/apache/http/client/methods/HttpGet;

    .line 92
    .local v1, "get":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v1, v6}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 93
    move-object v2, v1

    goto :goto_0

    .line 96
    .end local v1    # "get":Lorg/apache/http/client/methods/HttpGet;
    :cond_2
    const-string v7, "AbstractHttpRequest"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Not support request method:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "when transforming https request to http!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public final execute(Z)Z
    .locals 1
    .param p1, "keepalive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/lsf/http/RequestFailedException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/lenovo/lsf/http/AbstractHttpRequest;->getRequest()Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/lsf/http/AbstractHttpRequest;->executeRequest(ZLorg/apache/http/client/methods/HttpUriRequest;)Z

    move-result v0

    return v0
.end method

.method protected abstract getRequest()Lorg/apache/http/client/methods/HttpUriRequest;
.end method

.method protected abstract handleError(Lorg/apache/http/HttpResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/lsf/http/RequestFailedException;
        }
    .end annotation
.end method

.method protected abstract handleSuccess(Lorg/apache/http/HttpResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/lsf/http/RequestFailedException;
        }
    .end annotation
.end method
