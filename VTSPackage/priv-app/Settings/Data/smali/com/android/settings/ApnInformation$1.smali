.class Lcom/android/settings/ApnInformation$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnInformation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnInformation;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnInformation;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/settings/ApnInformation$1;->this$0:Lcom/android/settings/ApnInformation;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 196
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    iget-object v1, p0, Lcom/android/settings/ApnInformation$1;->this$0:Lcom/android/settings/ApnInformation;

    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    # setter for: Lcom/android/settings/ApnInformation;->mAirplaneModeEnabled:Z
    invoke-static {v1, v2}, Lcom/android/settings/ApnInformation;->access$002(Lcom/android/settings/ApnInformation;Z)Z

    .line 200
    iget-object v1, p0, Lcom/android/settings/ApnInformation$1;->this$0:Lcom/android/settings/ApnInformation;

    # getter for: Lcom/android/settings/ApnInformation;->mAirplaneModeEnabled:Z
    invoke-static {v1}, Lcom/android/settings/ApnInformation;->access$000(Lcom/android/settings/ApnInformation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 201
    iget-object v1, p0, Lcom/android/settings/ApnInformation$1;->this$0:Lcom/android/settings/ApnInformation;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const-string v1, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/settings/ApnInformation$1;->this$0:Lcom/android/settings/ApnInformation;

    const-string v2, "mode"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/android/settings/ApnInformation;->mDualSimMode:I
    invoke-static {v1, v2}, Lcom/android/settings/ApnInformation;->access$102(Lcom/android/settings/ApnInformation;I)I

    .line 206
    # getter for: Lcom/android/settings/ApnInformation;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/ApnInformation;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiver, new dual sim mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ApnInformation$1;->this$0:Lcom/android/settings/ApnInformation;

    # getter for: Lcom/android/settings/ApnInformation;->mDualSimMode:I
    invoke-static {v3}, Lcom/android/settings/ApnInformation;->access$100(Lcom/android/settings/ApnInformation;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v1, p0, Lcom/android/settings/ApnInformation$1;->this$0:Lcom/android/settings/ApnInformation;

    # getter for: Lcom/android/settings/ApnInformation;->mDualSimMode:I
    invoke-static {v1}, Lcom/android/settings/ApnInformation;->access$100(Lcom/android/settings/ApnInformation;)I

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/settings/ApnInformation$1;->this$0:Lcom/android/settings/ApnInformation;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
