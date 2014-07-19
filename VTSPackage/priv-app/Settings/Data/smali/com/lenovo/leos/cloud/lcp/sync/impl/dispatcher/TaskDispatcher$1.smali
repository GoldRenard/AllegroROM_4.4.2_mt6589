.class Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$1;
.super Ljava/lang/Object;
.source "TaskDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->startTask(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

.field private final synthetic val$task:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$1;->val$task:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$1;->val$task:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    monitor-enter v1

    .line 105
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->taskList:Ljava/util/Map;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$1;->val$task:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->getTaskId()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 108
    return-void

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    monitor-enter v1

    .line 105
    :try_start_2
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->taskList:Ljava/util/Map;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher$1;->val$task:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-interface {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->getTaskId()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 107
    throw v0

    .line 104
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method
