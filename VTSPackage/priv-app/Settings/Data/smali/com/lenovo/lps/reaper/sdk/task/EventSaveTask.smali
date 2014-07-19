.class public Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;
.super Ljava/lang/Object;
.source "EventSaveTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "EventSaveTask"


# instance fields
.field protected event:Lcom/lenovo/lps/reaper/sdk/api/Event;

.field protected eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

.field protected localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

.field protected taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected processEvent()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 19
    :goto_0
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->isFileStorageMetaLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 21
    :try_start_0
    const-string v1, "EventSaveTask"

    const-string v2, "waiting for meta loading"

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const-wide/16 v1, 0x3e8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "EventSaveTask"

    const-string v2, "InterruptedException when waiting meta loading."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 27
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->processEvent()V

    .line 28
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->event:Lcom/lenovo/lps/reaper/sdk/api/Event;

    invoke-virtual {v1, v2}, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->addEvent(Lcom/lenovo/lps/reaper/sdk/api/Event;)V

    .line 29
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->isOnline()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->isCustomDispatch()Z

    move-result v1

    if-nez v1, :cond_1

    .line 30
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->event:Lcom/lenovo/lps/reaper/sdk/api/Event;

    invoke-virtual {v4}, Lcom/lenovo/lps/reaper/sdk/api/Event;->getPriority()Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;->genEventReportTask(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->addTask(ILjava/lang/Runnable;)V

    .line 33
    :cond_1
    return-void
.end method

.method public setEvent(Lcom/lenovo/lps/reaper/sdk/api/Event;)V
    .locals 0
    .param p1, "event"    # Lcom/lenovo/lps/reaper/sdk/api/Event;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->event:Lcom/lenovo/lps/reaper/sdk/api/Event;

    .line 49
    return-void
.end method

.method public setEventStorage(Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;)V
    .locals 0
    .param p1, "eventStorage"    # Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->eventStorage:Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;

    .line 45
    return-void
.end method

.method public setLocalConfig(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V
    .locals 0
    .param p1, "localConfig"    # Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .line 41
    return-void
.end method

.method public setTaskFactory(Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;)V
    .locals 0
    .param p1, "taskFactory"    # Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/EventSaveTask;->taskFactory:Lcom/lenovo/lps/reaper/sdk/task/TaskFactory;

    .line 53
    return-void
.end method
