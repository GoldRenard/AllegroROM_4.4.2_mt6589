.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookActionBarView;
.super Ljava/lang/Object;
.source "IdeaUI_HookActionBarView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initTitle(ILandroid/content/Context;Landroid/widget/TextView;)V
    .locals 5
    .param p0, "mTitleStyleRes"    # I
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mTitleView"    # Landroid/widget/TextView;

    .prologue
    .line 56
    sget v4, Lcom/lenovo/internal/R$style;->TextAppearance_Holo_Widget_ActionBar_Title:I

    if-ne p0, v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    sget v4, Lcom/lenovo/internal/R$attr;->ideaui_button_text_shadow_radius:I

    invoke-static {p1, v4}, Lcom/lenovo/ideaui/IdeaUI;->getFloatFromAttribute(Landroid/content/Context;I)F

    move-result v2

    .line 62
    .local v2, "radius":F
    sget v4, Lcom/lenovo/internal/R$attr;->ideaui_button_text_shadow_dx:I

    invoke-static {p1, v4}, Lcom/lenovo/ideaui/IdeaUI;->getFloatFromAttribute(Landroid/content/Context;I)F

    move-result v0

    .line 65
    .local v0, "dx":F
    sget v4, Lcom/lenovo/internal/R$attr;->ideaui_button_text_shadow_dy:I

    invoke-static {p1, v4}, Lcom/lenovo/ideaui/IdeaUI;->getFloatFromAttribute(Landroid/content/Context;I)F

    move-result v1

    .line 68
    .local v1, "dy":F
    sget v4, Lcom/lenovo/internal/R$attr;->ideaui_button_text_shadow_color:I

    invoke-static {p1, v4}, Lcom/lenovo/ideaui/IdeaUI;->getDataFromAttribute(Landroid/content/Context;I)I

    move-result v3

    .line 71
    .local v3, "shadow":I
    invoke-virtual {p2, v2, v0, v1, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 73
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "radius":F
    .end local v3    # "shadow":I
    :cond_0
    return-void
.end method

.method public static updateActionMenuItemViewBackground(Landroid/content/Context;Lcom/android/internal/view/menu/ActionMenuView;Z)V
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mMenuView"    # Lcom/android/internal/view/menu/ActionMenuView;
    .param p2, "mSplitActionBar"    # Z

    .prologue
    .line 22
    sget v6, Lcom/android/internal/R$attr;->actionBarItemBackground:I

    invoke-static {p0, v6}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    .line 25
    .local v0, "bg_id_normal":I
    sget v6, Lcom/lenovo/internal/R$attr;->ideaui_split_icontext_actionBarItemBackground:I

    invoke-static {p0, v6}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v1

    .line 28
    .local v1, "bg_id_split":I
    sget v6, Lcom/lenovo/internal/R$attr;->ideaui_split_actionBarItemBackground:I

    invoke-static {p0, v6}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v2

    .line 31
    .local v2, "bg_id_split_icontext":I
    if-eqz p1, :cond_3

    .line 32
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 33
    invoke-virtual {p1, v3}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 35
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v6, :cond_0

    move-object v4, v5

    .line 36
    check-cast v4, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 40
    .local v4, "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v4, p2}, Lcom/android/internal/view/menu/ActionMenuItemView;->ideaUI_setIsInSplit(Z)V

    .line 43
    if-nez p2, :cond_1

    .line 44
    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 32
    .end local v4    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 45
    .restart local v4    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/view/menu/ActionMenuItemView;->ideaUI_hasIconAndText()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 46
    invoke-virtual {v5, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 53
    .end local v3    # "i":I
    .end local v4    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method
