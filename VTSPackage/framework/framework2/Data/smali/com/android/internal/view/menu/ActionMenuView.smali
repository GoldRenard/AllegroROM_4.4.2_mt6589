.class public Lcom/android/internal/view/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;,
        Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x38

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMaxItemHeight:I

.field private mMeasuredExtraWidth:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMinCellSize:I

.field private mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 64
    .local v1, "density":F
    const/high16 v2, 0x42600000

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    .line 65
    const/high16 v2, 0x40800000

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    .line 67
    sget-object v2, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v3, 0x10102ce

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    .line 70
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 71
    return-void
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 15
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    .prologue
    .line 387
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 389
    .local v10, "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    sub-int v3, v13, p4

    .line 391
    .local v3, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 392
    .local v2, "childHeightMode":I
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 394
    .local v4, "childHeightSpec":I
    instance-of v13, p0, Lcom/android/internal/view/menu/ActionMenuItemView;

    if-eqz v13, :cond_4

    move-object v13, p0

    check-cast v13, Lcom/android/internal/view/menu/ActionMenuItemView;

    move-object v9, v13

    .line 396
    .local v9, "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :goto_0
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v7, 0x1

    .line 399
    .local v7, "hasText":Z
    :goto_1
    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v8, 0x1

    .line 402
    .local v8, "isIdeauiTheme":Z
    :goto_2
    const/4 v1, 0x0

    .line 403
    .local v1, "cellsUsed":I
    if-lez p2, :cond_2

    if-eqz v7, :cond_0

    const/4 v13, 0x2

    move/from16 v0, p2

    if-lt v0, v13, :cond_2

    .line 404
    :cond_0
    mul-int v13, p1, p2

    const/high16 v14, -0x80000000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 406
    .local v5, "childWidthSpec":I
    invoke-virtual {p0, v5, v4}, Landroid/view/View;->measure(II)V

    .line 408
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    .line 409
    .local v11, "measuredWidth":I
    div-int v1, v11, p1

    .line 410
    rem-int v13, v11, p1

    if-eqz v13, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 411
    :cond_1
    if-eqz v7, :cond_2

    const/4 v13, 0x2

    if-ge v1, v13, :cond_2

    const/4 v1, 0x2

    .line 416
    .end local v5    # "childWidthSpec":I
    .end local v11    # "measuredWidth":I
    :cond_2
    iget-boolean v13, v10, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v13, :cond_7

    if-nez v7, :cond_3

    if-eqz v8, :cond_7

    :cond_3
    const/4 v6, 0x1

    .line 419
    .local v6, "expandable":Z
    :goto_3
    iput-boolean v6, v10, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 421
    iput v1, v10, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 422
    mul-int v12, v1, p1

    .line 423
    .local v12, "targetWidth":I
    const/high16 v13, 0x40000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {p0, v13, v4}, Landroid/view/View;->measure(II)V

    .line 425
    return v1

    .line 394
    .end local v1    # "cellsUsed":I
    .end local v6    # "expandable":Z
    .end local v7    # "hasText":Z
    .end local v8    # "isIdeauiTheme":Z
    .end local v9    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    .end local v12    # "targetWidth":I
    :cond_4
    const/4 v9, 0x0

    goto :goto_0

    .line 396
    .restart local v9    # "itemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    :cond_5
    const/4 v7, 0x0

    goto :goto_1

    .line 399
    .restart local v7    # "hasText":Z
    :cond_6
    const/4 v8, 0x0

    goto :goto_2

    .line 416
    .restart local v1    # "cellsUsed":I
    .restart local v8    # "isIdeauiTheme":Z
    :cond_7
    const/4 v6, 0x0

    goto :goto_3
.end method

