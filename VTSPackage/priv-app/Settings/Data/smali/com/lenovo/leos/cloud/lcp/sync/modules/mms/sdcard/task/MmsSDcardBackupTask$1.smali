.class Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask$1;
.super Ljava/lang/Object;
.source "MmsSDcardBackupTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->fileNameTime:J
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;)J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->fileFullPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "-tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->deleteFile(Landroid/content/Context;JLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "MmsSDcardBackupTask"

    const-string v2, " cancel FileNotFoundException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
