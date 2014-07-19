.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$6;
.super Ljava/lang/Object;
.source "ContactRestoreTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->onSaveContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;

.field private final synthetic val$ops:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$6;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$6;->val$ops:Ljava/util/ArrayList;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Landroid/os/Bundle;)Z
    .locals 5
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 354
    const-string v1, "ct"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;

    .line 355
    .local v0, "c":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$6;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;

    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->filterGroupFields(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V

    .line 356
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$6;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$6;->val$ops:Ljava/util/ArrayList;

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->buildContactRestoreOperations(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V
    invoke-static {v1, v2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->access$10(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V

    .line 358
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$6;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->restoreCurProgress:I
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->access$11(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->access$12(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;I)V

    .line 359
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$6;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$6;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->restoreCurProgress:I
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->access$11(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$6;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->restoreTotalProgress:I
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->access$13(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000

    mul-float/2addr v3, v4

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->notifyStepProgress(F)V

    .line 361
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$6;->val$ops:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$6;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->dbCommistSize:I
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->access$7(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;)I

    move-result v2

    if-le v1, v2, :cond_0

    .line 362
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$6;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$6;->val$ops:Ljava/util/ArrayList;

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->commit(Ljava/util/List;)V
    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->access$14(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;Ljava/util/List;)V

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$6;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
