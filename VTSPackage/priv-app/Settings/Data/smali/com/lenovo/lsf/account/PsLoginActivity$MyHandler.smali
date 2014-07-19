.class Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;
.super Landroid/os/Handler;
.source "PsLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lsf/account/PsLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/PsLoginActivity;


# direct methods
.method public constructor <init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V
    .locals 0

    .prologue
    .line 1649
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1650
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/lsf/account/PsLoginActivity;Landroid/os/Looper;)V
    .locals 0
    .param p2, "L"    # Landroid/os/Looper;

    .prologue
    .line 1652
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    .line 1653
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1654
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1659
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1713
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1662
    :pswitch_1
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->startLoginProcess(Z)V
    invoke-static {v4, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$3300(Lcom/lenovo/lsf/account/PsLoginActivity;Z)V

    goto :goto_0

    .line 1665
    :pswitch_2
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->isTimeout:Z
    invoke-static {v4, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1002(Lcom/lenovo/lsf/account/PsLoginActivity;Z)Z

    .line 1666
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const/4 v5, 0x5

    const-string v6, "SPECIAL_TOKEN"

    const-string v7, "QJFOKY5F65WI"

    invoke-virtual {v4, v5, v6, v7}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 1667
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v4

    const-string v5, "lenovoid_login"

    const-string v6, "clk_login_onekey_query_sms_timeout"

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1668
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iget-object v5, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1700()Landroid/content/Context;

    move-result-object v6

    const-string v7, "string"

    const-string v8, "register_time_out"

    invoke-static {v6, v7, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->showErrorMessage(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$3900(Lcom/lenovo/lsf/account/PsLoginActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 1671
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1672
    .local v0, "b":Landroid/os/Bundle;
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const-string v5, "username"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1302(Lcom/lenovo/lsf/account/PsLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1673
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const-string v5, "password"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->password:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1402(Lcom/lenovo/lsf/account/PsLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1674
    const-string v4, "isPasswordSet"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1675
    .local v2, "isPasswordSet":Ljava/lang/String;
    const-string v4, "PsLoginActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "username "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " password "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->password:Ljava/lang/String;
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1400(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isPasswordSet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lenovo_phone_number_tag"

    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1300(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1677
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->startLoginProcess(Z)V
    invoke-static {v4, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$3300(Lcom/lenovo/lsf/account/PsLoginActivity;Z)V

    goto/16 :goto_0

    .line 1680
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "isPasswordSet":Ljava/lang/String;
    :pswitch_4
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->topHeight:I
    invoke-static {v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$4000(Lcom/lenovo/lsf/account/PsLoginActivity;)I

    move-result v4

    if-gtz v4, :cond_1

    .line 1681
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iget-object v5, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->getTopHeight()I
    invoke-static {v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$4100(Lcom/lenovo/lsf/account/PsLoginActivity;)I

    move-result v5

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->topHeight:I
    invoke-static {v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$4002(Lcom/lenovo/lsf/account/PsLoginActivity;I)I

    .line 1683
    :cond_1
    const/4 v4, 0x2

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    .line 1684
    .local v3, "loc":[I
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->isRegistPage:Z
    invoke-static {v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$3200(Lcom/lenovo/lsf/account/PsLoginActivity;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1685
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterVerifyCodeEdit:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$2700(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1686
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterVerifyCodeEdit:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$2700(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1687
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->registScrollView:Landroid/widget/ScrollView;
    invoke-static {v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$4300(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    aget v5, v3, v7

    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->topHeight:I
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$4000(Lcom/lenovo/lsf/account/PsLoginActivity;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$4200(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0xa

    invoke-virtual {v4, v8, v5}, Landroid/view/View;->scrollBy(II)V

    goto/16 :goto_0

    .line 1688
    :cond_2
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterPasswordAgainEdit:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$2600(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->isFocused()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1689
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->RegisterAccountEdit:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$2400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1690
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->registScrollView:Landroid/widget/ScrollView;
    invoke-static {v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$4300(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    aget v5, v3, v7

    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->topHeight:I
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$4000(Lcom/lenovo/lsf/account/PsLoginActivity;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$4200(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x2d

    invoke-virtual {v4, v8, v5}, Landroid/view/View;->scrollBy(II)V

    goto/16 :goto_0

    .line 1694
    :cond_3
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->LoginAccountEdit:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1900(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1695
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->loginScrollView:Landroid/widget/ScrollView;
    invoke-static {v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$4400(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/ScrollView;

    move-result-object v4

    aget v5, v3, v7

    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->topHeight:I
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$4000(Lcom/lenovo/lsf/account/PsLoginActivity;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->ErrorLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$4200(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/widget/LinearLayout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, -0xa

    invoke-virtual {v4, v8, v5}, Landroid/view/View;->scrollBy(II)V

    goto/16 :goto_0

    .line 1700
    .end local v3    # "loc":[I
    :pswitch_5
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const-string v5, "LenovoUser"

    const-string v6, "IsLogon"

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5, v6}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$4500(Lcom/lenovo/lsf/account/PsLoginActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1702
    .local v1, "isLogon":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 1703
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iget-object v5, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const-string v6, "LenovoUser"

    const-string v7, "UserName"

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$4500(Lcom/lenovo/lsf/account/PsLoginActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->username:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1302(Lcom/lenovo/lsf/account/PsLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1704
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iget-object v5, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    const-string v6, "LenovoUser"

    const-string v7, "Password"

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v5, v6, v7}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$4500(Lcom/lenovo/lsf/account/PsLoginActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    # setter for: Lcom/lenovo/lsf/account/PsLoginActivity;->password:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$1402(Lcom/lenovo/lsf/account/PsLoginActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1705
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->startLoginProcess(Z)V
    invoke-static {v4, v8}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$3300(Lcom/lenovo/lsf/account/PsLoginActivity;Z)V

    goto/16 :goto_0

    .line 1709
    .end local v1    # "isLogon":Ljava/lang/String;
    :pswitch_6
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->initWebView()Landroid/webkit/WebView;
    invoke-static {v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$4600(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/webkit/WebView;

    .line 1710
    iget-object v4, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->webView:Landroid/webkit/WebView;
    invoke-static {v4}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$3700(Lcom/lenovo/lsf/account/PsLoginActivity;)Landroid/webkit/WebView;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/lsf/account/PsLoginActivity$MyHandler;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->getProtocolUrl()Ljava/lang/String;
    invoke-static {v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$4700(Lcom/lenovo/lsf/account/PsLoginActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1659
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1683
    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method
