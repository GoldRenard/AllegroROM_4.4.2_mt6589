.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookPhoneWindow;
.super Ljava/lang/Object;
.source "IdeaUI_HookPhoneWindow.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static generateLayout(Landroid/view/Window;Landroid/content/Context;I)I
    .locals 2
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I

    .prologue
    .line 22
    move v0, p2

    .line 24
    .local v0, "new_layout":I
    invoke-virtual {p1}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 29
    const v1, 0x109008e

    if-ne p2, v1, :cond_1

    .line 30
    const v0, 0x304001a

    .line 38
    :cond_0
    :goto_0
    return v0

    .line 31
    :cond_1
    const v1, 0x109003f

    if-ne p2, v1, :cond_2

    .line 32
    const v0, 0x3040004

    goto :goto_0

    .line 33
    :cond_2
    const v1, 0x1090041

    if-ne p2, v1, :cond_0

    .line 34
    const v0, 0x3040005

    goto :goto_0
.end method

.method public static openPanel(Landroid/view/Window;Landroid/content/Context;Landroid/view/WindowManager$LayoutParams;)V
    .locals 1
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 17
    const v0, 0x3f19999a

    iput v0, p2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 19
    :cond_0
    return-void
.end method
