.class Landroid/net/CaptivePortalTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "CaptivePortalTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/CaptivePortalTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/CaptivePortalTracker;


# direct methods
.method constructor <init>(Landroid/net/CaptivePortalTracker;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Landroid/net/CaptivePortalTracker$1;->this$0:Landroid/net/CaptivePortalTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 217
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 221
    .local v0, "action":Ljava/lang/String;
    iget-object v2, p0, Landroid/net/CaptivePortalTracker$1;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mDeviceProvisioned:Z
    invoke-static {v2}, Landroid/net/CaptivePortalTracker;->access$500(Landroid/net/CaptivePortalTracker;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/net/CaptivePortalTracker$1;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mDeviceProvisioned:Z
    invoke-static {v2}, Landroid/net/CaptivePortalTracker;->access$500(Landroid/net/CaptivePortalTracker;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 224
    :cond_1
    const-string/jumbo v2, "networkInfo"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 226
    .local v1, "info":Landroid/net/NetworkInfo;
    iget-object v2, p0, Landroid/net/CaptivePortalTracker$1;->this$0:Landroid/net/CaptivePortalTracker;

    iget-object v3, p0, Landroid/net/CaptivePortalTracker$1;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/net/CaptivePortalTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/CaptivePortalTracker;->sendMessage(Landroid/os/Message;)V

    .line 239
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_2
    :goto_0
    return-void

    .line 230
    :cond_3
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 232
    iget-object v2, p0, Landroid/net/CaptivePortalTracker$1;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Landroid/net/CaptivePortalTracker;->access$600(Landroid/net/CaptivePortalTracker;)Landroid/app/AlertDialog;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 234
    iget-object v2, p0, Landroid/net/CaptivePortalTracker$1;->this$0:Landroid/net/CaptivePortalTracker;

    # getter for: Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Landroid/net/CaptivePortalTracker;->access$600(Landroid/net/CaptivePortalTracker;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 235
    iget-object v2, p0, Landroid/net/CaptivePortalTracker$1;->this$0:Landroid/net/CaptivePortalTracker;

    const/4 v3, 0x0

    # setter for: Landroid/net/CaptivePortalTracker;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Landroid/net/CaptivePortalTracker;->access$602(Landroid/net/CaptivePortalTracker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0
.end method
