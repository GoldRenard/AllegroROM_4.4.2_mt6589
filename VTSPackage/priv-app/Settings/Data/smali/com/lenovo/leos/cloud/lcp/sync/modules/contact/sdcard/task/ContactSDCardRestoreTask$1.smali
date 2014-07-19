.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask$1;
.super Ljava/lang/Object;
.source "ContactSDCardRestoreTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader$ReaderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask;->importContactFromFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadEntry(Ljava/lang/String;)V
    .locals 1
    .param p1, "entryContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask;

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask;->importContactFromJson(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask;Ljava/lang/String;)V

    .line 89
    return-void
.end method
