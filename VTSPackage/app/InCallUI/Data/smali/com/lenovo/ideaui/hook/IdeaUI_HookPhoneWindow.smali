.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookPhoneWindow;
.super Ljava/lang/Object;
.source "IdeaUI_HookPhoneWindow.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateLayout(Landroid/view/Window;Landroid/content/Context;I)I
    .locals 2
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I

    .prologue
    .line 18
    move v0, p2

    .line 20
    .local v0, "new_layout":I
    invoke-virtual {p1}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 21
    sget v1, Lcom/android/internal/R$layout;->screen_action_bar_overlay:I

    if-ne p2, v1, :cond_1

    .line 22
    sget v0, Lcom/lenovo/internal/R$layout;->screen_action_bar_overlay:I

    .line 32
    :cond_0
    :goto_0
    return v0

    .line 23
    :cond_1
    sget v1, Lcom/android/internal/R$layout;->screen_action_bar:I

    if-ne p2, v1, :cond_2

    .line 24
    sget v0, Lcom/lenovo/internal/R$layout;->screen_action_bar:I

    goto :goto_0

    .line 25
    :cond_2
    sget v1, Lcom/android/internal/R$layout;->dialog_title_holo:I

    if-ne p2, v1, :cond_3

    .line 26
    sget v0, Lcom/lenovo/internal/R$layout;->dialog_title_holo:I

    goto :goto_0

    .line 27
    :cond_3
    sget v1, Lcom/android/internal/R$layout;->dialog_title_icons_holo:I

    if-ne p2, v1, :cond_0

    .line 28
    sget v0, Lcom/lenovo/internal/R$layout;->dialog_title_icons_holo:I

    goto :goto_0
.end method

.method public static openPanel(Landroid/view/Window;Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 13
    const v0, 0x3f19999a

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 15
    :cond_0
    return-void
.end method
