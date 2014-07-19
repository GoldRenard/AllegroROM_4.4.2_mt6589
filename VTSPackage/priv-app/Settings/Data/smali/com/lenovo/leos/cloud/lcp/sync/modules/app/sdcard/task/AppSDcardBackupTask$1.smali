.class Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask$1;
.super Ljava/lang/Object;
.source "AppSDcardBackupTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->startAppSDCardBackup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppUpdate(I)V
    .locals 1
    .param p1, "current"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;

    iput p1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->countOfAdd:I

    .line 105
    return-void
.end method

.method public onUpdate(I)V
    .locals 2
    .param p1, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;

    int-to-float v1, p1

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V
    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;F)V

    .line 100
    return-void
.end method
