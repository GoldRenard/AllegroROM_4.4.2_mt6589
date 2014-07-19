.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookPopupWindow;
.super Ljava/lang/Object;
.source "IdeaUI_HookPopupWindow.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIdeaUI_IsPopupBackgroundRoundedCorner:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPopupWindow;->mIdeaUI_IsPopupBackgroundRoundedCorner:Z

    .line 15
    iput-object p1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPopupWindow;->mContext:Landroid/content/Context;

    .line 16
    return-void
.end method

.method private ideaUI_isRoundedCornerBackground(I)Z
    .locals 1
    .param p1, "bg_id"    # I

    .prologue
    .line 46
    const v0, 0x3080157

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public PopupWindow(Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 24
    .local v0, "bg_id":I
    invoke-direct {p0, v0}, Lcom/lenovo/ideaui/hook/IdeaUI_HookPopupWindow;->ideaUI_isRoundedCornerBackground(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPopupWindow;->mIdeaUI_IsPopupBackgroundRoundedCorner:Z

    .line 28
    :cond_0
    return-void
.end method

.method public ideaUI_setBackgroundResource(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "background"    # I

    .prologue
    .line 38
    invoke-direct {p0, p2}, Lcom/lenovo/ideaui/hook/IdeaUI_HookPopupWindow;->ideaUI_isRoundedCornerBackground(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPopupWindow;->mIdeaUI_IsPopupBackgroundRoundedCorner:Z

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPopupWindow;->mIdeaUI_IsPopupBackgroundRoundedCorner:Z

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPopupWindow;->mIdeaUI_IsPopupBackgroundRoundedCorner:Z

    .line 52
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 3
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 56
    iget-boolean v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookPopupWindow;->mIdeaUI_IsPopupBackgroundRoundedCorner:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    instance-of v1, p1, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 59
    check-cast v0, Landroid/widget/AbsListView;

    .line 62
    .local v0, "list":Landroid/widget/AbsListView;
    invoke-virtual {v0, v2, v2}, Landroid/widget/AbsListView;->IdeaUI_SetRounderCorner(ZZ)V

    .line 65
    .end local v0    # "list":Landroid/widget/AbsListView;
    :cond_0
    return-void
.end method
