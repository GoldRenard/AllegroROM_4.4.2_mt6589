.class public Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;
.super Ljava/lang/Object;
.source "TaskHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskHandler"

.field public static final TASK_TYPE_COMMON:I = 0x0

.field public static final TASK_TYPE_EVENT_REPORT:I = 0x2

.field public static final TASK_TYPE_EVENT_SAVE:I = 0x1

.field private static taskHandler:Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;


# instance fields
.field private final commonPool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final eventSavePool:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final reportPool:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->taskHandler:Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const-wide/16 v3, 0x0

    const/16 v7, 0x3e8

    const/4 v1, 0x2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->commonPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 17
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move v2, v1

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->eventSavePool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 19
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6, v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    move v1, v8

    move v2, v8

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->reportPool:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static getInstance()Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->taskHandler:Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    return-object v0
.end method


# virtual methods
.method public addTask(ILjava/lang/Runnable;)V
    .locals 3
    .param p1, "taskType"    # I
    .param p2, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 30
    packed-switch p1, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 32
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->commonPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v1, "TaskHandler"

    const-string v2, "Too Many Task At a Time. Please Wait..."

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 35
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->eventSavePool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 45
    :catch_1
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "TaskHandler"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 38
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->reportPool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 30
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
