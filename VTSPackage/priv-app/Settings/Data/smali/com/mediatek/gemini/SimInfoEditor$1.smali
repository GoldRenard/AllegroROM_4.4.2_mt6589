.class Lcom/mediatek/gemini/SimInfoEditor$1;
.super Landroid/content/BroadcastReceiver;
.source "SimInfoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/SimInfoEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimInfoEditor;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimInfoEditor;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/gemini/SimInfoEditor$1;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, -0x1

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 85
    const-string v5, "state"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 86
    .local v1, "enable":Z
    const-string v5, "SimInfoEditor"

    const-string v6, "handle air plane change"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v5, p0, Lcom/mediatek/gemini/SimInfoEditor$1;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    # invokes: Lcom/mediatek/gemini/SimInfoEditor;->handleAirPlane(Z)V
    invoke-static {v5, v1}, Lcom/mediatek/gemini/SimInfoEditor;->access$000(Lcom/mediatek/gemini/SimInfoEditor;Z)V

    .line 110
    .end local v1    # "enable":Z
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    const-string v5, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 90
    const-string v5, "SimInfoEditor"

    const-string v6, "receive ACTION_SIM_INFO_UPDATE"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {p1}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 92
    .local v2, "simList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_2

    .line 94
    const-string v5, "SimInfoEditor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hot swap_simList.size()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v5, p0, Lcom/mediatek/gemini/SimInfoEditor$1;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/gemini/GeminiUtils;->goBackSettings(Landroid/app/Activity;)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v5, p0, Lcom/mediatek/gemini/SimInfoEditor$1;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    # getter for: Lcom/mediatek/gemini/SimInfoEditor;->mSimID:J
    invoke-static {v5}, Lcom/mediatek/gemini/SimInfoEditor;->access$100(Lcom/mediatek/gemini/SimInfoEditor;)J

    move-result-wide v5

    invoke-static {v5, v6, v2}, Lcom/mediatek/gemini/GeminiUtils;->getSimSlotIdBySimInfoId(JLjava/util/List;)I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 98
    iget-object v5, p0, Lcom/mediatek/gemini/SimInfoEditor$1;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    invoke-virtual {v5}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 100
    .end local v2    # "simList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    :cond_3
    const-string v5, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    const-string v5, "slotId"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 103
    .local v4, "slotId":I
    const-string v5, "state"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 104
    .local v3, "simStatus":I
    const-string v5, "SimInfoEditor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sim card "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    if-eq v4, v8, :cond_0

    if-lez v3, :cond_0

    .line 106
    const-string v5, "SimInfoEditor"

    const-string v6, "handle radio off status"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v5, p0, Lcom/mediatek/gemini/SimInfoEditor$1;->this$0:Lcom/mediatek/gemini/SimInfoEditor;

    # invokes: Lcom/mediatek/gemini/SimInfoEditor;->handleRadioOff(II)V
    invoke-static {v5, v4, v3}, Lcom/mediatek/gemini/SimInfoEditor;->access$200(Lcom/mediatek/gemini/SimInfoEditor;II)V

    goto/16 :goto_0
.end method
