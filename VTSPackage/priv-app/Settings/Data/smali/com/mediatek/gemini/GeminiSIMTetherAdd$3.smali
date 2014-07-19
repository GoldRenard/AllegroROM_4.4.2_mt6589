.class Lcom/mediatek/gemini/GeminiSIMTetherAdd$3;
.super Landroid/os/Handler;
.source "GeminiSIMTetherAdd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/GeminiSIMTetherAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/GeminiSIMTetherAdd;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$3;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 192
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_0

    .line 193
    const-string v0, "GeminiSIMTetherAdd"

    const-string v1, "tether info save finished"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$3;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    .line 195
    const/4 v0, 0x0

    # setter for: Lcom/mediatek/gemini/GeminiSIMTetherAdd;->sIsSaving:Z
    invoke-static {v0}, Lcom/mediatek/gemini/GeminiSIMTetherAdd;->access$002(Z)Z

    .line 196
    const-string v0, "GeminiSIMTetherAdd"

    const-string v1, "saveTetherConfigs(), end"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$3;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 198
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$3;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 200
    :cond_0
    return-void
.end method
