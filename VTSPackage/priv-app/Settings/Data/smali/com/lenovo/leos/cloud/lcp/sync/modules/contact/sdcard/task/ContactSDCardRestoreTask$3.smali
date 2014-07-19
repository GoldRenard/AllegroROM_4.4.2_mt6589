.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask$3;
.super Ljava/lang/Object;
.source "ContactSDCardRestoreTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask;->importGroups(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask;

.field private final synthetic val$ops:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask$3;->val$ops:Ljava/util/ArrayList;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask$3;->val$ops:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask;->importOneGroup(Landroid/os/Bundle;Ljava/util/List;)V

    .line 129
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask$3;->val$ops:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask$3;->val$ops:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardTask;->digestDBBatchOperation(Ljava/util/List;)[Landroid/content/ContentProviderResult;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask;

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
