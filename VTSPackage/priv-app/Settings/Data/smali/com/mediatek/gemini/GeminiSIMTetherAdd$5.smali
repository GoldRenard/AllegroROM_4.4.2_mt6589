.class Lcom/mediatek/gemini/GeminiSIMTetherAdd$5;
.super Ljava/lang/Object;
.source "GeminiSIMTetherAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/gemini/GeminiSIMTetherAdd;->showActionBar()V
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
    .line 357
    iput-object p1, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$5;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/mediatek/gemini/GeminiSIMTetherAdd$5;->this$0:Lcom/mediatek/gemini/GeminiSIMTetherAdd;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 361
    return-void
.end method
