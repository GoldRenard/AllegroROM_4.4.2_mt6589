.class Lcom/mediatek/gemini/SimInfoPrefFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SimInfoPrefFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/SimInfoPrefFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimInfoPrefFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimInfoPrefFragment;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/mediatek/gemini/SimInfoPrefFragment$1;->this$0:Lcom/mediatek/gemini/SimInfoPrefFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "action":Ljava/lang/String;
    const-string v4, "SimInfoPrefFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    const-string v4, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 50
    const-string v4, "state"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 51
    .local v3, "state":I
    const-string v4, "slotId"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 52
    .local v2, "slotId":I
    const-string v4, "SimInfoPrefFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim card "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v4, p0, Lcom/mediatek/gemini/SimInfoPrefFragment$1;->this$0:Lcom/mediatek/gemini/SimInfoPrefFragment;

    invoke-virtual {v4, v2, v3}, Lcom/mediatek/gemini/SimInfoPrefFragment;->handleSimIndicChange(II)V

    .line 66
    .end local v2    # "slotId":I
    .end local v3    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    const-string v4, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 56
    iget-object v4, p0, Lcom/mediatek/gemini/SimInfoPrefFragment$1;->this$0:Lcom/mediatek/gemini/SimInfoPrefFragment;

    invoke-virtual {v4}, Lcom/mediatek/gemini/SimInfoPrefFragment;->isNoSimInserted()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 57
    iget-object v4, p0, Lcom/mediatek/gemini/SimInfoPrefFragment$1;->this$0:Lcom/mediatek/gemini/SimInfoPrefFragment;

    invoke-virtual {v4}, Lcom/mediatek/gemini/SimInfoPrefFragment;->dealNoSimCardIn()V

    goto :goto_0

    .line 60
    :cond_2
    iget-object v4, p0, Lcom/mediatek/gemini/SimInfoPrefFragment$1;->this$0:Lcom/mediatek/gemini/SimInfoPrefFragment;

    # invokes: Lcom/mediatek/gemini/SimInfoPrefFragment;->initPreferenceScreen()V
    invoke-static {v4}, Lcom/mediatek/gemini/SimInfoPrefFragment;->access$000(Lcom/mediatek/gemini/SimInfoPrefFragment;)V

    goto :goto_0

    .line 62
    :cond_3
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    const-string v4, "state"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 64
    .local v1, "enable":Z
    iget-object v4, p0, Lcom/mediatek/gemini/SimInfoPrefFragment$1;->this$0:Lcom/mediatek/gemini/SimInfoPrefFragment;

    invoke-virtual {v4, v1}, Lcom/mediatek/gemini/SimInfoPrefFragment;->handleAirplaneModeChange(Z)V

    goto :goto_0
.end method
