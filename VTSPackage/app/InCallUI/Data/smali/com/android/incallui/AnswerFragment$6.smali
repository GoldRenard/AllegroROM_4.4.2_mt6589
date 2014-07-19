.class Lcom/android/incallui/AnswerFragment$6;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 524
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment$6;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 527
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$6;->this$0:Lcom/android/incallui/AnswerFragment;

    # invokes: Lcom/android/incallui/AnswerFragment;->dismissCustomMessagePopup()V
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$1100(Lcom/android/incallui/AnswerFragment;)V

    .line 528
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$6;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onDismissDialog()V

    .line 532
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$6;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall()V

    .line 534
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$6;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$800(Lcom/android/incallui/AnswerFragment;)Lcom/android/incallui/GlowPadWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$6;->this$0:Lcom/android/incallui/AnswerFragment;

    # getter for: Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$800(Lcom/android/incallui/AnswerFragment;)Lcom/android/incallui/GlowPadWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/GlowPadWrapper;->startPing()V

    .line 538
    :cond_0
    return-void
.end method
