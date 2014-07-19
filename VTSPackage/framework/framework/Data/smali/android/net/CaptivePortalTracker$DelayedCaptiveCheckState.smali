.class Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;
.super Lcom/android/internal/util/State;
.source "CaptivePortalTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/CaptivePortalTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayedCaptiveCheckState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/CaptivePortalTracker;


# direct methods
.method private constructor <init>(Landroid/net/CaptivePortalTracker;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/CaptivePortalTracker;Landroid/net/CaptivePortalTracker$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/net/CaptivePortalTracker;
    .param p2, "x1"    # Landroid/net/CaptivePortalTracker$1;

    .prologue
    .line 347
    invoke-direct {p0, p1}, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;-><init>(Landroid/net/CaptivePortalTracker;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 350
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v2, 0x2

    iget-object v3, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # ++operator for: Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I
    invoke-static {v3}, Landroid/net/CaptivePortalTracker;->access$2304(Landroid/net/CaptivePortalTracker;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/CaptivePortalTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 351
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mDeviceProvisioned:Z
    invoke-static {v1}, Landroid/net/CaptivePortalTracker;->access$500(Landroid/net/CaptivePortalTracker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/CaptivePortalTracker;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 356
    :goto_0
    return-void

    .line 354
    :cond_0
    iget-object v1, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-virtual {v1, v0}, Landroid/net/CaptivePortalTracker;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 360
    iget-object v8, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/CaptivePortalTracker;->access$2400(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 361
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    move v6, v7

    .line 452
    :cond_0
    :goto_0
    return v6

    .line 363
    :pswitch_0
    iget-object v8, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # invokes: Landroid/net/CaptivePortalTracker;->setNotificationOff()V
    invoke-static {v8}, Landroid/net/CaptivePortalTracker;->access$1000(Landroid/net/CaptivePortalTracker;)V

    .line 365
    iget v8, p1, Landroid/os/Message;->arg1:I

    iget-object v9, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mDelayedCheckToken:I
    invoke-static {v9}, Landroid/net/CaptivePortalTracker;->access$2300(Landroid/net/CaptivePortalTracker;)I

    move-result v9

    if-ne v8, v9, :cond_0

    .line 366
    iget-object v8, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v9, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mServer:Ljava/lang/String;
    invoke-static {v9}, Landroid/net/CaptivePortalTracker;->access$2500(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;

    move-result-object v9

    # invokes: Landroid/net/CaptivePortalTracker;->lookupHost(Ljava/lang/String;)Ljava/net/InetAddress;
    invoke-static {v8, v9}, Landroid/net/CaptivePortalTracker;->access$2600(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 369
    .local v4, "server":Ljava/net/InetAddress;
    if-eqz v4, :cond_3

    .line 371
    iget-object v8, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # invokes: Landroid/net/CaptivePortalTracker;->isCaptivePortal(Ljava/net/InetAddress;)Z
    invoke-static {v8, v4}, Landroid/net/CaptivePortalTracker;->access$2700(Landroid/net/CaptivePortalTracker;Ljava/net/InetAddress;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 375
    iget-object v8, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # invokes: Landroid/net/CaptivePortalTracker;->autoAuthorize()Z
    invoke-static {v8}, Landroid/net/CaptivePortalTracker;->access$2800(Landroid/net/CaptivePortalTracker;)Z

    .line 377
    iget-object v8, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # invokes: Landroid/net/CaptivePortalTracker;->isCaptivePortal(Ljava/net/InetAddress;)Z
    invoke-static {v8, v4}, Landroid/net/CaptivePortalTracker;->access$2700(Landroid/net/CaptivePortalTracker;Ljava/net/InetAddress;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 381
    iget-object v8, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # invokes: Landroid/net/CaptivePortalTracker;->showCaptivePortalDialog()V
    invoke-static {v8}, Landroid/net/CaptivePortalTracker;->access$2900(Landroid/net/CaptivePortalTracker;)V

    .line 415
    :cond_1
    :goto_1
    if-eqz v4, :cond_5

    iget-object v8, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # invokes: Landroid/net/CaptivePortalTracker;->isCaptivePortal(Ljava/net/InetAddress;)Z
    invoke-static {v8, v4}, Landroid/net/CaptivePortalTracker;->access$2700(Landroid/net/CaptivePortalTracker;Ljava/net/InetAddress;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v1, v6

    .line 416
    .local v1, "captive":Z
    :goto_2
    if-eqz v1, :cond_6

    .line 417
    iget-object v7, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Captive network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v9}, Landroid/net/CaptivePortalTracker;->access$1100(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/CaptivePortalTracker;->access$3300(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 421
    :goto_3
    iget-object v7, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v8, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v8}, Landroid/net/CaptivePortalTracker;->access$1100(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;

    move-result-object v8

    # invokes: Landroid/net/CaptivePortalTracker;->notifyPortalCheckCompleted(Landroid/net/NetworkInfo;Z)V
    invoke-static {v7, v8, v1}, Landroid/net/CaptivePortalTracker;->access$3500(Landroid/net/CaptivePortalTracker;Landroid/net/NetworkInfo;Z)V

    .line 422
    iget-object v7, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mDeviceProvisioned:Z
    invoke-static {v7}, Landroid/net/CaptivePortalTracker;->access$500(Landroid/net/CaptivePortalTracker;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 423
    if-eqz v1, :cond_2

    .line 446
    :cond_2
    :goto_4
    iget-object v7, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v8, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mActiveNetworkState:Lcom/android/internal/util/State;
    invoke-static {v8}, Landroid/net/CaptivePortalTracker;->access$3800(Landroid/net/CaptivePortalTracker;)Lcom/android/internal/util/State;

    move-result-object v8

    # invokes: Landroid/net/CaptivePortalTracker;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Landroid/net/CaptivePortalTracker;->access$3900(Landroid/net/CaptivePortalTracker;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 395
    .end local v1    # "captive":Z
    :cond_3
    const/4 v0, 0x0

    .line 397
    .local v0, "bWiFiConnected":Z
    iget-object v8, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/net/CaptivePortalTracker;->access$400(Landroid/net/CaptivePortalTracker;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "connectivity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 399
    .local v2, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_4

    .line 401
    invoke-virtual {v2, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    .line 404
    :cond_4
    iget-object v8, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # invokes: Landroid/net/CaptivePortalTracker;->getTopVisiblePackageName()Ljava/lang/String;
    invoke-static {v8}, Landroid/net/CaptivePortalTracker;->access$3000(Landroid/net/CaptivePortalTracker;)Ljava/lang/String;

    move-result-object v5

    .line 406
    .local v5, "topPackageName":Ljava/lang/String;
    iget-object v8, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid WLAN, WiFiConnected: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", TopPackageName: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    # invokes: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Landroid/net/CaptivePortalTracker;->access$3100(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    .line 408
    if-eqz v0, :cond_1

    if-eqz v5, :cond_1

    const-string v8, "com.lenovo.anyshare"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 411
    iget-object v8, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # invokes: Landroid/net/CaptivePortalTracker;->showInvalidWLANDialog()V
    invoke-static {v8}, Landroid/net/CaptivePortalTracker;->access$3200(Landroid/net/CaptivePortalTracker;)V

    goto/16 :goto_1

    .end local v0    # "bWiFiConnected":Z
    .end local v2    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v5    # "topPackageName":Ljava/lang/String;
    :cond_5
    move v1, v7

    .line 415
    goto/16 :goto_2

    .line 419
    .restart local v1    # "captive":Z
    :cond_6
    iget-object v7, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Not captive network "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v9}, Landroid/net/CaptivePortalTracker;->access$1100(Landroid/net/CaptivePortalTracker;)Landroid/net/NetworkInfo;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Landroid/net/CaptivePortalTracker;->log(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/CaptivePortalTracker;->access$3400(Landroid/net/CaptivePortalTracker;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 439
    :cond_7
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.net.conn.CAPTIVE_PORTAL_TEST_COMPLETED"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "captivePortal"

    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 442
    const-string v7, "com.google.android.setupwizard"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    iget-object v7, p0, Landroid/net/CaptivePortalTracker$DelayedCaptiveCheckState;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/net/CaptivePortalTracker;->access$400(Landroid/net/CaptivePortalTracker;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 361
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
