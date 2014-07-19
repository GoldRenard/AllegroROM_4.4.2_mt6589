.class public Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;
.super Ljava/lang/Object;
.source "ServerConfigManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServerConfigStorage"

.field private static final serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;


# instance fields
.field private addSessionIntervalConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/AddSessionIntervalConfig;

.field private compressConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/CompressConfig;

.field private context:Landroid/content/Context;

.field private deviceSendConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/SDKEnable;

.field private dispatchConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;

.field private eventNotSendConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/EventNotSendConfig;

.field private httpTimeoutConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/HttpTimeoutConfig;

.field private isForceUpdate:Z

.field private isUpdating:Z

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/lps/reaper/sdk/serverconfig/IServerConfig;",
            ">;"
        }
    .end annotation
.end field

.field private msgTaskConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/MsgTaskConfig;

.field private priorityConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/EventPriorityConfig;

.field private sessionTimeConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/SessionTimeConfig;

.field private timestampMills:J

.field private updateIntervalConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/UpdateIntervalConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/serverconfig/CompressConfig;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/CompressConfig;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->compressConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/CompressConfig;

    .line 33
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/serverconfig/SDKEnable;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/SDKEnable;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->deviceSendConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/SDKEnable;

    .line 34
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->dispatchConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;

    .line 35
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/serverconfig/HttpTimeoutConfig;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/HttpTimeoutConfig;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->httpTimeoutConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/HttpTimeoutConfig;

    .line 36
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/serverconfig/UpdateIntervalConfig;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/UpdateIntervalConfig;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->updateIntervalConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/UpdateIntervalConfig;

    .line 37
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/serverconfig/EventPriorityConfig;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/EventPriorityConfig;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->priorityConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/EventPriorityConfig;

    .line 38
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/serverconfig/EventNotSendConfig;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/EventNotSendConfig;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->eventNotSendConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/EventNotSendConfig;

    .line 39
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/serverconfig/SessionTimeConfig;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/SessionTimeConfig;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->sessionTimeConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/SessionTimeConfig;

    .line 40
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/serverconfig/MsgTaskConfig;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/MsgTaskConfig;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->msgTaskConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/MsgTaskConfig;

    .line 41
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/serverconfig/AddSessionIntervalConfig;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/AddSessionIntervalConfig;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->addSessionIntervalConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/AddSessionIntervalConfig;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->list:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method public static getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    return-object v0
.end method

