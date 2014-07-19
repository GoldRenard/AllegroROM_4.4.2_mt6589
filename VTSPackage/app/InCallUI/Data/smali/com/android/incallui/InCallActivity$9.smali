.class Lcom/android/incallui/InCallActivity$9;
.super Ljava/lang/Object;
.source "InCallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/InCallActivity;->setInVoiceAnswerVideoCall(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$9;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$9;->this$0:Lcom/android/incallui/InCallActivity;

    # invokes: Lcom/android/incallui/InCallActivity;->onDialogDismissed()V
    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$000(Lcom/android/incallui/InCallActivity;)V

    .line 1107
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$9;->this$0:Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/InCallActivity;->mInVoiceAnswerVideoCall:Z
    invoke-static {v0, v1}, Lcom/android/incallui/InCallActivity;->access$202(Lcom/android/incallui/InCallActivity;Z)Z

    .line 1108
    return-void
.end method
