.class Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;
.super Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;
.source "ThreadedS3Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jets3t/service/multi/s3/ThreadedS3Service;->multipartUploadParts(Ljava/util/List;)Z
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
    .line 256
    iput-object p1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    iput-object p6, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;->val$uniqueOperationId:Ljava/lang/Object;

    iput-object p7, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;->val$incompletedObjectsList:Ljava/util/List;

    iput-object p8, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;->val$success:[Z

    invoke-direct/range {p0 .. p5}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;Z)V

    return-void
.end method


# virtual methods
.method public fireCancelEvent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 271
    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;->val$incompletedObjectsList:Ljava/util/List;

    iget-object v2, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;->val$incompletedObjectsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jets3t/service/model/StorageObject;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jets3t/service/model/StorageObject;

    .line 273
    .local v0, "incompletedObjects":[Lorg/jets3t/service/model/StorageObject;
    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;->val$success:[Z

    aput-boolean v3, v1, v3

    .line 274
    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    iget-object v2, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/jets3t/service/multi/s3/MultipartUploadsEvent;->newCancelledEvent([Lorg/jets3t/service/model/StorageObject;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartUploadsEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 275
    return-void
.end method

.method public fireCompletedEvent()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {v1}, Lorg/jets3t/service/multi/s3/MultipartUploadsEvent;->newCompletedEvent(Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartUploadsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 279
    return-void
.end method

.method public fireErrorEvent(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 282
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;->val$success:[Z

    aput-boolean v1, v0, v1

    .line 283
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/jets3t/service/multi/s3/MultipartUploadsEvent;->newErrorEvent(Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartUploadsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 284
    return-void
.end method

.method public fireIgnoredErrorsEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p2, "ignoredErrors"    # [Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 287
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;->val$success:[Z

    aput-boolean v1, v0, v1

    .line 288
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lorg/jets3t/service/multi/s3/MultipartUploadsEvent;->newIgnoredErrorsEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartUploadsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 289
    return-void
.end method

.method public fireProgressEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/util/List;)V
    .locals 3
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p2, "completedResults"    # Ljava/util/List;

    .prologue
    .line 263
    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;->val$incompletedObjectsList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 264
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/jets3t/service/model/StorageObject;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/jets3t/service/model/StorageObject;

    move-object v0, v1

    check-cast v0, [Lorg/jets3t/service/model/StorageObject;

    .line 266
    .local v0, "completedObjects":[Lorg/jets3t/service/model/StorageObject;
    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    iget-object v2, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lorg/jets3t/service/multi/s3/MultipartUploadsEvent;->newInProgressEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Lorg/jets3t/service/model/StorageObject;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartUploadsEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 268
    return-void
.end method

.method public fireStartEvent(Lorg/jets3t/service/multi/ThreadWatcher;)V
    .locals 2
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;

    .prologue
    .line 259
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$3;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/jets3t/service/multi/s3/MultipartUploadsEvent;->newStartedEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartUploadsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 260
    return-void
.end method
