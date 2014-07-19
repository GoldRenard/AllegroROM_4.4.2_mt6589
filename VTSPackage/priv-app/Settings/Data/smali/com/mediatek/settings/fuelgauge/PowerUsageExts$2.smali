.class Lcom/mediatek/settings/fuelgauge/PowerUsageExts$2;
.super Landroid/os/Handler;
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
    .line 251
    iput-object p1, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts$2;->this$0:Lcom/mediatek/settings/fuelgauge/PowerUsageExts;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 255
    const-string v0, "PowerUsageSummary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handle message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 264
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 265
    return-void

    .line 258
    :pswitch_0
    iget-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts$2;->this$0:Lcom/mediatek/settings/fuelgauge/PowerUsageExts;

    # getter for: Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mPowerSavingPrf:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->access$200(Lcom/mediatek/settings/fuelgauge/PowerUsageExts;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 261
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/settings/fuelgauge/PowerUsageExts$2;->this$0:Lcom/mediatek/settings/fuelgauge/PowerUsageExts;

    # getter for: Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->mPowerSavingPrf:Landroid/preference/CheckBoxPreference;
    invoke-static {v0}, Lcom/mediatek/settings/fuelgauge/PowerUsageExts;->access$200(Lcom/mediatek/settings/fuelgauge/PowerUsageExts;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
