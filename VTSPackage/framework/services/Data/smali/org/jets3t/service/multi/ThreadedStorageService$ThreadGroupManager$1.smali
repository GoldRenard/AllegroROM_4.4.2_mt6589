.class Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$1;
.super Ljava/lang/Object;
.source "ThreadedStorageService.java"

# interfaces
.implements Lorg/jets3t/service/multi/CancelEventTrigger;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x57d30e2822b7762bL


# instance fields
.field final synthetic this$1:Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;

.field final synthetic val$interrupted:[Z


# direct methods
.method constructor <init>(Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;[Z)V
    .locals 0

    .prologue
    .line 1805
    iput-object p1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$1;->this$1:Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;

    iput-object p2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$1;->val$interrupted:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelTask(Ljava/lang/Object;)V
    .locals 3
    .param p1, "eventSource"    # Ljava/lang/Object;

    .prologue
    .line 1809
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$1;->this$1:Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;

    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;
    invoke-static {v0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->access$100(Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1810
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$1;->this$1:Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;

    # getter for: Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;
    invoke-static {v0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->access$100(Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    const-string v1, "Cancel task invoked on ThreadManager"

    invoke-interface {v0, v1}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1814
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$1;->val$interrupted:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 1817
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$1;->this$1:Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;

    # invokes: Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->forceInterruptAllRunnables()V
    invoke-static {v0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->access$200(Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;)V

    .line 1818
    return-void
.end method
