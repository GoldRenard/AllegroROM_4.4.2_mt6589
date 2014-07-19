.class final Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;
.super Ljava/lang/Thread;
.source "OldPsAuthenServiceL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->startPreOneKeyLoginProgress(Landroid/content/Context;Ljava/lang/String;JLcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$myHandler:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;

.field final synthetic val$rid:Ljava/lang/String;

.field final synthetic val$times:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$myHandler:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;

    iput-object p3, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$callback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    iput-object p4, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$rid:Ljava/lang/String;

    iput-wide p5, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$times:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 331
    :try_start_0
    iget-object v8, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/lenovo/lsf/account/ToolUtil;->getOneKeyRegisterDataNew(Landroid/content/Context;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v8

    # setter for: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v8}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$202(Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    .line 334
    # getter for: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$200()Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getSendBody()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    # getter for: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$200()Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getNumberSendList()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 336
    iget-object v8, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$context:Landroid/content/Context;

    # invokes: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->registSMSReceiver(Landroid/content/Context;)V
    invoke-static {v8}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$300(Landroid/content/Context;)V

    .line 337
    iget-object v8, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$context:Landroid/content/Context;

    # getter for: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$200()Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getSendBody()Ljava/lang/String;

    move-result-object v9

    # getter for: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$200()Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getNumberSendList()Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/lenovo/lsf/account/ToolUtil;->sendMessage(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 352
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 353
    .local v5, "m":Landroid/os/Message;
    iget-object v8, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$callback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    iput-object v8, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 354
    const/4 v8, 0x1

    iput v8, v5, Landroid/os/Message;->what:I

    .line 355
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 356
    .local v1, "bud":Landroid/os/Bundle;
    const-string v8, "rid"

    iget-object v9, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$rid:Ljava/lang/String;

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v5, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 358
    iget-object v8, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$myHandler:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;

    const-wide/16 v9, 0x3e8

    iget-wide v11, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$times:J

    mul-long/2addr v9, v11

    invoke-virtual {v8, v5, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 359
    const/4 v8, 0x0

    # setter for: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isTimeout:Z
    invoke-static {v8}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$502(Z)Z

    .line 361
    :cond_0
    :goto_0
    # getter for: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isTimeout:Z
    invoke-static {}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$500()Z

    move-result v8

    if-eq v8, v13, :cond_1

    .line 362
    const-wide/16 v8, 0x3e8

    invoke-static {v8, v9}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->sleep(J)V

    .line 363
    iget-object v8, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    sget-object v9, Lcom/lenovo/lsf/account/ToolUtil;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    invoke-virtual {v9}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getQueryMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/lenovo/lsf/account/ToolUtil;->getOneKeyRegisterResultNew(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, "data":Ljava/lang/String;
    const-string v8, "USS-0"

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 368
    const-string v8, "RK_PUSHSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Uss Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v8, "USS-0-1"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 372
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v8

    const/4 v9, 0x5

    const-string v10, "SPECIAL_TOKEN"

    const-string v11, "QJFOKY5F65WI"

    invoke-virtual {v8, v9, v10, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v8

    const-string v9, "lenovoid_login"

    const-string v10, "clk_login_auto_onekey_r_f"

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 374
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v8

    const/4 v9, 0x5

    const-string v10, "SPECIAL_TOKEN"

    const-string v11, "QJFOKY5F65WI"

    invoke-virtual {v8, v9, v10, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v8

    const-string v9, "lenovoid_clk_login_auto_onekey_r_f"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error_ "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 376
    iget-object v8, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$myHandler:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;

    iget-object v9, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$callback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    iget-object v10, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$rid:Ljava/lang/String;

    # invokes: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->sendErrorMsg(Landroid/os/Handler;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v9, v10, v2}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$400(Landroid/os/Handler;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .end local v1    # "bud":Landroid/os/Bundle;
    .end local v2    # "data":Ljava/lang/String;
    .end local v5    # "m":Landroid/os/Message;
    :cond_1
    :goto_1
    return-void

    .line 341
    :cond_2
    # getter for: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$200()Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    .line 342
    .local v4, "errorMsg":Ljava/lang/String;
    const-string v8, "RK_PUSHSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "One Key Login: get key value from server error!--"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v8

    const/4 v9, 0x5

    const-string v10, "SPECIAL_TOKEN"

    const-string v11, "QJFOKY5F65WI"

    invoke-virtual {v8, v9, v10, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v8

    const-string v9, "lenovoid_login"

    const-string v10, "clk_login_auto_onekey_r_f"

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 347
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v8

    const/4 v9, 0x5

    const-string v10, "SPECIAL_TOKEN"

    const-string v11, "QJFOKY5F65WI"

    invoke-virtual {v8, v9, v10, v11}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->setParam(ILjava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->getInstance()Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;

    move-result-object v8

    const-string v9, "lenovoid_clk_login_auto_onekey_r_f"

    const-string v10, "error_ errorMsg "

    const/4 v11, 0x0

    const/4 v12, -0x1

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 349
    iget-object v8, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$myHandler:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;

    iget-object v9, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$callback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    iget-object v10, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$rid:Ljava/lang/String;

    # invokes: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->sendErrorMsg(Landroid/os/Handler;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v9, v10, v4}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$400(Landroid/os/Handler;Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 423
    .end local v4    # "errorMsg":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 424
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 379
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "bud":Landroid/os/Bundle;
    .restart local v2    # "data":Ljava/lang/String;
    .restart local v5    # "m":Landroid/os/Message;
    :cond_3
    :try_start_1
    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 381
    .local v7, "status":I
    packed-switch v7, :pswitch_data_0

    .line 419
    :goto_2
    iget-object v8, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$myHandler:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 420
    const-string v8, "RK_PUSHSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getOneKeyRegisterResult="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 386
    :pswitch_0
    iget-object v8, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$myHandler:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    .line 387
    .local v6, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 388
    .local v0, "b":Landroid/os/Bundle;
    const-string v8, "username"

    const-string v9, ":"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 390
    const-string v8, "password"

    # getter for: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$200()Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;->getPassword()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 392
    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v8, v8, v9

    if-eqz v8, :cond_4

    const-string v8, ":"

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    aget-object v8, v8, v9

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 395
    const-string v8, "isPasswordSet"

    const-string v9, "false"

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 397
    const/4 v8, 0x0

    # setter for: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isPasswordSet:Z
    invoke-static {v8}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$602(Z)Z

    .line 403
    :goto_3
    const-string v8, "rid"

    iget-object v9, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$rid:Ljava/lang/String;

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-virtual {v6, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 405
    iget-object v8, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$callback:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$OnAuthenListener;

    iput-object v8, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 406
    const/4 v8, 0x2

    iput v8, v6, Landroid/os/Message;->what:I

    .line 407
    iget-object v8, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$2;->val$myHandler:Lcom/lenovo/lsf/account/OldPsAuthenServiceL$MyHandler;

    invoke-virtual {v8, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 408
    const/4 v8, 0x0

    # setter for: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v8}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$202(Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    goto/16 :goto_2

    .line 399
    :cond_4
    const-string v8, "isPasswordSet"

    const-string v9, "true"

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 401
    const/4 v8, 0x1

    # setter for: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->isPasswordSet:Z
    invoke-static {v8}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$602(Z)Z

    goto :goto_3

    .line 411
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v6    # "msg":Landroid/os/Message;
    :pswitch_1
    const-string v8, "RK_PUSHSDK"

    const-string v9, "retry 1s later"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 414
    :pswitch_2
    const-string v8, "RK_PUSHSDK"

    const-string v9, "register progress at server failed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 381
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
