.class public final Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "LCPHttpClient.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$CurlLogger;,
        Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIMEOUT:I = 0x4e20

.field private static final HTTPS_PORT:I = 0x1bb

.field private static final HTTP_PORT:I = 0x50

.field private static final ONE_KILO:I = 0x400

.field private static final SOCKET_BUFFER_SIZE:I = 0x2000

.field private static final SOCKET_TIMEOUT:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "LCPHttpClient"

.field private static final THREAD_BLOCKED:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final THREAD_CHECK_INTERCEPTOR:Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field private volatile curlConfiguration:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;

.field private mLeakedException:Ljava/lang/IllegalStateException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->THREAD_BLOCKED:Ljava/lang/ThreadLocal;

    .line 146
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$1;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$1;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->THREAD_CHECK_INTERCEPTOR:Lorg/apache/http/HttpRequestInterceptor;

    .line 213
    return-void
.end method

.method private constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 2
    .param p1, "ccm"    # Lorg/apache/http/conn/ClientConnectionManager;
    .param p2, "params"    # Lorg/apache/http/params/HttpParams;

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 272
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AndroidHttpClient created and never closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->mLeakedException:Ljava/lang/IllegalStateException;

    .line 125
    return-void
.end method

.method static synthetic access$0()Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->THREAD_BLOCKED:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->curlConfiguration:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;

    return-object v0
.end method

