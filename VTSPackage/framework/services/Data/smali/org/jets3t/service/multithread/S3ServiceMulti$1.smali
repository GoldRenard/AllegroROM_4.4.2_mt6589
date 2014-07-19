.class Lorg/jets3t/service/multithread/S3ServiceMulti$1;
.super Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;
.source "S3ServiceMulti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jets3t/service/multithread/S3ServiceMulti;->listObjects(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

.field final synthetic val$success:[Z

.field final synthetic val$uniqueOperationId:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;[Z)V
    .locals 0
    .param p2, "x0"    # [Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;
    .param p3, "x1"    # Lorg/jets3t/service/multithread/ThreadWatcher;
    .param p4, "x2"    # Lorg/jets3t/service/Jets3tProperties;
    .param p5, "x3"    # Z

    .prologue
    .line 321
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$1;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iput-object p6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$1;->val$uniqueOperationId:Ljava/lang/Object;

    iput-object p7, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$1;->val$success:[Z

    invoke-direct/range {p0 .. p5}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;Z)V

    return-void
.end method


# virtual methods
.method public fireCancelEvent()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 333
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$1;->val$success:[Z

    aput-boolean v1, v0, v1

    .line 334
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$1;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$1;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {v1}, Lorg/jets3t/service/multithread/ListObjectsEvent;->newCancelledEvent(Ljava/lang/Object;)Lorg/jets3t/service/multithread/ListObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 335
    return-void
.end method

.method public fireCompletedEvent()V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$1;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$1;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {v1}, Lorg/jets3t/service/multithread/ListObjectsEvent;->newCompletedEvent(Ljava/lang/Object;)Lorg/jets3t/service/multithread/ListObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 339
    return-void
.end method

.method public fireErrorEvent(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 342
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$1;->val$success:[Z

    aput-boolean v1, v0, v1

    .line 343
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$1;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$1;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/jets3t/service/multithread/ListObjectsEvent;->newErrorEvent(Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multithread/ListObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 344
    return-void
.end method

.method public fireIgnoredErrorsEvent(Lorg/jets3t/service/multithread/ThreadWatcher;[Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multithread/ThreadWatcher;
    .param p2, "ignoredErrors"    # [Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 347
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$1;->val$success:[Z

    aput-boolean v1, v0, v1

    .line 348
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$1;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$1;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lorg/jets3t/service/multithread/ListObjectsEvent;->newIgnoredErrorsEvent(Lorg/jets3t/service/multithread/ThreadWatcher;[Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multithread/ListObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 349
    return-void
.end method

.method public fireProgressEvent(Lorg/jets3t/service/multithread/ThreadWatcher;Ljava/util/List;)V
    .locals 2
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multithread/ThreadWatcher;
    .param p2, "chunkList"    # Ljava/util/List;

    .prologue
    .line 328
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$1;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$1;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lorg/jets3t/service/multithread/ListObjectsEvent;->newInProgressEvent(Lorg/jets3t/service/multithread/ThreadWatcher;Ljava/util/List;Ljava/lang/Object;)Lorg/jets3t/service/multithread/ListObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 330
    return-void
.end method

.method public fireStartEvent(Lorg/jets3t/service/multithread/ThreadWatcher;)V
    .locals 2
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multithread/ThreadWatcher;

    .prologue
    .line 324
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$1;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$1;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/jets3t/service/multithread/ListObjectsEvent;->newStartedEvent(Lorg/jets3t/service/multithread/ThreadWatcher;Ljava/lang/Object;)Lorg/jets3t/service/multithread/ListObjectsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multithread/S3ServiceMulti;->fireServiceEvent(Lorg/jets3t/service/multithread/ServiceEvent;)V

    .line 325
    return-void
.end method
