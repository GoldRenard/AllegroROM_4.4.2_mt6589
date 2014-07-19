.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$1;
.super Ljava/lang/Object;
.source "ContactSyncTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field step:F

.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const v0, 0x3d4ccccd

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$1;->step:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 271
    const/4 v0, 0x0

    .line 272
    .local v0, "curProgress":F
    :goto_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->doingNetWork:Z
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    :cond_0
    :goto_1
    return-void

    .line 273
    :cond_1
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$1;->step:F

    add-float/2addr v0, v2

    .line 274
    const/high16 v2, 0x3f800000

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    .line 275
    const/high16 v0, 0x3f800000

    .line 276
    goto :goto_1

    .line 278
    :cond_2
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;

    invoke-virtual {v2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyStepProgress(F)V

    .line 280
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 281
    :catch_0
    move-exception v1

    .line 282
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