.method static synthetic access$2(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static findAbsouluteURI(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/net/URI;
    .locals 3
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;

    .prologue
    .line 259
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 263
    .local v1, "uri":Ljava/net/URI;
    instance-of v2, p0, Lorg/apache/http/impl/client/RequestWrapper;

    if-eqz v2, :cond_0

    .line 264
    check-cast p0, Lorg/apache/http/impl/client/RequestWrapper;

    .end local p0    # "request":Lorg/apache/http/client/methods/HttpUriRequest;
    invoke-virtual {p0}, Lorg/apache/http/impl/client/RequestWrapper;->getOriginal()Lorg/apache/http/HttpRequest;

    move-result-object v0

    .line 265
    .local v0, "original":Lorg/apache/http/HttpRequest;
    instance-of v2, v0, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v2, :cond_0

    .line 266
    check-cast v0, Lorg/apache/http/client/methods/HttpUriRequest;

    .end local v0    # "original":Lorg/apache/http/HttpRequest;
    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 269
    :cond_0
    return-object v1
.end method

.method private static findData(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;
    .locals 9
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    const-string v0, ""

    .line 239
    .local v0, "data":Ljava/lang/String;
    instance-of v5, p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v5, :cond_0

    move-object v2, p0

    .line 240
    check-cast v2, Lorg/apache/http/HttpEntityEnclosingRequest;

    .line 241
    .local v2, "entityRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    invoke-interface {v2}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 242
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->isRepeatable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 243
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v5

    const-wide/16 v7, 0x400

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    .line 244
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 245
    .local v4, "stream":Ljava/io/ByteArrayOutputStream;
    invoke-interface {v1, v4}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 246
    sget-object v5, Landroid/util/Xml$Encoding;->ISO_8859_1:Landroid/util/Xml$Encoding;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 249
    .local v3, "entityString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " --data-ascii \""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 255
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v2    # "entityRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    .end local v3    # "entityString":Ljava/lang/String;
    .end local v4    # "stream":Ljava/io/ByteArrayOutputStream;
    :cond_0
    :goto_0
    return-object v0

    .line 251
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v2    # "entityRequest":Lorg/apache/http/HttpEntityEnclosingRequest;
    :cond_1
    const-string v0, " [TOO MUCH DATA TO INCLUDE]"

    goto :goto_0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;
    .locals 7
    .param p0, "userAgent"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x4e20

    const/4 v4, 0x0

    .line 58
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 62
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setStaleCheckingEnabled(Lorg/apache/http/params/HttpParams;Z)V

    .line 65
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 66
    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 67
    const/16 v3, 0x2000

    invoke-static {v1, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 72
    invoke-static {v1, v4}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 75
    invoke-static {v1, p0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 77
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$2;

    invoke-direct {v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$2;-><init>()V

    invoke-static {v1, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 84
    new-instance v2, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 85
    .local v2, "schemeRegistry":Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v5

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 86
    new-instance v3, Lorg/apache/http/conn/scheme/Scheme;

    const-string v4, "https"

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;->getSocketFactory()Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPSSLSocketFactory;

    move-result-object v5

    const/16 v6, 0x1bb

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v2, v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 89
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 94
    .local v0, "manager":Lorg/apache/http/conn/ClientConnectionManager;
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;

    invoke-direct {v3, v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-object v3
.end method

.method public static setThreadBlocked(Z)V
    .locals 2
    .param p0, "blocked"    # Z

    .prologue
    .line 45
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->THREAD_BLOCKED:Ljava/lang/ThreadLocal;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method private static toCurl(Lorg/apache/http/client/methods/HttpUriRequest;Z)Ljava/lang/String;
    .locals 9
    .param p0, "request"    # Lorg/apache/http/client/methods/HttpUriRequest;
    .param p1, "logAuthToken"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "curl "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 220
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v6, :cond_0

    .line 230
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->findAbsouluteURI(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/net/URI;

    move-result-object v3

    .line 231
    .local v3, "uri":Ljava/net/URI;
    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->findData(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 220
    .end local v3    # "uri":Ljava/net/URI;
    :cond_0
    aget-object v1, v5, v4

    .line 221
    .local v1, "header":Lorg/apache/http/Header;
    if-nez p1, :cond_2

    .line 222
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Authorization"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 223
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Cookie"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 220
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "headerStr":Ljava/lang/String;
    const-string v7, "--header \""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->mLeakedException:Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 277
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->mLeakedException:Ljava/lang/IllegalStateException;

    .line 279
    :cond_0
    return-void
.end method

.method protected createHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 3

    .prologue
    .line 200
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    .line 202
    .local v0, "context":Lorg/apache/http/protocol/HttpContext;
    const-string v1, "http.authscheme-registry"

    .line 203
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getAuthSchemes()Lorg/apache/http/auth/AuthSchemeRegistry;

    move-result-object v2

    .line 201
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    const-string v1, "http.cookiespec-registry"

    .line 206
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCookieSpecs()Lorg/apache/http/cookie/CookieSpecRegistry;

    move-result-object v2

    .line 204
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 208
    const-string v1, "http.auth.credentials-provider"

    .line 209
    invoke-virtual {p0}, Lorg/apache/http/impl/client/AbstractHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    .line 207
    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    return-object v0
.end method

.method protected createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 3

    .prologue
    .line 130
    invoke-super {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;

    move-result-object v0

    .line 132
    .local v0, "processor":Lorg/apache/http/protocol/BasicHttpProcessor;
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->THREAD_CHECK_INTERCEPTOR:Lorg/apache/http/HttpRequestInterceptor;

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 134
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$CurlLogger;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$CurlLogger;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$CurlLogger;)V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 136
    return-object v0
.end method

.method public disableCurlLogging()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->curlConfiguration:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;

    .line 121
    return-void
.end method

.method public enableCurlLogging(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # I

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter name can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_0
    const/4 v0, 0x2

    if-lt p2, v0, :cond_1

    const/4 v0, 0x7

    if-le p2, v0, :cond_2

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Level is out of range [2..7]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_2
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;ILcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->curlConfiguration:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient$LoggingConfiguration;

    .line 114
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->mLeakedException:Ljava/lang/IllegalStateException;

    if-eqz v0, :cond_0

    .line 284
    const-string v0, "LCPHttpClient"

    const-string v1, "Leak found"

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->mLeakedException:Ljava/lang/IllegalStateException;

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 287
    return-void
.end method
