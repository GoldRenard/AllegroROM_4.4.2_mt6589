.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask$1;
.super Ljava/lang/Object;
.source "GroupBackupTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;->saveResult(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/GroupBackupResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 101
    const-string v1, "op"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "op":Ljava/lang/String;
    const-string v1, "delete"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->opDeleteCount:I
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;I)V

    .line 104
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

    move-result-object v1

    const-string v2, "cid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;->deleteGroupsSid(I)V

    .line 112
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    :goto_1
    return v1

    .line 105
    :cond_1
    const-string v1, "update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->opUpdateCount:I
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;->access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;I)V

    .line 107
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

    move-result-object v1

    const-string v2, "cid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "sid"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;->updateGroupsSid(ILjava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_2
    const-string v1, "add"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->opAddCount:I
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;->access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;->access$6(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;I)V

    .line 110
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

    move-result-object v1

    const-string v2, "cid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "sid"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;->updateGroupsSid(ILjava/lang/String;)V

    goto :goto_0

    .line 112
    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method