.method private onMeasureExactFormat(II)V
    .locals 43
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 151
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 152
    .local v17, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v38

    .line 153
    .local v38, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 155
    .local v19, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v39

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v40

    add-int v37, v39, v40

    .line 156
    .local v37, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v39

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v40

    add-int v18, v39, v40

    .line 158
    .local v18, "heightPadding":I
    const/high16 v39, 0x40000000

    move/from16 v0, v17

    move/from16 v1, v39

    if-ne v0, v1, :cond_0

    sub-int v39, v19, v18

    const/high16 v40, 0x40000000

    invoke-static/range {v39 .. v40}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 163
    .local v23, "itemHeightSpec":I
    :goto_0
    sub-int v38, v38, v37

    .line 166
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v39, v0

    div-int v4, v38, v39

    .line 167
    .local v4, "cellCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v39, v0

    rem-int v6, v38, v39

    .line 169
    .local v6, "cellSizeRemaining":I
    if-nez v4, :cond_1

    .line 171
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 370
    :goto_1
    return-void

    .line 158
    .end local v4    # "cellCount":I
    .end local v6    # "cellSizeRemaining":I
    .end local v23    # "itemHeightSpec":I
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    move/from16 v39, v0

    sub-int v40, v19, v18

    invoke-static/range {v39 .. v40}, Ljava/lang/Math;->min(II)I

    move-result v39

    const/high16 v40, -0x80000000

    invoke-static/range {v39 .. v40}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    goto :goto_0

    .line 175
    .restart local v4    # "cellCount":I
    .restart local v6    # "cellSizeRemaining":I
    .restart local v23    # "itemHeightSpec":I
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mMinCellSize:I

    move/from16 v39, v0

    div-int v40, v6, v4

    add-int v5, v39, v40

    .line 177
    .local v5, "cellSize":I
    move v8, v4

    .line 178
    .local v8, "cellsRemaining":I
    const/16 v26, 0x0

    .line 179
    .local v26, "maxChildHeight":I
    const/16 v25, 0x0

    .line 180
    .local v25, "maxCellsUsed":I
    const/4 v14, 0x0

    .line 181
    .local v14, "expandableItemCount":I
    const/16 v35, 0x0

    .line 182
    .local v35, "visibleItemCount":I
    const/16 v16, 0x0

    .line 185
    .local v16, "hasOverflow":Z
    const-wide/16 v33, 0x0

    .line 187
    .local v33, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    .line 188
    .local v12, "childCount":I
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_2
    move/from16 v0, v20

    if-ge v0, v12, :cond_b

    .line 189
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 190
    .local v11, "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v39

    const/16 v40, 0x8

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_3

    .line 188
    :cond_2
    :goto_3
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 192
    :cond_3
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v21, v0

    .line 193
    .local v21, "isGeneratedItem":Z
    add-int/lit8 v35, v35, 0x1

    .line 195
    if-eqz v21, :cond_4

    .line 198
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v41, v0

    const/16 v42, 0x0

    move/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 201
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 202
    .local v24, "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 203
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 204
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 205
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 206
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 207
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 211
    if-eqz v11, :cond_8

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/content/Context;->isIdeaUITheme()Z

    move-result v39

    if-eqz v39, :cond_8

    const/16 v22, 0x1

    .line 213
    .local v22, "isIdeauiTheme":Z
    :goto_4
    if-eqz v21, :cond_9

    move-object/from16 v39, v11

    check-cast v39, Lcom/android/internal/view/menu/ActionMenuItemView;

    invoke-virtual/range {v39 .. v39}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v39

    if-nez v39, :cond_5

    if-eqz v22, :cond_9

    :cond_5
    const/16 v39, 0x1

    :goto_5
    move/from16 v0, v39

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 218
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v39, v0

    if-eqz v39, :cond_a

    const/4 v7, 0x1

    .line 220
    .local v7, "cellsAvailable":I
    :goto_6
    move/from16 v0, v23

    move/from16 v1, v18

    invoke-static {v11, v5, v7, v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v9

    .line 223
    .local v9, "cellsUsed":I
    move/from16 v0, v25

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v25

    .line 224
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v39, v0

    if-eqz v39, :cond_6

    add-int/lit8 v14, v14, 0x1

    .line 225
    :cond_6
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v39, v0

    if-eqz v39, :cond_7

    const/16 v16, 0x1

    .line 227
    :cond_7
    sub-int/2addr v8, v9

    .line 228
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v39

    move/from16 v0, v26

    move/from16 v1, v39

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v26

    .line 229
    const/16 v39, 0x1

    move/from16 v0, v39

    if-ne v9, v0, :cond_2

    const/16 v39, 0x1

    shl-int v39, v39, v20

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    or-long v33, v33, v39

    goto/16 :goto_3

    .line 211
    .end local v7    # "cellsAvailable":I
    .end local v9    # "cellsUsed":I
    .end local v22    # "isIdeauiTheme":Z
    :cond_8
    const/16 v22, 0x0

    goto :goto_4

    .line 213
    .restart local v22    # "isIdeauiTheme":Z
    :cond_9
    const/16 v39, 0x0

    goto :goto_5

    :cond_a
    move v7, v8

    .line 218
    goto :goto_6

    .line 234
    .end local v11    # "child":Landroid/view/View;
    .end local v21    # "isGeneratedItem":Z
    .end local v22    # "isIdeauiTheme":Z
    .end local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_b
    if-eqz v16, :cond_d

    const/16 v39, 0x2

    move/from16 v0, v35

    move/from16 v1, v39

    if-ne v0, v1, :cond_d

    const/4 v10, 0x1

    .line 239
    .local v10, "centerSingleExpandedItem":Z
    :goto_7
    const/16 v31, 0x0

    .line 240
    .local v31, "needsExpansion":Z
    :goto_8
    if-lez v14, :cond_11

    if-lez v8, :cond_11

    .line 241
    const v27, 0x7fffffff

    .line 242
    .local v27, "minCells":I
    const-wide/16 v28, 0x0

    .line 243
    .local v28, "minCellsAt":J
    const/16 v30, 0x0

    .line 244
    .local v30, "minCellsItemCount":I
    const/16 v20, 0x0

    :goto_9
    move/from16 v0, v20

    if-ge v0, v12, :cond_10

    .line 245
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 246
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 249
    .restart local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expandable:Z

    move/from16 v39, v0

    if-nez v39, :cond_e

    .line 244
    :cond_c
    :goto_a
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 234
    .end local v10    # "centerSingleExpandedItem":Z
    .end local v11    # "child":Landroid/view/View;
    .end local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v27    # "minCells":I
    .end local v28    # "minCellsAt":J
    .end local v30    # "minCellsItemCount":I
    .end local v31    # "needsExpansion":Z
    :cond_d
    const/4 v10, 0x0

    goto :goto_7

    .line 252
    .restart local v10    # "centerSingleExpandedItem":Z
    .restart local v11    # "child":Landroid/view/View;
    .restart local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v27    # "minCells":I
    .restart local v28    # "minCellsAt":J
    .restart local v30    # "minCellsItemCount":I
    .restart local v31    # "needsExpansion":Z
    :cond_e
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v39, v0

    move/from16 v0, v39

    move/from16 v1, v27

    if-ge v0, v1, :cond_f

    .line 253
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v27, v0

    .line 254
    const/16 v39, 0x1

    shl-int v39, v39, v20

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v28, v0

    .line 255
    const/16 v30, 0x1

    goto :goto_a

    .line 256
    :cond_f
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v39, v0

    move/from16 v0, v39

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 257
    const/16 v39, 0x1

    shl-int v39, v39, v20

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    or-long v28, v28, v39

    .line 258
    add-int/lit8 v30, v30, 0x1

    goto :goto_a

    .line 263
    .end local v11    # "child":Landroid/view/View;
    .end local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_10
    or-long v33, v33, v28

    .line 265
    move/from16 v0, v30

    if-le v0, v8, :cond_16

    .line 294
    .end local v27    # "minCells":I
    .end local v28    # "minCellsAt":J
    .end local v30    # "minCellsItemCount":I
    :cond_11
    if-nez v16, :cond_1b

    const/16 v39, 0x1

    move/from16 v0, v35

    move/from16 v1, v39

    if-ne v0, v1, :cond_1b

    const/16 v32, 0x1

    .line 295
    .local v32, "singleItem":Z
    :goto_b
    if-lez v8, :cond_23

    const-wide/16 v39, 0x0

    cmp-long v39, v33, v39

    if-eqz v39, :cond_23

    add-int/lit8 v39, v35, -0x1

    move/from16 v0, v39

    if-lt v8, v0, :cond_12

    if-nez v32, :cond_12

    const/16 v39, 0x1

    move/from16 v0, v25

    move/from16 v1, v39

    if-le v0, v1, :cond_23

    .line 297
    :cond_12
    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->bitCount(J)I

    move-result v39

    move/from16 v0, v39

    int-to-float v13, v0

    .line 299
    .local v13, "expandCount":F
    if-nez v32, :cond_14

    .line 301
    const-wide/16 v39, 0x1

    and-long v39, v39, v33

    const-wide/16 v41, 0x0

    cmp-long v39, v39, v41

    if-eqz v39, :cond_13

    .line 302
    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 303
    .restart local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v39, v0

    if-nez v39, :cond_13

    const/high16 v39, 0x3f000000

    sub-float v13, v13, v39

    .line 305
    .end local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_13
    const/16 v39, 0x1

    add-int/lit8 v40, v12, -0x1

    shl-int v39, v39, v40

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    and-long v39, v39, v33

    const-wide/16 v41, 0x0

    cmp-long v39, v39, v41

    if-eqz v39, :cond_14

    .line 306
    add-int/lit8 v39, v12, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 307
    .restart local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v39, v0

    if-nez v39, :cond_14

    const/high16 v39, 0x3f000000

    sub-float v13, v13, v39

    .line 311
    .end local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_14
    const/16 v39, 0x0

    cmpl-float v39, v13, v39

    if-lez v39, :cond_1c

    mul-int v39, v8, v5

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    div-float v39, v39, v13

    move/from16 v0, v39

    float-to-int v15, v0

    .line 314
    .local v15, "extraPixels":I
    :goto_c
    const/16 v20, 0x0

    :goto_d
    move/from16 v0, v20

    if-ge v0, v12, :cond_22

    .line 315
    const/16 v39, 0x1

    shl-int v39, v39, v20

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    and-long v39, v39, v33

    const-wide/16 v41, 0x0

    cmp-long v39, v39, v41

    if-nez v39, :cond_1d

    .line 314
    :cond_15
    :goto_e
    add-int/lit8 v20, v20, 0x1

    goto :goto_d

    .line 268
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    .end local v32    # "singleItem":Z
    .restart local v27    # "minCells":I
    .restart local v28    # "minCellsAt":J
    .restart local v30    # "minCellsItemCount":I
    :cond_16
    add-int/lit8 v27, v27, 0x1

    .line 270
    const/16 v20, 0x0

    :goto_f
    move/from16 v0, v20

    if-ge v0, v12, :cond_1a

    .line 271
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 272
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 273
    .restart local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v39, 0x1

    shl-int v39, v39, v20

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    and-long v39, v39, v28

    const-wide/16 v41, 0x0

    cmp-long v39, v39, v41

    if-nez v39, :cond_18

    .line 275
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v39, v0

    move/from16 v0, v39

    move/from16 v1, v27

    if-ne v0, v1, :cond_17

    const/16 v39, 0x1

    shl-int v39, v39, v20

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    or-long v33, v33, v39

    .line 270
    :cond_17
    :goto_10
    add-int/lit8 v20, v20, 0x1

    goto :goto_f

    .line 279
    :cond_18
    if-eqz v10, :cond_19

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v39, v0

    if-eqz v39, :cond_19

    const/16 v39, 0x1

    move/from16 v0, v39

    if-ne v8, v0, :cond_19

    .line 281
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v39, v0

    add-int v39, v39, v5

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v41, v0

    const/16 v42, 0x0

    move/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 283
    :cond_19
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v39, v0

    add-int/lit8 v39, v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 284
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 285
    add-int/lit8 v8, v8, -0x1

    goto :goto_10

    .line 288
    .end local v11    # "child":Landroid/view/View;
    .end local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_1a
    const/16 v31, 0x1

    .line 289
    goto/16 :goto_8

    .line 294
    .end local v27    # "minCells":I
    .end local v28    # "minCellsAt":J
    .end local v30    # "minCellsItemCount":I
    :cond_1b
    const/16 v32, 0x0

    goto/16 :goto_b

    .line 311
    .restart local v13    # "expandCount":F
    .restart local v32    # "singleItem":Z
    :cond_1c
    const/4 v15, 0x0

    goto/16 :goto_c

    .line 317
    .restart local v15    # "extraPixels":I
    :cond_1d
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 318
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 319
    .restart local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    instance-of v0, v11, Lcom/android/internal/view/menu/ActionMenuItemView;

    move/from16 v39, v0

    if-eqz v39, :cond_1f

    .line 321
    move-object/from16 v0, v24

    iput v15, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 322
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 323
    if-nez v20, :cond_1e

    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    move/from16 v39, v0

    if-nez v39, :cond_1e

    .line 326
    neg-int v0, v15

    move/from16 v39, v0

    div-int/lit8 v39, v39, 0x2

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 328
    :cond_1e
    const/16 v31, 0x1

    goto/16 :goto_e

    .line 329
    :cond_1f
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v39, v0

    if-eqz v39, :cond_20

    .line 330
    move-object/from16 v0, v24

    iput v15, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 331
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 332
    neg-int v0, v15

    move/from16 v39, v0

    div-int/lit8 v39, v39, 0x2

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 333
    const/16 v31, 0x1

    goto/16 :goto_e

    .line 338
    :cond_20
    if-eqz v20, :cond_21

    .line 339
    div-int/lit8 v39, v15, 0x2

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 341
    :cond_21
    add-int/lit8 v39, v12, -0x1

    move/from16 v0, v20

    move/from16 v1, v39

    if-eq v0, v1, :cond_15

    .line 342
    div-int/lit8 v39, v15, 0x2

    move/from16 v0, v39

    move-object/from16 v1, v24

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto/16 :goto_e

    .line 347
    .end local v11    # "child":Landroid/view/View;
    .end local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_22
    const/4 v8, 0x0

    .line 351
    .end local v13    # "expandCount":F
    .end local v15    # "extraPixels":I
    :cond_23
    if-eqz v31, :cond_25

    .line 352
    const/16 v20, 0x0

    :goto_11
    move/from16 v0, v20

    if-ge v0, v12, :cond_25

    .line 353
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 354
    .restart local v11    # "child":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v24

    check-cast v24, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 356
    .restart local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->expanded:Z

    move/from16 v39, v0

    if-nez v39, :cond_24

    .line 352
    :goto_12
    add-int/lit8 v20, v20, 0x1

    goto :goto_11

    .line 358
    :cond_24
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v39, v0

    mul-int v39, v39, v5

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->extraPixels:I

    move/from16 v40, v0

    add-int v36, v39, v40

    .line 359
    .local v36, "width":I
    const/high16 v39, 0x40000000

    move/from16 v0, v36

    move/from16 v1, v39

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/view/View;->measure(II)V

    goto :goto_12

    .line 364
    .end local v11    # "child":Landroid/view/View;
    .end local v24    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v36    # "width":I
    :cond_25
    const/high16 v39, 0x40000000

    move/from16 v0, v17

    move/from16 v1, v39

    if-eq v0, v1, :cond_26

    .line 365
    move/from16 v19, v26

    .line 368
    :cond_26
    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 369
    mul-int v39, v8, v5

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/view/menu/ActionMenuView;->mMeasuredExtraWidth:I

    goto/16 :goto_1
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 586
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 625
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 559
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1, v1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 561
    .local v0, "params":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 562
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1
    .param p1, "x0"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 567
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 572
    if-eqz p1, :cond_2

    .line 573
    instance-of v1, p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    check-cast p1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;)V

    .line 576
    .local v0, "result":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gtz v1, :cond_0

    .line 577
    const/16 v1, 0x10

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 581
    .end local v0    # "result":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_0
    :goto_1
    return-object v0

    .line 573
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 581
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    goto :goto_1
.end method

