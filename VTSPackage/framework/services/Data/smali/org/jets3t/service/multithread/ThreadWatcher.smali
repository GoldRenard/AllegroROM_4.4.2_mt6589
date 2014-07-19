.class public Lorg/jets3t/service/multithread/ThreadWatcher;
.super Lorg/jets3t/service/multi/ThreadWatcher;
.source "ThreadWatcher.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>(J)V
    .locals 0
    .param p1, "threadCount"    # J

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/multi/ThreadWatcher;-><init>(J)V

    .line 59
    return-void
.end method

.method protected constructor <init>([Lorg/jets3t/service/io/BytesProgressWatcher;)V
    .locals 0
    .param p1, "progressWatchers"    # [Lorg/jets3t/service/io/BytesProgressWatcher;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lorg/jets3t/service/multi/ThreadWatcher;-><init>([Lorg/jets3t/service/io/BytesProgressWatcher;)V

    .line 55
    return-void
.end method


# virtual methods
.method public bridge synthetic getCancelEventListener()Lorg/jets3t/service/multi/CancelEventTrigger;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/jets3t/service/multithread/ThreadWatcher;->getCancelEventListener()Lorg/jets3t/service/multithread/CancelEventTrigger;

    move-result-object v0

    return-object v0
.end method

.method public getCancelEventListener()Lorg/jets3t/service/multithread/CancelEventTrigger;
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lorg/jets3t/service/multi/ThreadWatcher;->getCancelEventListener()Lorg/jets3t/service/multi/CancelEventTrigger;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/multithread/CancelEventTrigger;

    return-object v0
.end method

.method public updateThreadsCompletedCount(JLorg/jets3t/service/multithread/CancelEventTrigger;)V
    .locals 0
    .param p1, "completedThreads"    # J
    .param p3, "cancelEventListener"    # Lorg/jets3t/service/multithread/CancelEventTrigger;

    .prologue
    .line 63
    invoke-super {p0, p1, p2, p3}, Lorg/jets3t/service/multi/ThreadWatcher;->updateThreadsCompletedCount(JLorg/jets3t/service/multi/CancelEventTrigger;)V

    .line 64
    return-void
.end method
