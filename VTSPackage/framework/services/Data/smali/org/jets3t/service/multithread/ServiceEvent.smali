.class public abstract Lorg/jets3t/service/multithread/ServiceEvent;
.super Lorg/jets3t/service/multi/event/ServiceEvent;
.source "ServiceEvent.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "eventCode"    # I
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lorg/jets3t/service/multi/event/ServiceEvent;-><init>(ILjava/lang/Object;)V

    .line 63
    return-void
.end method


# virtual methods
.method public bridge synthetic getThreadWatcher()Lorg/jets3t/service/multi/ThreadWatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-virtual {p0}, Lorg/jets3t/service/multithread/ServiceEvent;->getThreadWatcher()Lorg/jets3t/service/multithread/ThreadWatcher;

    move-result-object v0

    return-object v0
.end method

.method public getThreadWatcher()Lorg/jets3t/service/multithread/ThreadWatcher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-super {p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->getThreadWatcher()Lorg/jets3t/service/multi/ThreadWatcher;

    move-result-object v0

    check-cast v0, Lorg/jets3t/service/multithread/ThreadWatcher;

    return-object v0
.end method
