.class Lcom/lenovo/lsf/account/PsLoginActivity$6;
.super Ljava/lang/Thread;
.source "PsLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/PsLoginActivity;->startRegisterProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/PsLoginActivity;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V
    .locals 0

    .prologue
    .line 1083
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x5

    .line 1085
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->password:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1400(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->VerifyId:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$2100(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->VerifyCode:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$2200(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->CountryCode:Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$2300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->registerAccountNew(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 1089
    .local v6, "ret":I
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mDeadFlag:Z
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1600(Lcom/lenovo/lsf/account/PsLoginActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    :goto_0
    return-void

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1093
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1095
    :cond_1
    if-nez v6, :cond_2

    .line 1096
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "QJFOKY5F65WI"

    invoke-virtual {v0, v7, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 1097
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "lenovoid_signup"

    const-string v2, "clk_signup_r_s"

    iget-object v3, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1098
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    new-instance v1, Lcom/lenovo/lsf/account/PsLoginActivity$6$1;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$6$1;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity$6;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1105
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const-string v1, "DataCache"

    const-string v2, "UserName"

    iget-object v3, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1109
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mHandler:Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;
    invoke-static {v0}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$100(Lcom/lenovo/lsf/account/PsLoginActivity;)Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 1111
    :cond_2
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "QJFOKY5F65WI"

    invoke-virtual {v0, v7, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "lenovoid_signup"

    const-string v2, "clk_signup_r_f"

    iget-object v3, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1113
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "QJFOKY5F65WI"

    invoke-virtual {v0, v7, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 1114
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "lenovoid_clk_signup_r_f"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error_USS-0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1115
    iget-object v0, p0, Lcom/lenovo/lsf/account/PsLoginActivity$6;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    new-instance v1, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;

    invoke-direct {v1, p0, v6}, Lcom/lenovo/lsf/account/PsLoginActivity$6$2;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity$6;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method
