.class Lcom/android/settings/deviceinfo/Status$1;
.super Landroid/content/BroadcastReceiver;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 192
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 194
    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    # getter for: Lcom/android/settings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;
    invoke-static {v5}, Lcom/android/settings/deviceinfo/Status;->access$200(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v5

    invoke-static {p2}, Lcom/android/settings/Utils;->getBatteryPercentage(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    # getter for: Lcom/android/settings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;
    invoke-static {v5}, Lcom/android/settings/deviceinfo/Status;->access$300(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, p2}, Lcom/android/settings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    const-string v5, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 197
    const/4 v1, 0x0

    .line 198
    .local v1, "operatorName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 199
    .local v3, "plmn":Ljava/lang/String;
    const/4 v4, 0x0

    .line 200
    .local v4, "spn":Ljava/lang/String;
    const-string v5, "showPlmn"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 201
    const-string v5, "plmn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    if-eqz v3, :cond_2

    .line 203
    move-object v1, v3

    .line 206
    :cond_2
    const-string v5, "showSpn"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 207
    const-string v5, "spn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 208
    if-eqz v4, :cond_3

    .line 209
    move-object v1, v4

    .line 212
    :cond_3
    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    const-string v6, "operator_name"

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 213
    .local v2, "p":Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 214
    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status$1;->this$0:Lcom/android/settings/deviceinfo/Status;

    # getter for: Lcom/android/settings/deviceinfo/Status;->mExt:Lcom/mediatek/settings/ext/IStatusExt;
    invoke-static {v5}, Lcom/android/settings/deviceinfo/Status;->access$400(Lcom/android/settings/deviceinfo/Status;)Lcom/mediatek/settings/ext/IStatusExt;

    move-result-object v5

    invoke-interface {v5, v2, v1}, Lcom/mediatek/settings/ext/IStatusExt;->updateOpNameFromRec(Landroid/preference/Preference;Ljava/lang/String;)V

    goto :goto_0
.end method
