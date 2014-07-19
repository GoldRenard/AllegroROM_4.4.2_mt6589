.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;
.super Ljava/lang/Object;
.source "IdeaUI_HookTabHost.java"


# instance fields
.field center_background:I

.field left_background:I

.field mHasAttchedToWindow:Z

.field mIdeaui_showRoundedCorner:Z

.field mIsIdeaUITheme:Z

.field mTabHost:Landroid/widget/TabHost;

.field mThemeTextColor:Landroid/content/res/ColorStateList;

.field right_background:I


# direct methods
.method public constructor <init>(Landroid/widget/TabHost;II)V
    .locals 9
    .param p1, "tabHost"    # Landroid/widget/TabHost;
    .param p2, "divider_id"    # I
    .param p3, "mTabLayoutId"    # I

    .prologue
    const v8, 0x308012f

    const v5, 0x308012e

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean v6, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->mIsIdeaUITheme:Z

    .line 20
    iput v6, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->left_background:I

    .line 21
    iput v6, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->right_background:I

    .line 22
    iput v6, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->center_background:I

    .line 24
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->mThemeTextColor:Landroid/content/res/ColorStateList;

    .line 26
    iput-boolean v6, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->mHasAttchedToWindow:Z

    .line 27
    iput-boolean v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->mIdeaui_showRoundedCorner:Z

    .line 30
    iput-object p1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->mTabHost:Landroid/widget/TabHost;

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 33
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eq p2, v5, :cond_0

    if-ne p2, v8, :cond_3

    :cond_0
    const v4, 0x304001f

    if-ne p3, v4, :cond_3

    .line 37
    const/4 v2, 0x0

    .line 38
    .local v2, "is_dark":Z
    const/4 v3, 0x0

    .line 40
    .local v3, "is_light":Z
    if-ne p2, v5, :cond_4

    .line 41
    const/4 v2, 0x1

    .line 42
    iput-boolean v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->mIsIdeaUITheme:Z

    .line 48
    :cond_1
    :goto_0
    if-lez p2, :cond_3

    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    .line 50
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Landroid/content/res/Resources;->getThemeTabBackground(Landroid/content/Context;Z)[I

    move-result-object v1

    .line 51
    .local v1, "darray":[I
    if-eqz v1, :cond_3

    array-length v4, v1

    const/4 v5, 0x3

    if-lt v4, v5, :cond_3

    .line 52
    aget v4, v1, v6

    iput v4, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->left_background:I

    .line 53
    aget v4, v1, v7

    iput v4, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->right_background:I

    .line 54
    const/4 v4, 0x2

    aget v4, v1, v4

    iput v4, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->center_background:I

    .line 57
    if-eqz v2, :cond_5

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x3060022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->mThemeTextColor:Landroid/content/res/ColorStateList;

    .line 67
    .end local v1    # "darray":[I
    .end local v2    # "is_dark":Z
    .end local v3    # "is_light":Z
    :cond_3
    :goto_1
    return-void

    .line 43
    .restart local v2    # "is_dark":Z
    .restart local v3    # "is_light":Z
    :cond_4
    if-ne p2, v8, :cond_1

    .line 44
    const/4 v3, 0x1

    .line 45
    iput-boolean v7, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->mIsIdeaUITheme:Z

    goto :goto_0

    .line 60
    .restart local v1    # "darray":[I
    :cond_5
    if-eqz v3, :cond_3

    .line 61
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x3060023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->mThemeTextColor:Landroid/content/res/ColorStateList;

    goto :goto_1
.end method


# virtual methods
.method public addTab(Landroid/widget/TabWidget;)V
    .locals 1
    .param p1, "mTabWidget"    # Landroid/widget/TabWidget;

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->mHasAttchedToWindow:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->updateTabTheme(Landroid/widget/TabWidget;)V

    .line 120
    :cond_0
    return-void
.end method

.method public ideaUI_setShowRoundedCorner(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 128
    iput-boolean p1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->mIdeaui_showRoundedCorner:Z

    .line 129
    return-void
.end method

.method public isIdeaUITheme()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->mIsIdeaUITheme:Z

    return v0
.end method

.method public onAttachedToWindow(Landroid/widget/TabWidget;)V
    .locals 1
    .param p1, "mTabWidget"    # Landroid/widget/TabWidget;

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->mHasAttchedToWindow:Z

    .line 111
    invoke-virtual {p0, p1}, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->updateTabTheme(Landroid/widget/TabWidget;)V

    .line 112
    return-void
.end method

.method public updateTabTheme(Landroid/widget/TabWidget;)V
    .locals 7
    .param p1, "mTabWidget"    # Landroid/widget/TabWidget;

    .prologue
    const/4 v5, 0x0

    .line 76
    iget-boolean v3, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->mIsIdeaUITheme:Z

    if-eqz v3, :cond_1

    .line 78
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TabWidget;->ideaUI_isLenovoBackground()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 79
    invoke-virtual {p1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 80
    const v3, 0x30800fc

    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 84
    iget-object v3, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 86
    .local v2, "view":Landroid/view/View;
    iget-boolean v3, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->mHasAttchedToWindow:Z

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    instance-of v3, v2, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 90
    check-cast v1, Landroid/widget/FrameLayout;

    .line 91
    .local v1, "frame":Landroid/widget/FrameLayout;
    iget-object v3, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x30800fd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    .local v0, "foreground":Landroid/graphics/drawable/Drawable;
    iget-boolean v3, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->mIdeaui_showRoundedCorner:Z

    if-eqz v3, :cond_2

    .line 95
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 103
    .end local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    .end local v1    # "frame":Landroid/widget/FrameLayout;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->mTabHost:Landroid/widget/TabHost;

    iget v4, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->left_background:I

    iget v5, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->center_background:I

    iget v6, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookTabHost;->right_background:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/widget/TabHost;->ideaUI_updateTabTheme(III)V

    .line 105
    :cond_1
    return-void

    .line 97
    .restart local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "frame":Landroid/widget/FrameLayout;
    .restart local v2    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
