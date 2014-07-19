.class Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;
.super Ljava/lang/Object;
.source "ForgetPasswordActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;

.field final synthetic val$ret:I


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;I)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;

    iput p2, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->val$ret:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 255
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    # invokes: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->hideErrorMessage()V
    invoke-static {v0}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$1100(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)V

    .line 256
    iget v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->val$ret:I

    const/16 v1, 0x8c

    if-ne v0, v1, :cond_1

    .line 257
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;

    iget-object v1, v1, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    const-string v2, "string"

    const-string v3, "lenovouser_forget_error1"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->showErrorMessage(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$1200(Lcom/lenovo/lsf/account/ForgetPasswordActivity;I)V

    .line 258
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->VerifyCodeEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$1300(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 274
    :goto_0
    iget v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->val$ret:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    invoke-virtual {v0}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->onResume()V

    .line 277
    :cond_0
    return-void

    .line 259
    :cond_1
    iget v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->val$ret:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 260
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;

    iget-object v1, v1, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    const-string v2, "string"

    const-string v3, "lenovouser_login_error7"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->showErrorMessage(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$1200(Lcom/lenovo/lsf/account/ForgetPasswordActivity;I)V

    .line 261
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->AccountEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$500(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 262
    :cond_2
    iget v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->val$ret:I

    const/16 v1, 0x67

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->val$ret:I

    const/16 v1, 0x87

    if-ne v0, v1, :cond_4

    .line 263
    :cond_3
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;

    iget-object v1, v1, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    const-string v2, "string"

    const-string v3, "lenovouser_forget_error3"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->showErrorMessage(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$1200(Lcom/lenovo/lsf/account/ForgetPasswordActivity;I)V

    .line 264
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->AccountEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$500(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 266
    :cond_4
    iget v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->val$ret:I

    const/16 v1, 0x97

    if-ne v0, v1, :cond_5

    .line 267
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;

    iget-object v1, v1, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    const-string v2, "string"

    const-string v3, "forget_password_error"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->showErrorMessage(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$1200(Lcom/lenovo/lsf/account/ForgetPasswordActivity;I)V

    goto :goto_0

    .line 268
    :cond_5
    iget v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->val$ret:I

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_6

    .line 269
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;

    iget-object v1, v1, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    const-string v2, "string"

    const-string v3, "lenovouser_login_error8"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->showErrorMessage(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$1200(Lcom/lenovo/lsf/account/ForgetPasswordActivity;I)V

    goto/16 :goto_0

    .line 271
    :cond_6
    iget-object v0, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;->this$1:Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_0
.end method