.method public generateOverflowButtonLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .locals 2

    .prologue
    .line 590
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 591
    .local v0, "result":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 592
    return-object v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .prologue
    .line 600
    const/4 v0, 0x0

    return v0
.end method

.method protected hasDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .prologue
    .line 609
    if-nez p1, :cond_1

    .line 610
    const/4 v2, 0x0

    .line 621
    :cond_0
    :goto_0
    return v2

    .line 612
    :cond_1
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 613
    .local v1, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 614
    .local v0, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 615
    .local v2, "result":Z
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    instance-of v3, v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 616
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v1    # "childBefore":Landroid/view/View;
    invoke-interface {v1}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 618
    :cond_2
    if-lez p1, :cond_0

    instance-of v3, v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_0

    .line 619
    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;

    .end local v0    # "child":Landroid/view/View;
    invoke-interface {v0}, Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    .line 604
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 605
    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isExpandedFormat()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .prologue
    .line 550
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v7, 0x0

    .line 88
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 89
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 91
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 92
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 93
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 98
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x109001b

    invoke-virtual {v3, v6, p0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 102
    .local v5, "tempActionMenuItemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    if-eqz v5, :cond_2

    .line 103
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 104
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 105
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 106
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 107
    .local v4, "isGeneratedItem":Z
    if-eqz v4, :cond_1

    .line 108
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/view/View;->setPadding(IIII)V

    .line 104
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v4    # "isGeneratedItem":Z
    :cond_2
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 545
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 546
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 547
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 34
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 430
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    move/from16 v32, v0

    if-nez v32, :cond_1

    .line 431
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 436
    .local v6, "childCount":I
    add-int v32, p3, p5

    div-int/lit8 v15, v32, 0x2

    .line 437
    .local v15, "midVertical":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getDividerWidth()I

    move-result v7

    .line 438
    .local v7, "dividerWidth":I
    const/16 v18, 0x0

    .line 439
    .local v18, "overflowWidth":I
    const/16 v17, 0x0

    .line 440
    .local v17, "nonOverflowWidth":I
    const/16 v16, 0x0

    .line 441
    .local v16, "nonOverflowCount":I
    sub-int v32, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v33

    sub-int v32, v32, v33

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v33

    sub-int v31, v32, v33

    .line 442
    .local v31, "widthRemaining":I
    const/4 v8, 0x0

    .line 443
    .local v8, "hasOverflow":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v11

    .line 445
    .local v11, "isLayoutRtl":Z
    const/16 v27, 0x0

    .line 447
    .local v27, "toTakePlaceChildCount":I
    const/16 v28, -0x1

    .line 448
    .local v28, "toTakePlaceChildIndex":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v6, :cond_7

    .line 449
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 450
    .local v29, "v":Landroid/view/View;
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getVisibility()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_2

    .line 448
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 455
    :cond_2
    add-int/lit8 v27, v27, 0x1

    .line 456
    move/from16 v28, v10

    .line 458
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 459
    .local v19, "p":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v32, v0

    if-eqz v32, :cond_5

    .line 460
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    .line 461
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v32

    if-eqz v32, :cond_3

    .line 462
    add-int v18, v18, v7

    .line 465
    :cond_3
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 468
    .local v9, "height":I
    if-eqz v11, :cond_4

    .line 469
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v32

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v33, v0

    add-int v12, v32, v33

    .line 470
    .local v12, "l":I
    add-int v20, v12, v18

    .line 475
    .local v20, "r":I
    :goto_3
    div-int/lit8 v32, v9, 0x2

    sub-int v26, v15, v32

    .line 476
    .local v26, "t":I
    add-int v5, v26, v9

    .line 477
    .local v5, "b":I
    move-object/from16 v0, v29

    move/from16 v1, v26

    move/from16 v2, v20

    invoke-virtual {v0, v12, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 479
    sub-int v31, v31, v18

    .line 480
    const/4 v8, 0x1

    .line 481
    goto :goto_2

    .line 472
    .end local v5    # "b":I
    .end local v12    # "l":I
    .end local v20    # "r":I
    .end local v26    # "t":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v32

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v33

    sub-int v32, v32, v33

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v33, v0

    sub-int v20, v32, v33

    .line 473
    .restart local v20    # "r":I
    sub-int v12, v20, v18

    .restart local v12    # "l":I
    goto :goto_3

    .line 482
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v20    # "r":I
    :cond_5
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredWidth()I

    move-result v32

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v33, v0

    add-int v32, v32, v33

    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v33, v0

    add-int v21, v32, v33

    .line 483
    .local v21, "size":I
    add-int v17, v17, v21

    .line 484
    sub-int v31, v31, v21

    .line 485
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/internal/view/menu/ActionMenuView;->hasDividerBeforeChildAt(I)Z

    move-result v32

    if-eqz v32, :cond_6

    .line 486
    add-int v17, v17, v7

    .line 488
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 493
    .end local v19    # "p":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v21    # "size":I
    .end local v29    # "v":Landroid/view/View;
    :cond_7
    const/16 v32, 0x1

    move/from16 v0, v27

    move/from16 v1, v32

    if-ne v0, v1, :cond_8

    if-nez v8, :cond_8

    .line 495
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 496
    .restart local v29    # "v":Landroid/view/View;
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    .line 497
    .local v30, "width":I
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 498
    .restart local v9    # "height":I
    sub-int v32, p4, p2

    div-int/lit8 v14, v32, 0x2

    .line 499
    .local v14, "midHorizontal":I
    div-int/lit8 v32, v30, 0x2

    sub-int v12, v14, v32

    .line 500
    .restart local v12    # "l":I
    div-int/lit8 v32, v9, 0x2

    sub-int v26, v15, v32

    .line 501
    .restart local v26    # "t":I
    add-int v32, v12, v30

    add-int v33, v26, v9

    move-object/from16 v0, v29

    move/from16 v1, v26

    move/from16 v2, v32

    move/from16 v3, v33

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 505
    .end local v9    # "height":I
    .end local v12    # "l":I
    .end local v14    # "midHorizontal":I
    .end local v26    # "t":I
    .end local v29    # "v":Landroid/view/View;
    .end local v30    # "width":I
    :cond_8
    if-eqz v8, :cond_a

    const/16 v32, 0x0

    :goto_4
    sub-int v22, v16, v32

    .line 506
    .local v22, "spacerCount":I
    const/16 v33, 0x0

    if-lez v22, :cond_b

    div-int v32, v31, v22

    :goto_5
    move/from16 v0, v33

    move/from16 v1, v32

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 508
    .local v23, "spacerSize":I
    if-eqz v11, :cond_d

    .line 509
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v32

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v33

    sub-int v25, v32, v33

    .line 510
    .local v25, "startRight":I
    const/4 v10, 0x0

    :goto_6
    if-ge v10, v6, :cond_0

    .line 511
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 512
    .restart local v29    # "v":Landroid/view/View;
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 513
    .local v13, "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getVisibility()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_9

    iget-boolean v0, v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v32, v0

    if-eqz v32, :cond_c

    .line 510
    :cond_9
    :goto_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 505
    .end local v13    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v22    # "spacerCount":I
    .end local v23    # "spacerSize":I
    .end local v25    # "startRight":I
    .end local v29    # "v":Landroid/view/View;
    :cond_a
    const/16 v32, 0x1

    goto :goto_4

    .line 506
    .restart local v22    # "spacerCount":I
    :cond_b
    const/16 v32, 0x0

    goto :goto_5

    .line 517
    .restart local v13    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .restart local v23    # "spacerSize":I
    .restart local v25    # "startRight":I
    .restart local v29    # "v":Landroid/view/View;
    :cond_c
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v32, v0

    sub-int v25, v25, v32

    .line 518
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    .line 519
    .restart local v30    # "width":I
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 520
    .restart local v9    # "height":I
    div-int/lit8 v32, v9, 0x2

    sub-int v26, v15, v32

    .line 521
    .restart local v26    # "t":I
    sub-int v32, v25, v30

    add-int v33, v26, v9

    move-object/from16 v0, v29

    move/from16 v1, v32

    move/from16 v2, v26

    move/from16 v3, v25

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 522
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v32, v32, v30

    add-int v32, v32, v23

    sub-int v25, v25, v32

    goto :goto_7

    .line 525
    .end local v9    # "height":I
    .end local v13    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    .end local v25    # "startRight":I
    .end local v26    # "t":I
    .end local v29    # "v":Landroid/view/View;
    .end local v30    # "width":I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v24

    .line 526
    .local v24, "startLeft":I
    const/4 v10, 0x0

    :goto_8
    if-ge v10, v6, :cond_0

    .line 527
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 528
    .restart local v29    # "v":Landroid/view/View;
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 529
    .restart local v13    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getVisibility()I

    move-result v32

    const/16 v33, 0x8

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_e

    iget-boolean v0, v13, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    move/from16 v32, v0

    if-eqz v32, :cond_f

    .line 526
    :cond_e
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 533
    :cond_f
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v32, v0

    add-int v24, v24, v32

    .line 534
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredWidth()I

    move-result v30

    .line 535
    .restart local v30    # "width":I
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 536
    .restart local v9    # "height":I
    div-int/lit8 v32, v9, 0x2

    sub-int v26, v15, v32

    .line 537
    .restart local v26    # "t":I
    add-int v32, v24, v30

    add-int v33, v26, v9

    move-object/from16 v0, v29

    move/from16 v1, v24

    move/from16 v2, v26

    move/from16 v3, v32

    move/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 538
    iget v0, v13, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v32, v0

    add-int v32, v32, v30

    add-int v32, v32, v23

    add-int v24, v24, v32

    goto :goto_9
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 120
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 121
    .local v4, "wasFormatted":Z
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    const/high16 v9, 0x40000000

    if-ne v6, v9, :cond_2

    move v6, v7

    :goto_0
    iput-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    .line 123
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eq v4, v6, :cond_0

    .line 124
    iput v8, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 129
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 130
    .local v5, "widthSize":I
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v5, v6, :cond_1

    .line 131
    iput v5, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 132
    iget-object v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 135
    :cond_1
    iget-boolean v6, p0, Lcom/android/internal/view/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v6, :cond_3

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenuView;->onMeasureExactFormat(II)V

    .line 147
    :goto_1
    return-void

    .end local v5    # "widthSize":I
    :cond_2
    move v6, v8

    .line 121
    goto :goto_0

    .line 139
    .restart local v5    # "widthSize":I
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 140
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 141
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 142
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    .line 143
    .local v3, "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 140
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 145
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public setMaxItemHeight(I)V
    .locals 0
    .param p1, "maxItemHeight"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mMaxItemHeight:I

    .line 83
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 84
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .prologue
    .line 554
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mReserveOverflow:Z

    .line 555
    return-void
.end method

.method public setPresenter(Lcom/android/internal/view/menu/ActionMenuPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lcom/android/internal/view/menu/ActionMenuPresenter;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView;->mPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 75
    return-void
.end method
