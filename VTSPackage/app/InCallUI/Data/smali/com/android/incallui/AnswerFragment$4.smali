.class Lcom/android/incallui/AnswerFragment$4;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 407
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment$4;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$4;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$800(Lcom/android/incallui/AnswerFragment;)Lcom/android/incallui/GlowPadWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$4;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$800(Lcom/android/incallui/AnswerFragment;)Lcom/android/incallui/GlowPadWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/GlowPadWrapper;->startPing()V

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$4;->this$0:Lcom/android/incallui/AnswerFragment;

    # invokes: Lcom/android/incallui/AnswerFragment;->dismissCannedResponsePopup()V
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$900(Lcom/android/incallui/AnswerFragment;)V

    .line 414
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$4;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onDismissDialog()V

    .line 418
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$4;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall()V

    .line 422
    return-void
.end method
