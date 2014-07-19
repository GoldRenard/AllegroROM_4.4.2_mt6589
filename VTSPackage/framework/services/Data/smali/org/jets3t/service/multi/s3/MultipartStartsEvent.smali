.class public Lorg/jets3t/service/multi/s3/MultipartStartsEvent;
.super Lorg/jets3t/service/multi/event/ServiceEvent;
.source "MultipartStartsEvent.java"


# instance fields
.field private completedMultipartUploads:[Lorg/jets3t/service/model/MultipartUpload;

.field private incompletedObjects:[Lorg/jets3t/service/model/StorageObject;


# direct methods
.method private constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "eventCode"    # I
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/multi/event/ServiceEvent;-><init>(ILjava/lang/Object;)V

    .line 42
    iput-object v0, p0, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;->completedMultipartUploads:[Lorg/jets3t/service/model/MultipartUpload;

    .line 43
    iput-object v0, p0, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;->incompletedObjects:[Lorg/jets3t/service/model/StorageObject;

    .line 47
    return-void
.end method

.method public static newCancelledEvent([Lorg/jets3t/service/model/StorageObject;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartStartsEvent;
    .locals 2
    .param p0, "incompletedObjects"    # [Lorg/jets3t/service/model/StorageObject;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 77
    new-instance v0, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;-><init>(ILjava/lang/Object;)V

    .line 78
    .local v0, "event":Lorg/jets3t/service/multi/s3/MultipartStartsEvent;
    invoke-direct {v0, p0}, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;->setIncompletedObjects([Lorg/jets3t/service/model/StorageObject;)V

    .line 79
    return-object v0
.end method

.method public static newCompletedEvent(Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartStartsEvent;
    .locals 2
    .param p0, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 72
    new-instance v0, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;-><init>(ILjava/lang/Object;)V

    .line 73
    .local v0, "event":Lorg/jets3t/service/multi/s3/MultipartStartsEvent;
    return-object v0
.end method

.method public static newErrorEvent(Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartStartsEvent;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 51
    new-instance v0, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;-><init>(ILjava/lang/Object;)V

    .line 52
    .local v0, "event":Lorg/jets3t/service/multi/s3/MultipartStartsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setErrorCause(Ljava/lang/Throwable;)V

    .line 53
    return-object v0
.end method

.method public static newIgnoredErrorsEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartStartsEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p1, "ignoredErrors"    # [Ljava/lang/Throwable;
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 85
    new-instance v0, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p2}, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;-><init>(ILjava/lang/Object;)V

    .line 86
    .local v0, "event":Lorg/jets3t/service/multi/s3/MultipartStartsEvent;
    invoke-virtual {v0, p1}, Lorg/jets3t/service/multi/event/ServiceEvent;->setIgnoredErrors([Ljava/lang/Throwable;)V

    .line 87
    return-object v0
.end method

.method public static newInProgressEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Lorg/jets3t/service/model/MultipartUpload;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartStartsEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p1, "completedMultipartUploads"    # [Lorg/jets3t/service/model/MultipartUpload;
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 65
    new-instance v0, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2}, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;-><init>(ILjava/lang/Object;)V

    .line 66
    .local v0, "event":Lorg/jets3t/service/multi/s3/MultipartStartsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 67
    invoke-direct {v0, p1}, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;->setCompletedUploads([Lorg/jets3t/service/model/MultipartUpload;)V

    .line 68
    return-object v0
.end method

.method public static newStartedEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/lang/Object;)Lorg/jets3t/service/multi/s3/MultipartStartsEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 57
    new-instance v0, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;-><init>(ILjava/lang/Object;)V

    .line 58
    .local v0, "event":Lorg/jets3t/service/multi/s3/MultipartStartsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 59
    return-object v0
.end method

.method private setCompletedUploads([Lorg/jets3t/service/model/MultipartUpload;)V
    .locals 0
    .param p1, "uploads"    # [Lorg/jets3t/service/model/MultipartUpload;

    .prologue
    .line 96
    iput-object p1, p0, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;->completedMultipartUploads:[Lorg/jets3t/service/model/MultipartUpload;

    .line 97
    return-void
.end method

.method private setIncompletedObjects([Lorg/jets3t/service/model/StorageObject;)V
    .locals 0
    .param p1, "objects"    # [Lorg/jets3t/service/model/StorageObject;

    .prologue
    .line 92
    iput-object p1, p0, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;->incompletedObjects:[Lorg/jets3t/service/model/StorageObject;

    .line 93
    return-void
.end method


# virtual methods
.method public getCancelledObjects()[Lorg/jets3t/service/model/StorageObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cancelled Objects are  only available from EVENT_CANCELLED events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;->incompletedObjects:[Lorg/jets3t/service/model/StorageObject;

    return-object v0
.end method

.method public getStartedUploads()[Lorg/jets3t/service/model/MultipartUpload;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Started Objects are only available from EVENT_IN_PROGRESS events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/s3/MultipartStartsEvent;->completedMultipartUploads:[Lorg/jets3t/service/model/MultipartUpload;

    return-object v0
.end method
