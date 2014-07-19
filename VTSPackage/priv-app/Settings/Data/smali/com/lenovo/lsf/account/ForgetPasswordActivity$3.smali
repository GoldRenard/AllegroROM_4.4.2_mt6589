.class Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;
.super Ljava/lang/Thread;
.source "ForgetPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/ForgetPasswordActivity;->startForgetPasswd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/ForgetPasswordActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    iput-object p2, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x5

    const/4 v8, 0x0

    .line 224
    iget-object v4, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->AccountEdit:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$500(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->VerifyCodeEdit:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$1300(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    .local v3, "verify":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    iget-object v5, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->VerifyId:Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$800(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v1, v5, v3}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->forgetPassword(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 228
    .local v2, "ret":I
    iget-object v4, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->mDeadFlag:Z
    invoke-static {v4}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$1400(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 279
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v4, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 233
    if-nez v2, :cond_2

    .line 234
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const-string v5, "SPECIAL_TOKEN"

    const-string v6, "QJFOKY5F65WI"

    invoke-virtual {v4, v7, v5, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const-string v5, "lenovoid_findPwd"

    const-string v6, "clk_find_pwd_r_s"

    invoke-virtual {v4, v5, v6, v1, v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 236
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    const-class v5, Lcom/lenovo/lsf/account/ForgetResultActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "find"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 239
    const-string v4, "username"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string v4, "isBinding"

    iget-object v5, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->isBinding:Z
    invoke-static {v5}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$1500(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 241
    iget-object v4, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ForgetPasswordActivity;->isBinding:Z
    invoke-static {v4}, Lcom/lenovo/lsf/account/ForgetPasswordActivity;->access$1500(Lcom/lenovo/lsf/account/ForgetPasswordActivity;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 242
    iget-object v4, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 243
    iget-object v4, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 245
    :cond_1
    iget-object v4, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    invoke-virtual {v4, v0, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 249
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const-string v5, "SPECIAL_TOKEN"

    const-string v6, "QJFOKY5F65WI"

    invoke-virtual {v4, v7, v5, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const-string v5, "lenovoid_findPwd"

    const-string v6, "clk_find_pwd_r_f"

    invoke-virtual {v4, v5, v6, v1, v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 251
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const-string v5, "SPECIAL_TOKEN"

    const-string v6, "QJFOKY5F65WI"

    invoke-virtual {v4, v7, v5, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const-string v5, "lenovoid_clk_find_pwd_r_f"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error_USS-0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1, v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 253
    iget-object v4, p0, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;->this$0:Lcom/lenovo/lsf/account/ForgetPasswordActivity;

    new-instance v5, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;

    invoke-direct {v5, p0, v2}, Lcom/lenovo/lsf/account/ForgetPasswordActivity$3$1;-><init>(Lcom/lenovo/lsf/account/ForgetPasswordActivity$3;I)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
