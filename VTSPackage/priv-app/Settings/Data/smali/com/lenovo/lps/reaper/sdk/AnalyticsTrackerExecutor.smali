.class public Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;
.super Ljava/lang/Object;
.source "AnalyticsTrackerExecutor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnalyticsTracker"

.field private static final tracker:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;


# instance fields
.field private final appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

.field private applicationContext:Landroid/content/Context;

.field private final builder:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

.field private eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

.field private initializeMode:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

.field private isReport:Z

.field private localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

.field private oldVersionParams:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

.field private serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

.field private taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->tracker:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    .line 45
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->isReport:Z

    .line 58
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;->Normal:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->initializeMode:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    .line 426
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->oldVersionParams:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    .line 64
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->builder:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;Ljava/lang/Throwable;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackThrowable(Ljava/lang/Throwable;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->applicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;
    .param p1, "x1"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->combinePermissions(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;)Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    return-object v0
.end method

.method private addCfgTask()V
    .locals 2

    .prologue
    .line 305
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->isUpdating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->checkUpdateTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->addConfigTask(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V

    .line 310
    :cond_0
    return-void
.end method

.method private addEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
    .locals 12
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # D
    .param p6, "param"    # Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    .param p7, "sync"    # Z

    .prologue
    .line 319
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->isEnableSDK()Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->clearParam()V

    .line 343
    :goto_0
    return-void

    .line 323
    :cond_0
    const/4 v10, 0x0

    .line 324
    .local v10, "paramMapTmp":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    if-nez p6, :cond_1

    .line 325
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->oldVersionParams:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->clone()Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object v10

    .line 326
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->clearParam()V

    .line 330
    :goto_1
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getPriority(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    move-result-object v9

    .line 331
    .local v9, "prio":Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/api/Event;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getApplicationToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getUserId()Ljava/lang/String;

    move-result-object v7

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getUserIdClass()Ljava/lang/String;

    move-result-object v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v10}, Lcom/lenovo/lps/reaper/sdk/api/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;Lcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    .line 333
    .local v0, "event":Lcom/lenovo/lps/reaper/sdk/api/Event;
    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/api/Event;->check()Z

    move-result v1

    if-nez v1, :cond_2

    .line 334
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->clearParam()V

    goto :goto_0

    .line 328
    .end local v0    # "event":Lcom/lenovo/lps/reaper/sdk/api/Event;
    .end local v9    # "prio":Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;
    :cond_1
    invoke-virtual/range {p6 .. p6}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->clone()Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    move-result-object v10

    goto :goto_1

    .line 337
    .restart local v0    # "event":Lcom/lenovo/lps/reaper/sdk/api/Event;
    .restart local v9    # "prio":Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;
    :cond_2
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    invoke-virtual {v1, v0}, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->genEventSaveTask(Lcom/lenovo/lps/reaper/sdk/api/Event;)Ljava/lang/Runnable;

    move-result-object v11

    .line 338
    .local v11, "task":Ljava/lang/Runnable;
    if-eqz p7, :cond_3

    .line 339
    invoke-interface {v11}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 341
    :cond_3
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v11}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->addTask(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private addMsgTask()V
    .locals 2

    .prologue
    .line 313
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/message/MsgManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->addMsgTask(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V

    .line 316
    :cond_0
    return-void
.end method

.method private addSessionVisits()V
    .locals 3

    .prologue
    .line 417
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$3;

    invoke-direct {v2, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$3;-><init>(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->addTask(ILjava/lang/Runnable;)V

    .line 422
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->recordAddSessionVisits()V

    .line 423
    return-void
.end method

.method private addTrackInstalledAppTask(Z)V
    .locals 3
    .param p1, "includeSystemApp"    # Z

    .prologue
    .line 382
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$2;

    invoke-direct {v2, p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$2;-><init>(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->addTask(ILjava/lang/Runnable;)V

    .line 414
    return-void
.end method

.method private clearParam()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->oldVersionParams:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->clear()V

    .line 434
    return-void
.end method

.method private combinePermissions(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "info"    # Landroid/content/pm/PackageInfo;

    .prologue
    const/16 v2, 0x14

    .line 291
    iget-object v4, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v4, :cond_0

    .line 292
    const/4 v4, 0x0

    .line 301
    :goto_0
    return-object v4

    .line 294
    :cond_0
    iget-object v3, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 295
    .local v3, "permissions":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v4, 0x190

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 296
    .local v0, "formatPermissions":Ljava/lang/StringBuilder;
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 298
    .local v2, "length":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 299
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 296
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_1
    array-length v2, v3

    goto :goto_1

    .line 301
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method static getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->tracker:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    return-object v0
.end method

.method private declared-synchronized initialize()V
    .locals 4

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->isReport:Z

    if-nez v1, :cond_0

    .line 95
    const-string v1, "AnalyticsTracker"

    const-string v2, "Disabled Report"

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 111
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->recordInitialize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :goto_0
    monitor-exit p0

    return-void

    .line 98
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->isInitialized()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    :try_start_3
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->recordInitialize()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 101
    :cond_1
    :try_start_4
    const-string v1, "AnalyticsTracker"

    const-string v2, "AnalyticsTracker is Initializing................."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->builder:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initialize(Landroid/content/Context;)V

    .line 103
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->postInitialize()V

    .line 104
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->setUncaughtExceptionHandler()V

    .line 105
    const-string v1, "AnalyticsTracker"

    const-string v2, "AnalyticsTracker is Initialized................."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 111
    :try_start_5
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->recordInitialize()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    const-string v1, "AnalyticsTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "some error occured when initital AnalyticsTracker. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v1, "AnalyticsTracker"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->disableReport()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 111
    :try_start_7
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->recordInitialize()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->recordInitialize()V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private postInitialize()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->builder:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->getConfiguration()Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .line 117
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->builder:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->getEventStorage()Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    .line 118
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->builder:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->getTaskFactory()Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    .line 119
    return-void
.end method

.method private setUncaughtExceptionHandler()V
    .locals 2

    .prologue
    .line 278
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 279
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 280
    .local v0, "defaultHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$1;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$1;-><init>(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 288
    .end local v0    # "defaultHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :cond_0
    return-void
.end method

.method private trackInitial()V
    .locals 13

    .prologue
    const-wide/16 v0, 0x0

    .line 346
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->applicationContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->saveTrafficNumber(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;

    move-result-object v10

    .line 347
    .local v10, "traffic":Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;
    const-wide/16 v8, 0x0

    .line 348
    .local v8, "rxTraffic":J
    const-wide/16 v11, 0x0

    .line 349
    .local v11, "txTraffic":J
    if-eqz v10, :cond_0

    .line 350
    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->getRxBytes()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->getRxBytes()J

    move-result-wide v8

    .line 351
    :goto_0
    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->getTxBytes()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    invoke-virtual {v10}, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->getTxBytes()J

    move-result-wide v11

    .line 353
    :cond_0
    :goto_1
    const-string v1, "__INITIAL__"

    const-string v2, "initial"

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    long-to-double v4, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    .line 354
    return-void

    :cond_1
    move-wide v8, v0

    .line 350
    goto :goto_0

    :cond_2
    move-wide v11, v0

    .line 351
    goto :goto_1
.end method

.method private trackThrowable(Ljava/lang/Throwable;I)V
    .locals 16
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "flag"    # I

    .prologue
    .line 357
    if-eqz p1, :cond_0

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_2

    .line 359
    :cond_0
    const-string v1, "AnalyticsTracker"

    const-string v2, "action of throwable event should not be null or empty. OR flag is not appropriate"

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :cond_1
    :goto_0
    return-void

    .line 362
    :cond_2
    move-object/from16 v14, p1

    .line 363
    .local v14, "thr":Ljava/lang/Throwable;
    :goto_1
    invoke-virtual {v14}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 364
    invoke-virtual {v14}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    goto :goto_1

    .line 366
    :cond_3
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, "thrName":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v15

    .line 368
    .local v15, "thrMsg":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    new-instance v13, Ljava/lang/StringBuilder;

    const/16 v1, 0x1000

    invoke-direct {v13, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 372
    .local v13, "stack":Ljava/lang/StringBuilder;
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v14}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    .local v9, "arr$":[Ljava/lang/StackTraceElement;
    array-length v12, v9

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_2
    if-ge v11, v12, :cond_4

    aget-object v10, v9, v11

    .line 374
    .local v10, "e":Ljava/lang/StackTraceElement;
    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 377
    .end local v10    # "e":Ljava/lang/StackTraceElement;
    :cond_4
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0xe10

    if-lt v1, v2, :cond_5

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v5, 0xe10

    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 378
    .local v4, "thrStack":Ljava/lang/String;
    :goto_3
    const-string v2, "__THROWABLE__"

    move/from16 v0, p2

    int-to-double v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    goto/16 :goto_0

    .line 377
    .end local v4    # "thrStack":Ljava/lang/String;
    :cond_5
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3
.end method


# virtual methods
.method addUploadMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "msgHead"    # Ljava/lang/String;
    .param p2, "msgBody"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->initialize()V

    .line 234
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->genMessageSaveTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->addTask(ILjava/lang/Runnable;)V

    .line 236
    return-void
.end method

.method disableReport()V
    .locals 1

    .prologue
    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->isReport:Z

    .line 240
    return-void
.end method

.method dispatch()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 259
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->isReport:Z

    if-nez v0, :cond_1

    .line 260
    const-string v0, "AnalyticsTracker"

    const-string v1, "Disabled Report"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 264
    const-string v0, "AnalyticsTracker"

    const-string v1, "not initialize."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->isCustomDispatch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;->LV0:Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->genEventReportTask(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->addTask(ILjava/lang/Runnable;)V

    .line 270
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    sget-object v2, Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;->LV1:Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->genEventReportTask(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->addTask(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method initialize(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->applicationContext:Landroid/content/Context;

    .line 85
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->initializeMode:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;->Normal:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    if-ne v0, v1, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->initialize()V

    .line 87
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->addSessionVisits()V

    .line 88
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackInitial()V

    .line 90
    :cond_0
    return-void
.end method

.method setAppChannel(Ljava/lang/String;)V
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->setAppChannel(Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method setAppToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "appToken"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->setAppToken(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method setAppVersionCode(I)V
    .locals 1
    .param p1, "versionCode"    # I

    .prologue
    .line 255
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->setAppVersionCode(I)V

    .line 256
    return-void
.end method

.method setAppVersionName(Ljava/lang/String;)V
    .locals 1
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->setAppVersionName(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method setOnMsgListener(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;

    .prologue
    .line 229
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/message/MsgManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->setOnAppMsgListener(Lcom/lenovo/lps/reaper/sdk/message/OnMsgListener;)V

    .line 230
    return-void
.end method

.method setParam(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->oldVersionParams:Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 430
    return-void
.end method

.method setUserId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userIdClass"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->setUserId(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method smartInitialize(Landroid/content/Context;)V
    .locals 1
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->applicationContext:Landroid/content/Context;

    .line 77
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;->Smart:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->initializeMode:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    .line 78
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->initialize()V

    .line 79
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->addSessionVisits()V

    .line 80
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackInitial()V

    .line 81
    return-void
.end method

.method trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "value"    # D
    .param p6, "param"    # Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    .param p7, "sync"    # Z

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->isReport:Z

    if-nez v0, :cond_0

    .line 124
    const-string v0, "AnalyticsTracker"

    const-string v1, "Disabled Report"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->clearParam()V

    .line 138
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    const-string v0, "AnalyticsTracker"

    const-string v1, "not initialize."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->clearParam()V

    goto :goto_0

    .line 133
    :cond_1
    if-nez p7, :cond_2

    .line 134
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->addCfgTask()V

    .line 135
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->addMsgTask()V

    .line 137
    :cond_2
    invoke-direct/range {p0 .. p7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->addEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    goto :goto_0
.end method

.method trackEventBegin(Ljava/lang/String;)V
    .locals 1
    .param p1, "eventAction"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->recordEventBegin(Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method trackEventDuration(Ljava/lang/String;DJ)V
    .locals 8
    .param p1, "eventAction"    # Ljava/lang/String;
    .param p2, "dataLength"    # D
    .param p4, "duration"    # J

    .prologue
    .line 154
    const-string v1, "__DURA__"

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    .line 155
    return-void
.end method

.method trackEventDuration(Ljava/lang/String;J)V
    .locals 8
    .param p1, "eventAction"    # Ljava/lang/String;
    .param p2, "duration"    # J

    .prologue
    .line 150
    const-string v1, "__DURA__"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, -0x4010000000000000L

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    .line 151
    return-void
.end method

.method trackEventEnd(Ljava/lang/String;)V
    .locals 8
    .param p1, "eventAction"    # Ljava/lang/String;

    .prologue
    .line 162
    const-string v1, "__DURA__"

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->recordEventEnd(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, -0x4010000000000000L

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    .line 164
    return-void
.end method

.method trackEventEnd(Ljava/lang/String;D)V
    .locals 8
    .param p1, "eventAction"    # Ljava/lang/String;
    .param p2, "dataLength"    # D

    .prologue
    .line 167
    const-string v1, "__DURA__"

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->recordEventEnd(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    .line 169
    return-void
.end method

.method trackFeedback(Ljava/lang/String;)V
    .locals 8
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 216
    const-string v1, "__FEEDBACK__"

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    .line 218
    return-void
.end method

.method trackInstalledApps(Z)V
    .locals 0
    .param p1, "includeSystemApp"    # Z

    .prologue
    .line 221
    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->addTrackInstalledAppTask(Z)V

    .line 222
    return-void
.end method

.method trackNetworkDetectEvent(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;)V
    .locals 3
    .param p1, "detectUrl"    # Ljava/lang/String;
    .param p2, "detectType"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->isReport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->isEnableSDK()Z

    move-result v0

    if-nez v0, :cond_1

    .line 142
    :cond_0
    const-string v0, "AnalyticsTracker"

    const-string v1, "not read for tracking event."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    move-result-object v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    invoke-virtual {v2, p1, p2}, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->genNetworkEventSaveTask(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->addTask(ILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method trackPause(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "framePageName"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v6, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v6}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 191
    .local v6, "param":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v1, p1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->recordPause(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, p1, v1}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 193
    const/4 v0, 0x2

    const-string v1, "PAGE_QUEUE_NO"

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getCurrentActivitySeqNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 195
    if-eqz p2, :cond_0

    .line 196
    const/4 v0, 0x3

    const-string v1, "FRAME_PAGE"

    invoke-virtual {v6, v0, v1, p2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 198
    :cond_0
    const-string v1, "__PAGEVIEW__"

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4008000000000000L

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    .line 199
    return-void
.end method

.method trackResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "framePageName"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->initializeMode:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    sget-object v1, Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;->Smart:Lcom/lenovo/lps/reaper/sdk/util/Constants$InitializeMode;

    if-ne v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->isTimeForAddSessionVisits()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->addSessionVisits()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->recordResume(Ljava/lang/String;)V

    .line 178
    new-instance v6, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v6}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 179
    .local v6, "param":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    const/4 v0, 0x2

    const-string v1, "PAGE_QUEUE_NO"

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getCurrentActivitySeqNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 181
    if-eqz p2, :cond_1

    .line 182
    const/4 v0, 0x3

    const-string v1, "FRAME_PAGE"

    invoke-virtual {v6, v0, v1, p2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 184
    :cond_1
    const/4 v0, 0x4

    const-string v1, "USER_ACTION_QUEUE_NO"

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getCurrentUserActionSeqNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 186
    const-string v1, "__PAGEVIEW__"

    const/4 v3, 0x0

    const-wide/high16 v4, 0x4000000000000000L

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    .line 187
    return-void
.end method

.method trackThrowable(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 212
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackThrowable(Ljava/lang/Throwable;I)V

    .line 213
    return-void
.end method

.method trackUserAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "userActionName"    # Ljava/lang/String;
    .param p2, "pageName"    # Ljava/lang/String;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->addCurrentUserActionSeqNumber()V

    .line 204
    new-instance v6, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v6}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 205
    .local v6, "param":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    const/4 v0, 0x4

    const-string v1, "USER_ACTION_QUEUE_NO"

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->appManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getCurrentUserActionSeqNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 207
    const-string v1, "__NEWUA__"

    const-wide/high16 v4, 0x4010000000000000L

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLcom/lenovo/lps/reaper/sdk/api/ParamMap;Z)V

    .line 209
    return-void
.end method
