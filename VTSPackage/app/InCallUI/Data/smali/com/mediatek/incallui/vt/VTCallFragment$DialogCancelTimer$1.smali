.class Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer$1;
.super Ljava/util/TimerTask;
.source "VTCallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;


# direct methods
.method constructor <init>(Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;)V
    .locals 0

    .prologue
    .line 763
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer$1;->this$1:Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer$1;->this$1:Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->mVTMTAskDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->access$800(Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer$1;->this$1:Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->mVTMTAskDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->access$800(Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer$1;->this$1:Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->mVTMTAskDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->access$800(Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 770
    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer$1;->this$1:Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->mTimer:Ljava/util/Timer;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->access$900(Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 771
    return-void
.end method
