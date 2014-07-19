.class public Lorg/jets3t/service/multi/event/UpdateACLEvent;
.super Lorg/jets3t/service/multi/event/ServiceEvent;
.source "UpdateACLEvent.java"


# instance fields
.field private objects:[Lorg/jets3t/service/model/StorageObject;


# direct methods
.method private constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "eventCode"    # I
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/multi/event/ServiceEvent;-><init>(ILjava/lang/Object;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/multi/event/UpdateACLEvent;->objects:[Lorg/jets3t/service/model/StorageObject;

    .line 45
    return-void
.end method

.method public static newCancelledEvent([Lorg/jets3t/service/model/StorageObject;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/UpdateACLEvent;
    .locals 2
    .param p0, "incompletedObjects"    # [Lorg/jets3t/service/model/StorageObject;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 75
    new-instance v0, Lorg/jets3t/service/multi/event/UpdateACLEvent;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multi/event/UpdateACLEvent;-><init>(ILjava/lang/Object;)V

    .line 76
    .local v0, "event":Lorg/jets3t/service/multi/event/UpdateACLEvent;
    invoke-direct {v0, p0}, Lorg/jets3t/service/multi/event/UpdateACLEvent;->setObjects([Lorg/jets3t/service/model/StorageObject;)V

    .line 77
    return-object v0
.end method

.method public static newCompletedEvent(Ljava/lang/Object;)Lorg/jets3t/service/multi/event/UpdateACLEvent;
    .locals 2
    .param p0, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 70
    new-instance v0, Lorg/jets3t/service/multi/event/UpdateACLEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/jets3t/service/multi/event/UpdateACLEvent;-><init>(ILjava/lang/Object;)V

    .line 71
    .local v0, "event":Lorg/jets3t/service/multi/event/UpdateACLEvent;
    return-object v0
.end method

.method public static newErrorEvent(Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/UpdateACLEvent;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 49
    new-instance v0, Lorg/jets3t/service/multi/event/UpdateACLEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multi/event/UpdateACLEvent;-><init>(ILjava/lang/Object;)V

    .line 50
    .local v0, "event":Lorg/jets3t/service/multi/event/UpdateACLEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setErrorCause(Ljava/lang/Throwable;)V

    .line 51
    return-object v0
.end method

.method public static newIgnoredErrorsEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/UpdateACLEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p1, "ignoredErrors"    # [Ljava/lang/Throwable;
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 83
    new-instance v0, Lorg/jets3t/service/multi/event/UpdateACLEvent;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p2}, Lorg/jets3t/service/multi/event/UpdateACLEvent;-><init>(ILjava/lang/Object;)V

    .line 84
    .local v0, "event":Lorg/jets3t/service/multi/event/UpdateACLEvent;
    invoke-virtual {v0, p1}, Lorg/jets3t/service/multi/event/ServiceEvent;->setIgnoredErrors([Ljava/lang/Throwable;)V

    .line 85
    return-object v0
.end method

.method public static newInProgressEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Lorg/jets3t/service/model/StorageObject;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/UpdateACLEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p1, "completedObjects"    # [Lorg/jets3t/service/model/StorageObject;
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 63
    new-instance v0, Lorg/jets3t/service/multi/event/UpdateACLEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2}, Lorg/jets3t/service/multi/event/UpdateACLEvent;-><init>(ILjava/lang/Object;)V

    .line 64
    .local v0, "event":Lorg/jets3t/service/multi/event/UpdateACLEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 65
    invoke-direct {v0, p1}, Lorg/jets3t/service/multi/event/UpdateACLEvent;->setObjects([Lorg/jets3t/service/model/StorageObject;)V

    .line 66
    return-object v0
.end method

.method public static newStartedEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/UpdateACLEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 55
    new-instance v0, Lorg/jets3t/service/multi/event/UpdateACLEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multi/event/UpdateACLEvent;-><init>(ILjava/lang/Object;)V

    .line 56
    .local v0, "event":Lorg/jets3t/service/multi/event/UpdateACLEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 57
    return-object v0
.end method

.method private setObjects([Lorg/jets3t/service/model/StorageObject;)V
    .locals 0
    .param p1, "objects"    # [Lorg/jets3t/service/model/StorageObject;

    .prologue
    .line 90
    iput-object p1, p0, Lorg/jets3t/service/multi/event/UpdateACLEvent;->objects:[Lorg/jets3t/service/model/StorageObject;

    .line 91
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
    .line 113
    invoke-virtual {p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cancelled Objects are  only available from EVENT_CANCELLED events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/event/UpdateACLEvent;->objects:[Lorg/jets3t/service/model/StorageObject;

    return-object v0
.end method

.method public getObjectsWithUpdatedACL()[Lorg/jets3t/service/model/StorageObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Completed Objects are only available from EVENT_IN_PROGRESS events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/event/UpdateACLEvent;->objects:[Lorg/jets3t/service/model/StorageObject;

    return-object v0
.end method
