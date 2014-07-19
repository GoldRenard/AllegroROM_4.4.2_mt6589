.class Lcom/lenovo/lsf/account/ChangePasswordActivity$4;
.super Ljava/lang/Thread;
.source "ChangePasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/ChangePasswordActivity;->startChangeProgress(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$fnewPasswd:Ljava/lang/String;

.field final synthetic val$foldPasswd:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/ChangePasswordActivity;Ljava/lang/String;Ljava/lang/String;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    iput-object p2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4;->val$foldPasswd:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4;->val$fnewPasswd:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 349
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    iget-object v3, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4;->val$foldPasswd:Ljava/lang/String;

    iget-object v4, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4;->val$fnewPasswd:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->setPasswdInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 351
    .local v0, "ret":I
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->mDeadFlag:Z
    invoke-static {v2}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$1300(Lcom/lenovo/lsf/account/ChangePasswordActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 420
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 356
    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->con:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$1400()Landroid/content/Context;

    move-result-object v2

    const-string v3, "LenovoUser"

    const-string v4, "UserName"

    invoke-static {v2, v3, v4}, Lcom/lenovo/lsf/account/PsPushUserData;->getValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "username":Ljava/lang/String;
    # getter for: Lcom/lenovo/lsf/account/ChangePasswordActivity;->isPasswordSet:Z
    invoke-static {}, Lcom/lenovo/lsf/account/ChangePasswordActivity;->access$500()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 358
    if-nez v0, :cond_1

    .line 359
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "SPECIAL_TOKEN"

    const-string v4, "QJFOKY5F65WI"

    invoke-virtual {v2, v5, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "lenovoid_changePwd"

    const-string v4, "clk_change_pwd_r_s"

    invoke-virtual {v2, v3, v4, v1, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 385
    :goto_1
    iget-object v2, p0, Lcom/lenovo/lsf/account/ChangePasswordActivity$4;->this$0:Lcom/lenovo/lsf/account/ChangePasswordActivity;

    new-instance v3, Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1;

    invoke-direct {v3, p0, v0}, Lcom/lenovo/lsf/account/ChangePasswordActivity$4$1;-><init>(Lcom/lenovo/lsf/account/ChangePasswordActivity$4;I)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 363
    :cond_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "SPECIAL_TOKEN"

    const-string v4, "QJFOKY5F65WI"

    invoke-virtual {v2, v5, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "lenovoid_changePwd"

    const-string v4, "clk_change_pwd_r_f"

    invoke-virtual {v2, v3, v4, v1, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 366
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "SPECIAL_TOKEN"

    const-string v4, "QJFOKY5F65WI"

    invoke-virtual {v2, v5, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "lenovoid_clk_change_pwd_r_f"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error_USS-0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 371
    :cond_2
    if-nez v0, :cond_3

    .line 372
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "SPECIAL_TOKEN"

    const-string v4, "QJFOKY5F65WI"

    invoke-virtual {v2, v5, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "lenovoid_setPwd"

    const-string v4, "clk_set_pwd_r_s"

    invoke-virtual {v2, v3, v4, v1, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 376
    :cond_3
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "SPECIAL_TOKEN"

    const-string v4, "QJFOKY5F65WI"

    invoke-virtual {v2, v5, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "lenovoid_setPwd"

    const-string v4, "clk_set_pwd_r_f"

    invoke-virtual {v2, v3, v4, v1, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 379
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "SPECIAL_TOKEN"

    const-string v4, "QJFOKY5F65WI"

    invoke-virtual {v2, v5, v3, v4}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "lenovoid_clk_set_pwd_r_f"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error_USS-0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1
.end method
