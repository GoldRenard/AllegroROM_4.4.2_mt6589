.class Lcom/mediatek/gemini/GeminiSIMTetherInfo$2;
.super Landroid/content/BroadcastReceiver;
.source "GeminiSIMTetherInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/GeminiSIMTetherInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$2;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    const-string v2, "GeminiSIMTetherInfo"

    const-string v3, "receive ACTION_SIM_INFO_UPDATE"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$2;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 94
    .local v1, "simList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 96
    const-string v2, "GeminiSIMTetherInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hot swap_simList.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$2;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    invoke-static {v2}, Lcom/mediatek/gemini/GeminiUtils;->goBackSettings(Landroid/app/Activity;)V

    .line 104
    .end local v1    # "simList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    :cond_0
    :goto_0
    return-void

    .line 98
    .restart local v1    # "simList":Ljava/util/List;, "Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    :cond_1
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$2;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mCurrentSimId:J
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$400(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$2;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # getter for: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->mCurrentSimId:J
    invoke-static {v2}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$400(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)J

    move-result-wide v2

    invoke-static {v2, v3, v1}, Lcom/mediatek/gemini/GeminiUtils;->getSimSlotIdBySimInfoId(JLjava/util/List;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 101
    iget-object v2, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$2;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
