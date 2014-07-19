.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;
.super Ljava/lang/Object;
.source "TaskDispatcher.java"


# static fields
.field public static final TASK_TYPE_BACKUP:I = 0x0

.field public static final TASK_TYPE_RESTORE:I = 0x1

.field public static final TASK_TYPE_STANDBY:I = -0x1

.field public static final TASK_TYPE_SYNC:I = 0x2


# instance fields
.field protected mContext:Landroid/content/Context;

.field private taskList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->taskList:Ljava/util/Map;

    .line 28
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->taskList:Ljava/util/Map;

    return-object v0
.end method

.method private startTask(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    .prologue
    .line 98
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$1;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/ConcurrentExecutor;->execute(Ljava/lang/Runnable;)V

    .line 110
    return-void
.end method


# virtual methods
.method public declared-synchronized cancelTask()V
    .locals 3

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->taskList:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 79
    :cond_0
    monitor-exit p0

    return-void

    .line 76
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->taskList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    .line 77
    .local v0, "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 72
    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized cancelTask(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 2
    .param p1, "id"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->taskList:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 91
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 86
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->taskList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    .line 88
    .local v0, "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->cancel()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 82
    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dispatch(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V
    .locals 2
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .param p2, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .param p3, "resolver"    # Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;,
            Lcom/lenovo/leos/cloud/lcp/sync/exception/DuplicateTaskException;
        }
    .end annotation

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->dispatchBefore(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    .line 33
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->dispatchTask(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    move-result-object v0

    .line 34
    .local v0, "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->dispatchAfter(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

    .line 36
    invoke-interface {v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    .line 37
    invoke-interface {v0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->setProblemResolver(Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V

    .line 38
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->taskList:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->startTask(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 32
    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected dispatchAfter(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V
    .locals 1
    .param p1, "task"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;
        }
    .end annotation

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;-><init>()V

    throw v0

    .line 69
    :cond_0
    return-void
.end method

.method protected dispatchBefore(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 4
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/sync/exception/DuplicateTaskException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->taskList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 50
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 57
    return-void

    .line 51
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    .line 52
    .local v0, "existsTaskId":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;->getValue()I

    move-result v2

    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;->getValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 54
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/exception/DuplicateTaskException;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/sync/exception/DuplicateTaskException;-><init>()V

    throw v2
.end method

.method protected abstract dispatchTask(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
.end method

.method public abstract getCount(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;
        }
    .end annotation
.end method
