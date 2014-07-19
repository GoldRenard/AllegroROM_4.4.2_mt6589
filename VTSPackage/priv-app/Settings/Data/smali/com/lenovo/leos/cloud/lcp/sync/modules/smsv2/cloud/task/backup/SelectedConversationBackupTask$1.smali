.class Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$1;
.super Ljava/lang/Object;
.source "SelectedConversationBackupTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->initStepProgressListener()Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepProgress(IILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "cur"    # I
    .param p2, "total"    # I
    .param p3, "params"    # Landroid/os/Bundle;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;

    int-to-float v1, p1

    const/high16 v2, 0x3f800000

    mul-float/2addr v1, v2

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->notifyStepProgress(F)V

    .line 69
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
