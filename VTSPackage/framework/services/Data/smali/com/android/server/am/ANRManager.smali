.class public final Lcom/android/server/am/ANRManager;
.super Landroid/app/ANRManagerNative;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ANRManager$BinderDumpThread;,
        Lcom/android/server/am/ANRManager$KeyAnrRecord;,
        Lcom/android/server/am/ANRManager$AnrDumpMgr;,
        Lcom/android/server/am/ANRManager$DumpThread;,
        Lcom/android/server/am/ANRManager$AnrDumpRecord;,
        Lcom/android/server/am/ANRManager$BinderWatchdog;,
        Lcom/android/server/am/ANRManager$AnrMonitorHandler;
    }
.end annotation


# static fields
.field public static AnrOption:I = 0x0

.field public static final DISABLE_ALL_ANR_MECHANISM:I = 0x0

.field public static final DISABLE_PARTIAL_ANR_MECHANISM:I = 0x1

.field public static final ENABLE_ALL_ANR_MECHANISM:I = 0x2

.field protected static final INPUT_EVENT_ANR_DUMP:I = 0x3ee

.field protected static final MAX_MTK_TRACE_COUNT:I = 0xa

.field private static NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String; = null

.field protected static final REMOVE_KEYDISPATCHING_TIMEOUT_MSG:I = 0x3ed

.field protected static final SIGNAL_STKFLT:I = 0x10

.field protected static final START_ANR_DUMP_MSG:I = 0x3eb

.field protected static final START_MONITOR_BROADCAST_TIMEOUT_MSG:I = 0x3e9

.field protected static final START_MONITOR_KEYDISPATCHING_TIMEOUT_MSG:I = 0x3ec

.field protected static final START_MONITOR_SERVICE_TIMEOUT_MSG:I = 0x3ea

.field protected static final UPDATE_CPU_USAGE:I = 0x3ef

.field protected static additionNBTList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Lcom/android/server/am/ActivityManagerService;

.field private static final c:Ljava/lang/Object;

.field private static final d:Ljava/lang/Object;

.field private static final e:Lcom/android/internal/os/ProcessCpuTracker;

.field private static g:Lcom/android/server/am/ANRManager;

.field public static mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final f:Ljava/util/concurrent/atomic/AtomicLong;

.field protected mAnrDumpMgr:Lcom/android/server/am/ANRManager$AnrDumpMgr;

