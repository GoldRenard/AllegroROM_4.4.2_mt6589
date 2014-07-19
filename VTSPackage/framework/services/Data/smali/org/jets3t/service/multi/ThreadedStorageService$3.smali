.class Lorg/jets3t/service/multi/ThreadedStorageService$3;
.super Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;
.source "ThreadedStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jets3t/service/multi/ThreadedStorageService;->copyObjects(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

.field final synthetic val$destinationObjects:[Lorg/jets3t/service/model/StorageObject;

.field final synthetic val$incompletedObjectsList:Ljava/util/List;

.field final synthetic val$sourceObjectKeys:[Ljava/lang/String;

.field final synthetic val$success:[Z

.field final synthetic val$uniqueOperationId:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/jets3t/service/multi/ThreadedStorageService;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z[Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)V
    .locals 0
    .param p2, "x0"    # [Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;
    .param p3, "x1"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p4, "x2"    # Lorg/jets3t/service/Jets3tProperties;
    .param p5, "x3"    # Z

    .prologue
    .line 455
    iput-object p1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iput-object p6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->val$uniqueOperationId:Ljava/lang/Object;

    iput-object p7, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->val$incompletedObjectsList:Ljava/util/List;

    iput-object p8, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->val$success:[Z

    iput-object p9, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->val$sourceObjectKeys:[Ljava/lang/String;

    iput-object p10, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->val$destinationObjects:[Lorg/jets3t/service/model/StorageObject;

    invoke-direct/range {p0 .. p5}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;Z)V

    return-void
.end method


# virtual methods
.method public fireCancelEvent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 470
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->val$incompletedObjectsList:Ljava/util/List;

    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->val$incompletedObjectsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jets3t/service/model/StorageObject;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jets3t/service/model/StorageObject;

    move-object v0, v1

    check-cast v0, [Lorg/jets3t/service/model/StorageObject;

    .line 472
    .local v0, "incompletedObjects":[Lorg/jets3t/service/model/StorageObject;
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->val$success:[Z

    aput-boolean v3, v1, v3

    .line 473
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/jets3t/service/multi/event/CopyObjectsEvent;->newCancelledEvent([Lorg/jets3t/service/model/StorageObject;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/CopyObjectsEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jets3t/service/multi/ThreadedStorageService;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 474
    return-void
.end method

.method public fireCompletedEvent()V
    .locals 4

    .prologue
    .line 477
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->val$uniqueOperationId:Ljava/lang/Object;

    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->val$sourceObjectKeys:[Ljava/lang/String;

    iget-object v3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->val$destinationObjects:[Lorg/jets3t/service/model/StorageObject;

    invoke-static {v1, v2, v3}, Lorg/jets3t/service/multi/event/CopyObjectsEvent;->newCompletedEvent(Ljava/lang/Object;[Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)Lorg/jets3t/service/multi/event/CopyObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/ThreadedStorageService;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 479
    return-void
.end method

.method public fireErrorEvent(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 482
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->val$success:[Z

    aput-boolean v1, v0, v1

    .line 483
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/jets3t/service/multi/event/CopyObjectsEvent;->newErrorEvent(Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/CopyObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/ThreadedStorageService;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 484
    return-void
.end method

.method public fireIgnoredErrorsEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p2, "ignoredErrors"    # [Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 487
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->val$success:[Z

    aput-boolean v1, v0, v1

    .line 488
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lorg/jets3t/service/multi/event/CopyObjectsEvent;->newIgnoredErrorsEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/CopyObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/ThreadedStorageService;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 489
    return-void
.end method

.method public fireProgressEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/util/List;)V
    .locals 3
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p2, "completedResults"    # Ljava/util/List;

    .prologue
    .line 462
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->val$incompletedObjectsList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 463
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Map;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/Map;

    move-object v0, v1

    check-cast v0, [Ljava/util/Map;

    .line 465
    .local v0, "copyResults":[Ljava/util/Map;
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lorg/jets3t/service/multi/event/CopyObjectsEvent;->newInProgressEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/util/Map;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/CopyObjectsEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jets3t/service/multi/ThreadedStorageService;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 467
    return-void
.end method

.method public fireStartEvent(Lorg/jets3t/service/multi/ThreadWatcher;)V
    .locals 2
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;

    .prologue
    .line 458
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$3;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/jets3t/service/multi/event/CopyObjectsEvent;->newStartedEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/CopyObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/ThreadedStorageService;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 459
    return-void
.end method
