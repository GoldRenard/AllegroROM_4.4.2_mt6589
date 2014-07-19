.class Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;
.super Landroid/os/Handler;
.source "AccountBindingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lsf/account/AccountBindingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/lsf/account/AccountBindingActivity;)V
    .locals 0

    .prologue
    .line 654
    iput-object p1, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/lsf/account/AccountBindingActivity;Lcom/lenovo/lsf/account/AccountBindingActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/lsf/account/AccountBindingActivity;
    .param p2, "x1"    # Lcom/lenovo/lsf/account/AccountBindingActivity$1;

    .prologue
    .line 654
    invoke-direct {p0, p1}, Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;-><init>(Lcom/lenovo/lsf/account/AccountBindingActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    .line 657
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 685
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 686
    return-void

    .line 659
    :pswitch_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const/4 v3, 0x5

    const-string v4, "SPECIAL_TOKEN"

    const-string v5, "QJFOKY5F65WI"

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 661
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v2

    const-string v3, "lenovoid_login"

    const-string v4, "clk_login_onekey_query_sms_timeout"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 667
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # setter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->isTimeout:Z
    invoke-static {v2, v7}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2602(Lcom/lenovo/lsf/account/AccountBindingActivity;Z)Z

    .line 668
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    iget-object v3, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const-string v5, "string"

    const-string v6, "register_time_out"

    invoke-static {v4, v5, v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/lenovo/lsf/account/AccountBindingActivity;->showErrorMessage(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$2700(Lcom/lenovo/lsf/account/AccountBindingActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 674
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 675
    .local v0, "b":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const-string v3, "username"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1002(Lcom/lenovo/lsf/account/AccountBindingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 676
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    const-string v3, "password"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->password:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1102(Lcom/lenovo/lsf/account/AccountBindingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 677
    const-string v2, "isPasswordSet"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 678
    .local v1, "isPasswordSet":Ljava/lang/String;
    const-string v2, "AccountBindingActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "username "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1000(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " password "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->password:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1100(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isPasswordSet "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lenovo_phone_number_tag"

    iget-object v4, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # getter for: Lcom/lenovo/lsf/account/AccountBindingActivity;->username:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$1000(Lcom/lenovo/lsf/account/AccountBindingActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 682
    iget-object v2, p0, Lcom/lenovo/lsf/account/AccountBindingActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/AccountBindingActivity;

    # invokes: Lcom/lenovo/lsf/account/AccountBindingActivity;->startBinding(Z)V
    invoke-static {v2, v7}, Lcom/lenovo/lsf/account/AccountBindingActivity;->access$700(Lcom/lenovo/lsf/account/AccountBindingActivity;Z)V

    goto/16 :goto_0

    .line 657
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
