.class public final Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;
.super Ljava/lang/Object;
.source "ReaperServerAddressQueryTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ReaperServerAddressQueryTask"

.field public static final defaultReaperServerIPUrl:Ljava/lang/String; = "http://223.202.19.39"

.field public static final defaultReaperServerUrl:Ljava/lang/String; = "http://fsr.lenovomm.com"

.field private static final reaperServerAddressQueryUrl:Ljava/lang/String; = "http://lds.lenovomm.com/addr/1.0/query?sid=rfsr001&didt=1"


# instance fields
.field private final configuration:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

.field private retryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;


# direct methods
.method public constructor <init>(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V
    .locals 2
    .param p1, "configuration"    # Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0, v1, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->retryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    .line 64
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->configuration:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;Landroid/os/Handler;)V
    .locals 2
    .param p1, "configuration"    # Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0, v1, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->retryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    .line 60
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->configuration:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .line 61
    return-void
.end method

.method private needQueryServerInfo()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 114
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->configuration:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getCustomReaperServer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->configuration:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getCustomReaperServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 115
    const-string v1, "ReaperServerAddressQueryTask"

    const-string v2, "Using Custom ReaperServerAddress."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return v0

    .line 118
    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->isOnline()Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    const-string v1, "ReaperServerAddressQueryTask"

    const-string v2, "network is not ok."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->configuration:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->isServerInfoExpried()Z

    move-result v1

    if-nez v1, :cond_2

    .line 124
    const-string v1, "ReaperServerAddressQueryTask"

    const-string v2, "server info is not expired."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private processResponseResult(Ljava/lang/String;)Z
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;

    invoke-direct {v1, p0}, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;-><init>(Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;)V

    .line 140
    .local v1, "ldsResponseHandler":Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;
    :try_start_0
    invoke-static {p1, v1}, Landroid/util/Xml;->parse(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V

    .line 141
    const-string v2, "ReaperServerAddressQueryTask"

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;->getTtl()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v2, "ReaperServerAddressQueryTask"

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;->getAddresses()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;->getTtl()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask$LdsResponseHandler;->getAddresses()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->resetReaperServer(JLjava/util/List;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 147
    :goto_0
    return v2

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ReaperServerAddressQueryTask"

    const-string v3, "process server query response result fail. "

    invoke-static {v2, v3, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private resetReaperServer(JLjava/util/List;)Z
    .locals 7
    .param p1, "ttl"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 160
    if-eqz p3, :cond_0

    .line 161
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 162
    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->configuration:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1, p1, p2}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->saveServerInfo(Ljava/lang/String;J)V

    move v1, v2

    .line 172
    :cond_0
    :goto_0
    return v1

    .line 164
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_2

    .line 165
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v3, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    mul-double/2addr v3, v5

    double-to-int v0, v3

    .line 166
    .local v0, "index":I
    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->configuration:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1, p1, p2}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->saveServerInfo(Ljava/lang/String;J)V

    move v1, v2

    .line 167
    goto :goto_0

    .line 169
    .end local v0    # "index":I
    :cond_2
    const-string v2, "ReaperServerAddressQueryTask"

    const-string v3, "don\'t get reaper server url from lds."

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->needQueryServerInfo()Z

    move-result v8

    if-nez v8, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 78
    .local v3, "httpParams":Lorg/apache/http/params/HttpParams;
    const-string v8, "http.connection.timeout"

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getHttpTimeoutMillis()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 80
    const-string v8, "http.socket.timeout"

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getHttpTimeoutMillis()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 82
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    const-string v8, "http://lds.lenovomm.com/addr/1.0/query?sid=rfsr001&didt=1"

    invoke-direct {v2, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 83
    .local v2, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v2, v3}, Lorg/apache/http/message/AbstractHttpMessage;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 84
    const/4 v5, 0x0

    .line 85
    .local v5, "queryResult":Z
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 86
    .local v4, "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->retryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-virtual {v4, v8}, Lorg/apache/http/impl/client/AbstractHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 88
    :try_start_0
    invoke-virtual {v4, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 89
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 90
    .local v0, "code":I
    const/16 v8, 0xc8

    if-ne v0, v8, :cond_2

    .line 91
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    .line 92
    .local v7, "result":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->processResponseResult(Ljava/lang/String;)Z

    move-result v5

    .line 97
    .end local v7    # "result":Ljava/lang/String;
    :goto_1
    const-string v8, "ReaperServerAddressQueryTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ServerAddress Query Success: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 103
    .end local v0    # "code":I
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :goto_2
    if-nez v5, :cond_0

    .line 104
    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;->configuration:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    const-string v9, "http://fsr.lenovomm.com"

    invoke-virtual {v8, v9}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->initReportAndConfigurationUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 94
    .restart local v0    # "code":I
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    :try_start_1
    const-string v8, "ReaperServerAddressQueryTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x40

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "query reaper server address fail, status code: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 98
    .end local v0    # "code":I
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "ReaperServerAddressQueryTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "query reaper server address fail. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 101
    invoke-virtual {v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    invoke-virtual {v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v8
.end method
