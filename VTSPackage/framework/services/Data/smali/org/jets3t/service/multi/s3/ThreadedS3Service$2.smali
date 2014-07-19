.class Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;
.super Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;
.source "ThreadedS3Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jets3t/service/multi/s3/ThreadedS3Service;->multipartCompleteUploads(Ljava/util/List;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

.field final synthetic val$incompletedObjectsList:Ljava/util/List;

.field final synthetic val$success:[Z

.field final synthetic val$uniqueOperationId:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/jets3t/service/multi/s3/ThreadedS3Service;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;ZLjava/lang/Object;Ljava/util/List;[Z)V
    .locals 0
    .param p2, "x0"    # [Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;
    .param p3, "x1"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p4, "x2"    # Lorg/jets3t/service/Jets3tProperties;
    .param p5, "x3"    # Z

    .prologue
    .line 174
    iput-object p1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    iput-object p6, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;->val$uniqueOperationId:Ljava/lang/Object;

    iput-object p7, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;->val$incompletedObjectsList:Ljava/util/List;

    iput-object p8, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;->val$success:[Z

    invoke-direct/range {p0 .. p5}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;Z)V

    return-void
.end method


# virtual methods
.method public fireCancelEvent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 189
    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;->val$incompletedObjectsList:Ljava/util/List;

    iget-object v2, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;->val$incompletedObjectsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jets3t/service/model/MultipartUpload;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jets3t/service/model/MultipartUpload;

    .line 191
    .local v0, "incompletedObjects":[Lorg/jets3t/service/model/MultipartUpload;
    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;->val$success:[Z

    aput-boolean v3, v1, v3

    .line 192
    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    iget-object v2, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;->newCancelledEvent([Lorg/jets3t/service/model/MultipartUpload;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 193
    return-void
.end method

.method public fireCompletedEvent()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {v1}, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;->newCompletedEvent(Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 197
    return-void
.end method

.method public fireErrorEvent(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 200
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;->val$success:[Z

    aput-boolean v1, v0, v1

    .line 201
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;->newErrorEvent(Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 202
    return-void
.end method

.method public fireIgnoredErrorsEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p2, "ignoredErrors"    # [Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 205
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;->val$success:[Z

    aput-boolean v1, v0, v1

    .line 206
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;->newIgnoredErrorsEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 207
    return-void
.end method

.method public fireProgressEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/util/List;)V
    .locals 3
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p2, "completedResults"    # Ljava/util/List;

    .prologue
    .line 181
    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;->val$incompletedObjectsList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 182
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jets3t/service/model/MultipartCompleted;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jets3t/service/model/MultipartCompleted;

    move-object v0, v1

    check-cast v0, [Lorg/jets3t/service/model/MultipartCompleted;

    .line 184
    .local v0, "completedObjects":[Lorg/jets3t/service/model/MultipartCompleted;
    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    iget-object v2, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;->newInProgressEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Lorg/jets3t/service/model/MultipartCompleted;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 186
    return-void
.end method

.method public fireStartEvent(Lorg/jets3t/service/multi/ThreadWatcher;)V
    .locals 2
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;

    .prologue
    .line 177
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$2;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;->newStartedEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartCompletesEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 178
    return-void
.end method
