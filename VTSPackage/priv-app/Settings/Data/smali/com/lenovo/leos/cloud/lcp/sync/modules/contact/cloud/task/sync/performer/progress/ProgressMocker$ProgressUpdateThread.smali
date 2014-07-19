.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;
.super Ljava/lang/Thread;
.source "ProgressMocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProgressUpdateThread"
.end annotation


# instance fields
.field bContinuUpdateProgress:Z

.field bTaskRuning:Z

.field curProgress:I

.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 258
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 259
    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;->bContinuUpdateProgress:Z

    .line 260
    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;->bTaskRuning:Z

    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;->curProgress:I

    return-void
.end method


# virtual methods
.method public pauseUpdate()V
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;->bContinuUpdateProgress:Z

    .line 286
    return-void
.end method

.method public resumeUpdate()V
    .locals 1

    .prologue
    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;->bContinuUpdateProgress:Z

    .line 290
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/16 v2, 0x62

    .line 264
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;->bTaskRuning:Z

    if-nez v1, :cond_1

    .line 278
    return-void

    .line 265
    :cond_1
    iget-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;->bContinuUpdateProgress:Z

    if-eqz v1, :cond_0

    .line 266
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;->curProgress:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;->curProgress:I

    .line 267
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;->curProgress:I

    if-le v1, v2, :cond_2

    move v1, v2

    :goto_1
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;->curProgress:I

    .line 268
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;->curProgress:I

    invoke-virtual {v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->notifyProgress(I)V

    .line 270
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->repairEstimateProgress()V
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;)V

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->currentProgressUpdateInternal:I
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker;)I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 267
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;->curProgress:I

    goto :goto_1
.end method

.method public stopUpdate()V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/progress/ProgressMocker$ProgressUpdateThread;->bTaskRuning:Z

    .line 282
    return-void
.end method
