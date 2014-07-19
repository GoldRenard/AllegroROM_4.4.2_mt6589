.class public final Lcom/android/server/lightadjust/LightAdjustService$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LightAdjustService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lightadjust/LightAdjustService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lightadjust/LightAdjustService;


# direct methods
.method public constructor <init>(Lcom/android/server/lightadjust/LightAdjustService;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/android/server/lightadjust/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 545
    const-string v1, "AUTOADJUST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 547
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.lenovo.lightadjuest.DECREASE_BRIGHTNESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # invokes: Lcom/android/server/lightadjust/LightAdjustService;->decreaseBrightnessPercent10()V
    invoke-static {v1}, Lcom/android/server/lightadjust/LightAdjustService;->access$1500(Lcom/android/server/lightadjust/LightAdjustService;)V

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    const-string v1, "com.lenovo.lightadjuest.INCREASE_BRIGHTNESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 550
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # invokes: Lcom/android/server/lightadjust/LightAdjustService;->increaseBrightnessPercent10()V
    invoke-static {v1}, Lcom/android/server/lightadjust/LightAdjustService;->access$1600(Lcom/android/server/lightadjust/LightAdjustService;)V

    goto :goto_0

    .line 551
    :cond_2
    const-string v1, "com.lenovo.lightadjuest.REFRESH_NOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 552
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    invoke-virtual {v1}, Lcom/android/server/lightadjust/LightAdjustService;->refreshBrightnessRightNow()V

    goto :goto_0

    .line 553
    :cond_3
    const-string v1, "com.lenovo.lightadjuest.CHANGE_PROFILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 554
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # invokes: Lcom/android/server/lightadjust/LightAdjustService;->changeProfileToNext()V
    invoke-static {v1}, Lcom/android/server/lightadjust/LightAdjustService;->access$1700(Lcom/android/server/lightadjust/LightAdjustService;)V

    goto :goto_0

    .line 555
    :cond_4
    const-string v1, "com.lenovo.lightadjuest.LOCK_BRIGHTNESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 556
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # invokes: Lcom/android/server/lightadjust/LightAdjustService;->lockBrightnessAtCurrent()V
    invoke-static {v1}, Lcom/android/server/lightadjust/LightAdjustService;->access$1800(Lcom/android/server/lightadjust/LightAdjustService;)V

    goto :goto_0

    .line 557
    :cond_5
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 558
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # getter for: Lcom/android/server/lightadjust/LightAdjustService;->enterAutoModeChange:Z
    invoke-static {v1}, Lcom/android/server/lightadjust/LightAdjustService;->access$900(Lcom/android/server/lightadjust/LightAdjustService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # invokes: Lcom/android/server/lightadjust/LightAdjustService;->refreshBrightnessScreenOn()V
    invoke-static {v1}, Lcom/android/server/lightadjust/LightAdjustService;->access$1900(Lcom/android/server/lightadjust/LightAdjustService;)V

    goto :goto_0

    .line 561
    :cond_6
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 562
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # getter for: Lcom/android/server/lightadjust/LightAdjustService;->enterAutoModeChange:Z
    invoke-static {v1}, Lcom/android/server/lightadjust/LightAdjustService;->access$900(Lcom/android/server/lightadjust/LightAdjustService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjustService$MyBroadcastReceiver;->this$0:Lcom/android/server/lightadjust/LightAdjustService;

    # invokes: Lcom/android/server/lightadjust/LightAdjustService;->refreshBrightnessScreenOff()V
    invoke-static {v1}, Lcom/android/server/lightadjust/LightAdjustService;->access$2000(Lcom/android/server/lightadjust/LightAdjustService;)V

    goto :goto_0
.end method
