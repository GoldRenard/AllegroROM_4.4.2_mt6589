.class Lcom/mediatek/wifi/WifiGprsSelector$5;
.super Landroid/os/Handler;
.source "WifiGprsSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/wifi/WifiGprsSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wifi/WifiGprsSelector;


# direct methods
.method constructor <init>(Lcom/mediatek/wifi/WifiGprsSelector;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/mediatek/wifi/WifiGprsSelector$5;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v3, 0x3e9

    const/4 v2, 0x0

    .line 233
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 253
    :goto_0
    return-void

    .line 235
    :pswitch_0
    const-string v0, "WifiGprsSelector"

    const-string v1, "attach time out......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$5;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$5;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V
    invoke-static {v0, v3}, Lcom/mediatek/wifi/WifiGprsSelector;->access$1300(Lcom/mediatek/wifi/WifiGprsSelector;I)V

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$5;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # setter for: Lcom/mediatek/wifi/WifiGprsSelector;->mIsGprsSwitching:Z
    invoke-static {v0, v2}, Lcom/mediatek/wifi/WifiGprsSelector;->access$102(Lcom/mediatek/wifi/WifiGprsSelector;Z)Z

    .line 240
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$5;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # invokes: Lcom/mediatek/wifi/WifiGprsSelector;->updateDataEnabler()V
    invoke-static {v0}, Lcom/mediatek/wifi/WifiGprsSelector;->access$300(Lcom/mediatek/wifi/WifiGprsSelector;)V

    goto :goto_0

    .line 243
    :pswitch_1
    const-string v0, "WifiGprsSelector"

    const-string v1, "detach time out......"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$5;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$5;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V
    invoke-static {v0, v3}, Lcom/mediatek/wifi/WifiGprsSelector;->access$1400(Lcom/mediatek/wifi/WifiGprsSelector;I)V

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$5;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # setter for: Lcom/mediatek/wifi/WifiGprsSelector;->mIsGprsSwitching:Z
    invoke-static {v0, v2}, Lcom/mediatek/wifi/WifiGprsSelector;->access$102(Lcom/mediatek/wifi/WifiGprsSelector;Z)Z

    .line 248
    iget-object v0, p0, Lcom/mediatek/wifi/WifiGprsSelector$5;->this$0:Lcom/mediatek/wifi/WifiGprsSelector;

    # invokes: Lcom/mediatek/wifi/WifiGprsSelector;->updateDataEnabler()V
    invoke-static {v0}, Lcom/mediatek/wifi/WifiGprsSelector;->access$300(Lcom/mediatek/wifi/WifiGprsSelector;)V

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
