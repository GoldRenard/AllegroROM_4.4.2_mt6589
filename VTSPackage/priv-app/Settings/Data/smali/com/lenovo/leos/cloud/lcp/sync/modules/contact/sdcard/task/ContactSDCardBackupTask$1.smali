.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask$1;
.super Ljava/lang/Object;
.source "ContactSDCardBackupTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao$GroupVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->buildGroupsExportInfo(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;

.field private final synthetic val$export:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask$1;->val$export:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;II)Z
    .locals 2
    .param p1, "group"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    .param p2, "cur"    # I
    .param p3, "total"    # I

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask$1;->val$export:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;

    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->addGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;)V

    .line 146
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->groupMap:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->cid:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