.field protected mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 109
    sput v1, Lcom/android/server/am/ANRManager;->AnrOption:I

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/ANRManager;->c:Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/ANRManager;->d:Ljava/lang/Object;

    .line 120
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, v2}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    sput-object v0, Lcom/android/server/am/ANRManager;->e:Lcom/android/internal/os/ProcessCpuTracker;

    .line 122
    new-array v0, v1, [Ljava/lang/String;

    const-string v1, "/system/bin/mediaserver"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "/system/bin/surfaceflinger"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/am/ANRManager;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    .line 136
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ANRManager;->g:Lcom/android/server/am/ANRManager;

    .line 138
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 140
    invoke-direct {p0}, Landroid/app/ANRManagerNative;-><init>()V

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ANRManager;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 141
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 4

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/app/ANRManagerNative;-><init>()V

    .line 131
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/am/ANRManager;->f:Ljava/util/concurrent/atomic/AtomicLong;

    .line 150
    sput-object p1, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    .line 152
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/app/ANRAppManager;->getDefault()Landroid/app/ANRAppManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/app/ANRAppManager;->newMessageLogger(ZLjava/lang/String;)Landroid/util/Printer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 156
    :cond_0
    return-void
.end method

.method static synthetic a()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method private final a(I)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 246
    const/4 v0, 0x2

    invoke-static {}, Lcom/android/server/am/ANRManager;->enableANRDebuggingMechanism()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 304
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    const-string v0, "5"

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->enablemlog(Ljava/lang/String;)V

    .line 254
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x5

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 255
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v5}, Landroid/util/SparseArray;-><init>(I)V

    .line 260
    if-eq p1, v3, :cond_2

    .line 261
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_2
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :cond_3
    if-eq p1, v3, :cond_6

    .line 268
    invoke-static {p1, p1}, Lcom/android/server/am/ANRManager$BinderWatchdog;->getTimeoutBinderPidList(II)Ljava/util/ArrayList;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 270
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 271
    if-eqz v0, :cond_4

    .line 272
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 273
    if-eq v0, p1, :cond_4

    sget-object v4, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v4, :cond_4

    .line 274
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 279
    :cond_5
    invoke-static {p1, v1, v6}, Lcom/android/server/am/ANRManager$BinderWatchdog;->b(ILjava/util/ArrayList;Landroid/util/SparseArray;)V

    .line 284
    :cond_6
    sget-object v0, Lcom/android/server/am/ANRManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_7

    .line 286
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 287
    const-string v3, "ANRManager"

    invoke-virtual {v0, v5, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ANRManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 289
    :cond_7
    sget-object v0, Lcom/android/server/am/ANRManager;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    mul-int/lit16 v3, v3, 0xc8

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 293
    const-string v0, "dalvik.vm.mtk-stack-trace-file"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    const-string v3, "ANRManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preDumpStackTraces Begin tracePath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 301
    invoke-static {v0, v1, v2}, Lcom/android/server/am/ANRManager;->a(Ljava/lang/String;Ljava/util/ArrayList;Landroid/util/SparseArray;)V

    .line 302
    const-string v0, "ANRManager"

    const-string v1, "preDumpStackTraces End"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/android/server/am/ANRManager;I)V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/am/ANRManager;->a(I)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/ArrayList;Landroid/util/SparseArray;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 310
    new-instance v2, Lcom/android/server/am/ANRManager$1;

    const/16 v0, 0x8

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/ANRManager$1;-><init>(Ljava/lang/String;I)V

    .line 315
    :try_start_0
    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 318
    if-eqz p1, :cond_1

    .line 320
    :try_start_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 321
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 322
    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 324
    :try_start_2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 325
    const-string v4, "ANRManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preDumpStackTraces process: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " parent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Landroid/os/Process;->getParentPid(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " zygote: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    invoke-static {v6}, Landroid/os/Process;->getParentPid(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    sget-object v4, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->isJavaProcess(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 328
    const/16 v4, 0x10

    invoke-static {v0, v4}, Landroid/os/Process;->sendSignal(II)V

    .line 333
    :goto_1
    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 334
    monitor-exit v2

    .line 321
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 330
    :cond_0
    invoke-static {v0, p0}, Landroid/os/Debug;->dumpNativeBacktraceToFile(ILjava/lang/String;)V

    goto :goto_1

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    :try_start_4
    const-string v1, "ANRManager"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 341
    :cond_1
    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    .line 343
    const/4 v0, 0x1

    const-string v1, "/data/anr/mtk_traces.txt"

    const-string v2, "/data/anr/mtk_traces_"

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ANRManager;->renameFiles(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 344
    return-void

    .line 341
    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    throw v0
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/android/server/am/ANRManager;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    return-object v0
.end method

.method public static enableANRDebuggingMechanism()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 1324
    sget v1, Lcom/android/server/am/ANRManager;->AnrOption:I

    packed-switch v1, :pswitch_data_0

    .line 1332
    :goto_0
    :pswitch_0
    return v0

    .line 1328
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1330
    :pswitch_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1324
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static extendANRTime(IJ)J
    .locals 8

    .prologue
    .line 1296
    const-wide/16 v1, 0x0

    .line 1299
    const-string v0, "mobile"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1300
    invoke-static {v0}, Lcom/mediatek/common/mom/IMobileManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/mom/IMobileManagerService;

    move-result-object v0

    .line 1302
    :try_start_0
    invoke-interface {v0, p0, p1, p2}, Lcom/mediatek/common/mom/IMobileManagerService;->getUserConfirmTime(IJ)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1303
    :try_start_1
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserConfirmTime() userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " anrTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " extendTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1309
    :goto_0
    return-wide v0

    .line 1305
    :catch_0
    move-exception v0

    move-object v5, v0

    move-wide v6, v1

    move-wide v0, v6

    move-object v2, v5

    .line 1306
    :goto_1
    const-string v3, "ANRManager"

    const-string v4, "getUserConfirmTime() failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1305
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static getDefault(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ANRManager;
    .locals 1

    .prologue
    .line 143
    sput-object p0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    .line 144
    sget-object v0, Lcom/android/server/am/ANRManager;->g:Lcom/android/server/am/ANRManager;

    if-nez v0, :cond_0

    .line 145
    new-instance v0, Lcom/android/server/am/ANRManager;

    invoke-direct {v0}, Lcom/android/server/am/ANRManager;-><init>()V

    sput-object v0, Lcom/android/server/am/ANRManager;->g:Lcom/android/server/am/ANRManager;

    .line 146
    :cond_0
    sget-object v0, Lcom/android/server/am/ANRManager;->g:Lcom/android/server/am/ANRManager;

    return-object v0
.end method

.method public static renameFiles(ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7

    .prologue
    .line 683
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 684
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renameFiles Begin, clearTraces="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", nativetracesPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", subnativetracesPath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 688
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 689
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1fd

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 691
    if-eqz p0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 692
    sget-object v2, Lcom/android/server/am/ANRManager;->c:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 695
    const/16 v1, 0x8

    :goto_0
    if-lez v1, :cond_2

    .line 696
    :try_start_1
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 697
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 698
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 699
    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 695
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 702
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "1.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 704
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 707
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 708
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b6

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 714
    const-string v1, "ANRManager"

    const-string v2, "renameFiles End"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :goto_1
    return-object v0

    .line 704
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 709
    :catch_0
    move-exception v0

    .line 710
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to prepare ANR traces file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 711
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public IsProcDoCoredump(I)Ljava/lang/Boolean;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1200
    const/4 v0, 0x4

    new-array v2, v0, [I

    .line 1201
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->exceptionLog:Lcom/mediatek/common/aee/IExceptionLog;

    if-eqz v0, :cond_1

    .line 1203
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->exceptionLog:Lcom/mediatek/common/aee/IExceptionLog;

    invoke-interface {v0, v2}, Lcom/mediatek/common/aee/IExceptionLog;->getNativeExceptionPidList([I)Z

    .line 1204
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_1

    aget v4, v2, v0

    .line 1206
    if-ne v4, p1, :cond_0

    if-lez v4, :cond_0

    .line 1208
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[coredump] Process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is doing coredump"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1217
    :goto_1
    return-object v0

    .line 1213
    :cond_0
    const-string v5, "ANRManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[coredump] coredump\'s pid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1217
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method public checkNBTDumpPid(I)V
    .locals 3

    .prologue
    .line 1263
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    invoke-static {p1}, Lcom/android/server/am/ActivityManagerService;->isJavaProcess(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/am/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1265
    sget-object v0, Lcom/android/server/am/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1266
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add NBTDumpPid pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_0
    return-void
.end method

.method public copyFile(Ljava/io/File;Ljava/io/File;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1347
    .line 1349
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1367
    :goto_0
    return v1

    .line 1352
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1353
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 1354
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x1b6

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1357
    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1359
    :try_start_1
    invoke-virtual {p0, v2, p2}, Lcom/android/server/am/ANRManager;->copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 1361
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :goto_1
    move v1, v0

    .line 1367
    goto :goto_0

    .line 1361
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1363
    :catch_0
    move-exception v0

    .line 1364
    const-string v0, "ANRManager"

    const-string v2, "createFile fail"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1365
    goto :goto_1
.end method

.method public copyToFile(Ljava/io/InputStream;Ljava/io/File;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1372
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v2, p2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1374
    const/16 v3, 0x1000

    :try_start_1
    new-array v3, v3, [B

    .line 1376
    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_0

    .line 1377
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1380
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1382
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1386
    :goto_1
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1389
    :catch_0
    move-exception v0

    .line 1390
    const-string v0, "ANRManager"

    const-string v2, "copyToFile fail"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1391
    :goto_2
    return v0

    .line 1380
    :cond_0
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .line 1382
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1386
    :goto_3
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    .line 1383
    :catch_1
    move-exception v3

    .line 1384
    const-string v3, "ANRManager"

    const-string v4, "copyToFile: getFD fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1383
    :catch_2
    move-exception v3

    .line 1384
    const-string v3, "ANRManager"

    const-string v4, "copyToFile: getFD fail"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_1
.end method

.method public createFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 1339
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1340
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1341
    :cond_0
    const-string v0, "ANRManager"

    const-string v1, "file isn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    const/4 v0, 0x0

    .line 1344
    :cond_1
    return-object v0
.end method

.method public dumpBinderInfo(I)V
    .locals 5

    .prologue
    .line 1419
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/anr/binderinfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1420
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1421
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1422
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1423
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1b6

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1426
    :cond_0
    const-string v1, "/sys/kernel/debug/binder/failed_transaction_log"

    invoke-virtual {p0, v1}, Lcom/android/server/am/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1427
    if-eqz v1, :cond_1

    .line 1428
    const-string v2, "/data/anr/binderinfo"

    const-string v3, "------ BINDER FAILED TRANSACTION LOG ------\n"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1432
    :cond_1
    const-string v1, "sys/kernel/debug/binder/timeout_log"

    invoke-virtual {p0, v1}, Lcom/android/server/am/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1433
    if-eqz v1, :cond_2

    .line 1434
    const-string v2, "/data/anr/binderinfo"

    const-string v3, "------ BINDER TIMEOUT LOG ------\n"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1438
    :cond_2
    const-string v1, "/sys/kernel/debug/binder/transaction_log"

    invoke-virtual {p0, v1}, Lcom/android/server/am/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1439
    if-eqz v1, :cond_3

    .line 1440
    const-string v2, "/data/anr/binderinfo"

    const-string v3, "------ BINDER TRANSACTION LOG ------\n"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1444
    :cond_3
    const-string v1, "/sys/kernel/debug/binder/transactions"

    invoke-virtual {p0, v1}, Lcom/android/server/am/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1445
    if-eqz v1, :cond_4

    .line 1446
    const-string v2, "/data/anr/binderinfo"

    const-string v3, "------ BINDER TRANSACTIONS ------\n"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1450
    :cond_4
    const-string v1, "/sys/kernel/debug/binder/stats"

    invoke-virtual {p0, v1}, Lcom/android/server/am/ANRManager;->createFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1451
    if-eqz v1, :cond_5

    .line 1452
    const-string v2, "/data/anr/binderinfo"

    const-string v3, "------ BINDER STATS ------\n"

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1456
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/kernel/debug/binder/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1457
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1459
    if-eqz v2, :cond_6

    .line 1460
    const-string v1, "/data/anr/binderinfo"

    const-string v3, "------ BINDER PROCESS STATE: $i ------\n"

    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/ANRManager;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    invoke-virtual {p0, v2, v0}, Lcom/android/server/am/ANRManager;->copyFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    :cond_6
    :goto_0
    return-void

    .line 1464
    :catch_0
    move-exception v0

    .line 1465
    const-string v0, "ANRManager"

    const-string v1, "dumpBinderInfo fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableZramMonitor(Z)V
    .locals 3

    .prologue
    .line 1471
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableZramMonitor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :try_start_0
    sget-object v1, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "/sys/module/mlog/parameters/timer_intval"

    if-eqz p1, :cond_0

    const-string v0, "100"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ActivityManagerService;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    :goto_1
    return-void

    .line 1473
    :cond_0
    const-string v0, "6000"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1474
    :catch_0
    move-exception v0

    .line 1475
    const-string v1, "ANRManager"

    const-string v2, "Error happens enableZramMonitor"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public enablemlog(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1480
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablemlog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    :try_start_0
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "/sys/module/mlog/parameters/do_mlog"

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ActivityManagerService;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1486
    :goto_0
    return-void

    .line 1483
    :catch_0
    move-exception v0

    .line 1484
    const-string v1, "ANRManager"

    const-string v2, "Error happens enablemlog"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAndroidTime()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1038
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1039
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1040
    new-instance v2, Ljava/util/Formatter;

    invoke-direct {v2}, Ljava/util/Formatter;-><init>()V

    .line 1041
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Android time :["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%.3f"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    long-to-float v5, v5

    const/high16 v6, 0x447a0000

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcessState()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1023
    sget-object v1, Lcom/android/server/am/ANRManager;->e:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v1

    .line 1027
    :try_start_0
    const-string v0, "ANRManager"

    const-string v2, "getProcessState"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    sget-object v0, Lcom/android/server/am/ANRManager;->e:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v1

    .line 1032
    :goto_0
    return-object v0

    .line 1030
    :catch_0
    move-exception v0

    .line 1031
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProcessState error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 1034
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public informMessageDump(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 1282
    sget-object v0, Lcom/android/server/am/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1283
    sget-object v0, Lcom/android/server/am/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1285
    sget-object v1, Lcom/android/server/am/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    :goto_0
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "informMessageDump pid= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    return-void

    .line 1288
    :cond_0
    sget-object v0, Lcom/android/server/am/ANRManager;->mMessageMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public notifyKeyANR(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1049
    .line 1050
    new-instance v0, Lcom/android/server/am/ANRManager$KeyAnrRecord;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/ANRManager$KeyAnrRecord;-><init>(Lcom/android/server/am/ANRManager;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 1051
    sget-object v1, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ee

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1052
    sget-object v1, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1053
    return-void
.end method

.method public notifyLightWeightANR(ILjava/lang/String;I)V
    .locals 7

    .prologue
    const-wide/16 v5, 0x1388

    const/16 v1, 0x3ef

    const/16 v4, 0x3ec

    .line 1146
    invoke-static {}, Lcom/android/server/am/ANRManager;->enableANRDebuggingMechanism()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    packed-switch p3, :pswitch_data_0

    .line 1164
    :cond_0
    :goto_0
    const/4 v0, 0x2

    invoke-static {}, Lcom/android/server/am/ANRManager;->enableANRDebuggingMechanism()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 1183
    :cond_1
    :goto_1
    return-void

    .line 1150
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1151
    iget-object v1, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v5

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1154
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1155
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->removeMessages(I)V

    goto :goto_0

    .line 1167
    :cond_2
    packed-switch p3, :pswitch_data_1

    .line 1179
    invoke-direct {p0, p1}, Lcom/android/server/am/ANRManager;->a(I)V

    goto :goto_1

    .line 1170
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, p1, v1}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1172
    iget-object v1, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v5

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1175
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1176
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;->removeMessages(I)V

    goto :goto_1

    .line 1147
    nop

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1167
    :pswitch_data_1
    .packed-switch 0x3ec
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public notifyWNR(ILjava/lang/String;)Z
    .locals 12

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1072
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyWNR pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-virtual {p0, v3}, Lcom/android/server/am/ANRManager;->enableZramMonitor(Z)V

    .line 1076
    if-gtz p1, :cond_0

    .line 1077
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping WNR due to invalid pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    invoke-virtual {p0, v4}, Lcom/android/server/am/ANRManager;->enableZramMonitor(Z)V

    move v0, v3

    .line 1139
    :goto_0
    return v0

    .line 1084
    :cond_0
    sget-object v7, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    .line 1085
    :try_start_0
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v5

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1087
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v9

    move v6, v3

    .line 1088
    :goto_2
    if-ge v6, v9, :cond_8

    .line 1089
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 1090
    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v10, :cond_1

    iget v10, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v10, p1, :cond_1

    :goto_3
    move-object v2, v1

    .line 1095
    goto :goto_1

    .line 1088
    :cond_1
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_2

    .line 1097
    :cond_2
    if-nez v2, :cond_3

    .line 1098
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping WNR due to null process record: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->enableZramMonitor(Z)V

    .line 1101
    monitor-exit v7

    move v0, v3

    goto :goto_0

    .line 1104
    :cond_3
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->debugging:Z

    if-eqz v0, :cond_4

    .line 1105
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping WNR due to debugging: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->enableZramMonitor(Z)V

    .line 1109
    monitor-exit v7

    move v0, v3

    goto :goto_0

    .line 1111
    :cond_4
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sget-object v1, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    const-wide/16 v10, 0x1f40

    sub-long/2addr v8, v10

    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/ActivityManagerService;->isDidDexOpt(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1112
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping WNR due to DidDexOpt: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    sget-object v0, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->enableZramMonitor(Z)V

    .line 1117
    monitor-exit v7

    move v0, v3

    goto/16 :goto_0

    .line 1122
    :cond_5
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    if-nez v0, :cond_6

    .line 1132
    :goto_4
    if-eqz v2, :cond_7

    .line 1135
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1, p2}, Lcom/android/server/am/ANRManager;->notifyKeyANR(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;)V

    .line 1137
    monitor-exit v7

    move v0, v4

    goto/16 :goto_0

    .line 1125
    :cond_6
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping WNR due to instrumentation: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1127
    const-string v1, "shortMsg"

    const-string v6, "keyDispatchingTimedOut"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    const-string v1, "longMsg"

    const-string v6, "Timed out while dispatching key event"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    sget-object v1, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6, v0}, Lcom/android/server/am/ActivityManagerService;->finishInstrumentationLocked(Lcom/android/server/am/ProcessRecord;ILandroid/os/Bundle;)V

    move-object v2, v5

    goto :goto_4

    .line 1139
    :cond_7
    monitor-exit v7

    move v0, v3

    goto/16 :goto_0

    .line 1140
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_8
    move-object v1, v2

    goto/16 :goto_3
.end method

.method public prepareStackTraceFile(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 611
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareStackTraceFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 619
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 620
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 621
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 624
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1fd

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 626
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 627
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 629
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1b6

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 630
    :catch_0
    move-exception v0

    .line 631
    const-string v1, "ANRManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to prepare stack trace file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerDumpNBTReceiver()V
    .locals 3

    .prologue
    .line 1224
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1225
    const-string v1, "android.intent.action.ACTION_ADD_NBT_DUMP_PID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1226
    const-string v1, "android.intent.action.ACTION_REMOVE_NBT_DUMP_PID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1227
    sget-object v1, Lcom/android/server/am/ANRManager;->b:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/ANRManager$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/ANRManager$2;-><init>(Lcom/android/server/am/ANRManager;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1259
    return-void
.end method

.method public removeNBTDumpPid(I)V
    .locals 3

    .prologue
    .line 1272
    sget-object v0, Lcom/android/server/am/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1274
    sget-object v0, Lcom/android/server/am/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/ANRManager;->additionNBTList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1275
    const-string v0, "ANRManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove NBTDumpPid pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_0
    return-void
.end method

.method public skipANR(I)Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1188
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 1191
    invoke-virtual {p0, p1}, Lcom/android/server/am/ANRManager;->IsProcDoCoredump(I)Ljava/lang/Boolean;

    move-result-object v0

    .line 1194
    return-object v0
.end method

.method public startANRManager()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AnrMonitorThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 162
    new-instance v1, Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/server/am/ANRManager$AnrMonitorHandler;-><init>(Lcom/android/server/am/ANRManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/ANRManager;->mAnrHandler:Lcom/android/server/am/ANRManager$AnrMonitorHandler;

    .line 163
    new-instance v0, Lcom/android/server/am/ANRManager$AnrDumpMgr;

    invoke-direct {v0, p0}, Lcom/android/server/am/ANRManager$AnrDumpMgr;-><init>(Lcom/android/server/am/ANRManager;)V

    iput-object v0, p0, Lcom/android/server/am/ANRManager;->mAnrDumpMgr:Lcom/android/server/am/ANRManager$AnrDumpMgr;

    .line 167
    sget-object v0, Lcom/android/server/am/ANRManager;->e:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 169
    const-string v0, "dalvik.vm.mtk-stack-trace-file"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    .line 170
    const-string v0, "dalvik.vm.stack-trace-file"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    .line 171
    const-string v0, "data/anr/native1.txt"

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    .line 172
    const-string v0, "data/anr/native2.txt"

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    .line 173
    const-string v0, "data/anr/native3.txt"

    invoke-virtual {p0, v0}, Lcom/android/server/am/ANRManager;->prepareStackTraceFile(Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1396
    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 1398
    :try_start_0
    invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1400
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 1402
    return-void

    .line 1400
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v1
.end method

.method public updateProcessStats()V
    .locals 8

    .prologue
    .line 999
    sget-object v1, Lcom/android/server/am/ANRManager;->e:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v1

    .line 1002
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 1005
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x9c4

    cmp-long v0, v4, v6

    if-lez v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/android/server/am/ANRManager;->f:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1007
    sget-object v0, Lcom/android/server/am/ANRManager;->e:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 1008
    const-string v0, "ANRManager"

    const-string v2, "updateProcessStats"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1018
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1019
    return-void

    .line 1011
    :cond_0
    :try_start_3
    const-string v0, "ANRManager"

    const-string v2, "CPU update time < 2.5sec"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    :try_start_4
    const-string v2, "ANRManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProcessStats error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1018
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
