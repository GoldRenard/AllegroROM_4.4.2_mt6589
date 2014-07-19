.class Lcom/lenovo/lsf/account/AccountBindingActivity$4;
.super Ljava/lang/Thread;
.source "AccountBindingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/AccountBindingActivity;->startOneKeyAccountBindingProgress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

.field final synthetic val$processDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/lenovo/lsf/account/AccountBindingActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 702
    iput-object p1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    iput-object p2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->val$processDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v5, 0x1

    .line 705
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/lsf/account/ToolUtil;->getOneKeyRegisterDataNew(Landroid/content/Context;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v1

    # setter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$402(Lcom/lenovo/lsf/account/AccountBindingActivity;Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    .line 708
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$400(Lcom/lenovo/lsf/account/AccountBindingActivity;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getSendBody()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$400(Lcom/lenovo/lsf/account/AccountBindingActivity;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getNumberSendList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 710
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # invokes: Lcom/lenovo/lsf/account/AccountBindingActivity;->registSMSReceiver()V
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2800(Lcom/lenovo/lsf/account/AccountBindingActivity;)V

    .line 711
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v1}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$400(Lcom/lenovo/lsf/account/AccountBindingActivity;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getSendBody()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v2}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$400(Lcom/lenovo/lsf/account/AccountBindingActivity;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getNumberSendList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lenovo/lsf/account/ToolUtil;->sendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 744
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->myHandler:Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2900(Lcom/lenovo/lsf/account/AccountBindingActivity;)Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/32 v2, 0x15f90

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 745
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->isTimeout:Z
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2602(Lcom/lenovo/lsf/account/AccountBindingActivity;Z)Z

    .line 748
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->isTimeout:Z
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2600(Lcom/lenovo/lsf/account/AccountBindingActivity;)Z

    move-result v0

    if-eq v0, v5, :cond_9

    .line 749
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->sleep(J)V

    .line 750
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/lenovo/lsf/account/ToolUtil;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getQueryMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/ToolUtil;->getOneKeyRegisterResultNew(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 754
    .local v9, "data":Ljava/lang/String;
    const-string v0, "USS-0"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 755
    const-string v0, "AccountBindingActivity"

    const-string v1, "Uss Exception"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const-string v0, "USS-0-1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 759
    iget-object v5, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->thirdName:Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1800(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    # invokes: Lcom/lenovo/lsf/account/AccountBindingActivity;->setDataAnalytics(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v5 .. v10}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2000(Lcom/lenovo/lsf/account/AccountBindingActivity;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->val$processDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->val$processDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 762
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->val$processDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    new-instance v1, Lcom/lenovo/lsf/account/AccountBindingActivity$4$3;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/AccountBindingActivity$4$3;-><init>(Lcom/lenovo/lsf/account/AccountBindingActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 821
    :goto_1
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->myHandler:Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2900(Lcom/lenovo/lsf/account/AccountBindingActivity;)Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 822
    const-string v0, "AccountBindingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOneKeyRegisterResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    .end local v9    # "data":Ljava/lang/String;
    :cond_2
    :goto_2
    return-void

    .line 715
    :cond_3
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$400(Lcom/lenovo/lsf/account/AccountBindingActivity;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    .line 716
    .local v4, "errorMsg":Ljava/lang/String;
    const-string v0, "AccountBindingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "One Key Login: get key value from server error!--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->thirdName:Ljava/lang/String;
    invoke-static {v3}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1800(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    # invokes: Lcom/lenovo/lsf/account/AccountBindingActivity;->setDataAnalytics(ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v0 .. v5}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2000(Lcom/lenovo/lsf/account/AccountBindingActivity;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v0, "USS-0190"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 721
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    new-instance v1, Lcom/lenovo/lsf/account/AccountBindingActivity$4$1;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/AccountBindingActivity$4$1;-><init>(Lcom/lenovo/lsf/account/AccountBindingActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 828
    .end local v4    # "errorMsg":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 829
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 732
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v4    # "errorMsg":Ljava/lang/String;
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    new-instance v1, Lcom/lenovo/lsf/account/AccountBindingActivity$4$2;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/AccountBindingActivity$4$2;-><init>(Lcom/lenovo/lsf/account/AccountBindingActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 771
    .end local v4    # "errorMsg":Ljava/lang/String;
    .restart local v9    # "data":Ljava/lang/String;
    :cond_5
    const-string v0, ":"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 773
    .local v14, "status":I
    packed-switch v14, :pswitch_data_0

    goto/16 :goto_1

    .line 807
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->val$processDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->val$processDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 808
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->val$processDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 810
    :cond_6
    const-string v0, "AccountBindingActivity"

    const-string v1, "register progress at server failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    new-instance v1, Lcom/lenovo/lsf/account/AccountBindingActivity$4$4;

    invoke-direct {v1, p0}, Lcom/lenovo/lsf/account/AccountBindingActivity$4$4;-><init>(Lcom/lenovo/lsf/account/AccountBindingActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    .line 778
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->val$processDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->val$processDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 779
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->val$processDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 781
    :cond_7
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->myHandler:Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2900(Lcom/lenovo/lsf/account/AccountBindingActivity;)Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v13

    .line 782
    .local v13, "msg":Landroid/os/Message;
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 783
    .local v11, "b":Landroid/os/Bundle;
    const-string v0, "username"

    const-string v1, ":"

    invoke-virtual {v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 785
    const-string v0, "password"

    iget-object v1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v1}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$400(Lcom/lenovo/lsf/account/AccountBindingActivity;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 787
    const-string v0, ":"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    if-eqz v0, :cond_8

    const-string v0, ":"

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 790
    const-string v0, "isPasswordSet"

    const-string v1, "false"

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 792
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->isPasswordSet:Z
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2502(Lcom/lenovo/lsf/account/AccountBindingActivity;Z)Z

    .line 798
    :goto_3
    invoke-virtual {v13, v11}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 799
    const/4 v0, 0x2

    iput v0, v13, Landroid/os/Message;->what:I

    .line 800
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->myHandler:Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;
    invoke-static {v0}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2900(Lcom/lenovo/lsf/account/AccountBindingActivity;)Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v13}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 801
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const/4 v1, 0x0

    # setter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$402(Lcom/lenovo/lsf/account/AccountBindingActivity;Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    goto/16 :goto_1

    .line 794
    :cond_8
    const-string v0, "isPasswordSet"

    const-string v1, "true"

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 796
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const/4 v1, 0x1

    # setter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->isPasswordSet:Z
    invoke-static {v0, v1}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2502(Lcom/lenovo/lsf/account/AccountBindingActivity;Z)Z

    goto :goto_3

    .line 804
    .end local v11    # "b":Landroid/os/Bundle;
    .end local v13    # "msg":Landroid/os/Message;
    :pswitch_2
    const-string v0, "AccountBindingActivity"

    const-string v1, "retry 1s later"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 825
    .end local v9    # "data":Ljava/lang/String;
    .end local v14    # "status":I
    :cond_9
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->val$processDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->val$processDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 826
    iget-object v0, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$4;->val$processDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 773
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
