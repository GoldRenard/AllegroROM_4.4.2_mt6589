.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;
.super Ljava/lang/Object;
.source "AppManagerImpl.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppManagerImpl"


# instance fields
.field private context:Landroid/content/Context;

.field private httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "httpMachine"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;->context:Landroid/content/Context;

    .line 34
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;->context:Landroid/content/Context;

    return-object v0
.end method

.method private buildNearSmsListReq(Z)Ljava/lang/String;
    .locals 8
    .param p1, "isShowDatalist"    # Z

    .prologue
    .line 139
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 141
    .local v3, "json":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;->context:Landroid/content/Context;

    const/4 v7, 0x0

    .line 140
    invoke-static {v6, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->localAppList(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v4

    .line 142
    .local v4, "localAppList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 143
    .local v1, "array":Lorg/json/JSONArray;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 146
    const-string v6, "applist"

    invoke-virtual {v3, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    const-string v6, "datalist"

    invoke-virtual {v3, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    move-object v5, v3

    .line 153
    .local v5, "requestBody":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 143
    .end local v5    # "requestBody":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;

    .line 144
    .local v0, "appInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;
    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;->asJson()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 149
    .end local v0    # "appInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v3    # "json":Lorg/json/JSONObject;
    .end local v4    # "localAppList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;>;"
    :catch_0
    move-exception v2

    .line 150
    .local v2, "e":Lorg/json/JSONException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unexcepted JSONException occured"

    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private fillBackupedApp2CategoryList(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;Ljava/util/Map;)V
    .locals 1
    .param p1, "checksumResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;",
            "Ljava/util/Map",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "categoryAppList":Ljava/util/Map;, "Ljava/util/Map<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;>;"
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl$1;

    invoke-direct {v0, p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;->traverseAppBackuped(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse$Visitor;)V

    .line 77
    return-void
.end method

.method private fillExistApp2CategoryList(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;Ljava/util/Map;)V
    .locals 1
    .param p1, "checksumResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;",
            "Ljava/util/Map",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p2, "categoryAppList":Ljava/util/Map;, "Ljava/util/Map<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;>;"
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl$3;

    invoke-direct {v0, p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl$3;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;->traverseAppExist(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse$Visitor;)V

    .line 128
    return-void
.end method

.method private fillNoExistApp2CategoryList(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;Ljava/util/Map;)V
    .locals 1
    .param p1, "checksumResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;",
            "Ljava/util/Map",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, "categoryAppList":Ljava/util/Map;, "Ljava/util/Map<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;>;"
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl$2;

    invoke-direct {v0, p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl$2;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;Ljava/util/Map;)V

    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;->traverseAppNotExist(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse$Visitor;)V

    .line 103
    return-void
.end method

.method private getAppChecksumResp(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;
    .locals 4
    .param p1, "req"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;->context:Landroid/content/Context;

    const-string v3, "v3/backupcheck"

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/AppUtil;->getAppURIRoller(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v1

    .line 132
    .local v1, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/AppUtil;->getBytes(Ljava/lang/Object;)[B

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[B)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "respStr":Ljava/lang/String;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;

    invoke-direct {v2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private parseAppListForResp(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;)Ljava/util/Map;
    .locals 1
    .param p1, "checksumResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v0, "categoryAppList":Ljava/util/Map;, "Ljava/util/Map<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;>;"
    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;->fillExistApp2CategoryList(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;Ljava/util/Map;)V

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;->fillNoExistApp2CategoryList(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;Ljava/util/Map;)V

    .line 50
    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;->fillBackupedApp2CategoryList(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;Ljava/util/Map;)V

    .line 51
    return-object v0
.end method


# virtual methods
.method public queryCheksumAppList(Z)Ljava/util/Map;
    .locals 3
    .param p1, "isShowDatalist"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;->buildNearSmsListReq(Z)Ljava/lang/String;

    move-result-object v1

    .line 41
    .local v1, "request":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;->getAppChecksumResp(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;

    move-result-object v0

    .line 42
    .local v0, "checksumResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/manage/AppManagerImpl;->parseAppListForResp(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/AppChecksumResponse;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method
