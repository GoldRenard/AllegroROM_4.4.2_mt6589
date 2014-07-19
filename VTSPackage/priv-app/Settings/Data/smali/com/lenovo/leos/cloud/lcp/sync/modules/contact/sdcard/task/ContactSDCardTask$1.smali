.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardTask$1;
.super Ljava/lang/Object;
.source "ContactSDCardTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardTask;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepProgress(IILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "cur"    # I
    .param p2, "total"    # I
    .param p3, "params"    # Landroid/os/Bundle;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardTask$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardTask;

    const/high16 v1, 0x3f800000

    int-to-float v2, p1

    mul-float/2addr v1, v2

    int-to-float v2, p2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardTask;->notifySubProgress(F)V

    .line 69
    const/4 v0, 0x1

    return v0
.end method
