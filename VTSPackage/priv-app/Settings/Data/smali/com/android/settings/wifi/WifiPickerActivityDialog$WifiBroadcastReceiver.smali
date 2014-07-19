.class Lcom/android/settings/wifi/WifiPickerActivityDialog$WifiBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiPickerActivityDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiPickerActivityDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiPickerActivityDialog;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiPickerActivityDialog;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/android/settings/wifi/WifiPickerActivityDialog$WifiBroadcastReceiver;->this$0:Lcom/android/settings/wifi/WifiPickerActivityDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiPickerActivityDialog;Lcom/android/settings/wifi/WifiPickerActivityDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/wifi/WifiPickerActivityDialog;
    .param p2, "x1"    # Lcom/android/settings/wifi/WifiPickerActivityDialog$1;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiPickerActivityDialog$WifiBroadcastReceiver;-><init>(Lcom/android/settings/wifi/WifiPickerActivityDialog;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "content"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    const-string v2, "wifi_state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 30
    .local v1, "wifiState":I
    packed-switch v1, :pswitch_data_0

    .line 38
    .end local v1    # "wifiState":I
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 34
    .restart local v1    # "wifiState":I
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiPickerActivityDialog$WifiBroadcastReceiver;->this$0:Lcom/android/settings/wifi/WifiPickerActivityDialog;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
