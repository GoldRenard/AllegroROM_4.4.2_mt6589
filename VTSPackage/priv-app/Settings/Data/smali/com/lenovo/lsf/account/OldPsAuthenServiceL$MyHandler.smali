.class Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;
.super Landroid/os/Handler;
.source "OldPsAuthenServiceL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lsf/account/OldPsAuthenServiceL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 529
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 527
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;->context:Landroid/content/Context;

    .line 530
    iput-object p1, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;->context:Landroid/content/Context;

    .line 531
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 535
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    packed-switch v12, :pswitch_data_0

    .line 592
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 593
    return-void

    .line 537
    :pswitch_0
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v12

    const/4 v13, 0x5

    const-string v14, "SPECIAL_TOKEN"

    const-string v15, "QJFOKY5F65WI"

    invoke-virtual {v12, v13, v14, v15}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v12

    const-string v13, "lenovoid_login"

    const-string v14, "clk_login_auto_onekey_query_sms_timeout"

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v12 .. v16}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 545
    const/4 v12, 0x1

    # setter for: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isTimeout:Z
    invoke-static {v12}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$502(Z)Z

    .line 546
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    .line 547
    .local v5, "callback":Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;
    const-string v12, "RK_PUSHSDK"

    const-string v13, "HHHHHHHHHH login timeout"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 549
    .local v1, "b":Landroid/os/Bundle;
    # getter for: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isHandleErrorBySelf:Z
    invoke-static {}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$900()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 550
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;->context:Landroid/content/Context;

    const-string v15, "string"

    const-string v16, "register_time_out"

    invoke-static/range {v14 .. v16}, Lcom/lenovo/lsf/account/PsLoginActivity;->getIdentifier(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->finishLogin(Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;ZLjava/lang/String;)V
    invoke-static {v5, v12, v13}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$800(Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;ZLjava/lang/String;)V

    goto :goto_0

    .line 552
    :cond_0
    invoke-static {v5}, Lcom/lenovo/lsf/account/PsLoginActivity;->setCallback(Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;)V

    .line 553
    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;->context:Landroid/content/Context;

    const-class v13, Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 554
    .local v8, "intent":Landroid/content/Intent;
    const/high16 v12, 0x10000000

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 555
    const-string v12, "autonLoginTimeout"

    const/4 v13, 0x1

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 556
    const-string v12, "source"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-virtual {v8, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 558
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;->context:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 562
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v5    # "callback":Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;
    .end local v8    # "intent":Landroid/content/Intent;
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    .line 563
    .local v3, "bd":Landroid/os/Bundle;
    const-string v12, "username"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 564
    .local v11, "username":Ljava/lang/String;
    const-string v12, "password"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 565
    .local v9, "password":Ljava/lang/String;
    const-string v12, "rid"

    invoke-virtual {v3, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 566
    .local v10, "rid":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    .line 567
    .local v6, "cback":Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;->context:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "lenovo_phone_number_tag"

    invoke-static {v12, v13, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 569
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;->context:Landroid/content/Context;

    # invokes: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->startOneKeyLoginProcess(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;)V
    invoke-static {v12, v10, v11, v9, v6}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$1000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;)V

    goto/16 :goto_0

    .line 572
    .end local v3    # "bd":Landroid/os/Bundle;
    .end local v6    # "cback":Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;
    .end local v9    # "password":Ljava/lang/String;
    .end local v10    # "rid":Ljava/lang/String;
    .end local v11    # "username":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    .line 573
    .local v2, "back":Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    .line 574
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v12, "error"

    invoke-virtual {v4, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 576
    .local v7, "errorMsg":Ljava/lang/String;
    if-eqz v7, :cond_1

    const/4 v12, 0x0

    const/4 v13, 0x3

    invoke-virtual {v7, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    const-string v13, "USS"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 577
    const/4 v12, 0x5

    invoke-virtual {v7, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    # setter for: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->mErrorCode:Ljava/lang/String;
    invoke-static {v12}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 578
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;->context:Landroid/content/Context;

    # invokes: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->setErrorString(Landroid/content/Context;)V
    invoke-static {v12}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$100(Landroid/content/Context;)V

    .line 580
    :cond_1
    # getter for: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isHandleErrorBySelf:Z
    invoke-static {}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$900()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 581
    const/4 v12, 0x0

    invoke-static {}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->getLastErrorString()Ljava/lang/String;

    move-result-object v13

    # invokes: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->finishLogin(Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;ZLjava/lang/String;)V
    invoke-static {v2, v12, v13}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$800(Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 583
    :cond_2
    invoke-static {v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->setCallback(Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;)V

    .line 584
    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;->context:Landroid/content/Context;

    const-class v13, Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-direct {v8, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 585
    .restart local v8    # "intent":Landroid/content/Intent;
    const/high16 v12, 0x10000000

    invoke-virtual {v8, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 586
    const-string v12, "source"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getSource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-virtual {v8, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 588
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;->context:Landroid/content/Context;

    invoke-virtual {v12, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 535
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
