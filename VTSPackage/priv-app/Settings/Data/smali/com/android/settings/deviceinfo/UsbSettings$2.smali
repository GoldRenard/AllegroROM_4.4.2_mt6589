.class Lcom/android/settings/deviceinfo/UsbSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 228
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # invokes: Lcom/android/settings/deviceinfo/UsbSettings;->getCurrentFunction()Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$600(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "currentFunction":Ljava/lang/String;
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 232
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const-string v5, "accessory"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z
    invoke-static {v2, v5}, Lcom/android/settings/deviceinfo/UsbSettings;->access$702(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 233
    const-string v2, "UsbSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UsbAccessoryMode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z
    invoke-static {v6}, Lcom/android/settings/deviceinfo/UsbSettings;->access$700(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const-string v2, "USB_HW_DISCONNECTED"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z
    invoke-static {v5, v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$802(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 238
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const-string v5, "USB_IS_PC_KNOW_ME"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mIsPcKnowMe:Z
    invoke-static {v2, v5}, Lcom/android/settings/deviceinfo/UsbSettings;->access$902(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 240
    const-string v2, "UsbSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[ACTION_USB_STATE], mIsHwUsbConnected :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z
    invoke-static {v6}, Lcom/android/settings/deviceinfo/UsbSettings;->access$800(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mIsPcKnowMe :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mIsPcKnowMe:Z
    invoke-static {v6}, Lcom/android/settings/deviceinfo/UsbSettings;->access$900(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z
    invoke-static {v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$800(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "charging"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 245
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mSettingUMS:Z
    invoke-static {v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$000(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mSettingUMS:Z
    invoke-static {v2, v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$002(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 249
    :cond_0
    const-string v2, "UsbSettings"

    const-string v3, "It was disconnected from the plug, so finish!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 299
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v4

    .line 235
    goto :goto_0

    .line 253
    :cond_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUIHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1100(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1000(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z
    invoke-static {v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$800(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 260
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1200(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mIsPcKnowMe:Z
    invoke-static {v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$900(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1200(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "charging"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 262
    :cond_4
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z
    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1302(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 265
    :cond_5
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z
    invoke-static {v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1300(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 266
    const-string v2, "UsbSettings"

    const-string v3, "[Update Toggle - Other Functions]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # invokes: Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1400(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V

    .line 276
    :cond_6
    :goto_2
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 277
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const-string v3, "plugged"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mPlugType:I
    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1502(Lcom/android/settings/deviceinfo/UsbSettings;I)I

    .line 278
    const-string v2, "UsbSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ACTION_BATTERY_CHANGED], mPlugType :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mPlugType:I
    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1500(Lcom/android/settings/deviceinfo/UsbSettings;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mPlugType:I
    invoke-static {v2}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1500(Lcom/android/settings/deviceinfo/UsbSettings;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 286
    const-string v2, "charging"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 287
    const-string v2, "UsbSettings"

    const-string v3, "[Update Toggle - USB Charging]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # invokes: Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/settings/deviceinfo/UsbSettings;->access$1400(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 270
    :cond_7
    const-string v2, "charging"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 271
    const-string v2, "UsbSettings"

    const-string v3, "[Finish Activity]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings$2;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_2

    .line 292
    :cond_8
    const-string v2, "UsbSettings"

    const-string v3, "[Finish Activity - USB Charging Unplugged]"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
