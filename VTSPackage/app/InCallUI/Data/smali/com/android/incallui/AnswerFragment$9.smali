.class Lcom/android/incallui/AnswerFragment$9;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerFragment;->showCustomMessageDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AnswerFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/AnswerFragment;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment$9;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 571
    const-string v0, "mCustomMessagePopup on dismiss"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$9;->this$0:Lcom/android/incallui/AnswerFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/incallui/AnswerFragment;->access$1302(Lcom/android/incallui/AnswerFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 573
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$9;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onDismissDialog()V

    .line 575
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment$9;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/incallui/AnswerFragment;->showAnswerUi(Z)V

    .line 576
    return-void

    .line 575
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
