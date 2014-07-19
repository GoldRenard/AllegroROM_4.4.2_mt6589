.class Lcom/android/settings/SettingsMTK$1;
.super Landroid/content/BroadcastReceiver;
.source "SettingsMTK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsMTK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsMTK;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsMTK;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/settings/SettingsMTK$1;->this$0:Lcom/android/settings/SettingsMTK;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 221
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    invoke-static {p2}, Lcom/android/settings/Utils;->isBatteryPresent(Landroid/content/Intent;)Z

    move-result v1

    .line 225
    .local v1, "batteryPresent":Z
    iget-object v2, p0, Lcom/android/settings/SettingsMTK$1;->this$0:Lcom/android/settings/SettingsMTK;

    # getter for: Lcom/android/settings/SettingsMTK;->mBatteryPresent:Z
    invoke-static {v2}, Lcom/android/settings/SettingsMTK;->access$000(Lcom/android/settings/SettingsMTK;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 226
    iget-object v2, p0, Lcom/android/settings/SettingsMTK$1;->this$0:Lcom/android/settings/SettingsMTK;

    # setter for: Lcom/android/settings/SettingsMTK;->mBatteryPresent:Z
    invoke-static {v2, v1}, Lcom/android/settings/SettingsMTK;->access$002(Lcom/android/settings/SettingsMTK;Z)Z

    .line 227
    iget-object v2, p0, Lcom/android/settings/SettingsMTK$1;->this$0:Lcom/android/settings/SettingsMTK;

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->invalidateHeaders()V

    .line 230
    .end local v1    # "batteryPresent":Z
    :cond_0
    return-void
.end method
