.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;
.super Ljava/lang/Object;
.source "Authenticator.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final KEY_CONNECTOR:Ljava/lang/String; = "connector"

.field private static final KEY_SESSION:Ljava/lang/String; = "session"

.field private static final TAG:Ljava/lang/String; = "Authenticator"


# instance fields
.field private config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

.field private connectorUri:Ljava/lang/String;

.field private httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

.field private lastConnector:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->$assertionsDisabled:Z

    .line 21
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;)V
    .locals 3
    .param p1, "config"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    .line 25
    const-string v1, "/v1/app/connector"

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->connectorUri:Ljava/lang/String;

    .line 126
    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->lastConnector:Ljava/util/Map;

    .line 29
    sget-boolean v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 31
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->clone()Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const-string v1, "Authenticator"

    const-string v2, "Config CloneNotSupportedException, set itself"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    goto :goto_0
.end method

.method private loginByLpsust(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;
    .locals 11
    .param p1, "realmId"    # Ljava/lang/String;
    .param p2, "lpsust"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "cacheKey":Ljava/lang/String;
    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->lastConnector:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    .line 55
    .local v1, "cachedConnector":Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;
    if-eqz v1, :cond_0

    .line 63
    .end local v1    # "cachedConnector":Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;
    :goto_0
    return-object v1

    .line 59
    .restart local v1    # "cachedConnector":Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;
    :cond_0
    const/4 v2, 0x0

    .line 61
    .local v2, "e":Ljava/lang/Exception;
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->makeLoginRequestBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "requestBody":Ljava/lang/String;
    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->httpMatchine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->connectorURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v9

    invoke-virtual {v8, v9, v6}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 63
    .local v7, "responseBody":Ljava/lang/String;
    invoke-direct {p0, v7, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->makeConnector(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    goto :goto_0

    .line 64
    .end local v6    # "requestBody":Ljava/lang/String;
    .end local v7    # "responseBody":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 65
    .local v5, "jse":Lorg/json/JSONException;
    move-object v2, v5

    .line 66
    const-string v8, "Authenticator"

    const-string v9, "Login by lpsust failed, server return wrong format content!"

    invoke-static {v8, v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .end local v5    # "jse":Lorg/json/JSONException;
    :goto_1
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    invoke-direct {v8, v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 67
    :catch_1
    move-exception v3

    .line 68
    .local v3, "hse":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;
    move-object v2, v3

    .line 69
    const-string v8, "Authenticator"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Login by lpsust failed, server response code: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;->getStatusCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 70
    .end local v3    # "hse":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;
    :catch_2
    move-exception v4

    .line 71
    .local v4, "ioe":Ljava/io/IOException;
    move-object v2, v4

    .line 72
    const-string v8, "Authenticator"

    const-string v9, "Login by lpsust failed, IOException "

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private makeConnector(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;
    .locals 5
    .param p1, "responseBody"    # Ljava/lang/String;
    .param p2, "cacheKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 79
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 80
    .local v2, "responseJson":Lorg/json/JSONObject;
    const-string v4, "connector"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "connectorId":Ljava/lang/String;
    const-string v4, "session"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, "sessionId":Ljava/lang/String;
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-direct {v0, v4, v1, v3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .local v0, "connector":Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->lastConnector:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 85
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->lastConnector:Ljava/util/Map;

    invoke-interface {v4, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-object v0
.end method

.method private makeLoginRequestBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "realmId"    # Ljava/lang/String;
    .param p2, "lpsust"    # Ljava/lang/String;

    .prologue
    .line 91
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 92
    .local v1, "requestJSON":Lorg/json/JSONObject;
    const-string v2, "developer_kid"

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getDeveloperKid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v2, "developer_key"

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getDeveloperKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v2, "app_id"

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v2, "app_spec_shape"

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getAppSpecShape()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v2, "user_credential"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lenovo_id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v2, "workspace"

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getWorkspace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 100
    .end local v1    # "requestJSON":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "jse":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexcepted JSONException occured !"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method protected connectorURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 3

    .prologue
    .line 123
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->getAirURIRoller()Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->connectorUri:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/CombineURIRoller;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)V

    return-object v0
.end method

.method public getConfig()Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    return-object v0
.end method

.method public getOperatorByLpsust(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;
    .locals 3
    .param p1, "realmId"    # Ljava/lang/String;
    .param p2, "lpsust"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->loginByLpsust(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;

    move-result-object v0

    .line 48
    .local v0, "connector":Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-direct {v1, v2, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;Lcom/lenovo/leos/cloud/lcp/file/pilot2/Connector;)V

    return-object v1
.end method

.method public setConfig(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;)V
    .locals 3
    .param p1, "config"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    .prologue
    .line 110
    sget-boolean v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {p1, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->lastConnector:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 114
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->clone()Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_1
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const-string v1, "Authenticator"

    const-string v2, "Config CloneNotSupportedException, set itself"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->config:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    goto :goto_0
.end method
