.class abstract Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;
.super Ljava/lang/Object;
.source "S3ServiceMulti.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jets3t/service/multithread/S3ServiceMulti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ThreadGroupManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;
    }
.end annotation


# instance fields
.field private alreadyFired:[Z

.field private ignoreExceptions:Z

.field private lastProgressEventFiredTime:J

.field private final log:Lorg/apache/commons/logging/Log;

.field private maxThreadCount:I

.field private runnables:[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;

.field private started:[Z

.field final synthetic this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

.field private threadWatcher:Lorg/jets3t/service/multithread/ThreadWatcher;

.field private threads:[Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Lorg/jets3t/service/multithread/S3ServiceMulti;[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;Lorg/jets3t/service/multithread/ThreadWatcher;Lorg/jets3t/service/Jets3tProperties;Z)V
    .locals 3
    .param p2, "runnables"    # [Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;
    .param p3, "threadWatcher"    # Lorg/jets3t/service/multithread/ThreadWatcher;
    .param p4, "jets3tProperties"    # Lorg/jets3t/service/Jets3tProperties;
    .param p5, "isAdminTask"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2546
    iput-object p1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2510
    const-class v0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    .line 2511
    const/4 v0, 0x1

    iput v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->maxThreadCount:I

    .line 2516
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;

    .line 2523
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->threads:[Ljava/lang/Thread;

    .line 2525
    iput-boolean v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->ignoreExceptions:Z

    .line 2530
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->started:[Z

    .line 2536
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->alreadyFired:[Z

    .line 2538
    iput-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->threadWatcher:Lorg/jets3t/service/multithread/ThreadWatcher;

    .line 2540
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->lastProgressEventFiredTime:J

    .line 2547
    iput-object p2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;

    .line 2548
    iput-object p3, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->threadWatcher:Lorg/jets3t/service/multithread/ThreadWatcher;

    .line 2549
    if-eqz p5, :cond_0

    .line 2550
    const-string v0, "s3service.admin-max-thread-count"

    const/16 v1, 0x14

    invoke-virtual {p4, v0, v1}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->maxThreadCount:I

    .line 2556
    :goto_0
    const-string v0, "s3service.ignore-exceptions-in-multi"

    invoke-virtual {p4, v0, v2}, Lorg/jets3t/service/Jets3tProperties;->getBoolProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->ignoreExceptions:Z

    .line 2559
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/Thread;

    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->threads:[Ljava/lang/Thread;

    .line 2560
    array-length v0, p2

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->started:[Z

    .line 2561
    array-length v0, p2

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->alreadyFired:[Z

    .line 2562
    return-void

    .line 2553
    :cond_0
    const-string v0, "s3service.max-thread-count"

    const/4 v1, 0x2

    invoke-virtual {p4, v0, v1}, Lorg/jets3t/service/Jets3tProperties;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->maxThreadCount:I

    goto :goto_0
.end method

.method static synthetic access$300(Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;)Lorg/apache/commons/logging/Log;
    .locals 1
    .param p0, "x0"    # Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;

    .prologue
    .line 2509
    iget-object v0, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    return-object v0
.end method

.method static synthetic access$400(Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;)V
    .locals 0
    .param p0, "x0"    # Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;

    .prologue
    .line 2509
    invoke-direct {p0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->forceInterruptAllRunnables()V

    return-void
.end method

.method private forceInterruptAllRunnables()V
    .locals 3

    .prologue
    .line 2669
    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2670
    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "Setting force interrupt flag on all runnables"

    invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2672
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2673
    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 2674
    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;->forceInterrupt()V

    .line 2675
    iget-object v1, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 2672
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2678
    :cond_2
    return-void
.end method

.method private getNewlyCompletedResults()Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 2576
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2577
    .local v0, "completedResults":Ljava/util/ArrayList;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2579
    .local v1, "errorResults":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->threads:[Ljava/lang/Thread;

    array-length v5, v5

    if-ge v2, v5, :cond_5

    .line 2580
    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->alreadyFired:[Z

    aget-boolean v5, v5, v2

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->started:[Z

    aget-boolean v5, v5, v2

    if-eqz v5, :cond_2

    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->threads:[Ljava/lang/Thread;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/lang/Thread;->isAlive()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2581
    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->alreadyFired:[Z

    const/4 v6, 0x1

    aput-boolean v6, v5, v2

    .line 2582
    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2583
    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

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

    iget-object v7, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->threads:[Ljava/lang/Thread;

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has recently completed, releasing resources"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2587
    :cond_0
    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;->getResult()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Throwable;

    if-eqz v5, :cond_4

    .line 2588
    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;->getResult()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Throwable;

    .line 2589
    .local v4, "throwable":Ljava/lang/Throwable;
    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;

    aput-object v8, v5, v2

    .line 2590
    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->threads:[Ljava/lang/Thread;

    aput-object v8, v5, v2

    .line 2592
    iget-boolean v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->ignoreExceptions:Z

    if-eqz v5, :cond_3

    .line 2594
    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v5}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2595
    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    const-string v6, "Ignoring exception (property s3service.ignore-exceptions-in-multi is set to true)"

    invoke-interface {v5, v6, v4}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2599
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2579
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2601
    .restart local v4    # "throwable":Ljava/lang/Throwable;
    :cond_3
    throw v4

    .line 2604
    .end local v4    # "throwable":Ljava/lang/Throwable;
    :cond_4
    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;->getResult()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2605
    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;

    aput-object v8, v5, v2

    .line 2606
    iget-object v5, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->threads:[Ljava/lang/Thread;

    aput-object v8, v5, v2

    goto :goto_1

    .line 2611
    :cond_5
    const/4 v5, 0x0

    new-array v3, v5, [Ljava/lang/Throwable;

    .line 2612
    .local v3, "ignoredErrors":[Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 2613
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/Throwable;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Throwable;

    move-object v3, v5

    check-cast v3, [Ljava/lang/Throwable;

    .line 2616
    :cond_6
    new-instance v5, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;

    invoke-direct {v5, p0, v0, v3}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;Ljava/util/List;[Ljava/lang/Throwable;)V

    return-object v5
.end method

.method private getPendingThreadCount()I
    .locals 3

    .prologue
    .line 2655
    const/4 v1, 0x0

    .line 2656
    .local v1, "pendingThreadCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2657
    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->alreadyFired:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_0

    .line 2658
    add-int/lit8 v1, v1, 0x1

    .line 2656
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2661
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
    .line 2629
    const/4 v1, 0x0

    .line 2630
    .local v1, "runningThreadCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 2631
    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->started:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->alreadyFired:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_0

    .line 2632
    add-int/lit8 v1, v1, 0x1

    .line 2630
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2637
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->maxThreadCount:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->started:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 2638
    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->started:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_2

    .line 2639
    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->threads:[Ljava/lang/Thread;

    new-instance v3, Ljava/lang/Thread;

    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    aput-object v3, v2, v0

    .line 2640
    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->threads:[Ljava/lang/Thread;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2641
    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->started:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 2642
    add-int/lit8 v1, v1, 0x1

    .line 2643
    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v2}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2644
    iget-object v2, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

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

    iget-object v4, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has started"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2637
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2648
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

.method public abstract fireIgnoredErrorsEvent(Lorg/jets3t/service/multithread/ThreadWatcher;[Ljava/lang/Throwable;)V
.end method

.method public abstract fireProgressEvent(Lorg/jets3t/service/multithread/ThreadWatcher;Ljava/util/List;)V
.end method

.method public abstract fireStartEvent(Lorg/jets3t/service/multithread/ThreadWatcher;)V
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2685
    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2686
    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "Started ThreadManager"

    invoke-interface {v6, v7}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V

    .line 2689
    :cond_0
    new-array v3, v9, [Z

    aput-boolean v8, v3, v8

    .line 2694
    .local v3, "interrupted":[Z
    new-instance v0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$1;

    invoke-direct {v0, p0, v3}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$1;-><init>(Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;[Z)V

    .line 2713
    .local v0, "cancelEventTrigger":Lorg/jets3t/service/multithread/CancelEventTrigger;
    :try_start_0
    invoke-direct {p0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->startPendingThreads()V

    .line 2715
    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->threadWatcher:Lorg/jets3t/service/multithread/ThreadWatcher;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8, v0}, Lorg/jets3t/service/multithread/ThreadWatcher;->updateThreadsCompletedCount(JLorg/jets3t/service/multithread/CancelEventTrigger;)V

    .line 2716
    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->threadWatcher:Lorg/jets3t/service/multithread/ThreadWatcher;

    invoke-virtual {p0, v6}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->fireStartEvent(Lorg/jets3t/service/multithread/ThreadWatcher;)V

    .line 2720
    :cond_1
    :goto_0
    const/4 v6, 0x0

    aget-boolean v6, v3, v6

    if-nez v6, :cond_5

    invoke-direct {p0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->getPendingThreadCount()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-lez v6, :cond_5

    .line 2723
    :try_start_1
    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->isShutdown:[Z
    invoke-static {v6}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$500(Lorg/jets3t/service/multithread/S3ServiceMulti;)[Z

    move-result-object v6

    const/4 v7, 0x0

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_3

    .line 2724
    new-instance v6, Ljava/lang/InterruptedException;

    const-string v7, "S3ServiceMulti#shutdown method invoked"

    invoke-direct {v6, v7}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 2749
    :catch_0
    move-exception v2

    .line 2750
    .local v2, "e":Ljava/lang/InterruptedException;
    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_2
    aput-boolean v7, v3, v6

    .line 2751
    invoke-direct {p0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->forceInterruptAllRunnables()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 2775
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v5

    .line 2776
    .local v5, "t":Ljava/lang/Throwable;
    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isErrorEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2777
    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    const-string v7, "A thread failed with an exception. Firing ERROR event and cancelling all threads"

    invoke-interface {v6, v7, v5}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2780
    :cond_2
    invoke-direct {p0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->forceInterruptAllRunnables()V

    .line 2782
    invoke-virtual {p0, v5}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->fireErrorEvent(Ljava/lang/Throwable;)V

    .line 2784
    .end local v5    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 2727
    :cond_3
    const-wide/16 v6, 0x64

    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 2729
    const/4 v6, 0x0

    aget-boolean v6, v3, v6

    if-nez v6, :cond_1

    .line 2732
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->lastProgressEventFiredTime:J

    sub-long/2addr v6, v8

    iget-object v8, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->this$0:Lorg/jets3t/service/multithread/S3ServiceMulti;

    # getter for: Lorg/jets3t/service/multithread/S3ServiceMulti;->sleepTime:J
    invoke-static {v8}, Lorg/jets3t/service/multithread/S3ServiceMulti;->access$600(Lorg/jets3t/service/multithread/S3ServiceMulti;)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 2734
    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;

    array-length v6, v6

    invoke-direct {p0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->getPendingThreadCount()I

    move-result v7

    sub-int v1, v6, v7

    .line 2735
    .local v1, "completedThreads":I
    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->threadWatcher:Lorg/jets3t/service/multithread/ThreadWatcher;

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8, v0}, Lorg/jets3t/service/multithread/ThreadWatcher;->updateThreadsCompletedCount(JLorg/jets3t/service/multithread/CancelEventTrigger;)V

    .line 2736
    invoke-direct {p0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->getNewlyCompletedResults()Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;

    move-result-object v4

    .line 2738
    .local v4, "results":Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->lastProgressEventFiredTime:J

    .line 2739
    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->threadWatcher:Lorg/jets3t/service/multithread/ThreadWatcher;

    iget-object v7, v4, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;->completedResults:Ljava/util/List;

    invoke-virtual {p0, v6, v7}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->fireProgressEvent(Lorg/jets3t/service/multithread/ThreadWatcher;Ljava/util/List;)V

    .line 2741
    iget-object v6, v4, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;->errorResults:[Ljava/lang/Throwable;

    array-length v6, v6

    if-lez v6, :cond_4

    .line 2742
    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->threadWatcher:Lorg/jets3t/service/multithread/ThreadWatcher;

    iget-object v7, v4, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;->errorResults:[Ljava/lang/Throwable;

    invoke-virtual {p0, v6, v7}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->fireIgnoredErrorsEvent(Lorg/jets3t/service/multithread/ThreadWatcher;[Ljava/lang/Throwable;)V

    .line 2747
    .end local v1    # "completedThreads":I
    .end local v4    # "results":Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;
    :cond_4
    invoke-direct {p0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->startPendingThreads()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 2755
    :cond_5
    const/4 v6, 0x0

    :try_start_4
    aget-boolean v6, v3, v6

    if-eqz v6, :cond_6

    .line 2756
    invoke-virtual {p0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->fireCancelEvent()V

    goto :goto_1

    .line 2758
    :cond_6
    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->runnables:[Lorg/jets3t/service/multithread/S3ServiceMulti$AbstractRunnable;

    array-length v6, v6

    invoke-direct {p0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->getPendingThreadCount()I

    move-result v7

    sub-int v1, v6, v7

    .line 2759
    .restart local v1    # "completedThreads":I
    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->threadWatcher:Lorg/jets3t/service/multithread/ThreadWatcher;

    int-to-long v7, v1

    invoke-virtual {v6, v7, v8, v0}, Lorg/jets3t/service/multithread/ThreadWatcher;->updateThreadsCompletedCount(JLorg/jets3t/service/multithread/CancelEventTrigger;)V

    .line 2760
    invoke-direct {p0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->getNewlyCompletedResults()Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;

    move-result-object v4

    .line 2762
    .restart local v4    # "results":Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;
    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->threadWatcher:Lorg/jets3t/service/multithread/ThreadWatcher;

    iget-object v7, v4, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;->completedResults:Ljava/util/List;

    invoke-virtual {p0, v6, v7}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->fireProgressEvent(Lorg/jets3t/service/multithread/ThreadWatcher;Ljava/util/List;)V

    .line 2763
    iget-object v6, v4, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;->completedResults:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 2764
    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    invoke-interface {v6}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2765
    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->log:Lorg/apache/commons/logging/Log;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;->completedResults:Ljava/util/List;

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

    .line 2769
    :cond_7
    iget-object v6, v4, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;->errorResults:[Ljava/lang/Throwable;

    array-length v6, v6

    if-lez v6, :cond_8

    .line 2770
    iget-object v6, p0, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->threadWatcher:Lorg/jets3t/service/multithread/ThreadWatcher;

    iget-object v7, v4, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager$ResultsTuple;->errorResults:[Ljava/lang/Throwable;

    invoke-virtual {p0, v6, v7}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->fireIgnoredErrorsEvent(Lorg/jets3t/service/multithread/ThreadWatcher;[Ljava/lang/Throwable;)V

    .line 2773
    :cond_8
    invoke-virtual {p0}, Lorg/jets3t/service/multithread/S3ServiceMulti$ThreadGroupManager;->fireCompletedEvent()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1
.end method
