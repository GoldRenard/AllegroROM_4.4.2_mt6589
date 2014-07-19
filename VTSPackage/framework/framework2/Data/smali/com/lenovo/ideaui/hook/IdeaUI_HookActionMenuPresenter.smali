.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookActionMenuPresenter;
.super Ljava/lang/Object;
.source "IdeaUI_HookActionMenuPresenter.java"


# instance fields
.field private mIdeaUI_bg_id_normal:I

.field private mIdeaUI_bg_id_split:I

.field private mIdeaUI_bg_id_split_icontext:I

.field private mIdeaUI_isActionMode:Z

.field private mIdeaUI_isSplitMode:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuPresenter;ZZ)V
    .locals 1
    .param p1, "actionMenuPresenter"    # Lcom/android/internal/view/menu/ActionMenuPresenter;
    .param p2, "isActionMode"    # Z
    .param p3, "isSplitMode"    # Z

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookActionMenuPresenter;->mIdeaUI_isActionMode:Z

    .line 12
    iput-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookActionMenuPresenter;->mIdeaUI_isSplitMode:Z

    .line 21
    iput-boolean p2, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookActionMenuPresenter;->mIdeaUI_isActionMode:Z

    .line 22
    iput-boolean p3, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookActionMenuPresenter;->mIdeaUI_isSplitMode:Z

    .line 23
    return-void
.end method

.method public static getMenuItemLayout(ZZ)I
    .locals 1
    .param p0, "isActionMode"    # Z
    .param p1, "isSplitMode"    # Z

    .prologue
    .line 26
    const v0, 0x109001b

    .line 28
    .local v0, "item_layout":I
    if-nez p0, :cond_1

    .line 29
    if-nez p1, :cond_0

    .line 30
    const v0, 0x3040007

    .line 42
    :goto_0
    return v0

    .line 32
    :cond_0
    const v0, 0x304000a

    goto :goto_0

    .line 35
    :cond_1
    if-nez p1, :cond_2

    .line 36
    const v0, 0x3040008

    goto :goto_0

    .line 38
    :cond_2
    const v0, 0x3040009

    goto :goto_0
.end method


# virtual methods
.method public getItemView(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "actionView"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    instance-of v1, p2, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 86
    check-cast v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 89
    .local v0, "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    iget-boolean v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookActionMenuPresenter;->mIdeaUI_isSplitMode:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->ideaUI_setIsInSplit(Z)V

    .line 92
    iget-boolean v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookActionMenuPresenter;->mIdeaUI_isSplitMode:Z

    if-nez v1, :cond_1

    .line 93
    iget v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookActionMenuPresenter;->mIdeaUI_bg_id_normal:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 101
    .end local v0    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_0
    :goto_0
    return-void

    .line 94
    .restart local v0    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->ideaUI_hasIconAndText()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 95
    iget v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookActionMenuPresenter;->mIdeaUI_bg_id_split_icontext:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 97
    :cond_2
    iget v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookActionMenuPresenter;->mIdeaUI_bg_id_split:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public ideaUI_setActionMode(Z)V
    .locals 0
    .param p1, "isActionMode"    # Z

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookActionMenuPresenter;->mIdeaUI_isActionMode:Z

    .line 59
    return-void
.end method

.method public ideaUI_setSplitMode(Z)V
    .locals 0
    .param p1, "isSplitMode"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookActionMenuPresenter;->mIdeaUI_isSplitMode:Z

    .line 51
    return-void
.end method

.method public initForMenu(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookActionMenuPresenter;->mIdeaUI_isActionMode:Z

    if-nez v0, :cond_0

    .line 63
    const v0, 0x101039c

    invoke-static {p1, v0}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookActionMenuPresenter;->mIdeaUI_bg_id_normal:I

    .line 66
    const v0, 0x3010005

    invoke-static {p1, v0}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookActionMenuPresenter;->mIdeaUI_bg_id_split:I

    .line 69
    const v0, 0x3010006

    invoke-static {p1, v0}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookActionMenuPresenter;->mIdeaUI_bg_id_split_icontext:I

    .line 81
    :goto_0
    return-void

    .line 72
    :cond_0
    const v0, 0x3010002

    invoke-static {p1, v0}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookActionMenuPresenter;->mIdeaUI_bg_id_normal:I

    .line 75
    const v0, 0x3010003

    invoke-static {p1, v0}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookActionMenuPresenter;->mIdeaUI_bg_id_split:I

    .line 78
    const v0, 0x3010004

    invoke-static {p1, v0}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookActionMenuPresenter;->mIdeaUI_bg_id_split_icontext:I

    goto :goto_0
.end method
