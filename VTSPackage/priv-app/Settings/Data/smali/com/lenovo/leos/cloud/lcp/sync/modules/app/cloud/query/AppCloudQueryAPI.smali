.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;
.super Ljava/lang/Object;
.source "AppCloudQueryAPI.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppCloudQueryAPI"

.field private static queryAPIInstance:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;


# instance fields
.field private context:Landroid/content/Context;

.field private lastError:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

.field private machine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lenovoId"    # Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;->machine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    .line 35
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;->lastError:Ljava/lang/ThreadLocal;

    .line 38
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;->lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    .line 40
    return-void
.end method

.method private appChecksum(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupCheckResult;
    .locals 7
    .param p1, "request"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;->lastError:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    .line 87
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getAppServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "v3/backupcheck"

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;->lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    const-string v6, "contact.cloud.lps.lenovo.com"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 88
    .local v2, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;->machine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v3, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "responseString":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, "respJson":Lorg/json/JSONObject;
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupCheckResult;

    invoke-direct {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupCheckResult;-><init>()V

    invoke-virtual {v3, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupCheckResult;->parse(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/HttpResult;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupCheckResult;

    return-object v3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const-class v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;->queryAPIInstance:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;

    if-nez v1, :cond_0

    .line 51
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v0

    .line 52
    .local v0, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;)V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;->queryAPIInstance:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;

    .line 54
    .end local v0    # "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    :cond_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;->queryAPIInstance:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    .line 50
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public backupCheck()Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupCheckResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;->backupCheck(Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupCheckResult;

    move-result-object v0

    return-object v0
.end method

.method public backupCheck(Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupCheckResult;
    .locals 8
    .param p1, "isCheckAppData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v2, 0x0

    .line 68
    .local v2, "data":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 69
    .local v4, "json":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;->context:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->localAppList(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v5

    .line 70
    .local v5, "localAppList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 71
    .local v1, "array":Lorg/json/JSONArray;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 74
    const-string v6, "applist"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v6, "datalist"

    invoke-virtual {v4, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 76
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    const-string v6, "AppCloudQueryAPI"

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;->appChecksum(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupCheckResult;

    move-result-object v6

    return-object v6

    .line 71
    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;

    .line 72
    .local v0, "appInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;
    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;->asJson()Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    .end local v0    # "appInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v5    # "localAppList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;>;"
    :catch_0
    move-exception v3

    .line 80
    .local v3, "e":Lorg/json/JSONException;
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Unexcepted JSONException occured"

    invoke-direct {v6, v7, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getLastError()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/query/AppCloudQueryAPI;->lastError:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method
