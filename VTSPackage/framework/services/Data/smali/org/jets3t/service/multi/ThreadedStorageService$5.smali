.class Lorg/jets3t/service/multi/ThreadedStorageService$5;
.super Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;
.source "ThreadedStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jets3t/service/multi/ThreadedStorageService;->deleteObjects(Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

.field final synthetic val$objectsToDeleteList:Ljava/util/List;

.field final synthetic val$success:[Z

.field final synthetic val$uniqueOperationId:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/jets3t/service/multi/ThreadedStorageService;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V
    .locals 0
    .param p2, "x0"    # [Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;
    .param p3, "x1"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p4, "x2"    # Lorg/jets3t/service/Jets3tProperties;
    .param p5, "x3"    # Z

    .prologue
    .line 619
    iput-object p1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$5;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iput-object p6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$5;->val$uniqueOperationId:Ljava/lang/Object;

    iput-object p7, p0, Lorg/jets3t/service/multi/ThreadedStorageService$5;->val$objectsToDeleteList:Ljava/util/List;

    iput-object p8, p0, Lorg/jets3t/service/multi/ThreadedStorageService$5;->val$success:[Z

    invoke-direct/range {p0 .. p5}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;Z)V

    return-void
.end method


# virtual methods
.method public fireCancelEvent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 633
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$5;->val$objectsToDeleteList:Ljava/util/List;

    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$5;->val$objectsToDeleteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jets3t/service/model/StorageObject;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jets3t/service/model/StorageObject;

    move-object v0, v1

    check-cast v0, [Lorg/jets3t/service/model/StorageObject;

    .line 635
    .local v0, "remainingObjects":[Lorg/jets3t/service/model/StorageObject;
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$5;->val$success:[Z

    aput-boolean v3, v1, v3

    .line 636
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$5;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$5;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/jets3t/service/multi/event/DeleteObjectsEvent;->newCancelledEvent([Lorg/jets3t/service/model/StorageObject;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/DeleteObjectsEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jets3t/service/multi/ThreadedStorageService;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 637
    return-void
.end method

.method public fireCompletedEvent()V
    .locals 2

    .prologue
    .line 640
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$5;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$5;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {v1}, Lorg/jets3t/service/multi/event/DeleteObjectsEvent;->newCompletedEvent(Ljava/lang/Object;)Lorg/jets3t/service/multi/event/DeleteObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/ThreadedStorageService;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 641
    return-void
.end method

.method public fireErrorEvent(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 644
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$5;->val$success:[Z

    aput-boolean v1, v0, v1

    .line 645
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$5;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$5;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/jets3t/service/multi/event/DeleteObjectsEvent;->newErrorEvent(Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/DeleteObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/ThreadedStorageService;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 646
    return-void
.end method

.method public fireIgnoredErrorsEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p2, "ignoredErrors"    # [Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 649
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$5;->val$success:[Z

    aput-boolean v1, v0, v1

    .line 650
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$5;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$5;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lorg/jets3t/service/multi/event/DeleteObjectsEvent;->newIgnoredErrorsEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/DeleteObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/ThreadedStorageService;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 651
    return-void
.end method

.method public fireProgressEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/util/List;)V
    .locals 3
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p2, "completedResults"    # Ljava/util/List;

    .prologue
    .line 626
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$5;->val$objectsToDeleteList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 627
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jets3t/service/model/StorageObject;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jets3t/service/model/StorageObject;

    move-object v0, v1

    check-cast v0, [Lorg/jets3t/service/model/StorageObject;

    .line 629
    .local v0, "deletedObjects":[Lorg/jets3t/service/model/StorageObject;
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$5;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$5;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lorg/jets3t/service/multi/event/DeleteObjectsEvent;->newInProgressEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Lorg/jets3t/service/model/StorageObject;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/DeleteObjectsEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jets3t/service/multi/ThreadedStorageService;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 630
    return-void
.end method

.method public fireStartEvent(Lorg/jets3t/service/multi/ThreadWatcher;)V
    .locals 2
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;

    .prologue
    .line 622
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$5;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$5;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/jets3t/service/multi/event/DeleteObjectsEvent;->newStartedEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/DeleteObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/ThreadedStorageService;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 623
    return-void
.end method
