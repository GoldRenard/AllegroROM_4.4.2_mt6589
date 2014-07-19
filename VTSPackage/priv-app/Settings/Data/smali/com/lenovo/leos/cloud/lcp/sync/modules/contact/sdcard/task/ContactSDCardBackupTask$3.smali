.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask$3;
.super Ljava/lang/Object;
.source "ContactSDCardBackupTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->fileNameTime:J
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;)J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->fileFullPath:Ljava/lang/String;
    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".tmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->deleteFile(Landroid/content/Context;JLjava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
