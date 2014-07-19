.class public final Lcom/lenovo/leos/cloud/lcp/common/util/ConcurrentExecutor;
.super Ljava/lang/Object;
.source "ConcurrentExecutor.java"


# static fields
.field private static service:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/ConcurrentExecutor;->service:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 20
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/ConcurrentExecutor;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 21
    return-void
.end method

.method public static shutdown()V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/ConcurrentExecutor;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/util/ConcurrentExecutor;->service:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 30
    :cond_0
    return-void
.end method
