.class Lorg/jets3t/service/multithread/S3ServiceMulti$6;
.super Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;
.source "S3ServiceMulti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jets3t/service/multithread/S3ServiceMulti;->deleteVersionsOfObjectWithMFA([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

.field final synthetic val$success:[Z

.field final synthetic val$uniqueOperationId:Ljava/lang/Object;

.field final synthetic val$versionsToDeleteList:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V
    .locals 0
    .param p2, "x0"    # [Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;
    .param p3, "x1"    # Lorg/jets3t/service/multithread/ThreadWatcher;
    .param p4, "x2"    # Lorg/jets3t/service/Jets3tProperties;
    .param p5, "x3"    # Z

    .prologue
    .line 713
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$6;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iput-object p6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$6;->val$uniqueOperationId:Ljava/lang/Object;

    iput-object p7, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$6;->val$versionsToDeleteList:Ljava/util/List;

    iput-object p8, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$6;->val$success:[Z

    invoke-direct/range {p0 .. p5}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;Z)V

    return-void
.end method


# virtual methods
.method public fireCancelEvent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 729
    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$6;->val$versionsToDeleteList:Ljava/util/List;

    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$6;->val$versionsToDeleteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jets3t/service/model/S3Version;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jets3t/service/model/S3Version;

    move-object v0, v1

    check-cast v0, [Lorg/jets3t/service/model/S3Version;

    .line 731
    .local v0, "remainingVersions":[Lorg/jets3t/service/model/S3Version;
    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$6;->val$success:[Z

    aput-boolean v3, v1, v3

    .line 732
    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$6;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$6;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/jets3t/service/multithread/DeleteVersionedObjectsEvent;->newCancelledEvent([Lorg/jets3t/service/model/S3Version;Ljava/lang/Object;)Lorg/jets3t/service/multithread/DeleteVersionedObjectsEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 734
    return-void
.end method

.method public fireCompletedEvent()V
    .locals 2

    .prologue
    .line 737
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$6;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$6;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {v1}, Lorg/jets3t/service/multithread/DeleteVersionedObjectsEvent;->newCompletedEvent(Ljava/lang/Object;)Lorg/jets3t/service/multithread/DeleteVersionedObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 739
    return-void
.end method

.method public fireErrorEvent(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 742
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$6;->val$success:[Z

    aput-boolean v1, v0, v1

    .line 743
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$6;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$6;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/jets3t/service/multithread/DeleteVersionedObjectsEvent;->newErrorEvent(Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multithread/DeleteVersionedObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 745
    return-void
.end method

.method public fireIgnoredErrorsEvent(Lorg/jets3t/service/multithread/ThreadWatcher;[Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multithread/ThreadWatcher;
    .param p2, "ignoredErrors"    # [Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 750
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$6;->val$success:[Z

    aput-boolean v1, v0, v1

    .line 751
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$6;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$6;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lorg/jets3t/service/multithread/DeleteVersionedObjectsEvent;->newIgnoredErrorsEvent(Lorg/jets3t/service/multithread/ThreadWatcher;[Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multithread/DeleteVersionedObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 753
    return-void
.end method

.method public fireProgressEvent(Lorg/jets3t/service/multithread/ThreadWatcher;Ljava/util/List;)V
    .locals 3
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multithread/ThreadWatcher;
    .param p2, "completedResults"    # Ljava/util/List;

    .prologue
    .line 721
    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$6;->val$versionsToDeleteList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 722
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jets3t/service/model/S3Version;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jets3t/service/model/S3Version;

    move-object v0, v1

    check-cast v0, [Lorg/jets3t/service/model/S3Version;

    .line 724
    .local v0, "deletedVersions":[Lorg/jets3t/service/model/S3Version;
    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$6;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$6;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lorg/jets3t/service/multithread/DeleteVersionedObjectsEvent;->newInProgressEvent(Lorg/jets3t/service/multithread/ThreadWatcher;[Lorg/jets3t/service/model/S3Version;Ljava/lang/Object;)Lorg/jets3t/service/multithread/DeleteVersionedObjectsEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 726
    return-void
.end method

.method public fireStartEvent(Lorg/jets3t/service/multithread/ThreadWatcher;)V
    .locals 2
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multithread/ThreadWatcher;

    .prologue
    .line 716
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$6;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$6;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/jets3t/service/multithread/DeleteVersionedObjectsEvent;->newStartedEvent(Lorg/jets3t/service/multithread/ThreadWatcher;Ljava/lang/Object;)Lorg/jets3t/service/multithread/DeleteVersionedObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 718
    return-void
.end method
