.class Lcom/android/incallui/InCallActivity$14;
.super Landroid/content/BroadcastReceiver;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0

    .prologue
    .line 1502
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$14;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1505
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1506
    .local v0, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/incallui/InCallActivity$14;->this$0:Lcom/android/incallui/InCallActivity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1508
    # getter for: Lcom/android/incallui/InCallActivity;->NOTIFY_LOCKED:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/InCallActivity;->access$900()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1509
    invoke-static {v6}, Lcom/mediatek/incallui/InCallUtils;->setprivacyProtectEnabled(Z)V

    .line 1510
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/incallui/CallCommandClient;->setSystemBarNavigationEnabled(Z)V

    .line 1520
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    .line 1521
    .local v1, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/services/telephony/common/Call$State;->isConnected(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1522
    :cond_1
    const-string v3, "mDMLockReceiver , return"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1542
    :cond_2
    :goto_1
    return-void

    .line 1511
    .end local v1    # "call":Lcom/android/services/telephony/common/Call;
    :cond_3
    # getter for: Lcom/android/incallui/InCallActivity;->NOTIFY_UNLOCK:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/InCallActivity;->access$1000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1512
    invoke-static {v7}, Lcom/mediatek/incallui/InCallUtils;->setprivacyProtectEnabled(Z)V

    .line 1513
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    .line 1515
    .restart local v1    # "call":Lcom/android/services/telephony/common/Call;
    if-nez v1, :cond_0

    .line 1516
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/incallui/CallCommandClient;->setSystemBarNavigationEnabled(Z)V

    goto :goto_0

    .line 1525
    :cond_4
    # getter for: Lcom/android/incallui/InCallActivity;->ACTION_LOCKED:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/InCallActivity;->access$1100()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    # getter for: Lcom/android/incallui/InCallActivity;->NOTIFY_LOCKED:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/InCallActivity;->access$900()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1526
    :cond_5
    const v2, 0x7f0a0004

    .line 1527
    .local v2, "msg":I
    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 1530
    iget-object v3, p0, Lcom/android/incallui/InCallActivity$14;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v3, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1541
    .end local v2    # "msg":I
    :cond_6
    :goto_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/CallList;)V

    goto :goto_1

    .line 1532
    :cond_7
    # getter for: Lcom/android/incallui/InCallActivity;->ACTION_UNLOCK:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/InCallActivity;->access$1200()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    # getter for: Lcom/android/incallui/InCallActivity;->NOTIFY_UNLOCK:Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/InCallActivity;->access$1000()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1533
    :cond_8
    const v2, 0x7f0a0005

    .line 1534
    .restart local v2    # "msg":I
    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 1537
    iget-object v3, p0, Lcom/android/incallui/InCallActivity$14;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v3, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
