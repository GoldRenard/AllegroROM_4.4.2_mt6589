.class Lcom/mediatek/incallui/vt/VTCallFragment$18;
.super Ljava/lang/Object;
.source "VTCallFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/incallui/vt/VTCallFragment;->showStartVTRecorderDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/incallui/vt/VTCallFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V
    .locals 0

    .prologue
    .line 1467
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment$18;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1469
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment$18;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderSelector:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$2000(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1470
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment$18;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderSelector:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$2000(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 1471
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment$18;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    const/4 v3, 0x0

    # setter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderSelector:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$2002(Lcom/mediatek/incallui/vt/VTCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1474
    :cond_0
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment$18;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    iget-object v2, v2, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1475
    .local v0, "currentString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1477
    .local v1, "type":I
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment$18;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1480
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment$18;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    const-string v3, "The choice of start VT recording : voice and peer video"

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$000(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V

    .line 1482
    const/4 v1, 0x1

    .line 1501
    :goto_0
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment$18;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->startRecord(I)V
    invoke-static {v2, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$2100(Lcom/mediatek/incallui/vt/VTCallFragment;I)V

    .line 1502
    :goto_1
    return-void

    .line 1483
    :cond_1
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment$18;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1486
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment$18;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    const-string v3, "The choice of start VT recording : only voice"

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$000(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V

    .line 1488
    const/4 v1, 0x2

    goto :goto_0

    .line 1489
    :cond_2
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment$18;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1492
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment$18;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    const-string v3, "The choice of start VT recording : only peer video"

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$000(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V

    .line 1494
    const/4 v1, 0x3

    goto :goto_0

    .line 1497
    :cond_3
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment$18;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    const-string v3, "The choice of start VT recording : wrong string"

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$000(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V

    goto :goto_1
.end method
