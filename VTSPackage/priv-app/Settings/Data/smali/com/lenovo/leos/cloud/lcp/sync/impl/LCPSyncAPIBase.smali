.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;
.super Ljava/lang/Object;
.source "LCPSyncAPIBase.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/LCPSyncAPI;


# instance fields
.field protected dispatcher:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

.field protected listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

.field protected problemResolvers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->listeners:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->problemResolvers:Ljava/util/Map;

    .line 22
    return-void
.end method


# virtual methods
.method public varargs backup([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;)V
    .locals 0
    .param p1, "backupTaskIDs"    # [Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;,
            Lcom/lenovo/leos/cloud/lcp/sync/exception/DuplicateTaskException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->dispatchTask([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    .line 34
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->dispatcher:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->dispatcher:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->cancelTask()V

    goto :goto_0
.end method

.method public varargs cancel([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 4
    .param p1, "taskId"    # [Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    .prologue
    .line 66
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->dispatcher:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    if-nez v1, :cond_1

    .line 72
    :cond_0
    return-void

    .line 69
    :cond_1
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 70
    .local v0, "id":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->dispatcher:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    invoke-virtual {v3, v0}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->cancelTask(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public clearProgressListener()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->mListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->listeners:Ljava/util/Map;

    .line 85
    return-void
.end method

.method protected varargs dispatchTask([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 6
    .param p1, "taskIDs"    # [Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;,
            Lcom/lenovo/leos/cloud/lcp/sync/exception/DuplicateTaskException;
        }
    .end annotation

    .prologue
    .line 51
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 54
    return-void

    .line 51
    :cond_0
    aget-object v0, p1, v1

    .line 52
    .local v0, "taskID":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->dispatcher:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->findListener(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->findProblemResolver(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->dispatch(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected findListener(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .locals 1
    .param p1, "taskID"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->mListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->mListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .line 78
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    goto :goto_0
.end method

.method protected findProblemResolver(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;
    .locals 1
    .param p1, "taskID"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->problemResolvers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    return-object v0
.end method

.method public varargs getCount([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)[I
    .locals 6
    .param p1, "backupTaskIDs"    # [Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;
        }
    .end annotation

    .prologue
    .line 117
    array-length v3, p1

    new-array v0, v3, [I

    .line 118
    .local v0, "countArray":[I
    const/4 v1, 0x0

    .line 119
    .local v1, "index":I
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v4, :cond_0

    .line 123
    return-object v0

    .line 119
    :cond_0
    aget-object v2, p1, v3

    .line 120
    .local v2, "taskId":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->dispatcher:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    invoke-virtual {v5, v2}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->getCount(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)I

    move-result v5

    aput v5, v0, v1

    .line 121
    add-int/lit8 v1, v1, 0x1

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public varargs restore([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;)V
    .locals 0
    .param p1, "restoreTaskIDs"    # [Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;,
            Lcom/lenovo/leos/cloud/lcp/sync/exception/DuplicateTaskException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->dispatchTask([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    .line 40
    return-void
.end method

.method public setProblemResolver(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V
    .locals 1
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .param p2, "problemResolver"    # Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    .prologue
    .line 103
    if-eqz p2, :cond_0

    .line 104
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->problemResolvers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->problemResolvers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->mListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .line 99
    return-void
.end method

.method public setProgressListenter(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 1
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .param p2, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .prologue
    .line 89
    if-nez p2, :cond_0

    .line 90
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/LCPSyncAPIBase;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public varargs sync([Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;)V
    .locals 1
    .param p1, "syncTaskIDs"    # [Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;,
            Lcom/lenovo/leos/cloud/lcp/sync/exception/DuplicateTaskException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;-><init>()V

    throw v0
.end method
