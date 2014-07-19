.class Lcom/lenovo/lsf/account/PsLoginActivity$5;
.super Ljava/lang/Thread;
.source "PsLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/PsLoginActivity;->startLoginProcess(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

.field final synthetic val$onekey:Z

.field final synthetic val$toast:Landroid/widget/Toast;

.field final synthetic val$type:Z


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/PsLoginActivity;ZZLandroid/widget/Toast;)V
    .locals 0

    .prologue
    .line 949
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iput-boolean p2, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->val$type:Z

    iput-boolean p3, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->val$onekey:Z

    iput-object p4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->val$toast:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x5

    const/4 v3, 0x1

    .line 951
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->password:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1400(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->val$type:Z

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->rid:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1500()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->loginUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 953
    .local v6, "data":Ljava/lang/String;
    invoke-virtual {v6, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 954
    iget-boolean v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->val$onekey:Z

    if-eqz v0, :cond_1

    .line 955
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "QJFOKY5F65WI"

    invoke-virtual {v0, v10, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 956
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "lenovoid_login"

    const-string v2, "clk_login_onekey_r_f"

    iget-object v3, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 957
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "QJFOKY5F65WI"

    invoke-virtual {v0, v10, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 958
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "lenovoid_clk_login_onekey_r_f"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 967
    :goto_0
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mDeadFlag:Z
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1600(Lcom/lenovo/lsf/account/PsLoginActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 968
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 974
    :cond_0
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    new-instance v1, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;

    invoke-direct {v1, p0, v6}, Lcom/lenovo/lsf/account/PsLoginActivity$5$1;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity$5;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1072
    :goto_1
    return-void

    .line 960
    :cond_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "QJFOKY5F65WI"

    invoke-virtual {v0, v10, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 961
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v2, "lenovoid_login"

    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->isEmaiName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "clk_login_n_email_r_f"

    :goto_2
    iget-object v3, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 963
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "QJFOKY5F65WI"

    invoke-virtual {v0, v10, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 964
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lenovoid_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->isEmaiName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "clk_login_n_email_r_f"

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 961
    :cond_2
    const-string v0, "clk_login_n_phone_r_f"

    goto :goto_2

    .line 964
    :cond_3
    const-string v0, "clk_login_n_phone_r_f"

    goto :goto_3

    .line 1022
    :cond_4
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "QJFOKY5F65WI"

    invoke-virtual {v0, v10, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 1023
    iget-boolean v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->val$onekey:Z

    if-eqz v0, :cond_7

    .line 1024
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "lenovoid_login"

    const-string v2, "clk_login_onekey_r_s"

    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1029
    :goto_4
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->isPasswordSet:Z
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1100(Lcom/lenovo/lsf/account/PsLoginActivity;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1030
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const-string v1, "LenovoUser"

    const-string v2, "onkey"

    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->password:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1400(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1033
    :cond_5
    const-string v0, "PsLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rid =========== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->rid:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1500()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->rid:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1500()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1035
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->rid:Ljava/lang/String;
    invoke-static {}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1500()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->getStData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1036
    .local v9, "st":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mDeadFlag:Z
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1600(Lcom/lenovo/lsf/account/PsLoginActivity;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1037
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1038
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1042
    :cond_6
    invoke-virtual {v9, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1043
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsErrorInfo;->getErrorString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1044
    .local v8, "mErrorString":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v0, v8}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1045
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1046
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->finishLogin(ZLjava/lang/String;)V
    invoke-static {v0, v3, v9}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$500(Lcom/lenovo/lsf/account/PsLoginActivity;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 1026
    .end local v8    # "mErrorString":Ljava/lang/String;
    .end local v9    # "st":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v1

    const-string v2, "lenovoid_login"

    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->isEmaiName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "clk_login_n_email_r_s"

    :goto_5
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v4, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_4

    :cond_8
    const-string v0, "clk_login_n_phone_r_s"

    goto :goto_5

    .line 1048
    .restart local v9    # "st":Ljava/lang/String;
    :cond_9
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const-string v1, "DataCache"

    const-string v2, "UserName"

    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v4}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1051
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iput-boolean v3, v0, Lcom/lenovo/lsf/account/PsLoginActivity;->mRequestNewAccount:Z

    .line 1052
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->finishLogin(ZLjava/lang/String;)V
    invoke-static {v0, v3, v9}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$500(Lcom/lenovo/lsf/account/PsLoginActivity;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 1055
    .end local v9    # "st":Ljava/lang/String;
    :cond_a
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mDeadFlag:Z
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1600(Lcom/lenovo/lsf/account/PsLoginActivity;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1056
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1057
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1060
    :cond_b
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->val$toast:Landroid/widget/Toast;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1700()Landroid/content/Context;

    move-result-object v1

    const-string v2, "string"

    const-string v3, "lenovouser_login_text7"

    invoke-static {v1, v2, v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 1061
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->val$toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1062
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const-string v1, "DataCache"

    const-string v2, "UserName"

    iget-object v3, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1065
    new-instance v7, Landroid/content/Intent;

    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const-class v1, Lcom/lenovo/lsf/account/MyAccountActivity;

    invoke-direct {v7, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1067
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v0, 0x20000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1068
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-virtual {v0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1069
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$5;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1
.end method
