.class Lcom/android/settings/tabsettings/AllSettings$3;
.super Landroid/content/BroadcastReceiver;
.source "AllSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tabsettings/AllSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/tabsettings/AllSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tabsettings/AllSettings;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/settings/tabsettings/AllSettings$3;->this$0:Lcom/android/settings/tabsettings/AllSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 320
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "action":Ljava/lang/String;
    const-string v1, "Settings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 323
    iget-object v1, p0, Lcom/android/settings/tabsettings/AllSettings$3;->this$0:Lcom/android/settings/tabsettings/AllSettings;

    # invokes: Lcom/android/settings/tabsettings/AllSettings;->updateSimState()V
    invoke-static {v1}, Lcom/android/settings/tabsettings/AllSettings;->access$200(Lcom/android/settings/tabsettings/AllSettings;)V

    .line 325
    :cond_0
    return-void
.end method
