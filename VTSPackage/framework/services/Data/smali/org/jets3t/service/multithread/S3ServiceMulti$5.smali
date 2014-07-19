.class Lorg/jets3t/service/multithread/S3ServiceMulti$5;
.super Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;
.source "S3ServiceMulti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jets3t/service/multithread/S3ServiceMulti;->deleteObjects(Lorg/jets3t/service/model/S3Bucket;[Lorg/jets3t/service/model/S3Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

.field final synthetic val$objectsToDeleteList:Ljava/util/List;

.field final synthetic val$success:[Z

.field final synthetic val$uniqueOperationId:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V
    .locals 0
    .param p2, "x0"    # [Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;
    .param p3, "x1"    # Lorg/jets3t/service/multithread/ThreadWatcher;
    .param p4, "x2"    # Lorg/jets3t/service/Jets3tProperties;
    .param p5, "x3"    # Z

    .prologue
    .line 631
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iput-object p6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;->val$uniqueOperationId:Ljava/lang/Object;

    iput-object p7, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;->val$objectsToDeleteList:Ljava/util/List;

    iput-object p8, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;->val$success:[Z

    invoke-direct/range {p0 .. p5}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;Z)V

    return-void
.end method


# virtual methods
.method public fireCancelEvent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 645
    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;->val$objectsToDeleteList:Ljava/util/List;

    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;->val$objectsToDeleteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jets3t/service/model/S3Object;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jets3t/service/model/S3Object;

    move-object v0, v1

    check-cast v0, [Lorg/jets3t/service/model/S3Object;

    .line 647
    .local v0, "remainingObjects":[Lorg/jets3t/service/model/S3Object;
    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;->val$success:[Z

    aput-boolean v3, v1, v3

    .line 648
    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/jets3t/service/multithread/DeleteObjectsEvent;->newCancelledEvent([Lorg/jets3t/service/model/S3Object;Ljava/lang/Object;)Lorg/jets3t/service/multithread/DeleteObjectsEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 649
    return-void
.end method

.method public fireCompletedEvent()V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {v1}, Lorg/jets3t/service/multithread/DeleteObjectsEvent;->newCompletedEvent(Ljava/lang/Object;)Lorg/jets3t/service/multithread/DeleteObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 653
    return-void
.end method

.method public fireErrorEvent(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 656
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;->val$success:[Z

    aput-boolean v1, v0, v1

    .line 657
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/jets3t/service/multithread/DeleteObjectsEvent;->newErrorEvent(Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multithread/DeleteObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 658
    return-void
.end method

.method public fireIgnoredErrorsEvent(Lorg/jets3t/service/multithread/ThreadWatcher;[Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multithread/ThreadWatcher;
    .param p2, "ignoredErrors"    # [Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 661
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;->val$success:[Z

    aput-boolean v1, v0, v1

    .line 662
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lorg/jets3t/service/multithread/DeleteObjectsEvent;->newIgnoredErrorsEvent(Lorg/jets3t/service/multithread/ThreadWatcher;[Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multithread/DeleteObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 663
    return-void
.end method

.method public fireProgressEvent(Lorg/jets3t/service/multithread/ThreadWatcher;Ljava/util/List;)V
    .locals 3
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multithread/ThreadWatcher;
    .param p2, "completedResults"    # Ljava/util/List;

    .prologue
    .line 638
    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;->val$objectsToDeleteList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 639
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jets3t/service/model/S3Object;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jets3t/service/model/S3Object;

    move-object v0, v1

    check-cast v0, [Lorg/jets3t/service/model/S3Object;

    .line 641
    .local v0, "deletedObjects":[Lorg/jets3t/service/model/S3Object;
    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lorg/jets3t/service/multithread/DeleteObjectsEvent;->newInProgressEvent(Lorg/jets3t/service/multithread/ThreadWatcher;[Lorg/jets3t/service/model/S3Object;Ljava/lang/Object;)Lorg/jets3t/service/multithread/DeleteObjectsEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 642
    return-void
.end method

.method public fireStartEvent(Lorg/jets3t/service/multithread/ThreadWatcher;)V
    .locals 2
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multithread/ThreadWatcher;

    .prologue
    .line 634
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$5;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/jets3t/service/multithread/DeleteObjectsEvent;->newStartedEvent(Lorg/jets3t/service/multithread/ThreadWatcher;Ljava/lang/Object;)Lorg/jets3t/service/multithread/DeleteObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 635
    return-void
.end method
