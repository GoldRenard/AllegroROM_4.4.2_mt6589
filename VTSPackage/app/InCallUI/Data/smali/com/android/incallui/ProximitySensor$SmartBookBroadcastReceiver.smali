.class Lcom/android/incallui/ProximitySensor$SmartBookBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProximitySensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ProximitySensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartBookBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/ProximitySensor;


# direct methods
.method private constructor <init>(Lcom/android/incallui/ProximitySensor;)V
    .locals 0

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/incallui/ProximitySensor$SmartBookBroadcastReceiver;->this$0:Lcom/android/incallui/ProximitySensor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 383
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "action":Ljava/lang/String;
    return-void
.end method
