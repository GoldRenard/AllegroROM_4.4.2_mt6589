.class Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;
.super Ljava/lang/Object;
.source "SimStatusGemini.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/deviceinfo/SimStatusGemini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 120
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    # getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$100(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/CellConnService/CellConnMgr;->getResult()I

    move-result v0

    .line 121
    .local v0, "nRet":I
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    # getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$100(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    # getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mCellMgr:Lcom/mediatek/CellConnService/CellConnMgr;
    invoke-static {v1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$100(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)Lcom/mediatek/CellConnService/CellConnMgr;

    const/4 v1, 0x4

    if-eq v1, v0, :cond_1

    .line 123
    const-string v1, "Gemini_SimStatus"

    const-string v2, "mCell Mgr Result is not OK"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    # setter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsShouldBeFinished:Z
    invoke-static {v1, v3}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$202(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Z)Z

    .line 125
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    # getter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mHasSlotId:Z
    invoke-static {v1}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$300(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 133
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    invoke-static {v1, v3}, Lcom/mediatek/gemini/GeminiUtils;->backToSimcardUnlock(Landroid/app/Activity;Z)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/deviceinfo/SimStatusGemini$1;->this$0:Lcom/mediatek/settings/deviceinfo/SimStatusGemini;

    const/4 v2, 0x0

    # setter for: Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->mIsUnlockFollow:Z
    invoke-static {v1, v2}, Lcom/mediatek/settings/deviceinfo/SimStatusGemini;->access$402(Lcom/mediatek/settings/deviceinfo/SimStatusGemini;Z)Z

    goto :goto_0
.end method
