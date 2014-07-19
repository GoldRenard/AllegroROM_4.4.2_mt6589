.class Lcom/mediatek/settings/deviceinfo/StatusGemini$2;
.super Landroid/content/BroadcastReceiver;
.source "StatusGemini.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/deviceinfo/StatusGemini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/deviceinfo/StatusGemini;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/deviceinfo/StatusGemini;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini$2;->this$0:Lcom/mediatek/settings/deviceinfo/StatusGemini;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 392
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini$2;->this$0:Lcom/mediatek/settings/deviceinfo/StatusGemini;

    # invokes: Lcom/mediatek/settings/deviceinfo/StatusGemini;->setWifiStatus()V
    invoke-static {v0}, Lcom/mediatek/settings/deviceinfo/StatusGemini;->access$200(Lcom/mediatek/settings/deviceinfo/StatusGemini;)V

    .line 397
    :cond_0
    :goto_0
    return-void

    .line 394
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/StatusGemini$2;->this$0:Lcom/mediatek/settings/deviceinfo/StatusGemini;

    # invokes: Lcom/mediatek/settings/deviceinfo/StatusGemini;->setBtStatus()V
    invoke-static {v0}, Lcom/mediatek/settings/deviceinfo/StatusGemini;->access$300(Lcom/mediatek/settings/deviceinfo/StatusGemini;)V

    goto :goto_0
.end method
