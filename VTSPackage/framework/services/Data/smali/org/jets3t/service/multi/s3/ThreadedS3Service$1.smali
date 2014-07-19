.class Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;
.super Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;
.source "ThreadedS3Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jets3t/service/multi/s3/ThreadedS3Service;->multipartStartUploads(Ljava/lang/String;Ljava/util/List;)Z
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
    .line 95
    iput-object p1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    iput-object p6, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->val$uniqueOperationId:Ljava/lang/Object;

    iput-object p7, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->val$incompletedObjectsList:Ljava/util/List;

    iput-object p8, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->val$success:[Z

    invoke-direct/range {p0 .. p5}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;Z)V

    return-void
.end method


# virtual methods
.method public fireCancelEvent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 120
    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->val$incompletedObjectsList:Ljava/util/List;

    iget-object v2, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->val$incompletedObjectsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/jets3t/service/model/StorageObject;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jets3t/service/model/StorageObject;

    .line 122
    .local v0, "incompletedObjects":[Lorg/jets3t/service/model/StorageObject;
    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->val$success:[Z

    aput-boolean v3, v1, v3

    .line 123
    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    iget-object v2, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;->newCancelledEvent([Lorg/jets3t/service/model/StorageObject;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartStartsEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 124
    return-void
.end method

.method public fireCompletedEvent()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {v1}, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;->newCompletedEvent(Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartStartsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 128
    return-void
.end method

.method public fireErrorEvent(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->val$success:[Z

    aput-boolean v1, v0, v1

    .line 132
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;->newErrorEvent(Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartStartsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 133
    return-void
.end method

.method public fireIgnoredErrorsEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p2, "ignoredErrors"    # [Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->val$success:[Z

    aput-boolean v1, v0, v1

    .line 137
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, p2, v1}, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;->newIgnoredErrorsEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartStartsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 138
    return-void
.end method

.method public fireProgressEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/util/List;)V
    .locals 10
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p2, "completedResults"    # Ljava/util/List;

    .prologue
    .line 102
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Lorg/jets3t/service/model/MultipartUpload;

    invoke-interface {p2, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/jets3t/service/model/MultipartUpload;

    move-object v1, v8

    check-cast v1, [Lorg/jets3t/service/model/MultipartUpload;

    .line 105
    .local v1, "completedObjects":[Lorg/jets3t/service/model/MultipartUpload;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v2, "completedStorageObjects":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/model/StorageObject;>;"
    move-object v0, v1

    .local v0, "arr$":[Lorg/jets3t/service/model/MultipartUpload;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v7, v0, v4

    .line 107
    .local v7, "upload":Lorg/jets3t/service/model/MultipartUpload;
    iget-object v8, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->val$incompletedObjectsList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jets3t/service/model/StorageObject;

    .line 108
    .local v6, "object":Lorg/jets3t/service/model/StorageObject;
    invoke-virtual {v6}, Lorg/jets3t/service/model/StorageObject;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lorg/jets3t/service/model/MultipartUpload;->getObjectKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 109
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 106
    .end local v6    # "object":Lorg/jets3t/service/model/StorageObject;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_0

    .line 113
    .end local v7    # "upload":Lorg/jets3t/service/model/MultipartUpload;
    :cond_2
    iget-object v8, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->val$incompletedObjectsList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 115
    iget-object v8, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    iget-object v9, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v1, v9}, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;->newInProgressEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Lorg/jets3t/service/model/MultipartUpload;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartStartsEvent;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 117
    return-void
.end method

.method public fireStartEvent(Lorg/jets3t/service/multi/ThreadWatcher;)V
    .locals 2
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;

    .prologue
    .line 98
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->this$0:Lorg/jets3t/service/multi/s3/ThreadedS3Service;

    iget-object v1, p0, Lorg/jets3t/service/multi/s3/ThreadedS3Service$1;->val$uniqueOperationId:Ljava/lang/Object;

    invoke-static {p1, v1}, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;->newStartedEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartStartsEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jets3t/service/multi/s3/ThreadedS3Service;->fireServiceEvent(Lorg/jets3t/service/multi/event/ServiceEvent;)V

    .line 99
    return-void
.end method
