.class Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;
.super Ljava/lang/Thread;
.source "SmoothProgress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressUpdateThread"
.end annotation


# instance fields
.field isPaused:Z

.field isRunning:Z

.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)V
    .locals 1

    .prologue
    .line 138
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->isPaused:Z

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->isRunning:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized pause()V
    .locals 1

    .prologue
    .line 187
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->isPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resumeRunning()V
    .locals 2

    .prologue
    .line 191
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->isPaused:Z

    .line 192
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    # getter for: Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->waiter:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$5(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 193
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    # getter for: Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->waiter:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$5(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 192
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 192
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

    .line 191
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 5

    .prologue
    const/16 v1, 0x62

    .line 144
    :goto_0
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->isRunning:Z

    if-nez v0, :cond_1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    # getter for: Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->finishBarrier:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$7(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    # getter for: Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->finishBarrier:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$7(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 174
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 177
    return-void

    .line 145
    :cond_1
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->isPaused:Z

    if-nez v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    # invokes: Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->stepAndAdjustSpeed()V
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$0(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)V

    .line 149
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    # getter for: Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->realProgress:I
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$1(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I

    move-result v0

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    # getter for: Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$2(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I

    move-result v2

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    # getter for: Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$2(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 150
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    # getter for: Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->realProgress:I
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$1(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$3(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;I)V

    .line 157
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    # invokes: Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->notifyProgress()V
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$4(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)V

    .line 159
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    # getter for: Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$2(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I

    move-result v0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_0

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    # getter for: Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->waiter:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$5(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 166
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    # getter for: Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->waiter:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$5(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)Ljava/lang/Object;

    move-result-object v0

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    # getter for: Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->stepInterval:I
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$6(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :goto_2
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 152
    :cond_4
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    # getter for: Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$2(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I

    move-result v0

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    # getter for: Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->realProgress:I
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$1(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I

    move-result v2

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    # getter for: Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$2(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I

    move-result v0

    if-le v0, v1, :cond_2

    .line 153
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    # getter for: Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$2(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I

    move-result v0

    if-le v0, v1, :cond_5

    move v0, v1

    :goto_3
    invoke-static {v2, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$3(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    # getter for: Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->virtualProgress:I
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$2(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)I

    move-result v0

    goto :goto_3

    .line 174
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 167
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public declared-synchronized stopRunning()V
    .locals 2

    .prologue
    .line 180
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->isRunning:Z

    .line 181
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    # getter for: Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->waiter:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$5(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 182
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    # getter for: Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->waiter:Ljava/lang/Object;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->access$5(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 181
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 181
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

    .line 180
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
