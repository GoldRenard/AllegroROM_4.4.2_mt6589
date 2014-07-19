.class public Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;
.super Ljava/lang/Object;
.source "SmoothProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;,
        Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProxyListener;
    }
.end annotation


# static fields
.field private static final CATCHUP_INTERVAL:I = 0x3e8

.field private static final DEF_INTERVAL:I = 0x3e8

.field private static final INTERVAL_RATE:F = 1.3f

.field private static final MAX_PROGRESS:I = 0x64

.field private static final SPEED_ADJUST_GAP:I = 0x5


# instance fields
.field private catchUpTimeLeft:I

.field private finishBarrier:Ljava/lang/Object;

.field private gapDistance:I

.field private intervalBase:I

.field private lastRealGap:I

.field private progressListener:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProxyListener;

.field private progressUpdate:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;

.field private realProgress:I

.field private stepInterval:I

.field private virtualProgress:I

.field private waiter:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProxyListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProxyListener;

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->realProgress:I

    .line 27
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I

    .line 28
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->gapDistance:I

    .line 29
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->intervalBase:I

    .line 30
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->intervalBase:I

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->stepInterval:I

    .line 31
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->catchUpTimeLeft:I

    .line 33
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->lastRealGap:I

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->waiter:Ljava/lang/Object;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->finishBarrier:Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProxyListener;

    .line 44
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->stepAndAdjustSpeed()V

    return-void
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->realProgress:I

    return v0
.end method

.method static synthetic access$2(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I

    return v0
.end method

.method static synthetic access$3(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I

    return-void
.end method

.method static synthetic access$4(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->notifyProgress()V

    return-void
.end method

.method static synthetic access$5(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->waiter:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->stepInterval:I

    return v0
.end method

.method static synthetic access$7(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->finishBarrier:Ljava/lang/Object;

    return-object v0
.end method

.method private notifyProgress()V
    .locals 3

    .prologue
    .line 131
    const-string v0, "---"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "virtual:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " real\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->realProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " catchupTimeLeft:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->catchUpTimeLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProxyListener;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProxyListener;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProxyListener;->onProgress(II)V

    .line 136
    :cond_0
    return-void
.end method

.method private declared-synchronized stepAndAdjustSpeed()V
    .locals 10

    .prologue
    .line 80
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->realProgress:I

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I

    if-le v2, v3, :cond_4

    .line 82
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->catchUpTimeLeft:I

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->stepInterval:I

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_0

    .line 83
    const/16 v2, 0x3e8

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->catchUpTimeLeft:I

    .line 84
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->realProgress:I

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->lastRealGap:I

    .line 85
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->lastRealGap:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    .line 86
    const/16 v2, 0x3e8

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->lastRealGap:I

    div-int/2addr v2, v3

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->stepInterval:I

    .line 92
    :cond_0
    :goto_0
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->catchUpTimeLeft:I

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->stepInterval:I

    add-int/lit8 v3, v3, -0x1

    if-le v2, v3, :cond_3

    .line 93
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->lastRealGap:I

    const/16 v4, 0x3e8

    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->stepInterval:I

    add-int/lit8 v5, v5, 0x1

    div-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I

    .line 99
    :goto_1
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->catchUpTimeLeft:I

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->stepInterval:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->catchUpTimeLeft:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    .line 88
    :cond_2
    const/16 v2, 0x64

    :try_start_1
    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->stepInterval:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 96
    :cond_3
    :try_start_2
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I

    goto :goto_1

    .line 101
    :cond_4
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->realProgress:I

    if-lt v2, v3, :cond_1

    .line 103
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I

    .line 105
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->realProgress:I

    sub-int v1, v2, v3

    .line 107
    .local v1, "gap":I
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I

    const/16 v3, 0x1e

    if-le v2, v3, :cond_5

    .line 108
    const-wide v2, 0x408f400000000000L

    const-wide v4, 0x3ff19999a0000000L

    iget v6, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I

    add-int/lit8 v6, v6, -0x1e

    int-to-double v6, v6

    const-wide/high16 v8, 0x4014000000000000L

    div-double/2addr v6, v8

    double-to-int v6, v6

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->intervalBase:I

    .line 110
    :cond_5
    div-int/lit8 v2, v1, 0x5

    add-int/lit8 v0, v2, 0x1

    .line 111
    .local v0, "distance":I
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->gapDistance:I

    if-eq v0, v2, :cond_1

    .line 112
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->gapDistance:I

    .line 113
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->intervalBase:I

    int-to-double v2, v2

    const-wide v4, 0x3ff4ccccc0000000L

    int-to-double v6, v0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->stepInterval:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method


# virtual methods
.method public declared-synchronized pause()V
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->progressUpdate:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->pause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resume()V
    .locals 1

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->progressUpdate:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->resumeRunning()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRealProgress(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->realProgress:I

    if-le p1, v0, :cond_0

    .line 120
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->realProgress:I

    .line 122
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->realProgress:I

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I

    if-le v0, v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->waiter:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->waiter:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 123
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :cond_0
    monitor-exit p0

    return-void

    .line 123
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 119
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 1

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;-><init>(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->progressUpdate:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;

    .line 48
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->progressUpdate:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->progressUpdate:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->stopRunning()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->progressUpdate:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public waitingForFinish()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    .line 53
    invoke-virtual {p0, v6}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->setRealProgress(I)V

    .line 54
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->finishBarrier:Ljava/lang/Object;

    monitor-enter v3

    .line 56
    const/4 v0, 0x3

    .local v0, "retry":I
    move v1, v0

    .line 57
    .end local v0    # "retry":I
    .local v1, "retry":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "retry":I
    .restart local v0    # "retry":I
    if-lez v1, :cond_0

    :try_start_0
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v6, :cond_1

    .line 54
    :cond_0
    :goto_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    return-void

    .line 58
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->finishBarrier:Ljava/lang/Object;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v0

    .end local v0    # "retry":I
    .restart local v1    # "retry":I
    goto :goto_0

    .line 54
    .end local v1    # "retry":I
    .restart local v0    # "retry":I
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 60
    :catch_0
    move-exception v2

    goto :goto_1
.end method
