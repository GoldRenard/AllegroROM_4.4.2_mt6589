.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookToast;
.super Ljava/lang/Object;
.source "IdeaUI_HookToast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeText(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->isCts()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/lenovo/ideaui/IdeaUI;->isPlatfromSupportIdeaUI()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    sget v1, Lcom/lenovo/internal/R$drawable;->toast_frame_holo:I

    .line 17
    .local v1, "toast_id":I
    if-lez v1, :cond_0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 19
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v1    # "toast_id":I
    :cond_0
    return-void
.end method
