.class public Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;
.super Ljava/lang/Object;
.source "TaskFactory.java"


# instance fields
.field private eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

.field private localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

.field private reportManager:Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

.field private serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public genEventReportTask(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)Ljava/lang/Runnable;
    .locals 2
    .param p1, "priority"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 46
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;-><init>()V

    .line 47
    .local v0, "eventReportTask":Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;->setEventStorage(Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;)V

    .line 48
    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;->setPriority(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)V

    .line 49
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->reportManager:Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;->setReportManager(Lcom/lenovo/lps/reaper/sdk/request/ReportManager;)V

    .line 50
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/task/EventReportTask;->setServerConfig(Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;)V

    .line 51
    return-object v0
.end method

.method public genEventSaveTask(Lcom/lenovo/lps/reaper/sdk/api/Event;)Ljava/lang/Runnable;
    .locals 2
    .param p1, "event"    # Lcom/lenovo/lps/reaper/sdk/api/Event;

    .prologue
    .line 26
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;-><init>()V

    .line 27
    .local v0, "eventSaveTask":Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;
    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->setEvent(Lcom/lenovo/lps/reaper/sdk/api/Event;)V

    .line 28
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->setLocalConfig(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V

    .line 29
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->setEventStorage(Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;)V

    .line 30
    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->setTaskFactory(Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;)V

    .line 31
    return-object v0
.end method

.method public genMessageSaveTask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 2
    .param p1, "msgHead"    # Ljava/lang/String;
    .param p2, "msgBody"    # Ljava/lang/String;

    .prologue
    .line 18
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/task/MessageSaveTask;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/task/MessageSaveTask;-><init>()V

    .line 19
    .local v0, "messageSaveTask":Lcom/lenovo/lps/reaper/sdk/task/MessageSaveTask;
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/task/MessageSaveTask;->setLocalConfig(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V

    .line 20
    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/task/MessageSaveTask;->setMsgHead(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p2}, Lcom/lenovo/lps/reaper/sdk/task/MessageSaveTask;->setMsgBody(Ljava/lang/String;)V

    .line 22
    return-object v0
.end method

.method public genNetworkEventSaveTask(Ljava/lang/String;Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;)Ljava/lang/Runnable;
    .locals 2
    .param p1, "detectUrl"    # Ljava/lang/String;
    .param p2, "detectType"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;

    .prologue
    .line 35
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;-><init>()V

    .line 36
    .local v0, "networkEventSaveTask":Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;
    invoke-virtual {v0, p2}, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->setDetectType(Lcom/lenovo/lps/reaper/sdk/util/Constants$NETWORK_DETECT_TYPE;)V

    .line 37
    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->setDetectUrl(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->setLocalConfig(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V

    .line 39
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/task/NetworkEventSaveTask;->setServerConfig(Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;)V

    .line 40
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->setEventStorage(Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;)V

    .line 41
    invoke-virtual {v0, p0}, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->setTaskFactory(Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;)V

    .line 42
    return-object v0
.end method

.method public setEventStorage(Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;)V
    .locals 0
    .param p1, "eventStorage"    # Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    .line 64
    return-void
.end method

.method public setLocalConfig(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V
    .locals 0
    .param p1, "localConfig"    # Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .line 68
    return-void
.end method

.method public setReportManager(Lcom/lenovo/lps/reaper/sdk/request/ReportManager;)V
    .locals 0
    .param p1, "reportManager"    # Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->reportManager:Lcom/lenovo/lps/reaper/sdk/request/ReportManager;

    .line 56
    return-void
.end method

.method public setServerConfig(Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;)V
    .locals 0
    .param p1, "serverConfig"    # Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->serverConfig:Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    .line 60
    return-void
.end method
