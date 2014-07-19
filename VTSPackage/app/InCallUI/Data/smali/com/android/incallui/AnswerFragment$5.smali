.class Lcom/android/incallui/AnswerFragment$5;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerFragment;->showMessageDialog()V
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
    .line 428
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment$5;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 432
    const-string v0, "mCannedResponsePopup on dismiss"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$5;->this$0:Lcom/android/incallui/AnswerFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/incallui/AnswerFragment;->access$1002(Lcom/android/incallui/AnswerFragment;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 434
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$5;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onDismissDialog()V

    .line 435
    return-void
.end method
