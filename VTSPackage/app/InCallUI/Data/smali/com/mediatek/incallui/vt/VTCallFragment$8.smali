.class Lcom/mediatek/incallui/vt/VTCallFragment$8;
.super Ljava/lang/Object;
.source "VTCallFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/incallui/vt/VTCallFragment;->onVTReady()V
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
    .line 722
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment$8;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 725
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$8;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    const-string v1, " user no selection , default show !! "

    # invokes: Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$000(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$8;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mVTMTAskDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$700(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$8;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mVTMTAskDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$700(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 730
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$8;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mVTMTAskDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$702(Lcom/mediatek/incallui/vt/VTCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$8;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->onVTHideMeClick()V

    .line 734
    return-void
.end method
