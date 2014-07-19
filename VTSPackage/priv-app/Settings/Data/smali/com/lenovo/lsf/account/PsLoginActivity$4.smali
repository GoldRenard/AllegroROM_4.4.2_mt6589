.class Lcom/lenovo/lsf/account/PsLoginActivity$4;
.super Ljava/lang/Thread;
.source "PsLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/PsLoginActivity;->startOneKeyRegisterProgress()V
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
    .line 742
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 745
    :try_start_0
    const-string v6, "do"

    const-string v7, "thread============---------------------=====================----------------------------====================-----------------======"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const-string v6, "PsLoginActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " startOneKeyRegisterProgress: oneKeyInfo == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$200(Lcom/lenovo/lsf/account/PsLoginActivity;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->OnkeyPreStart:Z
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$700(Lcom/lenovo/lsf/account/PsLoginActivity;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 748
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$200(Lcom/lenovo/lsf/account/PsLoginActivity;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v6

    if-nez v6, :cond_0

    .line 749
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity$4;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 898
    :catch_0
    move-exception v2

    .line 899
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 901
    const-string v6, "do"

    const-string v7, "8===========---------------------=====================----------------------------====================-----------------======="

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    new-instance v7, Lcom/lenovo/lsf/account/PsLoginActivity$4$6;

    invoke-direct {v7, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$4$6;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity$4;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 913
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    .line 752
    :cond_1
    :try_start_2
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$200(Lcom/lenovo/lsf/account/PsLoginActivity;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v6

    if-nez v6, :cond_2

    .line 753
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iget-object v7, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/lenovo/lsf/account/ToolUtil;->getOneKeyRegisterDataNew(Landroid/content/Context;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v7

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$202(Lcom/lenovo/lsf/account/PsLoginActivity;Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    .line 757
    :cond_2
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$200(Lcom/lenovo/lsf/account/PsLoginActivity;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getSendBody()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$200(Lcom/lenovo/lsf/account/PsLoginActivity;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getNumberSendList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 759
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->registSMSReceiver()V
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$800(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    .line 760
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iget-object v7, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$200(Lcom/lenovo/lsf/account/PsLoginActivity;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getSendBody()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$200(Lcom/lenovo/lsf/account/PsLoginActivity;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getNumberSendList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/lenovo/lsf/account/ToolUtil;->sendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 803
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const/4 v7, 0x1

    const-wide/32 v8, 0x15f90

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->sendMessageDelayed(IJ)V
    invoke-static {v6, v7, v8, v9}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$900(Lcom/lenovo/lsf/account/PsLoginActivity;IJ)V

    .line 804
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const/4 v7, 0x0

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->isTimeout:Z
    invoke-static {v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1002(Lcom/lenovo/lsf/account/PsLoginActivity;Z)Z

    .line 807
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->isTimeout:Z
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1000(Lcom/lenovo/lsf/account/PsLoginActivity;)Z

    move-result v6

    if-eq v6, v10, :cond_9

    .line 808
    const-wide/16 v6, 0x3e8

    invoke-static {v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity$4;->sleep(J)V

    .line 809
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/lenovo/lsf/account/ToolUtil;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    invoke-virtual {v7}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getQueryMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/lsf/account/ToolUtil;->getOneKeyRegisterResultNew(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 811
    .local v1, "data":Ljava/lang/String;
    const-string v6, "USS-0"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 812
    const-string v6, "PsLoginActivity"

    const-string v7, "Uss Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const-string v6, "USS-0-1"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 816
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    new-instance v7, Lcom/lenovo/lsf/account/PsLoginActivity$4$3;

    invoke-direct {v7, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$4$3;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity$4;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 829
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const/4 v7, 0x5

    const-string v8, "SPECIAL_TOKEN"

    const-string v9, "QJFOKY5F65WI"

    invoke-virtual {v6, v7, v8, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 830
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "lenovoid_login"

    const-string v8, "clk_login_onekey_r_f"

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 831
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const/4 v7, 0x5

    const-string v8, "SPECIAL_TOKEN"

    const-string v9, "QJFOKY5F65WI"

    invoke-virtual {v6, v7, v8, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "lenovoid_clk_login_onekey_r_f"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 901
    const-string v6, "do"

    const-string v7, "8===========---------------------=====================----------------------------====================-----------------======="

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    new-instance v7, Lcom/lenovo/lsf/account/PsLoginActivity$4$6;

    invoke-direct {v7, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$4$6;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity$4;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 764
    .end local v1    # "data":Ljava/lang/String;
    :cond_4
    :try_start_3
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$200(Lcom/lenovo/lsf/account/PsLoginActivity;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    .line 765
    .local v3, "errorMsg":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const/4 v7, 0x0

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$202(Lcom/lenovo/lsf/account/PsLoginActivity;Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    .line 766
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const/4 v7, 0x5

    const-string v8, "SPECIAL_TOKEN"

    const-string v9, "QJFOKY5F65WI"

    invoke-virtual {v6, v7, v8, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 767
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "lenovoid_login"

    const-string v8, "clk_login_onekey_r_f"

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 768
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const/4 v7, 0x5

    const-string v8, "SPECIAL_TOKEN"

    const-string v9, "QJFOKY5F65WI"

    invoke-virtual {v6, v7, v8, v9}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v6

    const-string v7, "lenovoid_clk_login_onekey_r_f"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "error_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 771
    const-string v6, "PsLoginActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "One Key Login: get key value from server error!--"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const-string v6, "USS-0190"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 773
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    new-instance v7, Lcom/lenovo/lsf/account/PsLoginActivity$4$1;

    invoke-direct {v7, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$4$1;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity$4;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 901
    const-string v6, "do"

    const-string v7, "8===========---------------------=====================----------------------------====================-----------------======="

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    new-instance v7, Lcom/lenovo/lsf/account/PsLoginActivity$4$6;

    invoke-direct {v7, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$4$6;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity$4;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 787
    :cond_5
    :try_start_4
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    new-instance v7, Lcom/lenovo/lsf/account/PsLoginActivity$4$2;

    invoke-direct {v7, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$4$2;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity$4;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 901
    const-string v6, "do"

    const-string v7, "8===========---------------------=====================----------------------------====================-----------------======="

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    new-instance v7, Lcom/lenovo/lsf/account/PsLoginActivity$4$6;

    invoke-direct {v7, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$4$6;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity$4;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 835
    .end local v3    # "errorMsg":Ljava/lang/String;
    .restart local v1    # "data":Ljava/lang/String;
    :cond_6
    :try_start_5
    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 836
    .local v5, "status":I
    packed-switch v5, :pswitch_data_0

    .line 882
    :goto_3
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mHandler:Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$100(Lcom/lenovo/lsf/account/PsLoginActivity;)Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 883
    const-string v6, "PsLoginActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getOneKeyRegisterResult="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 901
    const-string v6, "do"

    const-string v7, "8===========---------------------=====================----------------------------====================-----------------======="

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    new-instance v7, Lcom/lenovo/lsf/account/PsLoginActivity$4$6;

    invoke-direct {v7, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$4$6;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity$4;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 841
    :pswitch_0
    :try_start_6
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 842
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->processDialog:Landroid/app/ProgressDialog;
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 845
    :cond_7
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mHandler:Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$100(Lcom/lenovo/lsf/account/PsLoginActivity;)Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 846
    .local v4, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 847
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "username"

    const-string v7, ":"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 848
    const-string v6, "password"

    iget-object v7, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$200(Lcom/lenovo/lsf/account/PsLoginActivity;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 849
    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aget-object v6, v6, v7

    if-eqz v6, :cond_8

    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aget-object v6, v6, v7

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 850
    const-string v6, "isPasswordSet"

    const-string v7, "false"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 851
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const/4 v7, 0x0

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->isPasswordSet:Z
    invoke-static {v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1102(Lcom/lenovo/lsf/account/PsLoginActivity;Z)Z

    .line 856
    :goto_4
    invoke-virtual {v4, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 857
    const/4 v6, 0x2

    iput v6, v4, Landroid/os/Message;->what:I

    .line 858
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mHandler:Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$100(Lcom/lenovo/lsf/account/PsLoginActivity;)Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 859
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const/4 v7, 0x0

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$202(Lcom/lenovo/lsf/account/PsLoginActivity;Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 901
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "data":Ljava/lang/String;
    .end local v4    # "msg":Landroid/os/Message;
    .end local v5    # "status":I
    :catchall_0
    move-exception v6

    const-string v7, "do"

    const-string v8, "8===========---------------------=====================----------------------------====================-----------------======="

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v7, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    new-instance v8, Lcom/lenovo/lsf/account/PsLoginActivity$4$6;

    invoke-direct {v8, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$4$6;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity$4;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v6

    .line 853
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v1    # "data":Ljava/lang/String;
    .restart local v4    # "msg":Landroid/os/Message;
    .restart local v5    # "status":I
    :cond_8
    :try_start_7
    const-string v6, "isPasswordSet"

    const-string v7, "true"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 854
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const/4 v7, 0x1

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->isPasswordSet:Z
    invoke-static {v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1102(Lcom/lenovo/lsf/account/PsLoginActivity;Z)Z

    goto :goto_4

    .line 862
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v4    # "msg":Landroid/os/Message;
    :pswitch_1
    const-string v6, "PsLoginActivity"

    const-string v7, "retry 1s later"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 866
    :pswitch_2
    const-string v6, "PsLoginActivity"

    const-string v7, "register progress at server failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    new-instance v7, Lcom/lenovo/lsf/account/PsLoginActivity$4$4;

    invoke-direct {v7, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$4$4;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity$4;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 887
    .end local v1    # "data":Ljava/lang/String;
    .end local v5    # "status":I
    :cond_9
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    new-instance v7, Lcom/lenovo/lsf/account/PsLoginActivity$4$5;

    invoke-direct {v7, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$4$5;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity$4;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 901
    const-string v6, "do"

    const-string v7, "8===========---------------------=====================----------------------------====================-----------------======="

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$4;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    new-instance v7, Lcom/lenovo/lsf/account/PsLoginActivity$4$6;

    invoke-direct {v7, p0}, Lcom/lenovo/lsf/account/PsLoginActivity$4$6;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity$4;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 836
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
