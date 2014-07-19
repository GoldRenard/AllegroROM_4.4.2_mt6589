.class public Lorg/jets3t/service/multi/ThreadWatcher;
.super Ljava/lang/Object;
.source "ThreadWatcher.java"


# instance fields
.field private cancelEventListener:Lorg/jets3t/service/multi/CancelEventTrigger;

.field private completedThreads:J

.field private progressWatchers:[Lorg/jets3t/service/io/BytesProgressWatcher;

.field private threadCount:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "threadCount"    # J

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide v1, p0, Lorg/jets3t/service/multi/ThreadWatcher;->completedThreads:J

    .line 50
    iput-wide v1, p0, Lorg/jets3t/service/multi/ThreadWatcher;->threadCount:J

    .line 51
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadWatcher;->cancelEventListener:Lorg/jets3t/service/multi/CancelEventTrigger;

    .line 52
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadWatcher;->progressWatchers:[Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 60
    iput-wide p1, p0, Lorg/jets3t/service/multi/ThreadWatcher;->threadCount:J

    .line 61
    return-void
.end method

.method public constructor <init>([Lorg/jets3t/service/io/BytesProgressWatcher;)V
    .locals 3
    .param p1, "progressWatchers"    # [Lorg/jets3t/service/io/BytesProgressWatcher;

    .prologue
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-wide v1, p0, Lorg/jets3t/service/multi/ThreadWatcher;->completedThreads:J

    .line 50
    iput-wide v1, p0, Lorg/jets3t/service/multi/ThreadWatcher;->threadCount:J

    .line 51
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadWatcher;->cancelEventListener:Lorg/jets3t/service/multi/CancelEventTrigger;

    .line 52
    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadWatcher;->progressWatchers:[Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 55
    iput-object p1, p0, Lorg/jets3t/service/multi/ThreadWatcher;->progressWatchers:[Lorg/jets3t/service/io/BytesProgressWatcher;

    .line 56
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadWatcher;->progressWatchers:[Lorg/jets3t/service/io/BytesProgressWatcher;

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lorg/jets3t/service/multi/ThreadWatcher;->threadCount:J

    .line 57
    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 1

    .prologue
    .line 193
    invoke-virtual {p0}, Lorg/jets3t/service/multi/ThreadWatcher;->isCancelTaskSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadWatcher;->cancelEventListener:Lorg/jets3t/service/multi/CancelEventTrigger;

    invoke-interface {v0, p0}, Lorg/jets3t/service/multi/CancelEventTrigger;->cancelTask(Ljava/lang/Object;)V

    .line 196
    :cond_0
    return-void
.end method

.method public getBytesPerSecond()J
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadWatcher;->progressWatchers:[Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-static {v0}, Lorg/jets3t/service/io/BytesProgressWatcher;->calculateRecentByteRatePerSecond([Lorg/jets3t/service/io/BytesProgressWatcher;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBytesTotal()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p0}, Lorg/jets3t/service/multi/ThreadWatcher;->isBytesTransferredInfoAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bytes Transferred Info is not available in this object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadWatcher;->progressWatchers:[Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-static {v0}, Lorg/jets3t/service/io/BytesProgressWatcher;->sumBytesToTransfer([Lorg/jets3t/service/io/BytesProgressWatcher;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBytesTransferred()J
    .locals 2

    .prologue
    .line 139
    invoke-virtual {p0}, Lorg/jets3t/service/multi/ThreadWatcher;->isBytesTransferredInfoAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bytes Transferred Info is not available in this object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadWatcher;->progressWatchers:[Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-static {v0}, Lorg/jets3t/service/io/BytesProgressWatcher;->sumBytesTransferred([Lorg/jets3t/service/io/BytesProgressWatcher;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCancelEventListener()Lorg/jets3t/service/multi/CancelEventTrigger;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadWatcher;->cancelEventListener:Lorg/jets3t/service/multi/CancelEventTrigger;

    return-object v0
.end method

.method public getCompletedThreads()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lorg/jets3t/service/multi/ThreadWatcher;->completedThreads:J

    return-wide v0
.end method

.method public getThreadCount()J
    .locals 2

    .prologue
    .line 102
    iget-wide v0, p0, Lorg/jets3t/service/multi/ThreadWatcher;->threadCount:J

    return-wide v0
.end method

.method public getTimeRemaining()J
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lorg/jets3t/service/multi/ThreadWatcher;->isTimeRemainingAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Time remaining estimate is not available in this object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadWatcher;->progressWatchers:[Lorg/jets3t/service/io/BytesProgressWatcher;

    invoke-static {v0}, Lorg/jets3t/service/io/BytesProgressWatcher;->calculateRemainingTime([Lorg/jets3t/service/io/BytesProgressWatcher;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isBytesTransferredInfoAvailable()Z
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadWatcher;->progressWatchers:[Lorg/jets3t/service/io/BytesProgressWatcher;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCancelTaskSupported()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadWatcher;->cancelEventListener:Lorg/jets3t/service/multi/CancelEventTrigger;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTimeRemainingAvailable()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadWatcher;->progressWatchers:[Lorg/jets3t/service/io/BytesProgressWatcher;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateThreadsCompletedCount(J)V
    .locals 1
    .param p1, "completedThreads"    # J

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jets3t/service/multi/ThreadWatcher;->updateThreadsCompletedCount(JLorg/jets3t/service/multi/CancelEventTrigger;)V

    .line 71
    return-void
.end method

.method public updateThreadsCompletedCount(JLorg/jets3t/service/multi/CancelEventTrigger;)V
    .locals 0
    .param p1, "completedThreads"    # J
    .param p3, "cancelEventListener"    # Lorg/jets3t/service/multi/CancelEventTrigger;

    .prologue
    .line 85
    iput-wide p1, p0, Lorg/jets3t/service/multi/ThreadWatcher;->completedThreads:J

    .line 86
    iput-object p3, p0, Lorg/jets3t/service/multi/ThreadWatcher;->cancelEventListener:Lorg/jets3t/service/multi/CancelEventTrigger;

    .line 87
    return-void
.end method
