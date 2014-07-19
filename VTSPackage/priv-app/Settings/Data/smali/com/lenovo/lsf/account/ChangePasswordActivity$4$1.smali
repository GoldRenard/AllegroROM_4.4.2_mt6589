.class Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1;
.super Ljava/lang/Object;
.source "ChangePasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/ChangePasswordActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/lsf/account/ChangePasswordActivity$4;

.field final synthetic val$ret:I


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/ChangePasswordActivity$4;I)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1;->this$1:Lcom/lenovo/lsf/account/ChangePasswordActivity$4;

    iput p2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1;->val$ret:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 387
    iget v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1;->val$ret:I

    if-nez v0, :cond_0

    .line 388
    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$1400()Landroid/content/Context;

    move-result-object v0

    const-string v1, "LenovoUser"

    const-string v2, "TgtData"

    invoke-static {v0, v1, v2}, Lcom/lenovo/lsf/account/PsPushUserData;->delValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 389
    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$1400()Landroid/content/Context;

    move-result-object v0

    const-string v1, "LenovoUser"

    const-string v2, "TgtDatattl"

    invoke-static {v0, v1, v2}, Lcom/lenovo/lsf/account/PsPushUserData;->delValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 390
    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$1400()Landroid/content/Context;

    move-result-object v0

    const-string v1, "LenovoUser"

    const-string v2, "TgtDatatime"

    invoke-static {v0, v1, v2}, Lcom/lenovo/lsf/account/PsPushUserData;->delValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 391
    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$1400()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lsf/account/PsPushUserData;->delAllStValue(Landroid/content/Context;)Z

    .line 393
    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$1400()Landroid/content/Context;

    move-result-object v0

    const-string v1, "LenovoUser"

    const-string v2, "onkey"

    invoke-static {v0, v1, v2}, Lcom/lenovo/lsf/account/PsPushUserData;->delValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 396
    new-instance v0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1$1;

    invoke-direct {v0, p0}, Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1$1;-><init>(Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 408
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1;->this$1:Lcom/lenovo/lsf/account/ChangePasswordActivity$4;

    iget-object v0, v0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 418
    :goto_0
    return-void

    .line 409
    :cond_0
    iget v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1;->val$ret:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    .line 410
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1;->this$1:Lcom/lenovo/lsf/account/ChangePasswordActivity$4;

    iget-object v0, v0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$1400()Landroid/content/Context;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "lenovouser_change_error1"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/lenovo/lsf/account/ChangePasswordActivity;->showErrorMessage(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$1500(Lcom/lenovo/lsf/account/ChangePasswordActivity;I)V

    .line 411
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1;->this$1:Lcom/lenovo/lsf/account/ChangePasswordActivity$4;

    iget-object v0, v0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->OldPasswordEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$600(Lcom/lenovo/lsf/account/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 412
    :cond_1
    iget v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1;->val$ret:I

    const/16 v1, 0xaa

    if-ne v0, v1, :cond_2

    .line 413
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1;->this$1:Lcom/lenovo/lsf/account/ChangePasswordActivity$4;

    iget-object v0, v0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$1400()Landroid/content/Context;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "lenovouser_change_error3"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/lenovo/lsf/account/ChangePasswordActivity;->showErrorMessage(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$1500(Lcom/lenovo/lsf/account/ChangePasswordActivity;I)V

    .line 414
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1;->this$1:Lcom/lenovo/lsf/account/ChangePasswordActivity$4;

    iget-object v0, v0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->OldPasswordEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$600(Lcom/lenovo/lsf/account/ChangePasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1;->this$1:Lcom/lenovo/lsf/account/ChangePasswordActivity$4;

    iget-object v0, v0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method
