.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask$4;
.super Ljava/lang/Object;
.source "ContactTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->startVirtualNetWorkTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "curProgress":F
    :goto_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->doingNetWork:Z
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 389
    :cond_0
    :goto_1
    return-void

    .line 377
    :cond_1
    const v2, 0x3d4ccccd

    add-float/2addr v0, v2

    .line 378
    const/high16 v2, 0x3f800000

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    .line 379
    const/high16 v0, 0x3f800000

    .line 380
    goto :goto_1

    .line 382
    :cond_2
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask$4;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;

    invoke-virtual {v2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->notifyStepProgress(F)V

    .line 384
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v1

    .line 386
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
