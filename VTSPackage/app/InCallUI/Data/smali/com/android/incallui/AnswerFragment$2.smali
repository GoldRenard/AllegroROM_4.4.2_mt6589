.class Lcom/android/incallui/AnswerFragment$2;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AnswerFragment;
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
    .line 216
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment$2;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 218
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment$2;->this$0:Lcom/android/incallui/AnswerFragment;

    # invokes: Lcom/android/incallui/AnswerFragment;->dismissReminderPopup()V
    invoke-static {v2}, Lcom/android/incallui/AnswerFragment;->access$600(Lcom/android/incallui/AnswerFragment;)V

    .line 220
    if-nez p2, :cond_1

    .line 221
    const-wide/32 v0, 0x927c0

    .line 226
    .local v0, "reminderTime":J
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment$2;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 227
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment$2;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2, v0, v1}, Lcom/android/incallui/InCallActivity;->rejectCallWithReminder(J)V

    .line 229
    :cond_0
    return-void

    .line 223
    .end local v0    # "reminderTime":J
    :cond_1
    const-wide/32 v0, 0x36ee80

    .restart local v0    # "reminderTime":J
    goto :goto_0
.end method
