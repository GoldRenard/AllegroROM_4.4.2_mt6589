.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask$3;
.super Ljava/lang/Object;
.source "ContactPhotoRestoreTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask;->buildRestoreServerAdd(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask;

.field private final synthetic val$request:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask$3;->val$request:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask$3;->val$request:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;

    const-string v3, "sid"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;->addPortrait(Ljava/lang/String;)V

    .line 219
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask$3;->val$request:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;->getPortraitSize()I

    move-result v2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_0

    .line 221
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask$3;->val$request:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask;->pagePortraitRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;)V
    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask$3;->val$request:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;->clearPortraits()V

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v1

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 224
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask;I)V

    goto :goto_0

    .line 229
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method
