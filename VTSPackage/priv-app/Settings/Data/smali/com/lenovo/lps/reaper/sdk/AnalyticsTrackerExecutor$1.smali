.class Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$1;
.super Ljava/lang/Object;
.source "AnalyticsTrackerExecutor.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->setUncaughtExceptionHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

.field final synthetic val$defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$1;->this$0:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    iput-object p2, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$1;->val$defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$1;->this$0:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;

    const/4 v1, 0x0

    # invokes: Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->trackThrowable(Ljava/lang/Throwable;I)V
    invoke-static {v0, p2, v1}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;->access$000(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor;Ljava/lang/Throwable;I)V

    .line 284
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerExecutor$1;->val$defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 285
    return-void
.end method
