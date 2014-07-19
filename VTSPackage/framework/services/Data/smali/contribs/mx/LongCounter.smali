.class final Lcontribs/mx/LongCounter;
.super Ljava/lang/Object;
.source "LongCounter.java"


# instance fields
.field private final lock:Ljava/lang/Object;

.field private value:J


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcontribs/mx/LongCounter;->lock:Ljava/lang/Object;

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcontribs/mx/LongCounter;->value:J

    return-void
.end method


# virtual methods
.method getValue()J
    .locals 4

    .prologue
    .line 32
    iget-object v1, p0, Lcontribs/mx/LongCounter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 33
    :try_start_0
    iget-wide v2, p0, Lcontribs/mx/LongCounter;->value:J

    monitor-exit v1

    return-wide v2

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method increment()V
    .locals 6

    .prologue
    .line 26
    iget-object v1, p0, Lcontribs/mx/LongCounter;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 27
    :try_start_0
    iget-wide v2, p0, Lcontribs/mx/LongCounter;->value:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcontribs/mx/LongCounter;->value:J

    .line 28
    monitor-exit v1

    .line 29
    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
