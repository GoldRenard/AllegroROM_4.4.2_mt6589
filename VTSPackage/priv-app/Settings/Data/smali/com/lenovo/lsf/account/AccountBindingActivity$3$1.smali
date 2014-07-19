.class Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;
.super Ljava/lang/Object;
.source "AccountBindingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/AccountBindingActivity$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/AccountBindingActivity$3;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 519
    iput-object p1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iput-object p2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 521
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->mDeadFlag:Z
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2100(Lcom/lenovo/lsf/account/AccountBindingActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->val$data:Ljava/lang/String;

    const-string v1, "USS-0100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 525
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v1, v1, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const-string v2, "string"

    const-string v3, "lenovouser_login_error7"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/lenovo/lsf/account/AccountBindingActivity;->showErrorMessage(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2200(Lcom/lenovo/lsf/account/AccountBindingActivity;I)V

    .line 528
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2300(Lcom/lenovo/lsf/account/AccountBindingActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 595
    :goto_1
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->val$progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->val$data:Ljava/lang/String;

    const-string v1, "USS-0101"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 530
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v1, v1, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const-string v2, "string"

    const-string v3, "lenovouser_login_error2"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/lenovo/lsf/account/AccountBindingActivity;->showErrorMessage(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2200(Lcom/lenovo/lsf/account/AccountBindingActivity;I)V

    .line 535
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->mPasswordEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2400(Lcom/lenovo/lsf/account/AccountBindingActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 536
    :cond_3
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->val$data:Ljava/lang/String;

    const-string v1, "USS-0103"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 537
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v1, v1, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const-string v2, "string"

    const-string v3, "lenovouser_login_error1"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/lenovo/lsf/account/AccountBindingActivity;->showErrorMessage(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2200(Lcom/lenovo/lsf/account/AccountBindingActivity;I)V

    .line 540
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->mAccountEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2300(Lcom/lenovo/lsf/account/AccountBindingActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    .line 541
    :cond_4
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->val$data:Ljava/lang/String;

    const-string v1, "USS-0151"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 542
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v1, v1, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const-string v2, "string"

    const-string v3, "lenovouser_login_error6"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/lenovo/lsf/account/AccountBindingActivity;->showErrorMessage(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2200(Lcom/lenovo/lsf/account/AccountBindingActivity;I)V

    goto/16 :goto_1

    .line 545
    :cond_5
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->val$data:Ljava/lang/String;

    const-string v1, "USS-0111"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 546
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v1, v1, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const-string v2, "string"

    const-string v3, "lenovouser_login_error8"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/lenovo/lsf/account/AccountBindingActivity;->showErrorMessage(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2200(Lcom/lenovo/lsf/account/AccountBindingActivity;I)V

    goto/16 :goto_1

    .line 549
    :cond_6
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->val$data:Ljava/lang/String;

    const-string v1, "USS-0105"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 550
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v1, v1, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const-string v2, "string"

    const-string v3, "lenovouser_login_error3"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/lenovo/lsf/account/AccountBindingActivity;->showErrorMessage(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2200(Lcom/lenovo/lsf/account/AccountBindingActivity;I)V

    goto/16 :goto_1

    .line 554
    :cond_7
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->val$data:Ljava/lang/String;

    const-string v1, "USS-0110"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 555
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v1, v1, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v2, v2, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const-string v3, "string"

    const-string v4, "lenovouser_onekey_imeiinvalid"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 565
    :cond_8
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->val$data:Ljava/lang/String;

    const-string v1, "USS-0999"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 566
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v1, v1, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v2, v2, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const-string v3, "string"

    const-string v4, "psauthen_text20"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 577
    :cond_9
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->val$data:Ljava/lang/String;

    const-string v1, "USS-0193"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 578
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v1, v1, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const-string v2, "string"

    const-string v3, "account_binding_error"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/lenovo/lsf/account/AccountBindingActivity;->showErrorMessage(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2200(Lcom/lenovo/lsf/account/AccountBindingActivity;I)V

    goto/16 :goto_1

    .line 581
    :cond_a
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->val$data:Ljava/lang/String;

    const-string v1, "USS-0194"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 582
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v1, v1, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const-string v2, "string"

    const-string v3, "account_has_binding_antheor"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/lenovo/lsf/account/AccountBindingActivity;->showErrorMessage(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2200(Lcom/lenovo/lsf/account/AccountBindingActivity;I)V

    goto/16 :goto_1

    .line 585
    :cond_b
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->val$data:Ljava/lang/String;

    const-string v1, "USS-0195"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 586
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v1, v1, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const-string v2, "string"

    const-string v3, "thirdaccount_has_binding_antheor_lenovoid"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    # invokes: Lcom/lenovo/lsf/account/AccountBindingActivity;->showErrorMessage(I)V
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2200(Lcom/lenovo/lsf/account/AccountBindingActivity;I)V

    goto/16 :goto_1

    .line 592
    :cond_c
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;->this$1:Lcom/lenovo/lsf/account/AccountBindingActivity$3;

    iget-object v0, v0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto/16 :goto_1
.end method
