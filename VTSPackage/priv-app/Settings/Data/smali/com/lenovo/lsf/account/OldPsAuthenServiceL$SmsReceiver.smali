.class Lcom/lenovo/lsf/account/OldPsAuthenServiceL$SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OldPsAuthenServiceL.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lsf/account/OldPsAuthenServiceL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmsReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 444
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 445
    iput-object p1, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$SmsReceiver;->mContext:Landroid/content/Context;

    .line 446
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 449
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 467
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v0

    .line 451
    .local v0, "retCode":I
    const-string v1, "RK_PUSHSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send msg to SmsService retCode == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v1, "SMS_SEND_ACTIOIN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 455
    const-string v1, "RK_PUSHSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send msg to SmsService failed(error is !"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v1, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$SmsReceiver;->mContext:Landroid/content/Context;

    # getter for: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$200()Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lsf/account/ToolUtil;->sendMSimSms(Landroid/content/Context;Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;)V

    .line 462
    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/lsf/account/OldPsAuthenServiceL$SmsReceiver;->mContext:Landroid/content/Context;

    # invokes: Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->unRegistSMSReceiver(Landroid/content/Context;)V
    invoke-static {v1}, Lcom/lenovo/lsf/account/OldPsAuthenServiceL;->access$700(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 463
    :catch_0
    move-exception v1

    goto :goto_0

    .line 459
    :cond_2
    const-string v1, "RK_PUSHSDK"

    const-string v2, "send msg to SmsService success!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
