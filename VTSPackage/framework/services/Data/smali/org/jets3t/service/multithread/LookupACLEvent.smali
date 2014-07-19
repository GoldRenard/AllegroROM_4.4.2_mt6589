.class public Lorg/jets3t/service/multithread/LookupACLEvent;
.super Lorg/jets3t/service/multithread/ServiceEvent;
.source "LookupACLEvent.java"


# instance fields
.field private objects:[Lorg/jets3t/service/model/S3Object;


# direct methods
.method private constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "eventCode"    # I
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/multithread/ServiceEvent;-><init>(ILjava/lang/Object;)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/multithread/LookupACLEvent;->objects:[Lorg/jets3t/service/model/S3Object;

    .line 42
    return-void
.end method

.method public static newCancelledEvent([Lorg/jets3t/service/model/S3Object;Ljava/lang/Object;)Lorg/jets3t/service/multithread/LookupACLEvent;
    .locals 2
    .param p0, "incompletedObjects"    # [Lorg/jets3t/service/model/S3Object;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 74
    new-instance v0, Lorg/jets3t/service/multithread/LookupACLEvent;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multithread/LookupACLEvent;-><init>(ILjava/lang/Object;)V

    .line 75
    .local v0, "event":Lorg/jets3t/service/multithread/LookupACLEvent;
    invoke-direct {v0, p0}, Lorg/jets3t/service/multithread/LookupACLEvent;->setObjects([Lorg/jets3t/service/model/S3Object;)V

    .line 76
    return-object v0
.end method

.method public static newCompletedEvent(Ljava/lang/Object;)Lorg/jets3t/service/multithread/LookupACLEvent;
    .locals 2
    .param p0, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 67
    new-instance v0, Lorg/jets3t/service/multithread/LookupACLEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/jets3t/service/multithread/LookupACLEvent;-><init>(ILjava/lang/Object;)V

    .line 68
    .local v0, "event":Lorg/jets3t/service/multithread/LookupACLEvent;
    return-object v0
.end method

.method public static newErrorEvent(Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multithread/LookupACLEvent;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 46
    new-instance v0, Lorg/jets3t/service/multithread/LookupACLEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multithread/LookupACLEvent;-><init>(ILjava/lang/Object;)V

    .line 47
    .local v0, "event":Lorg/jets3t/service/multithread/LookupACLEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setErrorCause(Ljava/lang/Throwable;)V

    .line 48
    return-object v0
.end method

.method public static newIgnoredErrorsEvent(Lorg/jets3t/service/multithread/ThreadWatcher;[Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multithread/LookupACLEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multithread/ThreadWatcher;
    .param p1, "ignoredErrors"    # [Ljava/lang/Throwable;
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 82
    new-instance v0, Lorg/jets3t/service/multithread/LookupACLEvent;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p2}, Lorg/jets3t/service/multithread/LookupACLEvent;-><init>(ILjava/lang/Object;)V

    .line 83
    .local v0, "event":Lorg/jets3t/service/multithread/LookupACLEvent;
    invoke-virtual {v0, p1}, Lorg/jets3t/service/multi/event/ServiceEvent;->setIgnoredErrors([Ljava/lang/Throwable;)V

    .line 84
    return-object v0
.end method

.method public static newInProgressEvent(Lorg/jets3t/service/multithread/ThreadWatcher;[Lorg/jets3t/service/model/S3Object;Ljava/lang/Object;)Lorg/jets3t/service/multithread/LookupACLEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multithread/ThreadWatcher;
    .param p1, "completedObjects"    # [Lorg/jets3t/service/model/S3Object;
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 60
    new-instance v0, Lorg/jets3t/service/multithread/LookupACLEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2}, Lorg/jets3t/service/multithread/LookupACLEvent;-><init>(ILjava/lang/Object;)V

    .line 61
    .local v0, "event":Lorg/jets3t/service/multithread/LookupACLEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 62
    invoke-direct {v0, p1}, Lorg/jets3t/service/multithread/LookupACLEvent;->setObjects([Lorg/jets3t/service/model/S3Object;)V

    .line 63
    return-object v0
.end method

.method public static newStartedEvent(Lorg/jets3t/service/multithread/ThreadWatcher;Ljava/lang/Object;)Lorg/jets3t/service/multithread/LookupACLEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multithread/ThreadWatcher;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 52
    new-instance v0, Lorg/jets3t/service/multithread/LookupACLEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multithread/LookupACLEvent;-><init>(ILjava/lang/Object;)V

    .line 53
    .local v0, "event":Lorg/jets3t/service/multithread/LookupACLEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 54
    return-object v0
.end method

.method private setObjects([Lorg/jets3t/service/model/S3Object;)V
    .locals 0
    .param p1, "objects"    # [Lorg/jets3t/service/model/S3Object;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/jets3t/service/multithread/LookupACLEvent;->objects:[Lorg/jets3t/service/model/S3Object;

    .line 90
    return-void
.end method


# virtual methods
.method public getCancelledObjects()[Lorg/jets3t/service/model/S3Object;
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
    iget-object v0, p0, Lorg/jets3t/service/multithread/LookupACLEvent;->objects:[Lorg/jets3t/service/model/S3Object;

    return-object v0
.end method

.method public getObjectsWithACL()[Lorg/jets3t/service/model/S3Object;
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

    const-string v1, "Completed Objects are only available from EVENT_IN_PROGRESS events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multithread/LookupACLEvent;->objects:[Lorg/jets3t/service/model/S3Object;

    return-object v0
.end method
