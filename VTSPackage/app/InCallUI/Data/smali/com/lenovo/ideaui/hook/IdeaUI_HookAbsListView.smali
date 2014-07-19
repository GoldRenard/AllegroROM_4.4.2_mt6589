.class public Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;
.super Ljava/lang/Object;
.source "IdeaUI_HookAbsListView.java"


# instance fields
.field private mAbsListView:Landroid/widget/AbsListView;

.field private mIdeaUI_IsBottomRoundedCorner:Z

.field private mIdeaUI_IsTopRoundedCorner:Z

.field private mIdeaUI_ListRoundedClipPath:Landroid/graphics/Path;

.field private mIdeaUI_ListRoundedRectRadius:F


# direct methods
.method public constructor <init>(Landroid/widget/AbsListView;)V
    .locals 2
    .param p1, "absListView"    # Landroid/widget/AbsListView;

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_ListRoundedRectRadius:F

    .line 22
    iput-boolean v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_IsTopRoundedCorner:Z

    .line 23
    iput-boolean v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_IsBottomRoundedCorner:Z

    .line 27
    iput-object p1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mAbsListView:Landroid/widget/AbsListView;

    .line 28
    return-void
.end method


# virtual methods
.method public AbsListView(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    sget v1, Lcom/lenovo/internal/R$attr;->ideaui_list_rounded_rect_radius:I

    invoke-static {p1, v1}, Lcom/lenovo/ideaui/IdeaUI;->getResFromAttribute(Landroid/content/Context;I)I

    move-result v0

    .line 36
    .local v0, "res_id":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_ListRoundedRectRadius:F

    .line 38
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_ListRoundedClipPath:Landroid/graphics/Path;

    .line 40
    .end local v0    # "res_id":I
    :cond_0
    return-void
.end method

.method public IdeaUI_SetRounderCorner(ZZ)V
    .locals 3
    .param p1, "IsTopRoundedCorner"    # Z
    .param p2, "IsBottomRoundedCorner"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_IsTopRoundedCorner:Z

    .line 50
    iput-boolean p2, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_IsBottomRoundedCorner:Z

    .line 52
    iget-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_IsTopRoundedCorner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_IsBottomRoundedCorner:Z

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mAbsListView:Landroid/widget/AbsListView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->requestLayout()V

    .line 58
    iget-object v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->invalidate()V

    .line 60
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_ListRoundedClipPath:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_IsTopRoundedCorner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_IsBottomRoundedCorner:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_ListRoundedClipPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_ListRoundedClipPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public onLayout()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-object v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_ListRoundedClipPath:Landroid/graphics/Path;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_IsTopRoundedCorner:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_IsBottomRoundedCorner:Z

    if-eqz v1, :cond_1

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_ListRoundedClipPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 95
    iget-object v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_ListRoundedClipPath:Landroid/graphics/Path;

    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 97
    new-instance v0, Landroid/graphics/RectF;

    iget-boolean v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_IsTopRoundedCorner:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v4}, Landroid/widget/AbsListView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 103
    .local v0, "rect":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_ListRoundedClipPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_ListRoundedRectRadius:F

    iget v3, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_ListRoundedRectRadius:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 109
    .end local v0    # "rect":Landroid/graphics/RectF;
    :cond_1
    return-void

    .line 97
    :cond_2
    iget v1, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_ListRoundedRectRadius:F

    neg-float v1, v1

    iget v3, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mIdeaUI_ListRoundedRectRadius:F

    sub-float/2addr v1, v3

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 6
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 67
    iget-object v5, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v5

    if-eqz v5, :cond_0

    instance-of v5, p1, Landroid/preference/PreferenceGroupAdapter;

    if-eqz v5, :cond_0

    move-object v2, p1

    .line 69
    check-cast v2, Landroid/preference/PreferenceGroupAdapter;

    .line 71
    .local v2, "preferenceAdapter":Landroid/preference/PreferenceGroupAdapter;
    iget-object v5, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v4

    .line 72
    .local v4, "top":I
    iget-object v5, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getPaddingBottom()I

    move-result v0

    .line 73
    .local v0, "bottom":I
    iget-object v5, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getPaddingLeft()I

    move-result v1

    .line 74
    .local v1, "left":I
    iget-object v5, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getPaddingRight()I

    move-result v3

    .line 76
    .local v3, "right":I
    invoke-virtual {v2}, Landroid/preference/PreferenceGroupAdapter;->IdeaUI_IsFirstItemCategory()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 78
    const/4 v4, 0x0

    .line 83
    :goto_0
    iget-object v5, p0, Lcom/lenovo/ideaui/hook/IdeaUI_HookAbsListView;->mAbsListView:Landroid/widget/AbsListView;

    invoke-virtual {v5, v1, v4, v3, v0}, Landroid/widget/AbsListView;->setPadding(IIII)V

    .line 85
    .end local v0    # "bottom":I
    .end local v1    # "left":I
    .end local v2    # "preferenceAdapter":Landroid/preference/PreferenceGroupAdapter;
    .end local v3    # "right":I
    .end local v4    # "top":I
    :cond_0
    return-void

    .line 80
    .restart local v0    # "bottom":I
    .restart local v1    # "left":I
    .restart local v2    # "preferenceAdapter":Landroid/preference/PreferenceGroupAdapter;
    .restart local v3    # "right":I
    .restart local v4    # "top":I
    :cond_1
    move v4, v0

    goto :goto_0
.end method
