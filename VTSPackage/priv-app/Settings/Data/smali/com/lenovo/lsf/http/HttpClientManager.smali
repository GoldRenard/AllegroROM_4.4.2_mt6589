.class public Lcom/lenovo/lsf/http/HttpClientManager;
.super Ljava/lang/Object;
.source "HttpClientManager.java"


# static fields
.field private static final DEFAULT_CONNECTION_TIMEOUT:I = 0x2710

.field private static final DEFAULT_SO_TIMEOUT:I = 0x4e20

.field private static httpClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/apache/http/client/HttpClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/lsf/http/HttpClientManager;->httpClientMap:Ljava/util/Map;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v3, Lcom/lenovo/lsf/http/HttpClientManager;

    monitor-enter v3

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "localKey":Ljava/lang/String;
    sget-object v2, Lcom/lenovo/lsf/http/HttpClientManager;->httpClientMap:Ljava/util/Map;

    if-nez v2, :cond_0

    .line 24
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/lenovo/lsf/http/HttpClientManager;->httpClientMap:Ljava/util/Map;

    .line 27
    :cond_0
    sget-object v2, Lcom/lenovo/lsf/http/HttpClientManager;->httpClientMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/HttpClient;

    .line 28
    .local v0, "httpClient":Lorg/apache/http/client/HttpClient;
    if-nez v0, :cond_1

    .line 30
    invoke-static {}, Lcom/lenovo/lsf/http/HttpClientManager;->newHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    .line 31
    sget-object v2, Lcom/lenovo/lsf/http/HttpClientManager;->httpClientMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    monitor-exit v3

    return-object v0

    .line 21
    .end local v0    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v1    # "localKey":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static newHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 3

    .prologue
    .line 51
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 52
    .local v1, "params":Lorg/apache/http/params/HttpParams;
    const/16 v2, 0x2710

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 53
    const/16 v2, 0x4e20

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 55
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 95
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 101
    .local v0, "client":Lorg/apache/http/impl/client/DefaultHttpClient;
    return-object v0
.end method

.method public static declared-synchronized shutdown(Ljava/lang/String;)V
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v3, Lcom/lenovo/lsf/http/HttpClientManager;

    monitor-enter v3

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "localKey":Ljava/lang/String;
    const/4 v0, 0x0

    .line 40
    .local v0, "httpClient":Lorg/apache/http/client/HttpClient;
    sget-object v2, Lcom/lenovo/lsf/http/HttpClientManager;->httpClientMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/lenovo/lsf/http/HttpClientManager;->httpClientMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "httpClient":Lorg/apache/http/client/HttpClient;
    check-cast v0, Lorg/apache/http/client/HttpClient;

    .restart local v0    # "httpClient":Lorg/apache/http/client/HttpClient;
    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 42
    sget-object v2, Lcom/lenovo/lsf/http/HttpClientManager;->httpClientMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v2, Lcom/lenovo/lsf/http/HttpClientManager;->httpClientMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    const/4 v2, 0x0

    sput-object v2, Lcom/lenovo/lsf/http/HttpClientManager;->httpClientMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit v3

    return-void

    .line 37
    .end local v0    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v1    # "localKey":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
