.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask$2;
.super Ljava/lang/Object;
.source "ContactTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;

    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepProgress(IILandroid/os/Bundle;)Z
    .locals 4
    .param p1, "cur"    # I
    .param p2, "total"    # I
    .param p3, "params"    # Landroid/os/Bundle;

    .prologue
    const/high16 v3, 0x3f800000

    .line 359
    int-to-float v1, p1

    mul-float/2addr v1, v3

    int-to-float v2, p2

    div-float v0, v1, v2

    .line 360
    .local v0, "subProgress":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    cmpg-float v1, v0, v3

    if-gez v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;

    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->notifyStepProgress(F)V

    .line 364
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
