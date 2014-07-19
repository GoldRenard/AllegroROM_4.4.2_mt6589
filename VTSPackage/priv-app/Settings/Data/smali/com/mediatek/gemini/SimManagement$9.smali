.class Lcom/mediatek/gemini/SimManagement$9;
.super Ljava/lang/Object;
.source "SimManagement.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gemini/SimManagement;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimManagement;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0

    .prologue
    .line 1285
    iput-object p1, p0, Lcom/mediatek/gemini/SimManagement$9;->this$0:Lcom/mediatek/gemini/SimManagement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$9;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I
    invoke-static {v0}, Lcom/mediatek/gemini/SimManagement;->access$3100(Lcom/mediatek/gemini/SimManagement;)I

    move-result v0

    const v1, 0x7f09022e

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$9;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I
    invoke-static {v0}, Lcom/mediatek/gemini/SimManagement;->access$3100(Lcom/mediatek/gemini/SimManagement;)I

    move-result v0

    const v1, 0x7f090231

    if-ne v0, v1, :cond_1

    .line 1289
    :cond_0
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$9;->this$0:Lcom/mediatek/gemini/SimManagement;

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement$9;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mSelectedGprsSimId:J
    invoke-static {v1}, Lcom/mediatek/gemini/SimManagement;->access$3200(Lcom/mediatek/gemini/SimManagement;)J

    move-result-wide v1

    # invokes: Lcom/mediatek/gemini/SimManagement;->enableDataRoaming(J)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/gemini/SimManagement;->access$3300(Lcom/mediatek/gemini/SimManagement;J)V

    .line 1291
    :cond_1
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$9;->this$0:Lcom/mediatek/gemini/SimManagement;

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement$9;->this$0:Lcom/mediatek/gemini/SimManagement;

    # getter for: Lcom/mediatek/gemini/SimManagement;->mSelectedGprsSimId:J
    invoke-static {v1}, Lcom/mediatek/gemini/SimManagement;->access$3200(Lcom/mediatek/gemini/SimManagement;)J

    move-result-wide v1

    # invokes: Lcom/mediatek/gemini/SimManagement;->switchGprsDefaultSIM(J)V
    invoke-static {v0, v1, v2}, Lcom/mediatek/gemini/SimManagement;->access$3400(Lcom/mediatek/gemini/SimManagement;J)V

    .line 1292
    return-void
.end method
