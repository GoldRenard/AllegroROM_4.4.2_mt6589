.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask$1;
.super Ljava/lang/Object;
.source "ContactPhotoRestoreTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor$PhotoVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask;->streamPortraitRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask;

.field private final synthetic val$ops:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask$1;->val$ops:Ljava/util/ArrayList;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "photoBytes"    # [B

    .prologue
    .line 87
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask$1;->val$ops:Ljava/util/ArrayList;

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask;->saveSinglePhoto(Ljava/util/List;Ljava/lang/String;[B)V
    invoke-static {v0, v1, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask;Ljava/util/List;Ljava/lang/String;[B)V

    .line 88
    return-void
.end method
