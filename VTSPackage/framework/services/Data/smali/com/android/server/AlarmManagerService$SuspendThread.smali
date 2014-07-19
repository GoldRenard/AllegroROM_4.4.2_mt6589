.class Lcom/android/server/AlarmManagerService$SuspendThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuspendThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    .prologue
    .line 2425
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$SuspendThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2428
    const/4 v1, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mIsTimeOut:Z
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$3802(Z)Z

    .line 2430
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SuspendThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mConTimeOut:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$3900(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2431
    :try_start_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SuspendThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mConTimeOut:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$3900(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v1

    const-wide/32 v3, 0x493e0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 2432
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2433
    :try_start_2
    # getter for: Lcom/android/server/AlarmManagerService;->mIsTimeOut:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$3800()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2434
    const-string v1, "AlarmManagerService"

    const-string v2, "caijin, this is time out"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SuspendThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mPMgr:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$4000(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2436
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$SuspendThread;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2437
    const/4 v1, 0x0

    :try_start_3
    # setter for: Lcom/android/server/AlarmManagerService;->mWakefulness:Z
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$4102(Z)Z

    .line 2438
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2439
    :try_start_4
    const-string v1, "AlarmManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mWakefulness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/AlarmManagerService;->mWakefulness:Z
    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$4100()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    const-string v1, "AlarmManagerService"

    const-string v2, "caijin, system sleep deeply..."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2449
    :cond_0
    :goto_0
    return-void

    .line 2432
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2445
    :catch_0
    move-exception v0

    .line 2446
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    .line 2447
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    throw v1

    .line 2438
    :catchall_2
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v1

    .line 2443
    :cond_1
    const-string v1, "AlarmManagerService"

    const-string v2, "caijin, this is not time out"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0
.end method
