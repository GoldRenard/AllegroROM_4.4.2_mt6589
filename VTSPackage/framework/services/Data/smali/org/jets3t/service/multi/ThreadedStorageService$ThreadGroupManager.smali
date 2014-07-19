.class public abstract Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;
.super Ljava/lang/Object;
.source "ThreadedStorageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multi/ThreadedStorageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "ThreadGroupManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;
    }
.end annotation


# instance fields
.field private alreadyFired:[Z

.field private ignoreExceptions:Z

.field private lastProgressEventFiredTime:J

.field private final log:Lorg/apache/commons/logging/Log;

.field private maxThreadCount:I

.field private runnables:[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;

.field private started:[Z

.field final synthetic this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

.field private threadWatcher:Lorg/jets3t/service/multi/ThreadWatcher;

.field private threads:[Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multi/ThreadedStorageService;[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;Lorg/jets3t/service/multi/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;Z)V
    .locals 3
    .param p2, "runnables"    # [Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;
    .param p3, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;
    .param p4, "jets3tProperties"    # Lorg/jets3t/service/Jets3tProperties;
    .param p5, "isAdminTask"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1657
    iput-object p1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1621
    const-class v0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    .line 1622
    const/4 v0, 0x1

    iput v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->maxThreadCount:I

    .line 1627
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;

    .line 1634
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->threads:[Ljava/lang/Thread;

    .line 1636
    iput-boolean v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->ignoreExceptions:Z

    .line 1641
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->started:[Z

    .line 1647
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->alreadyFired:[Z

    .line 1649
    iput-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->threadWatcher:Lorg/jets3t/service/multi/ThreadWatcher;

    .line 1651
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->lastProgressEventFiredTime:J

    .line 1658
    iput-object p2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;

    .line 1659
    iput-object p3, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->threadWatcher:Lorg/jets3t/service/multi/ThreadWatcher;

    .line 1660
    if-eqz p5, :cond_0

    .line 1661
    const-string v0, "threaded-service.admin-max-thread-count"

    const/16 v1, 0x14

    invoke-virtual {p4, v0, v1}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->maxThreadCount:I

    .line 1667
    :goto_0
    const-string v0, "threaded-service.ignore-exceptions-in-multi"

    invoke-virtual {p4, v0, v2}, Lorg/jets3t/service/Jets3tProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->ignoreExceptions:Z

    .line 1670
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/Thread;

    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->threads:[Ljava/lang/Thread;

    .line 1671
    array-length v0, p2

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->started:[Z

    .line 1672
    array-length v0, p2

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->alreadyFired:[Z

    .line 1673
    return-void

    .line 1664
    :cond_0
    const-string v0, "threaded-service.max-thread-count"

    const/4 v1, 0x2

    invoke-virtual {p4, v0, v1}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->maxThreadCount:I

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;)Lorg/apache/commons/logging/Log;
    .locals 1
    .param p0, "x0"    # Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;

    .prologue
    .line 1620
    iget-object v0, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;

    .prologue
    .line 1620
    invoke-direct {p0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->forceInterruptAllRunnables()V

    return-void
.end method

.method private forceInterruptAllRunnables()V
    .locals 3

    .prologue
    .line 1780
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1781
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Setting force interrupt flag on all runnables"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1783
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1784
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 1785
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;->forceInterrupt()V

    .line 1786
    iget-object v1, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 1783
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1789
    :cond_2
    return-void
.end method

.method private getNewlyCompletedResults()Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 1687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1688
    .local v0, "completedResults":Ljava/util/ArrayList;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1690
    .local v1, "errorResults":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->threads:[Ljava/lang/Thread;

    array-length v5, v5

    if-ge v2, v5, :cond_5

    .line 1691
    iget-object v5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->alreadyFired:[Z

    aget-boolean v5, v5, v2

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->started:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->threads:[Ljava/lang/Thread;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1692
    iget-object v5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->alreadyFired:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v2

    .line 1693
    iget-object v5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1694
    iget-object v5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Thread "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->threads:[Ljava/lang/Thread;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has recently completed, releasing resources"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1698
    :cond_0
    iget-object v5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;->getResult()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_4

    .line 1699
    iget-object v5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    .line 1700
    .local v4, "throwable":Ljava/lang/Throwable;
    iget-object v5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;

    aput-object v8, v5, v2

    .line 1701
    iget-object v5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->threads:[Ljava/lang/Thread;

    aput-object v8, v5, v2

    .line 1703
    iget-boolean v5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->ignoreExceptions:Z

    if-eqz v5, :cond_3

    .line 1705
    iget-object v5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1706
    iget-object v5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Ignoring exception (property threaded-service.ignore-exceptions-in-multi is set to true)"

    invoke-interface {v5, v6, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1710
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1690
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1712
    .restart local v4    # "throwable":Ljava/lang/Throwable;
    :cond_3
    throw v4

    .line 1715
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :cond_4
    iget-object v5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;->getResult()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1716
    iget-object v5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;

    aput-object v8, v5, v2

    .line 1717
    iget-object v5, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->threads:[Ljava/lang/Thread;

    aput-object v8, v5, v2

    goto :goto_1

    .line 1722
    :cond_5
    const/4 v5, 0x0

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 1723
    .local v3, "ignoredErrors":[Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 1724
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Throwable;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Throwable;

    move-object v3, v5

    check-cast v3, [Ljava/lang/Throwable;

    .line 1727
    :cond_6
    new-instance v5, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;

    invoke-direct {v5, p0, v0, v3}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;Ljava/util/List;[Ljava/lang/Throwable;)V

    return-object v5
.end method

.method private getPendingThreadCount()I
    .locals 3

    .prologue
    .line 1766
    const/4 v1, 0x0

    .line 1767
    .local v1, "pendingThreadCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1768
    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->alreadyFired:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_0

    .line 1769
    add-int/lit8 v1, v1, 0x1

    .line 1767
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1772
    :cond_1
    return v1
.end method

.method private startPendingThreads()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1740
    const/4 v1, 0x0

    .line 1741
    .local v1, "runningThreadCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 1742
    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->started:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->alreadyFired:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_0

    .line 1743
    add-int/lit8 v1, v1, 0x1

    .line 1741
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1748
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->maxThreadCount:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->started:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1749
    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->started:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_2

    .line 1750
    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->threads:[Ljava/lang/Thread;

    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v3, v2, v0

    .line 1751
    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->threads:[Ljava/lang/Thread;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1752
    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->started:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 1753
    add-int/lit8 v1, v1, 0x1

    .line 1754
    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1755
    iget-object v2, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has started"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1748
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1759
    :cond_3
    return-void
.end method


# virtual methods
.method public abstract fireCancelEvent()V
.end method

.method public abstract fireCompletedEvent()V
.end method

.method public abstract fireErrorEvent(Ljava/lang/Throwable;)V
.end method

.method public abstract fireIgnoredErrorsEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/lang/Throwable;)V
.end method

.method public abstract fireProgressEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/util/List;)V
.end method

.method public abstract fireStartEvent(Lorg/jets3t/service/multi/ThreadWatcher;)V
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1796
    iget-object v6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1797
    iget-object v6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Started ThreadManager"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1800
    :cond_0
    new-array v3, v9, [Z

    aput-boolean v8, v3, v8

    .line 1805
    .local v3, "interrupted":[Z
    new-instance v0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$1;

    invoke-direct {v0, p0, v3}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$1;-><init>(Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;[Z)V

    .line 1824
    .local v0, "cancelEventTrigger":Lorg/jets3t/service/multi/CancelEventTrigger;
    :try_start_0
    invoke-direct {p0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->startPendingThreads()V

    .line 1826
    iget-object v6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->threadWatcher:Lorg/jets3t/service/multi/ThreadWatcher;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8, v0}, Lorg/jets3t/service/multi/ThreadWatcher;->updateThreadsCompletedCount(JLorg/jets3t/service/multi/CancelEventTrigger;)V

    .line 1827
    iget-object v6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->threadWatcher:Lorg/jets3t/service/multi/ThreadWatcher;

    invoke-virtual {p0, v6}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->fireStartEvent(Lorg/jets3t/service/multi/ThreadWatcher;)V

    .line 1831
    :cond_1
    :goto_0
    const/4 v6, 0x0

    aget-boolean v6, v3, v6

    if-nez v6, :cond_5

    invoke-direct {p0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->getPendingThreadCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-lez v6, :cond_5

    .line 1834
    :try_start_1
    iget-object v6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-object v6, v6, Lorg/jets3t/service/multi/ThreadedStorageService;->isShutdown:[Z

    const/4 v7, 0x0

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_3

    .line 1835
    new-instance v6, Ljava/lang/InterruptedException;

    const-string v7, "StorageServiceMulti#shutdown method invoked"

    invoke-direct {v6, v7}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1860
    :catch_0
    move-exception v2

    .line 1861
    .local v2, "e":Ljava/lang/InterruptedException;
    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_2
    aput-boolean v7, v3, v6

    .line 1862
    invoke-direct {p0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->forceInterruptAllRunnables()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1886
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v5

    .line 1887
    .local v5, "t":Ljava/lang/Throwable;
    iget-object v6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1888
    iget-object v6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "A thread failed with an exception. Firing ERROR event and cancelling all threads"

    invoke-interface {v6, v7, v5}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1891
    :cond_2
    invoke-direct {p0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->forceInterruptAllRunnables()V

    .line 1893
    invoke-virtual {p0, v5}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->fireErrorEvent(Ljava/lang/Throwable;)V

    .line 1895
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 1838
    :cond_3
    const-wide/16 v6, 0x64

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 1840
    const/4 v6, 0x0

    aget-boolean v6, v3, v6

    if-nez v6, :cond_1

    .line 1843
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->lastProgressEventFiredTime:J

    sub-long/2addr v6, v8

    iget-object v8, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->this$0:Lorg/jets3t/service/multi/ThreadedStorageService;

    iget-wide v8, v8, Lorg/jets3t/service/multi/ThreadedStorageService;->sleepTime:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 1845
    iget-object v6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;

    array-length v6, v6

    invoke-direct {p0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->getPendingThreadCount()I

    move-result v7

    sub-int v1, v6, v7

    .line 1846
    .local v1, "completedThreads":I
    iget-object v6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->threadWatcher:Lorg/jets3t/service/multi/ThreadWatcher;

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8, v0}, Lorg/jets3t/service/multi/ThreadWatcher;->updateThreadsCompletedCount(JLorg/jets3t/service/multi/CancelEventTrigger;)V

    .line 1847
    invoke-direct {p0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->getNewlyCompletedResults()Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;

    move-result-object v4

    .line 1849
    .local v4, "results":Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->lastProgressEventFiredTime:J

    .line 1850
    iget-object v6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->threadWatcher:Lorg/jets3t/service/multi/ThreadWatcher;

    iget-object v7, v4, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;->completedResults:Ljava/util/List;

    invoke-virtual {p0, v6, v7}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->fireProgressEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/util/List;)V

    .line 1852
    iget-object v6, v4, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;->errorResults:[Ljava/lang/Throwable;

    array-length v6, v6

    if-lez v6, :cond_4

    .line 1853
    iget-object v6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->threadWatcher:Lorg/jets3t/service/multi/ThreadWatcher;

    iget-object v7, v4, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;->errorResults:[Ljava/lang/Throwable;

    invoke-virtual {p0, v6, v7}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->fireIgnoredErrorsEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/lang/Throwable;)V

    .line 1858
    .end local v1    # "completedThreads":I
    .end local v4    # "results":Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;
    :cond_4
    invoke-direct {p0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->startPendingThreads()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1866
    :cond_5
    const/4 v6, 0x0

    :try_start_4
    aget-boolean v6, v3, v6

    if-eqz v6, :cond_6

    .line 1867
    invoke-virtual {p0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->fireCancelEvent()V

    goto :goto_1

    .line 1869
    :cond_6
    iget-object v6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multi/ThreadedStorageService$AbstractRunnable;

    array-length v6, v6

    invoke-direct {p0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->getPendingThreadCount()I

    move-result v7

    sub-int v1, v6, v7

    .line 1870
    .restart local v1    # "completedThreads":I
    iget-object v6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->threadWatcher:Lorg/jets3t/service/multi/ThreadWatcher;

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8, v0}, Lorg/jets3t/service/multi/ThreadWatcher;->updateThreadsCompletedCount(JLorg/jets3t/service/multi/CancelEventTrigger;)V

    .line 1871
    invoke-direct {p0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->getNewlyCompletedResults()Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;

    move-result-object v4

    .line 1873
    .restart local v4    # "results":Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;
    iget-object v6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->threadWatcher:Lorg/jets3t/service/multi/ThreadWatcher;

    iget-object v7, v4, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;->completedResults:Ljava/util/List;

    invoke-virtual {p0, v6, v7}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->fireProgressEvent(Lorg/jets3t/service/multi/ThreadWatcher;Ljava/util/List;)V

    .line 1874
    iget-object v6, v4, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;->completedResults:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 1875
    iget-object v6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1876
    iget-object v6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;->completedResults:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " threads have recently completed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 1880
    :cond_7
    iget-object v6, v4, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;->errorResults:[Ljava/lang/Throwable;

    array-length v6, v6

    if-lez v6, :cond_8

    .line 1881
    iget-object v6, p0, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->threadWatcher:Lorg/jets3t/service/multi/ThreadWatcher;

    iget-object v7, v4, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager$ResultsTuple;->errorResults:[Ljava/lang/Throwable;

    invoke-virtual {p0, v6, v7}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->fireIgnoredErrorsEvent(Lorg/jets3t/service/multi/ThreadWatcher;[Ljava/lang/Throwable;)V

    .line 1884
    :cond_8
    invoke-virtual {p0}, Lorg/jets3t/service/multi/ThreadedStorageService$ThreadGroupManager;->fireCompletedEvent()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method
