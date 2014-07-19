.class Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask$1;
.super Ljava/lang/Object;
.source "CloudTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProxyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(II)V
    .locals 6
    .param p1, "curProgress"    # I
    .param p2, "totalProgress"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getParams()Landroid/os/Bundle;

    move-result-object v5

    .line 67
    .local v5, "bundle":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    int-to-long v1, p1

    int-to-long v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V

    .line 69
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
