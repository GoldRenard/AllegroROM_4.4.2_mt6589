.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$7;
.super Ljava/lang/Object;
.source "ContactBackupTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->buildDiffContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

.field private final synthetic val$builder:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$7;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$7;->val$builder:Ljava/lang/StringBuilder;

    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 311
    const-string v2, "sid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "contactSid":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$7;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->sid2cidMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 313
    .local v0, "cid":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 314
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$7;->val$builder:Ljava/lang/StringBuilder;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$7;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->sid2cidMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 316
    :cond_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$7;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->dupandDiffSids:Ljava/util/List;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->access$13(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)Ljava/util/List;

    move-result-object v2

    const-string v3, "sid"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$7;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
