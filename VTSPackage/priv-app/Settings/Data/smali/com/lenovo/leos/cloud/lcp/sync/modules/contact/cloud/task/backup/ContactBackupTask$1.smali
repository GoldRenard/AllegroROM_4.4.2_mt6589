.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$1;
.super Ljava/lang/Object;
.source "ContactBackupTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->onSaveContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

.field private final synthetic val$ops:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$1;->val$ops:Ljava/util/ArrayList;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateRawContactSID(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 102
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    const-string v1, "cid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "sid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;-><init>(ILjava/lang/Long;)V

    .line 103
    .local v0, "g":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->updateContactGSid(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;)V

    .line 104
    return-void
.end method


# virtual methods
.method public onVisit(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 80
    const-string v1, "delete"

    const-string v2, "op"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->opDeleteCount:I
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;I)V

    .line 82
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->sid2cidMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "sid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 83
    .local v0, "cid":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$1;->val$ops:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->newDeleteOpertion(I)Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->delContactSid(Landroid/content/Context;ILjava/lang/String;)V

    .line 95
    .end local v0    # "cid":Ljava/lang/Integer;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$1;->val$ops:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->dbCommistSize:I
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->access$9(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 96
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$1;->val$ops:Ljava/util/ArrayList;

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->digestDBBatchOperation(Ljava/util/List;)[Landroid/content/ContentProviderResult;
    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->access$10(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;Ljava/util/List;)[Landroid/content/ContentProviderResult;

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    :goto_1
    return v1

    .line 87
    :cond_2
    const-string v1, "add"

    const-string v2, "op"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 88
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->opAddCount:I
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->access$6(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;I)V

    .line 89
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$1;->updateRawContactSID(Landroid/os/Bundle;)V

    goto :goto_0

    .line 90
    :cond_3
    const-string v1, "update"

    const-string v2, "op"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->opUpdateCount:I
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->access$7(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->access$8(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;I)V

    .line 92
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$1;->updateRawContactSID(Landroid/os/Bundle;)V

    goto :goto_0

    .line 98
    :cond_4
    const/4 v1, 0x1

    goto :goto_1
.end method
