.class public Lorg/jets3t/service/multithread/CreateBucketsEvent;
.super Lorg/jets3t/service/multithread/ServiceEvent;
.source "CreateBucketsEvent.java"


# instance fields
.field private buckets:[Lorg/jets3t/service/model/S3Bucket;


# direct methods
.method private constructor <init>(ILjava/lang/Object;)V
    .locals 1
    .param p1, "eventCode"    # I
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/multithread/ServiceEvent;-><init>(ILjava/lang/Object;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jets3t/service/multithread/CreateBucketsEvent;->buckets:[Lorg/jets3t/service/model/S3Bucket;

    .line 41
    return-void
.end method

.method public static newCancelledEvent([Lorg/jets3t/service/model/S3Bucket;Ljava/lang/Object;)Lorg/jets3t/service/multithread/CreateBucketsEvent;
    .locals 2
    .param p0, "incompletedBuckets"    # [Lorg/jets3t/service/model/S3Bucket;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 71
    new-instance v0, Lorg/jets3t/service/multithread/CreateBucketsEvent;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multithread/CreateBucketsEvent;-><init>(ILjava/lang/Object;)V

    .line 72
    .local v0, "event":Lorg/jets3t/service/multithread/CreateBucketsEvent;
    invoke-direct {v0, p0}, Lorg/jets3t/service/multithread/CreateBucketsEvent;->setBuckets([Lorg/jets3t/service/model/S3Bucket;)V

    .line 73
    return-object v0
.end method

.method public static newCompletedEvent(Ljava/lang/Object;)Lorg/jets3t/service/multithread/CreateBucketsEvent;
    .locals 2
    .param p0, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 66
    new-instance v0, Lorg/jets3t/service/multithread/CreateBucketsEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/jets3t/service/multithread/CreateBucketsEvent;-><init>(ILjava/lang/Object;)V

    .line 67
    .local v0, "event":Lorg/jets3t/service/multithread/CreateBucketsEvent;
    return-object v0
.end method

.method public static newErrorEvent(Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multithread/CreateBucketsEvent;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 45
    new-instance v0, Lorg/jets3t/service/multithread/CreateBucketsEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multithread/CreateBucketsEvent;-><init>(ILjava/lang/Object;)V

    .line 46
    .local v0, "event":Lorg/jets3t/service/multithread/CreateBucketsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setErrorCause(Ljava/lang/Throwable;)V

    .line 47
    return-object v0
.end method

.method public static newIgnoredErrorsEvent(Lorg/jets3t/service/multithread/ThreadWatcher;[Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multithread/CreateBucketsEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multithread/ThreadWatcher;
    .param p1, "ignoredErrors"    # [Ljava/lang/Throwable;
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 79
    new-instance v0, Lorg/jets3t/service/multithread/CreateBucketsEvent;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p2}, Lorg/jets3t/service/multithread/CreateBucketsEvent;-><init>(ILjava/lang/Object;)V

    .line 80
    .local v0, "event":Lorg/jets3t/service/multithread/CreateBucketsEvent;
    invoke-virtual {v0, p1}, Lorg/jets3t/service/multi/event/ServiceEvent;->setIgnoredErrors([Ljava/lang/Throwable;)V

    .line 81
    return-object v0
.end method

.method public static newInProgressEvent(Lorg/jets3t/service/multithread/ThreadWatcher;[Lorg/jets3t/service/model/S3Bucket;Ljava/lang/Object;)Lorg/jets3t/service/multithread/CreateBucketsEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multithread/ThreadWatcher;
    .param p1, "completedBuckets"    # [Lorg/jets3t/service/model/S3Bucket;
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 59
    new-instance v0, Lorg/jets3t/service/multithread/CreateBucketsEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2}, Lorg/jets3t/service/multithread/CreateBucketsEvent;-><init>(ILjava/lang/Object;)V

    .line 60
    .local v0, "event":Lorg/jets3t/service/multithread/CreateBucketsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 61
    invoke-direct {v0, p1}, Lorg/jets3t/service/multithread/CreateBucketsEvent;->setBuckets([Lorg/jets3t/service/model/S3Bucket;)V

    .line 62
    return-object v0
.end method

.method public static newStartedEvent(Lorg/jets3t/service/multithread/ThreadWatcher;Ljava/lang/Object;)Lorg/jets3t/service/multithread/CreateBucketsEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multithread/ThreadWatcher;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 51
    new-instance v0, Lorg/jets3t/service/multithread/CreateBucketsEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multithread/CreateBucketsEvent;-><init>(ILjava/lang/Object;)V

    .line 52
    .local v0, "event":Lorg/jets3t/service/multithread/CreateBucketsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 53
    return-object v0
.end method

.method private setBuckets([Lorg/jets3t/service/model/S3Bucket;)V
    .locals 0
    .param p1, "buckets"    # [Lorg/jets3t/service/model/S3Bucket;

    .prologue
    .line 86
    iput-object p1, p0, Lorg/jets3t/service/multithread/CreateBucketsEvent;->buckets:[Lorg/jets3t/service/model/S3Bucket;

    .line 87
    return-void
.end method


# virtual methods
.method public getCancelledBuckets()[Lorg/jets3t/service/model/S3Bucket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 110
    invoke-virtual {p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cancelled Buckets are  only available from EVENT_CANCELLED events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multithread/CreateBucketsEvent;->buckets:[Lorg/jets3t/service/model/S3Bucket;

    return-object v0
.end method

.method public getCreatedBuckets()[Lorg/jets3t/service/model/S3Bucket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Created Buckets are only available from EVENT_IN_PROGRESS events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multithread/CreateBucketsEvent;->buckets:[Lorg/jets3t/service/model/S3Bucket;

    return-object v0
.end method
