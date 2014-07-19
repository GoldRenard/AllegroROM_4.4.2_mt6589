.class public Lorg/jets3t/service/multi/event/CreateBucketsEvent;
.super Lorg/jets3t/service/multi/event/ServiceEvent;
.source "CreateBucketsEvent.java"


# instance fields
.field private buckets:[Lorg/jets3t/service/model/StorageBucket;


# direct methods
.method private constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "eventCode"    # I
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/multi/event/ServiceEvent;-><init>(ILjava/lang/Object;)V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/multi/event/CreateBucketsEvent;->buckets:[Lorg/jets3t/service/model/StorageBucket;

    .line 43
    return-void
.end method

.method public static newCancelledEvent([Lorg/jets3t/service/model/StorageBucket;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/CreateBucketsEvent;
    .locals 2
    .param p0, "incompletedBuckets"    # [Lorg/jets3t/service/model/StorageBucket;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 73
    new-instance v0, Lorg/jets3t/service/multi/event/CreateBucketsEvent;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multi/event/CreateBucketsEvent;-><init>(ILjava/lang/Object;)V

    .line 74
    .local v0, "event":Lorg/jets3t/service/multi/event/CreateBucketsEvent;
    invoke-direct {v0, p0}, Lorg/jets3t/service/multi/event/CreateBucketsEvent;->setBuckets([Lorg/jets3t/service/model/StorageBucket;)V

    .line 75
    return-object v0
.end method

.method public static newCompletedEvent(Ljava/lang/Object;)Lorg/jets3t/service/multi/event/CreateBucketsEvent;
    .locals 2
    .param p0, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 68
    new-instance v0, Lorg/jets3t/service/multi/event/CreateBucketsEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/jets3t/service/multi/event/CreateBucketsEvent;-><init>(ILjava/lang/Object;)V

    .line 69
    .local v0, "event":Lorg/jets3t/service/multi/event/CreateBucketsEvent;
    return-object v0
.end method

.method public static newErrorEvent(Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/CreateBucketsEvent;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 47
    new-instance v0, Lorg/jets3t/service/multi/event/CreateBucketsEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multi/event/CreateBucketsEvent;-><init>(ILjava/lang/Object;)V

    .line 48
    .local v0, "event":Lorg/jets3t/service/multi/event/CreateBucketsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setErrorCause(Ljava/lang/Throwable;)V

    .line 49
    return-object v0
.end method

.method public static newIgnoredErrorsEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/CreateBucketsEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p1, "ignoredErrors"    # [Ljava/lang/Throwable;
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 81
    new-instance v0, Lorg/jets3t/service/multi/event/CreateBucketsEvent;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p2}, Lorg/jets3t/service/multi/event/CreateBucketsEvent;-><init>(ILjava/lang/Object;)V

    .line 82
    .local v0, "event":Lorg/jets3t/service/multi/event/CreateBucketsEvent;
    invoke-virtual {v0, p1}, Lorg/jets3t/service/multi/event/ServiceEvent;->setIgnoredErrors([Ljava/lang/Throwable;)V

    .line 83
    return-object v0
.end method

.method public static newInProgressEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Lorg/jets3t/service/model/StorageBucket;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/CreateBucketsEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p1, "completedBuckets"    # [Lorg/jets3t/service/model/StorageBucket;
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 61
    new-instance v0, Lorg/jets3t/service/multi/event/CreateBucketsEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2}, Lorg/jets3t/service/multi/event/CreateBucketsEvent;-><init>(ILjava/lang/Object;)V

    .line 62
    .local v0, "event":Lorg/jets3t/service/multi/event/CreateBucketsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 63
    invoke-direct {v0, p1}, Lorg/jets3t/service/multi/event/CreateBucketsEvent;->setBuckets([Lorg/jets3t/service/model/StorageBucket;)V

    .line 64
    return-object v0
.end method

.method public static newStartedEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/CreateBucketsEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 53
    new-instance v0, Lorg/jets3t/service/multi/event/CreateBucketsEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multi/event/CreateBucketsEvent;-><init>(ILjava/lang/Object;)V

    .line 54
    .local v0, "event":Lorg/jets3t/service/multi/event/CreateBucketsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 55
    return-object v0
.end method

.method private setBuckets([Lorg/jets3t/service/model/StorageBucket;)V
    .locals 0
    .param p1, "buckets"    # [Lorg/jets3t/service/model/StorageBucket;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/jets3t/service/multi/event/CreateBucketsEvent;->buckets:[Lorg/jets3t/service/model/StorageBucket;

    .line 89
    return-void
.end method


# virtual methods
.method public getCancelledBuckets()[Lorg/jets3t/service/model/StorageBucket;
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

    const-string v1, "Cancelled Buckets are  only available from EVENT_CANCELLED events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/event/CreateBucketsEvent;->buckets:[Lorg/jets3t/service/model/StorageBucket;

    return-object v0
.end method

.method public getCreatedBuckets()[Lorg/jets3t/service/model/StorageBucket;
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

    const-string v1, "Created Buckets are only available from EVENT_IN_PROGRESS events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/event/CreateBucketsEvent;->buckets:[Lorg/jets3t/service/model/StorageBucket;

    return-object v0
.end method
