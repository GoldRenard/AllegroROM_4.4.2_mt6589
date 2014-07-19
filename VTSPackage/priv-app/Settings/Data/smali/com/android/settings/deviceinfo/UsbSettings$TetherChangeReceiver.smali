.class Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/UsbSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TetherChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/UsbSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0

    .prologue
    .line 1257
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/deviceinfo/UsbSettings;Lcom/android/settings/deviceinfo/UsbSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p2, "x1"    # Lcom/android/settings/deviceinfo/UsbSettings$1;

    .prologue
    .line 1257
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 1260
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1262
    .local v0, "action":Ljava/lang/String;
    const-string v4, "UsbSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TetherChangeReceiver - onReceive, action is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1266
    const-string v4, "availableArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1268
    .local v2, "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "activeArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1270
    .local v1, "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v4, "erroredArray"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1274
    .local v3, "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const-string v5, "UnTetherDone"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbUnTetherDone:Z
    invoke-static {v4, v5}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2102(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 1275
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const-string v5, "TetherDone"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherDone:Z
    invoke-static {v4, v5}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2202(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 1276
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const-string v5, "TetherFail"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherFail:Z
    invoke-static {v4, v5}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2302(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 1279
    const-string v4, "UsbSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUsbUnTetherDone? :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbUnTetherDone:Z
    invoke-static {v6}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2100(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , mUsbTetherDonel? :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherDone:Z
    invoke-static {v6}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2200(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , tether fail? :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherFail:Z
    invoke-static {v6}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2300(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    # invokes: Lcom/android/settings/deviceinfo/UsbSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v7, v4, v5, v6}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2400(Lcom/android/settings/deviceinfo/UsbSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1300
    .end local v1    # "active":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "available":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "errored":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 1284
    :cond_1
    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1285
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const/4 v5, 0x1

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mMassStorageActive:Z
    invoke-static {v4, v5}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2502(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 1286
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # invokes: Lcom/android/settings/deviceinfo/UsbSettings;->updateState()V
    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2600(Lcom/android/settings/deviceinfo/UsbSettings;)V

    goto :goto_0

    .line 1287
    :cond_2
    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1288
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mMassStorageActive:Z
    invoke-static {v4, v7}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2502(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 1289
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # invokes: Lcom/android/settings/deviceinfo/UsbSettings;->updateState()V
    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2600(Lcom/android/settings/deviceinfo/UsbSettings;)V

    goto :goto_0

    .line 1290
    :cond_3
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1291
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const-string v5, "connected"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbConnected:Z
    invoke-static {v4, v5}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2702(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 1293
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const-string v5, "configured"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbConfigured:Z
    invoke-static {v4, v5}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2802(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 1294
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    const-string v5, "USB_HW_DISCONNECTED"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    # setter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbHwDisconnected:Z
    invoke-static {v4, v5}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2902(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z

    .line 1295
    const-string v4, "UsbSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TetherChangeReceiver - ACTION_USB_STATE mUsbConnected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbConnected:Z
    invoke-static {v6}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2700(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mUsbConfigured:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbConfigured:Z
    invoke-static {v6}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2800(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mUsbHwDisconnected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # getter for: Lcom/android/settings/deviceinfo/UsbSettings;->mUsbHwDisconnected:Z
    invoke-static {v6}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2900(Lcom/android/settings/deviceinfo/UsbSettings;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;->this$0:Lcom/android/settings/deviceinfo/UsbSettings;

    # invokes: Lcom/android/settings/deviceinfo/UsbSettings;->updateState()V
    invoke-static {v4}, Lcom/android/settings/deviceinfo/UsbSettings;->access$2600(Lcom/android/settings/deviceinfo/UsbSettings;)V

    goto/16 :goto_0
.end method
