.class public Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;
.super Ljava/lang/Object;
.source "EventReportHandler.java"


# static fields
.field private static final ADDITION_EVENT_FORMAT_PRE:Ljava/lang/String; = "\u0001%s\u0001%s\u0001%d"

.field private static final EVENT_FORMAT_PRE:Ljava/lang/String; = "%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%d\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001"

.field private static final TAG:Ljava/lang/String; = "EventReportHandler"


# instance fields
.field private cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

.field private data:Ljava/lang/StringBuilder;

.field private isReportSucc:Z

.field private isReporting:Z

.field private retryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

.field private unknownHostExceptionTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->data:Ljava/lang/StringBuilder;

    .line 52
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-direct {v0, v2, v2}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->retryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    return-void
.end method

.method private getHeader(Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;)Ljava/lang/String;
    .locals 2
    .param p1, "headerType"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u0001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPrefix()Ljava/lang/String;
    .locals 4

    .prologue
    .line 132
    const-string v0, "%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%d\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001%s\u0001"

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getDeviceIdType()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getApplicationToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getVersionName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getVersionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getChannel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getOsVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getLanguage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getCountry()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getManufacture()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getResolution()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private postFile([BLjava/lang/String;)V
    .locals 12
    .param p1, "data"    # [B
    .param p2, "serverContext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    if-eqz p1, :cond_0

    array-length v9, p1

    if-nez v9, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 143
    .local v2, "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    const/4 v3, 0x0

    .line 145
    .local v3, "httppost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local v3    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .local v4, "httppost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v5, p1}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 147
    .local v5, "reqEntity":Lorg/apache/http/entity/ByteArrayEntity;
    const-string v9, "binary/octet-stream"

    invoke-virtual {v5, v9}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v4, v5}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 149
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 150
    .local v1, "httpParams":Lorg/apache/http/params/HttpParams;
    const-string v9, "http.socket.timeout"

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getHttpTimeoutMillis()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 152
    invoke-virtual {v4, v1}, Lorg/apache/http/message/AbstractHttpMessage;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 153
    iget-object v9, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->retryHandler:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    invoke-virtual {v2, v9}, Lorg/apache/http/impl/client/AbstractHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 154
    invoke-virtual {v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v9

    const-string v10, "http.protocol.version"

    sget-object v11, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-interface {v9, v10, v11}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 155
    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v7

    .line 156
    .local v7, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    .line 157
    .local v6, "resEntity":Lorg/apache/http/HttpEntity;
    if-eqz v6, :cond_2

    .line 158
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 160
    :cond_2
    invoke-interface {v7}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    const/16 v10, 0xc8

    if-eq v9, v10, :cond_3

    .line 161
    new-instance v9, Ljava/lang/Exception;

    const-string v10, "response is not ok!"

    invoke-direct {v9, v10}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    .end local v1    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v5    # "reqEntity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v6    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v8

    move-object v3, v4

    .line 164
    .end local v4    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v3    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .local v8, "uhe":Ljava/net/UnknownHostException;
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->processUnknownHostException(Ljava/lang/String;)V

    .line 165
    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    .end local v8    # "uhe":Ljava/net/UnknownHostException;
    :catchall_0
    move-exception v9

    :goto_2
    invoke-virtual {v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v9

    .end local v3    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v1    # "httpParams":Lorg/apache/http/params/HttpParams;
    .restart local v4    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v5    # "reqEntity":Lorg/apache/http/entity/ByteArrayEntity;
    .restart local v6    # "resEntity":Lorg/apache/http/HttpEntity;
    .restart local v7    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    invoke-virtual {v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto/16 :goto_0

    .line 166
    .end local v1    # "httpParams":Lorg/apache/http/params/HttpParams;
    .end local v4    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "reqEntity":Lorg/apache/http/entity/ByteArrayEntity;
    .end local v6    # "resEntity":Lorg/apache/http/HttpEntity;
    .end local v7    # "response":Lorg/apache/http/HttpResponse;
    .restart local v3    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    :catch_1
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v4    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v3    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_2

    .line 166
    .end local v3    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v4    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .restart local v3    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    goto :goto_3

    .line 163
    :catch_3
    move-exception v8

    goto :goto_1
.end method

.method private processUnknownHostException(Ljava/lang/String;)V
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    const-string v1, "http://223.202.19.39"

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->initReportAndConfigurationUrl(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->unknownHostExceptionTime:Ljava/lang/Long;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->unknownHostExceptionTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 176
    :cond_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackDomainDetectEvent(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->unknownHostExceptionTime:Ljava/lang/Long;

    .line 179
    :cond_1
    return-void
.end method

.method private sendCompressData([Lcom/lenovo/lps/reaper/sdk/api/Event;)V
    .locals 12
    .param p1, "events"    # [Lcom/lenovo/lps/reaper/sdk/api/Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 107
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->data:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6, v11, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 108
    move-object v0, p1

    .local v0, "arr$":[Lcom/lenovo/lps/reaper/sdk/api/Event;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v0, v4

    .line 109
    .local v3, "event":Lcom/lenovo/lps/reaper/sdk/api/Event;
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->data:Ljava/lang/StringBuilder;

    sget-object v7, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;->KLog:Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;

    invoke-direct {p0, v7}, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->getHeader(Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->data:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/api/Event;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->data:Ljava/lang/StringBuilder;

    const-string v7, "\u0001%s\u0001%s\u0001%d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getAssignedDeviceId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getImsi()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getNetSubType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->data:Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 116
    .end local v3    # "event":Lcom/lenovo/lps/reaper/sdk/api/Event;
    :cond_0
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "dataStr":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->isTestMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 118
    const-string v6, "EventReportHandler"

    invoke-static {v6, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_1
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->compress([B)[B

    move-result-object v1

    .line 121
    .local v1, "bytes":[B
    const-string v6, "EventReportHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bytes length after compress: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v6, "EventReportHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "events length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v6, "EventReportHandler"

    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getReportWithCompressUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getReportWithCompressUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->postFile([BLjava/lang/String;)V

    .line 125
    return-void
.end method

.method private sendNormalData([Lcom/lenovo/lps/reaper/sdk/api/Event;)V
    .locals 12
    .param p1, "events"    # [Lcom/lenovo/lps/reaper/sdk/api/Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 86
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->data:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v6, v11, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 87
    move-object v0, p1

    .local v0, "arr$":[Lcom/lenovo/lps/reaper/sdk/api/Event;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v0, v4

    .line 88
    .local v3, "event":Lcom/lenovo/lps/reaper/sdk/api/Event;
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->data:Ljava/lang/StringBuilder;

    sget-object v7, Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;->KLog:Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;

    invoke-direct {p0, v7}, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->getHeader(Lcom/lenovo/lps/reaper/sdk/util/Constants$TaskHeaderType$EventType;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->data:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/api/Event;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->data:Ljava/lang/StringBuilder;

    const-string v7, "\u0001%s\u0001%s\u0001%d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v9}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getAssignedDeviceId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getImsi()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-virtual {v3}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getNetSubType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->data:Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 95
    .end local v3    # "event":Lcom/lenovo/lps/reaper/sdk/api/Event;
    :cond_0
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "dataStr":Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->isTestMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 97
    const-string v6, "EventReportHandler"

    invoke-static {v6, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 100
    .local v1, "bytes":[B
    const-string v6, "EventReportHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no compress: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v6, "EventReportHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "events length: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->data:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v6, "EventReportHandler"

    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getReportUrl()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getReportUrl()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->postFile([BLjava/lang/String;)V

    .line 104
    return-void
.end method


# virtual methods
.method public isReportSucc()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->isReportSucc:Z

    return v0
.end method

.method public isReporting()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->isReporting:Z

    return v0
.end method

.method public postEvents([Lcom/lenovo/lps/reaper/sdk/api/Event;)I
    .locals 6
    .param p1, "events"    # [Lcom/lenovo/lps/reaper/sdk/api/Event;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    iput-boolean v3, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->isReporting:Z

    .line 59
    iput-boolean v2, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->isReportSucc:Z

    .line 60
    const-string v3, "EventReportHandler"

    const-string v4, "in postEvents"

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    if-nez p1, :cond_0

    move v1, v2

    .line 79
    :goto_0
    return v1

    .line 64
    :cond_0
    array-length v1, p1

    .line 66
    .local v1, "postLength":I
    :try_start_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v3

    array-length v4, p1

    invoke-virtual {v3, v4}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->needCompress(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 67
    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->sendCompressData([Lcom/lenovo/lps/reaper/sdk/api/Event;)V

    .line 71
    :goto_1
    const-string v3, "EventReportHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "events number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v3, "EventReportHandler"

    const-string v4, "post finished."

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->isReportSucc:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iput-boolean v2, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->isReporting:Z

    goto :goto_0

    .line 69
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->sendNormalData([Lcom/lenovo/lps/reaper/sdk/api/Event;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "EventReportHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception when post events. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    iput-boolean v2, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->isReporting:Z

    move v1, v2

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iput-boolean v2, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->isReporting:Z

    throw v3
.end method

.method public setConfiguration(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V
    .locals 0
    .param p1, "configuration"    # Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->cfg:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .line 183
    return-void
.end method
