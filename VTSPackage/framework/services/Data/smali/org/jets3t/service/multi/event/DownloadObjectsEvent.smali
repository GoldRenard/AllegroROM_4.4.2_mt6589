.class public Lorg/jets3t/service/multi/event/DownloadObjectsEvent;
.super Lorg/jets3t/service/multi/event/ServiceEvent;
.source "DownloadObjectsEvent.java"


# instance fields
.field private objects:[Lorg/jets3t/service/model/StorageObject;


# direct methods
.method private constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "eventCode"    # I
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/multi/event/ServiceEvent;-><init>(ILjava/lang/Object;)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/multi/event/DownloadObjectsEvent;->objects:[Lorg/jets3t/service/model/StorageObject;

    .line 44
    return-void
.end method

.method public static newCancelledEvent([Lorg/jets3t/service/model/StorageObject;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/DownloadObjectsEvent;
    .locals 2
    .param p0, "incompletedObjects"    # [Lorg/jets3t/service/model/StorageObject;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 74
    new-instance v0, Lorg/jets3t/service/multi/event/DownloadObjectsEvent;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multi/event/DownloadObjectsEvent;-><init>(ILjava/lang/Object;)V

    .line 75
    .local v0, "event":Lorg/jets3t/service/multi/event/DownloadObjectsEvent;
    invoke-direct {v0, p0}, Lorg/jets3t/service/multi/event/DownloadObjectsEvent;->setObjects([Lorg/jets3t/service/model/StorageObject;)V

    .line 76
    return-object v0
.end method

.method public static newCompletedEvent(Ljava/lang/Object;)Lorg/jets3t/service/multi/event/DownloadObjectsEvent;
    .locals 2
    .param p0, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 69
    new-instance v0, Lorg/jets3t/service/multi/event/DownloadObjectsEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/jets3t/service/multi/event/DownloadObjectsEvent;-><init>(ILjava/lang/Object;)V

    .line 70
    .local v0, "event":Lorg/jets3t/service/multi/event/DownloadObjectsEvent;
    return-object v0
.end method

.method public static newErrorEvent(Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/DownloadObjectsEvent;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 48
    new-instance v0, Lorg/jets3t/service/multi/event/DownloadObjectsEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multi/event/DownloadObjectsEvent;-><init>(ILjava/lang/Object;)V

    .line 49
    .local v0, "event":Lorg/jets3t/service/multi/event/DownloadObjectsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setErrorCause(Ljava/lang/Throwable;)V

    .line 50
    return-object v0
.end method

.method public static newIgnoredErrorsEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/DownloadObjectsEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p1, "ignoredErrors"    # [Ljava/lang/Throwable;
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 82
    new-instance v0, Lorg/jets3t/service/multi/event/DownloadObjectsEvent;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p2}, Lorg/jets3t/service/multi/event/DownloadObjectsEvent;-><init>(ILjava/lang/Object;)V

    .line 83
    .local v0, "event":Lorg/jets3t/service/multi/event/DownloadObjectsEvent;
    invoke-virtual {v0, p1}, Lorg/jets3t/service/multi/event/ServiceEvent;->setIgnoredErrors([Ljava/lang/Throwable;)V

    .line 84
    return-object v0
.end method

.method public static newInProgressEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Lorg/jets3t/service/model/StorageObject;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/DownloadObjectsEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p1, "completedObjects"    # [Lorg/jets3t/service/model/StorageObject;
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 62
    new-instance v0, Lorg/jets3t/service/multi/event/DownloadObjectsEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2}, Lorg/jets3t/service/multi/event/DownloadObjectsEvent;-><init>(ILjava/lang/Object;)V

    .line 63
    .local v0, "event":Lorg/jets3t/service/multi/event/DownloadObjectsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 64
    invoke-direct {v0, p1}, Lorg/jets3t/service/multi/event/DownloadObjectsEvent;->setObjects([Lorg/jets3t/service/model/StorageObject;)V

    .line 65
    return-object v0
.end method

.method public static newStartedEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/DownloadObjectsEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 54
    new-instance v0, Lorg/jets3t/service/multi/event/DownloadObjectsEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multi/event/DownloadObjectsEvent;-><init>(ILjava/lang/Object;)V

    .line 55
    .local v0, "event":Lorg/jets3t/service/multi/event/DownloadObjectsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 56
    return-object v0
.end method

.method private setObjects([Lorg/jets3t/service/model/StorageObject;)V
    .locals 0
    .param p1, "objects"    # [Lorg/jets3t/service/model/StorageObject;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/jets3t/service/multi/event/DownloadObjectsEvent;->objects:[Lorg/jets3t/service/model/StorageObject;

    .line 90
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
    .line 112
    invoke-virtual {p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cancelled Objects are  only available from EVENT_CANCELLED events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/event/DownloadObjectsEvent;->objects:[Lorg/jets3t/service/model/StorageObject;

    return-object v0
.end method

.method public getDownloadedObjects()[Lorg/jets3t/service/model/StorageObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Downloaded Objects are only available from EVENT_IN_PROGRESS events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/event/DownloadObjectsEvent;->objects:[Lorg/jets3t/service/model/StorageObject;

    return-object v0
.end method
