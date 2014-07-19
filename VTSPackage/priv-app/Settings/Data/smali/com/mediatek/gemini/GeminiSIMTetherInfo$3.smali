.class Lcom/mediatek/gemini/GeminiSIMTetherInfo$3;
.super Ljava/lang/Object;
.source "GeminiSIMTetherInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gemini/GeminiSIMTetherInfo;->showActionBar(Z)V
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
    .line 296
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$3;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$3;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # invokes: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->restoreState()V
    invoke-static {v0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$500(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)V

    .line 300
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherInfo$3;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherInfo;

    # invokes: Lcom/mediatek/gemini/GeminiSIMTetherInfo;->restoreCheckState()V
    invoke-static {v0}, Lcom/mediatek/gemini/GeminiSIMTetherInfo;->access$600(Lcom/mediatek/gemini/GeminiSIMTetherInfo;)V

    .line 301
    return-void
.end method
