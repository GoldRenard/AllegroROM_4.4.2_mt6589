.class public final Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;
.super Ljava/lang/Object;
.source "ConfigurationUpdateTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final CONFIG_URL:Ljava/lang/String; = "%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%d\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s"

.field private static final TAG:Ljava/lang/String; = "ConfigurationUpdateTask"


# instance fields
.field private final cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

.field private retryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

.field private serverConfigManager:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;


# direct methods
.method public constructor <init>(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V
    .locals 2
    .param p1, "configuration"    # Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->serverConfigManager:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    .line 57
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0, v1, v1}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->retryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    .line 60
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .line 61
    return-void
.end method

.method private check()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 110
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getConfigUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 111
    const-string v1, "ConfigurationUpdateTask"

    const-string v2, "server url is null."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :goto_0
    return v0

    .line 114
    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->isOnline()Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    const-string v1, "ConfigurationUpdateTask"

    const-string v2, "network is not ok."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private processResponseResult(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 123
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "jsonResult":Lorg/json/JSONArray;
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->clearExistPreference()V

    .line 125
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->updatePreference(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v1    # "jsonResult":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ConfigurationUpdateTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process response fail. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    .line 65
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->check()Z

    move-result v8

    if-nez v8, :cond_0

    .line 107
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->serverConfigManager:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    invoke-virtual {v8, v9}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->setUpdating(Z)V

    .line 69
    const-string v8, "ConfigurationUpdateTask"

    const-string v9, "add configuration update task."

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v8, "ConfigurationUpdateTask"

    iget-object v9, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getConfigUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 73
    .local v5, "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :try_start_0
    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->retryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-virtual {v5, v8}, Lorg/apache/http/impl/client/AbstractHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 74
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 75
    .local v3, "httpParams":Lorg/apache/http/params/HttpParams;
    const-string v8, "http.connection.timeout"

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getHttpTimeoutMillis()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 77
    const-string v8, "http.socket.timeout"

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getHttpTimeoutMillis()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 79
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    .line 80
    .local v4, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    const-string v8, "%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%d\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s"

    const/16 v9, 0xe

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget-object v11, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$ConfigType;->Config:Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$ConfigType;

    invoke-virtual {v11}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getSdkVersion()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getDeviceIdType()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    iget-object v11, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getApplicationToken()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x5

    iget-object v11, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getVersionName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    iget-object v11, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getVersionCode()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x7

    iget-object v11, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getChannel()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    iget-object v11, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getOsVersion()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x9

    iget-object v11, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getLanguage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xa

    iget-object v11, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getCountry()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xb

    iget-object v11, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getDeviceModel()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xc

    iget-object v11, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getManufacture()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xd

    iget-object v11, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v11}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getResolution()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "data":Ljava/lang/String;
    new-instance v8, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v8, v1}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 85
    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getConfigUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 86
    const-string v8, "Host"

    iget-object v9, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getReaperServerhost()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Lorg/apache/http/message/AbstractHttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4, v3}, Lorg/apache/http/message/AbstractHttpMessage;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 88
    invoke-virtual {v5, v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

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

    if-ne v0, v8, :cond_1

    .line 91
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    .line 93
    .local v7, "result":Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->processResponseResult(Ljava/lang/String;)V

    .line 94
    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->serverConfigManager:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->saveUpdateTimestamp()V

    .line 95
    const-string v8, "ConfigurationUpdateTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ConfigUpdate Success: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v7    # "result":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->serverConfigManager:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    invoke-virtual {v8, v12}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->setUpdating(Z)V

    .line 104
    invoke-virtual {v5}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_0

    .line 97
    :cond_1
    :try_start_1
    const-string v8, "ConfigurationUpdateTask"

    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v10, 0x40

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Get configuration fail, status code: "

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

    .line 100
    .end local v0    # "code":I
    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v4    # "httpPost":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v2

    .line 101
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v8, "ConfigurationUpdateTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Get configuration fail. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->serverConfigManager:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    invoke-virtual {v8, v12}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->setUpdating(Z)V

    .line 104
    invoke-virtual {v5}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_0

    .line 103
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    iget-object v9, p0, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;->serverConfigManager:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    invoke-virtual {v9, v12}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->setUpdating(Z)V

    .line 104
    invoke-virtual {v5}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v8
.end method
