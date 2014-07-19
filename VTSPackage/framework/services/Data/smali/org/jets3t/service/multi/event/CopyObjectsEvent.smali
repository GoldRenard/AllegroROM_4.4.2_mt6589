.class public Lorg/jets3t/service/multi/event/CopyObjectsEvent;
.super Lorg/jets3t/service/multi/event/ServiceEvent;
.source "CopyObjectsEvent.java"


# instance fields
.field private copyCancelledObjects:[Lorg/jets3t/service/model/StorageObject;

.field private destinationObjects:[Lorg/jets3t/service/model/StorageObject;

.field private results:[Ljava/util/Map;

.field private sourceObjectKeys:[Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "eventCode"    # I
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/multi/event/ServiceEvent;-><init>(ILjava/lang/Object;)V

    .line 44
    iput-object v0, p0, Lorg/jets3t/service/multi/event/CopyObjectsEvent;->results:[Ljava/util/Map;

    .line 45
    iput-object v0, p0, Lorg/jets3t/service/multi/event/CopyObjectsEvent;->copyCancelledObjects:[Lorg/jets3t/service/model/StorageObject;

    .line 46
    iput-object v0, p0, Lorg/jets3t/service/multi/event/CopyObjectsEvent;->destinationObjects:[Lorg/jets3t/service/model/StorageObject;

    .line 47
    iput-object v0, p0, Lorg/jets3t/service/multi/event/CopyObjectsEvent;->sourceObjectKeys:[Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static newCancelledEvent([Lorg/jets3t/service/model/StorageObject;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/CopyObjectsEvent;
    .locals 2
    .param p0, "incompletedObjects"    # [Lorg/jets3t/service/model/StorageObject;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 85
    new-instance v0, Lorg/jets3t/service/multi/event/CopyObjectsEvent;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multi/event/CopyObjectsEvent;-><init>(ILjava/lang/Object;)V

    .line 86
    .local v0, "event":Lorg/jets3t/service/multi/event/CopyObjectsEvent;
    invoke-direct {v0, p0}, Lorg/jets3t/service/multi/event/CopyObjectsEvent;->setCopyCancelledObjects([Lorg/jets3t/service/model/StorageObject;)V

    .line 87
    return-object v0
.end method

.method public static newCompletedEvent(Ljava/lang/Object;[Ljava/lang/String;[Lorg/jets3t/service/model/StorageObject;)Lorg/jets3t/service/multi/event/CopyObjectsEvent;
    .locals 2
    .param p0, "uniqueOperationId"    # Ljava/lang/Object;
    .param p1, "sourceObjectKeys"    # [Ljava/lang/String;
    .param p2, "destinationObjects"    # [Lorg/jets3t/service/model/StorageObject;

    .prologue
    .line 78
    new-instance v0, Lorg/jets3t/service/multi/event/CopyObjectsEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/jets3t/service/multi/event/CopyObjectsEvent;-><init>(ILjava/lang/Object;)V

    .line 79
    .local v0, "event":Lorg/jets3t/service/multi/event/CopyObjectsEvent;
    invoke-direct {v0, p2}, Lorg/jets3t/service/multi/event/CopyObjectsEvent;->setDestinationObjects([Lorg/jets3t/service/model/StorageObject;)V

    .line 80
    invoke-direct {v0, p1}, Lorg/jets3t/service/multi/event/CopyObjectsEvent;->setSourceObjectKeys([Ljava/lang/String;)V

    .line 81
    return-object v0
.end method

.method public static newErrorEvent(Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/CopyObjectsEvent;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 55
    new-instance v0, Lorg/jets3t/service/multi/event/CopyObjectsEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multi/event/CopyObjectsEvent;-><init>(ILjava/lang/Object;)V

    .line 56
    .local v0, "event":Lorg/jets3t/service/multi/event/CopyObjectsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setErrorCause(Ljava/lang/Throwable;)V

    .line 57
    return-object v0
.end method

.method public static newIgnoredErrorsEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/CopyObjectsEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p1, "ignoredErrors"    # [Ljava/lang/Throwable;
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 93
    new-instance v0, Lorg/jets3t/service/multi/event/CopyObjectsEvent;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p2}, Lorg/jets3t/service/multi/event/CopyObjectsEvent;-><init>(ILjava/lang/Object;)V

    .line 94
    .local v0, "event":Lorg/jets3t/service/multi/event/CopyObjectsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 95
    invoke-virtual {v0, p1}, Lorg/jets3t/service/multi/event/ServiceEvent;->setIgnoredErrors([Ljava/lang/Throwable;)V

    .line 96
    return-object v0
.end method

.method public static newInProgressEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/util/Map;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/CopyObjectsEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p1, "completedResults"    # [Ljava/util/Map;
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 69
    new-instance v0, Lorg/jets3t/service/multi/event/CopyObjectsEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2}, Lorg/jets3t/service/multi/event/CopyObjectsEvent;-><init>(ILjava/lang/Object;)V

    .line 70
    .local v0, "event":Lorg/jets3t/service/multi/event/CopyObjectsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 71
    invoke-direct {v0, p1}, Lorg/jets3t/service/multi/event/CopyObjectsEvent;->setResults([Ljava/util/Map;)V

    .line 72
    return-object v0
.end method

.method public static newStartedEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/CopyObjectsEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 61
    new-instance v0, Lorg/jets3t/service/multi/event/CopyObjectsEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multi/event/CopyObjectsEvent;-><init>(ILjava/lang/Object;)V

    .line 62
    .local v0, "event":Lorg/jets3t/service/multi/event/CopyObjectsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 63
    return-object v0
.end method

.method private setCopyCancelledObjects([Lorg/jets3t/service/model/StorageObject;)V
    .locals 0
    .param p1, "objects"    # [Lorg/jets3t/service/model/StorageObject;

    .prologue
    .line 108
    iput-object p1, p0, Lorg/jets3t/service/multi/event/CopyObjectsEvent;->copyCancelledObjects:[Lorg/jets3t/service/model/StorageObject;

    .line 109
    return-void
.end method

.method private setDestinationObjects([Lorg/jets3t/service/model/StorageObject;)V
    .locals 0
    .param p1, "objects"    # [Lorg/jets3t/service/model/StorageObject;

    .prologue
    .line 112
    iput-object p1, p0, Lorg/jets3t/service/multi/event/CopyObjectsEvent;->destinationObjects:[Lorg/jets3t/service/model/StorageObject;

    .line 113
    return-void
.end method

.method private setResults([Ljava/util/Map;)V
    .locals 0
    .param p1, "results"    # [Ljava/util/Map;

    .prologue
    .line 100
    iput-object p1, p0, Lorg/jets3t/service/multi/event/CopyObjectsEvent;->results:[Ljava/util/Map;

    .line 101
    return-void
.end method

.method private setSourceObjectKeys([Ljava/lang/String;)V
    .locals 0
    .param p1, "sourceObjectKeys"    # [Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lorg/jets3t/service/multi/event/CopyObjectsEvent;->sourceObjectKeys:[Ljava/lang/String;

    .line 105
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
    .line 136
    invoke-virtual {p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cancelled Objects are only available from EVENT_CANCELLED events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/event/CopyObjectsEvent;->copyCancelledObjects:[Lorg/jets3t/service/model/StorageObject;

    return-object v0
.end method

.method public getCopiedObjects()[Lorg/jets3t/service/model/StorageObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-virtual {p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cancelled Objects are only available from EVENT_COMPLETED events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/event/CopyObjectsEvent;->destinationObjects:[Lorg/jets3t/service/model/StorageObject;

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
    .line 122
    invoke-virtual {p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 123
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Copy results are only available from EVENT_IN_PROGRESS events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/event/CopyObjectsEvent;->results:[Ljava/util/Map;

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
    .line 162
    invoke-virtual {p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Source Objects are only available from EVENT_COMPLETED events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/event/CopyObjectsEvent;->sourceObjectKeys:[Ljava/lang/String;

    return-object v0
.end method
