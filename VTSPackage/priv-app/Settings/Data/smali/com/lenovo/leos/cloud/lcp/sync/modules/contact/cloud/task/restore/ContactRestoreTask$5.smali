.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$5;
.super Ljava/lang/Object;
.source "ContactRestoreTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->buildRestoreServerAdd(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;

.field private final synthetic val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$5;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$5;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$5;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;

    const-string v1, "sid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;->addRawContact(Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$5;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$5;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$5;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->checkOrDoPageRestoreContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;)Z
    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->access$9(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
