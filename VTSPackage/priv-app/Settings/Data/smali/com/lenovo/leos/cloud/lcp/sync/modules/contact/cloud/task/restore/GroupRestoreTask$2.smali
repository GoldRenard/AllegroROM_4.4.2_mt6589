.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask$2;
.super Ljava/lang/Object;
.source "GroupRestoreTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;->buildRestoreDup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 193
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 194
    const/4 v1, 0x0

    .line 201
    :goto_0
    return v1

    .line 197
    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;-><init>()V

    .line 198
    .local v0, "g":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    const-string v1, "cid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->cid:I

    .line 199
    const-string v1, "sid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->sourceid:Ljava/lang/String;

    .line 200
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;->access$11(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

    move-result-object v1

    iget v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->cid:I

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->sourceid:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;->updateGroupsSid(ILjava/lang/String;)V

    .line 201
    const/4 v1, 0x1

    goto :goto_0
.end method
