.class Lcom/mediatek/gemini/SimManagement$1;
.super Landroid/database/ContentObserver;
.source "SimManagement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/gemini/SimManagement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/gemini/SimManagement;


# direct methods
.method constructor <init>(Lcom/mediatek/gemini/SimManagement;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/mediatek/gemini/SimManagement$1;->this$0:Lcom/mediatek/gemini/SimManagement;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement$1;->this$0:Lcom/mediatek/gemini/SimManagement;

    # invokes: Lcom/mediatek/gemini/SimManagement;->updateDataConnPrefe()V
    invoke-static {v0}, Lcom/mediatek/gemini/SimManagement;->access$000(Lcom/mediatek/gemini/SimManagement;)V

    .line 178
    return-void
.end method