.method private loadServerConfigFromPreferences()V
    .locals 10

    .prologue
    .line 159
    :try_start_0
    const-string v7, "ServerConfigStorage"

    const-string v8, "Loading Configuration From Preferences..."

    invoke-static {v7, v8}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->context:Landroid/content/Context;

    const-string v8, "reaper"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 162
    .local v4, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 163
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 164
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->tryAdd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "ServerConfigStorage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "load config from preferences error. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 166
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v4    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->context:Landroid/content/Context;

    const-string v8, "ConfigUpdate"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 168
    const-string v7, "LastUpdateTimestamp"

    const-wide/16 v8, 0x0

    invoke-interface {v4, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 170
    .local v5, "timestampMills":J
    invoke-virtual {p0, v5, v6}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->setTimestampMills(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public addConfigTask(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V
    .locals 3
    .param p1, "localConfig"    # Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .prologue
    .line 152
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;

    invoke-direct {v2, p1}, Lcom/lenovo/lps/reaper/sdk/task/ConfigurationUpdateTask;-><init>(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->addTask(ILjava/lang/Runnable;)V

    .line 155
    :cond_0
    return-void
.end method

.method public checkUpdateTimestamp()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    iget-boolean v4, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->isUpdating:Z

    if-eqz v4, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v2

    .line 96
    :cond_1
    iget-boolean v4, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->isForceUpdate:Z

    if-eqz v4, :cond_2

    move v2, v3

    .line 97
    goto :goto_0

    .line 99
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->timestampMills:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0x3c

    div-long v0, v4, v6

    .line 100
    .local v0, "interval":J
    const-wide/16 v4, 0x0

    cmp-long v4, v4, v0

    if-gtz v4, :cond_3

    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getUpdateInterval()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_0

    :cond_3
    move v2, v3

    .line 103
    goto :goto_0
.end method

.method public clearExistPreference()V
    .locals 4

    .prologue
    .line 107
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->context:Landroid/content/Context;

    const-string v2, "reaper"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 109
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 110
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->reset()V

    .line 111
    return-void
.end method

.method public getAddSessionIntervalMills()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->addSessionIntervalConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/AddSessionIntervalConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/AddSessionIntervalConfig;->getAddSessionInternalMills()I

    move-result v0

    return v0
.end method

.method public getHttpTimeoutMillis()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->httpTimeoutConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/HttpTimeoutConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/HttpTimeoutConfig;->getHttpTimeoutMillis()I

    move-result v0

    return v0
.end method

.method public getMsgTaskNeedElapsedTime()J
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->msgTaskConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/MsgTaskConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/MsgTaskConfig;->getTaskNeedElapsedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPriority(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->priorityConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/EventPriorityConfig;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/serverconfig/EventPriorityConfig;->getPriority(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    move-result-object v0

    return-object v0
.end method

.method public getThreshold(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)I
    .locals 1
    .param p1, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->dispatchConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->getThreshold(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)I

    move-result v0

    return v0
.end method

.method public getTimestampMills()J
    .locals 2

    .prologue
    .line 189
    iget-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->timestampMills:J

    return-wide v0
.end method

.method public getUpdateInterval()I
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->updateIntervalConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/UpdateIntervalConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/UpdateIntervalConfig;->getUpdateInterval()I

    move-result v0

    return v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->context:Landroid/content/Context;

    .line 58
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->compressConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/CompressConfig;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->deviceSendConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/SDKEnable;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->dispatchConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->httpTimeoutConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/HttpTimeoutConfig;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->updateIntervalConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/UpdateIntervalConfig;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->priorityConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/EventPriorityConfig;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->eventNotSendConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/EventNotSendConfig;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->sessionTimeConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/SessionTimeConfig;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->msgTaskConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/MsgTaskConfig;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->list:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->addSessionIntervalConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/AddSessionIntervalConfig;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->reset()V

    .line 69
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->loadServerConfigFromPreferences()V

    .line 70
    return-void
.end method

.method public isEnableMsg()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->msgTaskConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/MsgTaskConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/MsgTaskConfig;->isEnableMsg()Z

    move-result v0

    return v0
.end method

.method public isEnableSDK()Z
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->deviceSendConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/SDKEnable;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/SDKEnable;->isEnableSDK()Z

    move-result v0

    return v0
.end method

.method public isUpdating()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->isUpdating:Z

    return v0
.end method

.method public needCompress(I)Z
    .locals 1
    .param p1, "eventNum"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->compressConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/CompressConfig;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/serverconfig/CompressConfig;->needCompress(I)Z

    move-result v0

    return v0
.end method

.method public needReport(Ljava/lang/String;Ljava/lang/String;D)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "value"    # D

    .prologue
    .line 222
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->eventNotSendConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/EventNotSendConfig;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lenovo/lps/reaper/sdk/serverconfig/EventNotSendConfig;->needReport(Ljava/lang/String;Ljava/lang/String;D)Z

    move-result v0

    return v0
.end method

.method public needSessionTime()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->sessionTimeConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/SessionTimeConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/SessionTimeConfig;->needSessionTime()Z

    move-result v0

    return v0
.end method

.method public readyForReport(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)Z
    .locals 1
    .param p1, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->dispatchConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/serverconfig/DispatchConfig;->readyForReport(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 4

    .prologue
    .line 85
    const-string v2, "ServerConfigStorage"

    const-string v3, "ServerConfigStorage is Reset"

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/lps/reaper/sdk/serverconfig/IServerConfig;

    .line 87
    .local v0, "config":Lcom/lenovo/lps/reaper/sdk/serverconfig/IServerConfig;
    invoke-interface {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/IServerConfig;->reset()V

    goto :goto_0

    .line 89
    .end local v0    # "config":Lcom/lenovo/lps/reaper/sdk/serverconfig/IServerConfig;
    :cond_0
    return-void
.end method

.method public saveUpdateTimestamp()V
    .locals 7

    .prologue
    .line 139
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->context:Landroid/content/Context;

    const-string v3, "ConfigUpdate"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 141
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "LastUpdateTimestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 143
    .local v0, "editSucc":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->setTimestampMills(J)V

    .line 144
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->isTestMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    const-string v2, "ServerConfigStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Configuration Timestamp Has Saved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    const-string v2, "ServerConfigStorage"

    const-string v3, "Configuration Timestamp Save Failed."

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setForceUpdate(Z)V
    .locals 0
    .param p1, "isForceUpdate"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->isForceUpdate:Z

    .line 186
    return-void
.end method

.method public setTimestampMills(J)V
    .locals 3
    .param p1, "timestampMills"    # J

    .prologue
    .line 193
    const-string v0, "ServerConfigStorage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timestamp is set: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iput-wide p1, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->timestampMills:J

    .line 195
    return-void
.end method

.method public setUpdating(Z)V
    .locals 0
    .param p1, "isUpdating"    # Z

    .prologue
    .line 177
    iput-boolean p1, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->isUpdating:Z

    .line 178
    return-void
.end method

.method public tryAdd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "values"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v6, ","

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 74
    .local v5, "valueArray":[Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->list:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/lps/reaper/sdk/serverconfig/IServerConfig;

    .line 75
    .local v1, "config":Lcom/lenovo/lps/reaper/sdk/serverconfig/IServerConfig;
    invoke-interface {v1, p1}, Lcom/lenovo/lps/reaper/sdk/serverconfig/IServerConfig;->includeCategory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 76
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 77
    .local v4, "value":Ljava/lang/String;
    invoke-interface {v1, p1, v4}, Lcom/lenovo/lps/reaper/sdk/serverconfig/IServerConfig;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "config":Lcom/lenovo/lps/reaper/sdk/serverconfig/IServerConfig;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public updatePreference(Lorg/json/JSONArray;)V
    .locals 12
    .param p1, "jsonResult"    # Lorg/json/JSONArray;

    .prologue
    .line 114
    iget-object v9, p0, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->context:Landroid/content/Context;

    const-string v10, "reaper"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 116
    .local v7, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 117
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 118
    .local v5, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 120
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 121
    .local v6, "obj":Lorg/json/JSONObject;
    const-string v4, ""

    .line 122
    .local v4, "key":Ljava/lang/String;
    const-string v8, ""

    .line 123
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 124
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 125
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 127
    :cond_0
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 128
    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v9

    invoke-virtual {v9, v4, v8}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->tryAdd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "obj":Lorg/json/JSONObject;
    .end local v8    # "value":Ljava/lang/String;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Lorg/json/JSONException;
    const-string v9, "ServerConfigStorage"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 134
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    return-void
.end method
