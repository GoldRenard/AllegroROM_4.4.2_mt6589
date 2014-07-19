.class Lcom/lenovo/lsf/account/PsLoginActivity$SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PsLoginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/lsf/account/PsLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmsReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lsf/account/PsLoginActivity;


# direct methods
.method private constructor <init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V
    .locals 0

    .prologue
    .line 440
    iput-object p1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$SmsReceiver;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lenovo/lsf/account/PsLoginActivity;Lcom/lenovo/lsf/account/PsLoginActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/lenovo/lsf/account/PsLoginActivity;
    .param p2, "x1"    # Lcom/lenovo/lsf/account/PsLoginActivity$1;

    .prologue
    .line 440
    invoke-direct {p0, p1}, Lcom/lenovo/lsf/account/PsLoginActivity$SmsReceiver;-><init>(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 443
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getResultCode()I

    move-result v0

    .line 445
    .local v0, "retCode":I
    const-string v1, "PsLoginActivity"

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

    .line 446
    const-string v1, "SMS_SEND_ACTIOIN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 449
    const-string v1, "PsLoginActivity"

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

    .line 450
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$SmsReceiver;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    iget-object v2, p0, Lcom/lenovo/lsf/account/PsLoginActivity$SmsReceiver;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # getter for: Lcom/lenovo/lsf/account/PsLoginActivity;->oneKeyInfo:Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;
    invoke-static {v2}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$200(Lcom/lenovo/lsf/account/PsLoginActivity;)Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lsf/account/ToolUtil;->sendMSimSms(Landroid/content/Context;Lcom/lenovo/lsf/account/ToolUtil$OneKeyInfo;)V

    .line 455
    :goto_1
    iget-object v1, p0, Lcom/lenovo/lsf/account/PsLoginActivity$SmsReceiver;->this$0:Lcom/lenovo/lsf/account/PsLoginActivity;

    # invokes: Lcom/lenovo/lsf/account/PsLoginActivity;->unRegistSMSReceiver()V
    invoke-static {v1}, Lcom/lenovo/lsf/account/PsLoginActivity;->access$300(Lcom/lenovo/lsf/account/PsLoginActivity;)V

    goto :goto_0

    .line 453
    :cond_2
    const-string v1, "PsLoginActivity"

    const-string v2, "send msg to SmsService success!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
