.class public Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;
.super Ljava/lang/Object;
.source "AnalyticsTrackerBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnalyticsTrackerBuilder"

.field private static builder:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;


# instance fields
.field protected connectivityManager:Landroid/net/ConnectivityManager;

.field protected context:Landroid/content/Context;

.field protected eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

.field protected fileStorageMeta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

.field protected initialized:Z

.field private localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

.field protected reportManager:Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

.field protected rescheduleTask:Ljava/lang/Runnable;

.field protected taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->builder:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;)Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    return-object v0
.end method

.method private addAsynInitTasks()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 127
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    move-result-object v0

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/task/ReadAssignedDeviceIdTask;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-direct {v1, v2}, Lcom/lenovo/lps/reaper/sdk/task/ReadAssignedDeviceIdTask;-><init>(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V

    invoke-virtual {v0, v3, v1}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->addTask(ILjava/lang/Runnable;)V

    .line 128
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    move-result-object v0

    new-instance v1, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-direct {v1, v2}, Lcom/lenovo/lps/reaper/sdk/task/ReaperServerAddressQueryTask;-><init>(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V

    invoke-virtual {v0, v3, v1}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->addTask(ILjava/lang/Runnable;)V

    .line 132
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->builder:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    return-object v0
.end method

.method private initializeMsg()V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/message/MsgManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/message/MsgManager;->initial(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method private initializeOthers()V
    .locals 0

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initializeReportManager()V

    .line 121
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initializeEventStorage()V

    .line 122
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initTaskFactory()V

    .line 123
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->addAsynInitTasks()V

    .line 124
    return-void
.end method


# virtual methods
.method protected createEventDao()Lcom/lenovo/lps/reaper/sdk/api/EventDao;
    .locals 4

    .prologue
    .line 158
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;-><init>()V

    .line 159
    .local v0, "eventDao":Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-direct {v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;-><init>(Landroid/content/Context;Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V

    .line 160
    .local v1, "fileStorage":Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;
    new-instance v2, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-direct {v2}, Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;-><init>()V

    iput-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->fileStorageMeta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    .line 161
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->fileStorageMeta:Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;

    invoke-virtual {v0, v2}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->setMeta(Lcom/lenovo/lps/reaper/sdk/storage/FileStorageMeta;)V

    .line 162
    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/storage/FileEventDaoImpl;->setFileStorage(Lcom/lenovo/lps/reaper/sdk/storage/FileStorage;)V

    .line 163
    return-object v0
.end method

.method protected createHttpRequestHandler()Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;-><init>()V

    .line 198
    .local v0, "httpRequestHandler":Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;
    return-object v0
.end method

.method protected createReportManager()Lcom/lenovo/lps/reaper/sdk/request/ReportManager;
    .locals 1

    .prologue
    .line 207
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/request/ReportManager;-><init>()V

    return-object v0
.end method

.method public getConfiguration()Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    return-object v0
.end method

.method public getEventStorage()Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    return-object v0
.end method

.method public getReportManager()Lcom/lenovo/lps/reaper/sdk/request/ReportManager;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->reportManager:Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

    return-object v0
.end method

.method public getTaskFactory()Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    return-object v0
.end method

.method protected initTaskFactory()V
    .locals 2

    .prologue
    .line 145
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    .line 146
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->setEventStorage(Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;)V

    .line 147
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->reportManager:Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->setReportManager(Lcom/lenovo/lps/reaper/sdk/request/ReportManager;)V

    .line 148
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->setServerConfig(Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;)V

    .line 149
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->setLocalConfig(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V

    .line 150
    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 2
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->context:Landroid/content/Context;

    .line 78
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initialized:Z

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initialized:Z

    .line 80
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->internalInitialize()V

    .line 81
    const-string v0, "AnalyticsTrackerBuilder"

    const-string v1, "AnalyticsTrackerBuilder initialized"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method protected initializeConfiguration()V
    .locals 2

    .prologue
    .line 175
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .line 176
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->initialize()V

    .line 177
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->initialize(Landroid/content/Context;)V

    .line 178
    return-void
.end method

.method protected initializeEventStorage()V
    .locals 2

    .prologue
    .line 138
    new-instance v1, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    invoke-direct {v1}, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;-><init>()V

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    .line 139
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->createEventDao()Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    move-result-object v0

    .line 140
    .local v0, "eventDao":Lcom/lenovo/lps/reaper/sdk/api/EventDao;
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    invoke-virtual {v1, v0}, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->setEventDao(Lcom/lenovo/lps/reaper/sdk/api/EventDao;)V

    .line 141
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->initialize()V

    .line 142
    return-void
.end method

.method protected initializeReportManager()V
    .locals 3

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->createReportManager()Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->reportManager:Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

    .line 185
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->context:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 186
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->createHttpRequestHandler()Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;

    move-result-object v0

    .line 187
    .local v0, "httpRequestHandler":Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;->setConfiguration(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V

    .line 188
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->reportManager:Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

    invoke-virtual {v1, v0}, Lcom/lenovo/lps/reaper/sdk/request/ReportManager;->setHttpRequestHandler(Lcom/lenovo/lps/reaper/sdk/request/EventReportHandler;)V

    .line 189
    return-void
.end method

.method protected internalInitialize()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->setNetworkStatus(Landroid/content/Context;)V

    .line 95
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initializeConfiguration()V

    .line 96
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initializeMsg()V

    .line 97
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initializeOthers()V

    .line 98
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder$1;

    invoke-direct {v0, p0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder$1;-><init>(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;)V

    invoke-virtual {p0, v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->setOnNetworkListener(Landroid/content/BroadcastReceiver;)V

    .line 110
    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->initialized:Z

    return v0
.end method

.method public setOnNetworkListener(Landroid/content/BroadcastReceiver;)V
    .locals 3
    .param p1, "networkReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 254
    const-string v1, "AnalyticsTrackerBuilder"

    const-string v2, "Setting On Network Listener..."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, "mIntenFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->context:Landroid/content/Context;

    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 257
    return-void
.end method
