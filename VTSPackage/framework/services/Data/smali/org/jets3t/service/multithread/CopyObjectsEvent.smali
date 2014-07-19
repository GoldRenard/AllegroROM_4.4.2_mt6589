.class public Lorg/jets3t/service/multithread/CopyObjectsEvent;
.super Lorg/jets3t/service/multithread/ServiceEvent;
.source "CopyObjectsEvent.java"


# instance fields
.field private copyCancelledObjects:[Lorg/jets3t/service/model/S3Object;

.field private destinationObjects:[Lorg/jets3t/service/model/S3Object;

.field private results:[Ljava/util/Map;

.field private sourceObjectKeys:[Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "eventCode"    # I
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/multithread/ServiceEvent;-><init>(ILjava/lang/Object;)V

    .line 42
    iput-object v0, p0, Lorg/jets3t/service/multithread/CopyObjectsEvent;->results:[Ljava/util/Map;

    .line 43
    iput-object v0, p0, Lorg/jets3t/service/multithread/CopyObjectsEvent;->copyCancelledObjects:[Lorg/jets3t/service/model/S3Object;

    .line 44
    iput-object v0, p0, Lorg/jets3t/service/multithread/CopyObjectsEvent;->destinationObjects:[Lorg/jets3t/service/model/S3Object;

    .line 45
    iput-object v0, p0, Lorg/jets3t/service/multithread/CopyObjectsEvent;->sourceObjectKeys:[Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static newCancelledEvent([Lorg/jets3t/service/model/S3Object;Ljava/lang/Object;)Lorg/jets3t/service/multithread/CopyObjectsEvent;
    .locals 2
    .param p0, "incompletedObjects"    # [Lorg/jets3t/service/model/S3Object;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 83
    new-instance v0, Lorg/jets3t/service/multithread/CopyObjectsEvent;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multithread/CopyObjectsEvent;-><init>(ILjava/lang/Object;)V

    .line 84
    .local v0, "event":Lorg/jets3t/service/multithread/CopyObjectsEvent;
    invoke-direct {v0, p0}, Lorg/jets3t/service/multithread/CopyObjectsEvent;->setCopyCancelledObjects([Lorg/jets3t/service/model/S3Object;)V

    .line 85
    return-object v0
.end method

.method public static newCompletedEvent(Ljava/lang/Object;[Ljava/lang/String;[Lorg/jets3t/service/model/S3Object;)Lorg/jets3t/service/multithread/CopyObjectsEvent;
    .locals 2
    .param p0, "uniqueOperationId"    # Ljava/lang/Object;
    .param p1, "sourceObjectKeys"    # [Ljava/lang/String;
    .param p2, "destinationObjects"    # [Lorg/jets3t/service/model/S3Object;

    .prologue
    .line 76
    new-instance v0, Lorg/jets3t/service/multithread/CopyObjectsEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/jets3t/service/multithread/CopyObjectsEvent;-><init>(ILjava/lang/Object;)V

    .line 77
    .local v0, "event":Lorg/jets3t/service/multithread/CopyObjectsEvent;
    invoke-direct {v0, p2}, Lorg/jets3t/service/multithread/CopyObjectsEvent;->setDestinationObjects([Lorg/jets3t/service/model/S3Object;)V

    .line 78
    invoke-direct {v0, p1}, Lorg/jets3t/service/multithread/CopyObjectsEvent;->setSourceObjectKeys([Ljava/lang/String;)V

    .line 79
    return-object v0
.end method

.method public static newErrorEvent(Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multithread/CopyObjectsEvent;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 53
    new-instance v0, Lorg/jets3t/service/multithread/CopyObjectsEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multithread/CopyObjectsEvent;-><init>(ILjava/lang/Object;)V

    .line 54
    .local v0, "event":Lorg/jets3t/service/multithread/CopyObjectsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setErrorCause(Ljava/lang/Throwable;)V

    .line 55
    return-object v0
.end method

.method public static newIgnoredErrorsEvent(Lorg/jets3t/service/multithread/ThreadWatcher;[Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multithread/CopyObjectsEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multithread/ThreadWatcher;
    .param p1, "ignoredErrors"    # [Ljava/lang/Throwable;
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 91
    new-instance v0, Lorg/jets3t/service/multithread/CopyObjectsEvent;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p2}, Lorg/jets3t/service/multithread/CopyObjectsEvent;-><init>(ILjava/lang/Object;)V

    .line 92
    .local v0, "event":Lorg/jets3t/service/multithread/CopyObjectsEvent;
    invoke-virtual {v0, p1}, Lorg/jets3t/service/multi/event/ServiceEvent;->setIgnoredErrors([Ljava/lang/Throwable;)V

    .line 93
    return-object v0
.end method

.method public static newInProgressEvent(Lorg/jets3t/service/multithread/ThreadWatcher;[Ljava/util/Map;Ljava/lang/Object;)Lorg/jets3t/service/multithread/CopyObjectsEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multithread/ThreadWatcher;
    .param p1, "completedResults"    # [Ljava/util/Map;
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 67
    new-instance v0, Lorg/jets3t/service/multithread/CopyObjectsEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2}, Lorg/jets3t/service/multithread/CopyObjectsEvent;-><init>(ILjava/lang/Object;)V

    .line 68
    .local v0, "event":Lorg/jets3t/service/multithread/CopyObjectsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 69
    invoke-direct {v0, p1}, Lorg/jets3t/service/multithread/CopyObjectsEvent;->setResults([Ljava/util/Map;)V

    .line 70
    return-object v0
.end method

.method public static newStartedEvent(Lorg/jets3t/service/multithread/ThreadWatcher;Ljava/lang/Object;)Lorg/jets3t/service/multithread/CopyObjectsEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multithread/ThreadWatcher;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 59
    new-instance v0, Lorg/jets3t/service/multithread/CopyObjectsEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multithread/CopyObjectsEvent;-><init>(ILjava/lang/Object;)V

    .line 60
    .local v0, "event":Lorg/jets3t/service/multithread/CopyObjectsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 61
    return-object v0
.end method

.method private setCopyCancelledObjects([Lorg/jets3t/service/model/S3Object;)V
    .locals 0
    .param p1, "objects"    # [Lorg/jets3t/service/model/S3Object;

    .prologue
    .line 105
    iput-object p1, p0, Lorg/jets3t/service/multithread/CopyObjectsEvent;->copyCancelledObjects:[Lorg/jets3t/service/model/S3Object;

    .line 106
    return-void
.end method

.method private setDestinationObjects([Lorg/jets3t/service/model/S3Object;)V
    .locals 0
    .param p1, "objects"    # [Lorg/jets3t/service/model/S3Object;

    .prologue
    .line 109
    iput-object p1, p0, Lorg/jets3t/service/multithread/CopyObjectsEvent;->destinationObjects:[Lorg/jets3t/service/model/S3Object;

    .line 110
    return-void
.end method

.method private setResults([Ljava/util/Map;)V
    .locals 0
    .param p1, "results"    # [Ljava/util/Map;

    .prologue
    .line 97
    iput-object p1, p0, Lorg/jets3t/service/multithread/CopyObjectsEvent;->results:[Ljava/util/Map;

    .line 98
    return-void
.end method

.method private setSourceObjectKeys([Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceObjectKeys"    # [Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lorg/jets3t/service/multithread/CopyObjectsEvent;->sourceObjectKeys:[Ljava/lang/String;

    .line 102
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
    .line 132
    invoke-virtual {p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cancelled Objects are only available from EVENT_CANCELLED events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multithread/CopyObjectsEvent;->copyCancelledObjects:[Lorg/jets3t/service/model/S3Object;

    return-object v0
.end method

.method public getCopiedObjects()[Lorg/jets3t/service/model/S3Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cancelled Objects are only available from EVENT_COMPLETED events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multithread/CopyObjectsEvent;->destinationObjects:[Lorg/jets3t/service/model/S3Object;

    return-object v0
.end method

.method public getCopyResults()[Ljava/util/Map;
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

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Copy results are only available from EVENT_IN_PROGRESS events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multithread/CopyObjectsEvent;->results:[Ljava/util/Map;

    return-object v0
.end method

.method public getSourceObjectKeys()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Source Objects are only available from EVENT_COMPLETED events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multithread/CopyObjectsEvent;->sourceObjectKeys:[Ljava/lang/String;

    return-object v0
.end method
