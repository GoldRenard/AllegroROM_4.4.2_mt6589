.class final Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify$1;
.super Landroid/content/BroadcastReceiver;
.source "PlusUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->setOnWifiListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 160
    const/4 v0, 0x3

    const-string v1, "wifi_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 161
    # invokes: Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->getAndSaveMac()Z
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$DeviceIdentify;->access$000()Z

    .line 162
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 164
    :cond_0
    return-void
.end method
