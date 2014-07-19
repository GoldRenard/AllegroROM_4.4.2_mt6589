.class public Lcom/android/incallui/CallTimer;
.super Landroid/os/Handler;
.source "CallTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallTimer$1;,
        Lcom/android/incallui/CallTimer$CallTimerCallback;
    }
.end annotation


# instance fields
.field private mCallback:Ljava/lang/Runnable;

.field private mInternalCallback:Ljava/lang/Runnable;

.field private mInterval:J

.field private mLastReportedTime:J

.field private mRunning:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .prologue
    const-wide/16 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iput-wide v0, p0, Lcom/android/incallui/CallTimer;->mInterval:J

    .line 38
    iput-wide v0, p0, Lcom/android/incallui/CallTimer;->mLastReportedTime:J

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallTimer;->mRunning:Z

    .line 40
    iput-object p1, p0, Lcom/android/incallui/CallTimer;->mCallback:Ljava/lang/Runnable;

    .line 41
    new-instance v0, Lcom/android/incallui/CallTimer$CallTimerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/CallTimer$CallTimerCallback;-><init>(Lcom/android/incallui/CallTimer;Lcom/android/incallui/CallTimer$1;)V

    iput-object v0, p0, Lcom/android/incallui/CallTimer;->mInternalCallback:Ljava/lang/Runnable;

    .line 42
    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/CallTimer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallTimer;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/incallui/CallTimer;->periodicUpdateTimer()V

    return-void
.end method

.method private periodicUpdateTimer()V
    .locals 8

    .prologue
    .line 67
    iget-boolean v4, p0, Lcom/android/incallui/CallTimer;->mRunning:Z

    if-nez v4, :cond_0

    .line 82
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 72
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/incallui/CallTimer;->mLastReportedTime:J

    iget-wide v6, p0, Lcom/android/incallui/CallTimer;->mInterval:J

    add-long v0, v4, v6

    .line 73
    .local v0, "nextReport":J
    :goto_1
    cmp-long v4, v2, v0

    if-ltz v4, :cond_1

    .line 74
    iget-wide v4, p0, Lcom/android/incallui/CallTimer;->mInterval:J

    add-long/2addr v0, v4

    goto :goto_1

    .line 77
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/CallTimer;->mInternalCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 78
    iput-wide v0, p0, Lcom/android/incallui/CallTimer;->mLastReportedTime:J

    .line 81
    iget-object v4, p0, Lcom/android/incallui/CallTimer;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/incallui/CallTimer;->mInternalCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallTimer;->mRunning:Z

    .line 64
    return-void
.end method

.method public start(J)Z
    .locals 3
    .param p1, "interval"    # J

    .prologue
    const/4 v0, 0x1

    .line 45
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallTimer;->cancel()V

    .line 52
    iput-wide p1, p0, Lcom/android/incallui/CallTimer;->mInterval:J

    .line 53
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/incallui/CallTimer;->mLastReportedTime:J

    .line 55
    iput-boolean v0, p0, Lcom/android/incallui/CallTimer;->mRunning:Z

    .line 56
    invoke-direct {p0}, Lcom/android/incallui/CallTimer;->periodicUpdateTimer()V

    goto :goto_0
.end method
