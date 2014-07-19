.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;
.super Ljava/lang/Object;
.source "Connector.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final TAG:Ljava/lang/String; = "Connector"


# instance fields
.field private config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

.field private connectorId:Ljava/lang/String;

.field private httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

.field private lastSessionId:Ljava/lang/String;

.field private sessionUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->$assertionsDisabled:Z

    .line 19
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;Ljava/lang/String;)V
    .locals 1
    .param p1, "config"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;
    .param p2, "connectorId"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "/v1/app/session"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->sessionUri:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    .line 34
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 35
    :cond_0
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    .line 37
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->connectorId:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "config"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;
    .param p2, "connectorId"    # Ljava/lang/String;
    .param p3, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "/v1/app/session"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->sessionUri:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    .line 41
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 42
    :cond_0
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    .line 45
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->connectorId:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->lastSessionId:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private makeSessionRequestBody()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 94
    .local v1, "requestJson":Lorg/json/JSONObject;
    const-string v2, "developer_kid"

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getDeveloperKid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v2, "developer_key"

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getDeveloperKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v2, "connector"

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->connectorId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 99
    .end local v1    # "requestJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "jse":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexcepted JSONException occured !"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public getConnectorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->connectorId:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->lastSessionId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->getSessionId(Z)Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->lastSessionId:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSessionId(Z)Ljava/lang/String;
    .locals 9
    .param p1, "forceFresh"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->lastSessionId:Ljava/lang/String;

    .line 76
    :goto_0
    return-object v6

    .line 65
    :cond_0
    const/4 v0, 0x0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 68
    .local v1, "httpResponse":Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->makeSessionRequestBody()Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "requestBody":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->sessionURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-virtual {v6, v7, v5, v8}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 70
    const-string v6, "Location"

    invoke-interface {v1, v6}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v4

    .line 71
    .local v4, "locationHeader":Lorg/apache/http/Header;
    if-eqz v4, :cond_1

    .line 72
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->lastSessionId:Ljava/lang/String;

    .line 76
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->lastSessionId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :try_start_1
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->recycleHttpResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v3

    .line 84
    .local v3, "ioe2":Ljava/io/IOException;
    const-string v7, "Connector"

    const-string v8, "Unexcepted IOException occurs"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 74
    .end local v3    # "ioe2":Ljava/io/IOException;
    :cond_1
    :try_start_2
    new-instance v6, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    const-string v7, "Server don\'t resturn session info, can\'t find \"Location\" header!"

    invoke-direct {v6, v7}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    .end local v4    # "locationHeader":Lorg/apache/http/Header;
    .end local v5    # "requestBody":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 78
    .local v2, "ioe":Ljava/io/IOException;
    move-object v0, v2

    .line 79
    :try_start_3
    const-string v6, "Connector"

    const-string v7, "getSessionId failed, IOException "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 82
    :try_start_4
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->recycleHttpResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 88
    :goto_1
    new-instance v6, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    invoke-direct {v6, v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/Exception;)V

    throw v6

    .line 83
    :catch_2
    move-exception v3

    .line 84
    .restart local v3    # "ioe2":Ljava/io/IOException;
    const-string v6, "Connector"

    const-string v7, "Unexcepted IOException occurs"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 80
    .end local v2    # "ioe":Ljava/io/IOException;
    .end local v3    # "ioe2":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 82
    :try_start_5
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->recycleHttpResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 86
    :goto_2
    throw v6

    .line 83
    :catch_3
    move-exception v3

    .line 84
    .restart local v3    # "ioe2":Ljava/io/IOException;
    const-string v7, "Connector"

    const-string v8, "Unexcepted IOException occurs"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method protected sessionURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getAirURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;->sessionUri:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)V

    return-object v0
.end method
