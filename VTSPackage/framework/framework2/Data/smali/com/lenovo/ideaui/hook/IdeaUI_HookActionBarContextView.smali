.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookActionBarContextView;
.super Ljava/lang/Object;
.source "IdeaUI_HookActionBarContextView.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method

.method public static updateActionMenuItemViewBackground(Landroid/content/Context;Lcom/android/internal/view/menu/ActionMenuView;Z)V
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mMenuView"    # Lcom/android/internal/view/menu/ActionMenuView;
    .param p2, "mSplitActionBar"    # Z

    .prologue
    .line 24
    const v6, 0x3010002

    invoke-static {p0, v6}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    .line 27
    .local v0, "bg_id_normal":I
    const v6, 0x3010003

    invoke-static {p0, v6}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v1

    .line 30
    .local v1, "bg_id_split":I
    const v6, 0x3010004

    invoke-static {p0, v6}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v2

    .line 33
    .local v2, "bg_id_split_icontext":I
    if-eqz p1, :cond_3

    .line 34
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_3

    .line 35
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 37
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v6, :cond_0

    move-object v4, v5

    .line 38
    check-cast v4, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 41
    .local v4, "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v4, p2}, Lcom/android/internal/view/menu/ActionMenuItemView;->ideaUI_setIsInSplit(Z)V

    .line 44
    if-nez p2, :cond_1

    .line 45
    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 34
    .end local v4    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 46
    .restart local v4    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/view/menu/ActionMenuItemView;->ideaUI_hasIconAndText()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 47
    invoke-virtual {v5, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 49
    :cond_2
    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 54
    .end local v3    # "i":I
    .end local v4    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v5    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method
