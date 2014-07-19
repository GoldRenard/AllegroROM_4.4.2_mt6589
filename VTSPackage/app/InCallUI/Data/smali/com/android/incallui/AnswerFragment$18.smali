.class Lcom/android/incallui/AnswerFragment$18;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/AnswerFragment;->showReminderDialog()V
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
    .line 1721
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment$18;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$18;->this$0:Lcom/android/incallui/AnswerFragment;

    # invokes: Lcom/android/incallui/AnswerFragment;->dismissReminderPopup()V
    invoke-static {v0}, Lcom/android/incallui/AnswerFragment;->access$600(Lcom/android/incallui/AnswerFragment;)V

    .line 1724
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment$18;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->processIncomingCall()V

    .line 1725
    return-void
.end method
