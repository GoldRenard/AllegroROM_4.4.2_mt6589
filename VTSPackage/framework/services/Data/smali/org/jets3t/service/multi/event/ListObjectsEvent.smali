.class public Lorg/jets3t/service/multi/event/ListObjectsEvent;
.super Lorg/jets3t/service/multi/event/ServiceEvent;
.source "ListObjectsEvent.java"


# instance fields
.field private chunkList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/StorageObjectsChunk;",
            ">;"
        }
    .end annotation
.end field


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

    iput-object v0, p0, Lorg/jets3t/service/multi/event/ListObjectsEvent;->chunkList:Ljava/util/List;

    .line 44
    return-void
.end method

.method public static newCancelledEvent(Ljava/lang/Object;)Lorg/jets3t/service/multi/event/ListObjectsEvent;
    .locals 2
    .param p0, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 73
    new-instance v0, Lorg/jets3t/service/multi/event/ListObjectsEvent;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lorg/jets3t/service/multi/event/ListObjectsEvent;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static newCompletedEvent(Ljava/lang/Object;)Lorg/jets3t/service/multi/event/ListObjectsEvent;
    .locals 2
    .param p0, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 69
    new-instance v0, Lorg/jets3t/service/multi/event/ListObjectsEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lorg/jets3t/service/multi/event/ListObjectsEvent;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static newErrorEvent(Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/ListObjectsEvent;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 48
    new-instance v0, Lorg/jets3t/service/multi/event/ListObjectsEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multi/event/ListObjectsEvent;-><init>(ILjava/lang/Object;)V

    .line 49
    .local v0, "event":Lorg/jets3t/service/multi/event/ListObjectsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setErrorCause(Ljava/lang/Throwable;)V

    .line 50
    return-object v0
.end method

.method public static newIgnoredErrorsEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/lang/Throwable;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/ListObjectsEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p1, "ignoredErrors"    # [Ljava/lang/Throwable;
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 79
    new-instance v0, Lorg/jets3t/service/multi/event/ListObjectsEvent;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p2}, Lorg/jets3t/service/multi/event/ListObjectsEvent;-><init>(ILjava/lang/Object;)V

    .line 80
    .local v0, "event":Lorg/jets3t/service/multi/event/ListObjectsEvent;
    invoke-virtual {v0, p1}, Lorg/jets3t/service/multi/event/ServiceEvent;->setIgnoredErrors([Ljava/lang/Throwable;)V

    .line 81
    return-object v0
.end method

.method public static newInProgressEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/util/List;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/ListObjectsEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jets3t/service/multi/ThreadWatcher;",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/StorageObjectsChunk;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lorg/jets3t/service/multi/event/ListObjectsEvent;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "chunkList":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/StorageObjectsChunk;>;"
    new-instance v0, Lorg/jets3t/service/multi/event/ListObjectsEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2}, Lorg/jets3t/service/multi/event/ListObjectsEvent;-><init>(ILjava/lang/Object;)V

    .line 63
    .local v0, "event":Lorg/jets3t/service/multi/event/ListObjectsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 64
    invoke-direct {v0, p1}, Lorg/jets3t/service/multi/event/ListObjectsEvent;->setChunkList(Ljava/util/List;)V

    .line 65
    return-object v0
.end method

.method public static newStartedEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/lang/Object;)Lorg/jets3t/service/multi/event/ListObjectsEvent;
    .locals 2
    .param p0, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p1, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 54
    new-instance v0, Lorg/jets3t/service/multi/event/ListObjectsEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lorg/jets3t/service/multi/event/ListObjectsEvent;-><init>(ILjava/lang/Object;)V

    .line 55
    .local v0, "event":Lorg/jets3t/service/multi/event/ListObjectsEvent;
    invoke-virtual {v0, p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 56
    return-object v0
.end method

.method private setChunkList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/StorageObjectsChunk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .local p1, "chunkList":Ljava/util/List;, "Ljava/util/List<Lorg/jets3t/service/StorageObjectsChunk;>;"
    iput-object p1, p0, Lorg/jets3t/service/multi/event/ListObjectsEvent;->chunkList:Ljava/util/List;

    .line 87
    return-void
.end method


# virtual methods
.method public getChunkList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jets3t/service/StorageObjectsChunk;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->getEventCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Chunk list is only available from EVENT_IN_PROGRESS events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/event/ListObjectsEvent;->chunkList:Ljava/util/List;

    return-object v0
.end method
