.class Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SimStatusGemini.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/deviceinfo/SimStatusGemini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AirplaneModeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;


# direct methods
.method private constructor <init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/settings/deviceinfo/SimStatusGemini;
    .param p2, "x1"    # Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;

    .prologue
    .line 470
    invoke-direct {p0, p1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;-><init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x12e

    .line 473
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 474
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 475
    const-string v3, "state"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 476
    .local v1, "airplaneMode":Z
    if-eqz v1, :cond_0

    .line 477
    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    # getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$100(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    # getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I
    invoke-static {v4}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$700(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    .line 492
    .end local v1    # "airplaneMode":Z
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    const-string v3, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 481
    const-string v3, "mode"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 483
    .local v2, "dualMode":I
    if-nez v2, :cond_2

    .line 484
    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    # getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$100(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    # getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I
    invoke-static {v4}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$700(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    goto :goto_0

    .line 486
    :cond_2
    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    # getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I
    invoke-static {v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$700(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 488
    iget-object v3, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    # getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$100(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$AirplaneModeBroadcastReceiver;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    # getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mSlotId:I
    invoke-static {v4}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$700(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)I

    move-result v4

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    goto :goto_0
.end method
