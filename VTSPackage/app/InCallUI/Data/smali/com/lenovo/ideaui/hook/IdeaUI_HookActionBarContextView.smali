.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookActionBarContextView;
.super Ljava/lang/Object;
.source "IdeaUI_HookActionBarContextView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateActionMenuItemViewBackground(Landroid/content/Context;Lcom/android/internal/view/menu/ActionMenuView;Z)V
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mMenuView"    # Lcom/android/internal/view/menu/ActionMenuView;
    .param p2, "mSplitActionBar"    # Z

    .prologue
    .line 21
    sget v6, Lcom/lenovo/internal/R$attr;->ideaui_actionMode_actionBarItemBackground:I

    invoke-static {p0, v6}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    .line 24
    .local v0, "bg_id_normal":I
    sget v6, Lcom/lenovo/internal/R$attr;->ideaui_actionMode_split_actionBarItemBackground:I

    invoke-static {p0, v6}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v1

    .line 27
    .local v1, "bg_id_split":I
    sget v6, Lcom/lenovo/internal/R$attr;->ideaui_actionMode_split_icontext_actionBarItemBackground:I

    invoke-static {p0, v6}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v2

    .line 30
    .local v2, "bg_id_split_icontext":I
    if-eqz p1, :cond_3

    .line 31
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/view/menu/ActionMenuView;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 32
    invoke-virtual {p1, v3}, Lcom/android/internal/view/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 34
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v6, :cond_0

    move-object v4, v5

    .line 35
    check-cast v4, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 38
    .local v4, "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v4, p2}, Lcom/android/internal/view/menu/ActionMenuItemView;->ideaUI_setIsInSplit(Z)V

    .line 41
    if-nez p2, :cond_1

    .line 42
    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 31
    .end local v4    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 43
    .restart local v4    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/view/menu/ActionMenuItemView;->ideaUI_hasIconAndText()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 44
    invoke-virtual {v5, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 46
    :cond_2
    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 51
    .end local v3    # "i":I
    .end local v4    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method
