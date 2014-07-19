.class Lcom/lenovo/lsf/account/AccountBindingActivity$3;
.super Ljava/lang/Thread;
.source "AccountBindingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/AccountBindingActivity;->startBinding(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

.field final synthetic val$onekey:Z

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;

.field final synthetic val$toast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/AccountBindingActivity;ZLandroid/app/ProgressDialog;Landroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    iput-boolean p2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->val$onekey:Z

    iput-object p3, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->val$progressDialog:Landroid/app/ProgressDialog;

    iput-object p4, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->val$toast:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 509
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->rid:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$900()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1000(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->password:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1100(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->appkey:Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1200(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->accesstoken:Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1300(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->refreshtoken:Ljava/lang/String;
    invoke-static {v6}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1400(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->oauthversion:Ljava/lang/String;
    invoke-static {v7}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1500(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->screenname:Ljava/lang/String;
    invoke-static {v8}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1600(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->tid:Ljava/lang/String;
    invoke-static {v9}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1700(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->thirdName:Ljava/lang/String;
    invoke-static {v10}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1800(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->thirdDes:Ljava/lang/String;
    invoke-static {v11}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1900(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->val$onekey:Z

    invoke-static/range {v0 .. v12}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->bindingThirdPartyAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    .line 514
    .local v4, "data":Ljava/lang/String;
    const-string v0, "AccountBindingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HHHHHHHHHHHHH startBinding  result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    iget-boolean v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->val$onekey:Z

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->thirdName:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1800(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1000(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/lenovo/lsf/account/AccountBindingActivity;->setDataAnalytics(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2000(Lcom/lenovo/lsf/account/AccountBindingActivity;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    new-instance v1, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;

    invoke-direct {v1, p0, v4}, Lcom/lenovo/lsf/account/AccountBindingActivity$3$1;-><init>(Lcom/lenovo/lsf/account/AccountBindingActivity$3;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 600
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->mDeadFlag:Z
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2100(Lcom/lenovo/lsf/account/AccountBindingActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->val$progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 606
    :cond_1
    iget-object v5, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    iget-boolean v6, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->val$onekey:Z

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->thirdName:Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1800(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1000(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;

    move-result-object v10

    # invokes: Lcom/lenovo/lsf/account/AccountBindingActivity;->setDataAnalytics(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v5 .. v10}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2000(Lcom/lenovo/lsf/account/AccountBindingActivity;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->isPasswordSet:Z
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2500(Lcom/lenovo/lsf/account/AccountBindingActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 609
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const-string v1, "LenovoUser"

    const-string v2, "onkey"

    iget-object v3, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->password:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1100(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 613
    :cond_2
    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->rid:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$900()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 614
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->rid:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$900()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->getStData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 616
    .local v14, "st":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->mDeadFlag:Z
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2100(Lcom/lenovo/lsf/account/AccountBindingActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 617
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->val$progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 618
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 621
    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 622
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const/4 v1, 0x5

    invoke-virtual {v14, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsErrorInfo;->getErrorString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 625
    .local v13, "mErrorString":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v0, v13}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 626
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 628
    .end local v13    # "mErrorString":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const-string v1, "DataCache"

    const-string v2, "UserName"

    iget-object v3, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1000(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 632
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 635
    .end local v14    # "st":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->mDeadFlag:Z
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2100(Lcom/lenovo/lsf/account/AccountBindingActivity;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 636
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->val$progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 637
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 640
    :cond_6
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->val$toast:Landroid/widget/Toast;

    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const-string v2, "string"

    const-string v3, "lenovouser_login_text7"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 643
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 644
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const-string v1, "DataCache"

    const-string v2, "UserName"

    iget-object v3, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1000(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 647
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$3;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0
.end method
