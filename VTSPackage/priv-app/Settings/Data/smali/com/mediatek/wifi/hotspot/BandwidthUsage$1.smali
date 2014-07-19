.class Lcom/mediatek/wifi/hotspot/BandwidthUsage$1;
.super Landroid/os/Handler;
.source "BandwidthUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wifi/hotspot/BandwidthUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;


# direct methods
.method constructor <init>(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$1;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 90
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/wifi/hotspot/BandwidthUsage$1;->this$0:Lcom/mediatek/wifi/hotspot/BandwidthUsage;

    # invokes: Lcom/mediatek/wifi/hotspot/BandwidthUsage;->updateBandwidthUsage()V
    invoke-static {v0}, Lcom/mediatek/wifi/hotspot/BandwidthUsage;->access$000(Lcom/mediatek/wifi/hotspot/BandwidthUsage;)V

    .line 93
    const/4 v0, 0x1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
