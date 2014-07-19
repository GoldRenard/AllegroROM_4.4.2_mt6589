.class final Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;
.super Ljava/lang/Thread;
.source "OldPsAuthenServiceL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->startOneKeyLoginProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$myHandler:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;

.field final synthetic val$password:Ljava/lang/String;

.field final synthetic val$rid:Ljava/lang/String;

.field final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$password:Ljava/lang/String;

    iput-object p4, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$rid:Ljava/lang/String;

    iput-object p5, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$myHandler:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;

    iput-object p6, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$callback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x5

    const/4 v3, 0x1

    .line 476
    iget-object v0, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$username:Ljava/lang/String;

    iget-object v2, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$password:Ljava/lang/String;

    iget-object v5, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$rid:Ljava/lang/String;

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->loginUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 478
    .local v6, "data":Ljava/lang/String;
    invoke-virtual {v6, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 479
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "QJFOKY5F65WI"

    invoke-virtual {v0, v8, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "lenovoid_login"

    const-string v2, "clk_login_auto_onekey_r_f"

    iget-object v3, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 481
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "QJFOKY5F65WI"

    invoke-virtual {v0, v8, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "lenovoid_clk_login_auto_onekey_r_f"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 483
    iget-object v0, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$myHandler:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;

    iget-object v1, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$callback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    iget-object v2, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$rid:Ljava/lang/String;

    # invokes: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->sendErrorMsg(Landroid/os/Handler;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v6}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$400(Landroid/os/Handler;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "SPECIAL_TOKEN"

    const-string v2, "QJFOKY5F65WI"

    invoke-virtual {v0, v8, v1, v2}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v0

    const-string v1, "lenovoid_login"

    const-string v2, "clk_login_auto_onekey_r_s"

    iget-object v4, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 487
    # getter for: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isPasswordSet:Z
    invoke-static {}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$600()Z

    move-result v0

    if-nez v0, :cond_2

    .line 488
    iget-object v0, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$context:Landroid/content/Context;

    const-string v1, "LenovoUser"

    const-string v2, "onkey"

    iget-object v4, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$password:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 490
    :cond_2
    const-string v0, "RK_PUSHSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rid =========== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$rid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object v0, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$context:Landroid/content/Context;

    const-string v1, "DataCache"

    const-string v2, "UserName"

    iget-object v4, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$username:Ljava/lang/String;

    invoke-static {v0, v1, v2, v4}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 494
    iget-object v0, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/lsf/account/PsCheckEnvUtil;->canSsoLogin(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 495
    iget-object v0, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$context:Landroid/content/Context;

    const-string v1, "DataCache"

    const-string v2, "autoOnekeyLogin"

    const-string v4, "1"

    invoke-static {v0, v1, v2, v4}, Lcom/lenovo/lsf/account/PsPushUserData;->setValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 500
    :cond_3
    iget-object v0, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$rid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$rid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/PsUserServerToolkitL;->getStData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 502
    .local v7, "st":Ljava/lang/String;
    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "USS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 503
    iget-object v0, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$myHandler:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;

    iget-object v1, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$callback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    iget-object v2, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$rid:Ljava/lang/String;

    # invokes: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->sendErrorMsg(Landroid/os/Handler;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v6}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$400(Landroid/os/Handler;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 505
    :cond_4
    iget-object v0, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$3;->val$callback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    # invokes: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->finishLogin(Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;ZLjava/lang/String;)V
    invoke-static {v0, v3, v7}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$800(Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;ZLjava/lang/String;)V

    goto/16 :goto_0
.end method
