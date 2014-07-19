.class Lcom/android/server/AkgService$ScreenReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AkgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AkgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AkgService;


# direct methods
.method private constructor <init>(Lcom/android/server/AkgService;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/server/AkgService$ScreenReceiver;->this$0:Lcom/android/server/AkgService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/AkgService;Lcom/android/server/AkgService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/AkgService;
    .param p2, "x1"    # Lcom/android/server/AkgService$1;

    .prologue
    .line 565
    invoke-direct {p0, p1}, Lcom/android/server/AkgService$ScreenReceiver;-><init>(Lcom/android/server/AkgService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 569
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/android/server/AkgService$ScreenReceiver;->this$0:Lcom/android/server/AkgService;

    # setter for: Lcom/android/server/AkgService;->screenOff:Z
    invoke-static {v0, v3}, Lcom/android/server/AkgService;->access$1002(Lcom/android/server/AkgService;Z)Z

    .line 571
    const-string v0, "AkgService"

    const-string v1, "SCREEN TURNED OFF on BroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Lcom/android/server/AkgService$ScreenReceiver;->this$0:Lcom/android/server/AkgService;

    # getter for: Lcom/android/server/AkgService;->mAccSensorEnabled:Z
    invoke-static {v0}, Lcom/android/server/AkgService;->access$1100(Lcom/android/server/AkgService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/server/AkgService$ScreenReceiver;->this$0:Lcom/android/server/AkgService;

    # invokes: Lcom/android/server/AkgService;->sendSensorControl(Z)V
    invoke-static {v0, v2}, Lcom/android/server/AkgService;->access$1200(Lcom/android/server/AkgService;Z)V

    .line 584
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/server/AkgService$ScreenReceiver;->this$0:Lcom/android/server/AkgService;

    # setter for: Lcom/android/server/AkgService;->screenOff:Z
    invoke-static {v0, v2}, Lcom/android/server/AkgService;->access$1002(Lcom/android/server/AkgService;Z)Z

    .line 577
    iget-object v0, p0, Lcom/android/server/AkgService$ScreenReceiver;->this$0:Lcom/android/server/AkgService;

    # setter for: Lcom/android/server/AkgService;->mSlpProcess:Z
    invoke-static {v0, v2}, Lcom/android/server/AkgService;->access$402(Lcom/android/server/AkgService;Z)Z

    .line 578
    const-string v0, "AkgService"

    const-string v1, "SCREEN TURNED ON on BroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/android/server/AkgService$ScreenReceiver;->this$0:Lcom/android/server/AkgService;

    # getter for: Lcom/android/server/AkgService;->mAccSensorEnabled:Z
    invoke-static {v0}, Lcom/android/server/AkgService;->access$1100(Lcom/android/server/AkgService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/android/server/AkgService$ScreenReceiver;->this$0:Lcom/android/server/AkgService;

    # invokes: Lcom/android/server/AkgService;->sendSensorControl(Z)V
    invoke-static {v0, v3}, Lcom/android/server/AkgService;->access$1200(Lcom/android/server/AkgService;Z)V

    goto :goto_0
.end method
