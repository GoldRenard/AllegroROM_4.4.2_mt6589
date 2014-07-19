.class public Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;
.super Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;
.source "NetworkEventSaveTask.java"


# instance fields
.field private detectType:Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

.field private detectUrl:Ljava/lang/String;

.field private serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;-><init>()V

    return-void
.end method

.method private genDomainDetectEvent(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/Event;
    .locals 12
    .param p1, "testDomain"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/api/Event;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getApplicationToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__DETECT__"

    sget-object v3, Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;->Domain:Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "getprop"

    const-string v5, "dns"

    invoke-static {v4, v5}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->execCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/high16 v5, 0x3ff0000000000000L

    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getUserId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getUserIdClass()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    const-string v10, "__DETECT__"

    sget-object v11, Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;->Domain:Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

    invoke-virtual {v11}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getPriority(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    move-result-object v9

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->genDomainDetectEventParam(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/lenovo/lps/reaper/sdk/api/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    return-object v0
.end method

.method private genDomainDetectEventParam(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    .locals 8
    .param p1, "testDomain"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 36
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 37
    .local v0, "param":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 38
    new-instance v1, Ljava/lang/String;

    const-string v2, "ping -c 3 %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, p1, v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 40
    const/4 v1, 0x2

    const-string v2, "www.baidu.com"

    new-instance v3, Ljava/lang/String;

    const-string v4, "ping -c 3 %s"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "www.baidu.com"

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->execCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 45
    const/4 v1, 0x3

    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->domainResolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 46
    const/4 v1, 0x4

    const-string v2, "www.baidu.com"

    const-string v3, "www.baidu.com"

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->domainResolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 48
    :cond_0
    return-object v0
.end method

.method private genHttpDetectEvent(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/Event;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 52
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/api/Event;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getApplicationToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__DETECT__"

    sget-object v3, Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;->Http:Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-wide/high16 v5, 0x3ff0000000000000L

    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v7}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getUserId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v8}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getUserIdClass()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    const-string v10, "__DETECT__"

    sget-object v11, Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;->Http:Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

    invoke-virtual {v11}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getPriority(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    move-result-object v9

    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->genHttpDetectEventParam(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object v10

    invoke-direct/range {v0 .. v10}, Lcom/lenovo/lps/reaper/sdk/api/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    return-object v0
.end method

.method private genHttpDetectEventParam(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    .locals 4
    .param p1, "testHttpUri"    # Ljava/lang/String;

    .prologue
    .line 59
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 60
    .local v0, "param":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 61
    const/4 v1, 0x1

    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->getHttpResponseCode(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 62
    const/4 v1, 0x2

    const-string v2, "www.baidu.com"

    const-string v3, "www.baidu.com"

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->getHttpResponseCode(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 65
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected processEvent()V
    .locals 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->detectType:Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;->Domain:Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->detectUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->genDomainDetectEvent(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->event:Lcom/lenovo/lps/reaper/sdk/api/Event;

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->event:Lcom/lenovo/lps/reaper/sdk/api/Event;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->check()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    :cond_0
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->detectUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->genHttpDetectEvent(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/api/Event;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->event:Lcom/lenovo/lps/reaper/sdk/api/Event;

    goto :goto_0
.end method

.method public setDetectType(Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;)V
    .locals 0
    .param p1, "detectType"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->detectType:Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

    .line 78
    return-void
.end method

.method public setDetectUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "detectUrl"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->detectUrl:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setServerConfig(Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;)V
    .locals 0
    .param p1, "serverConfig"    # Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    .line 70
    return-void
.end method
