.class Lcom/mediatek/settings/fuelgauge/PowerUsageExts$1;
.super Landroid/content/BroadcastReceiver;
.source "PowerUsageExts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/fuelgauge/PowerUsageExts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/fuelgauge/PowerUsageExts;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/fuelgauge/PowerUsageExts;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts$1;->this$0:Lcom/mediatek/settings/fuelgauge/PowerUsageExts;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context1"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts$1;->this$0:Lcom/mediatek/settings/fuelgauge/PowerUsageExts;

    # invokes: Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->setBatteryPercenVisibility()V
    invoke-static {v0}, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->access$000(Lcom/mediatek/settings/fuelgauge/PowerUsageExts;)V

    .line 70
    return-void
.end method
