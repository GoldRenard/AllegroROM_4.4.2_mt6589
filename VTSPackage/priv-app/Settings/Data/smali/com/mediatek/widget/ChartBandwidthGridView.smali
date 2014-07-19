.class public Lcom/mediatek/widget/ChartBandwidthGridView;
.super Landroid/view/View;
.source "ChartBandwidthGridView.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ChartBandwidthGridView"


# instance fields
.field private mHoriz:Lcom/android/settings/widget/ChartAxis;

.field private mPrimary:Landroid/graphics/drawable/Drawable;

.field private mSecondary:Landroid/graphics/drawable/Drawable;

.field private mVert:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/mediatek/widget/ChartBandwidthGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/mediatek/widget/ChartBandwidthGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-virtual {p0, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 53
    sget-object v1, Lcom/android/settings/R$styleable;->ChartGridView:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/widget/ChartBandwidthGridView;->mPrimary:Landroid/graphics/drawable/Drawable;

    .line 57
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/widget/ChartBandwidthGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    return-void
.end method


# virtual methods
.method init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V
    .locals 1
    .param p1, "horiz"    # Lcom/android/settings/widget/ChartAxis;
    .param p2, "vert"    # Lcom/android/settings/widget/ChartAxis;

    .prologue
    .line 62
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthGridView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    .line 63
    const-string v0, "missing vert"

    invoke-static {p2, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartAxis;

    iput-object v0, p0, Lcom/mediatek/widget/ChartBandwidthGridView;->mVert:Lcom/android/settings/widget/ChartAxis;

    .line 64
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 73
    .local v15, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 75
    .local v5, "height":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/widget/ChartBandwidthGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    .line 76
    .local v12, "secondary":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/widget/ChartBandwidthGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 78
    .local v13, "secondaryHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/widget/ChartBandwidthGridView;->mVert:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/settings/widget/ChartAxis;->getTickPoints()[F

    move-result-object v14

    .line 79
    .local v14, "vertTicks":[F
    move-object v3, v14

    .local v3, "arr$":[F
    array-length v8, v3

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget v17, v3, v7

    .line 80
    .local v17, "y":F
    int-to-float v0, v13

    move/from16 v18, v0

    add-float v18, v18, v17

    int-to-float v0, v5

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v4, v0

    .line 81
    .local v4, "bottom":I
    const/16 v18, 0x0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1, v15, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 82
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 79
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 84
    .end local v4    # "bottom":I
    .end local v17    # "y":F
    :cond_0
    const/16 v18, 0x0

    const/16 v19, 0x0

    mul-int/lit8 v20, v13, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v12, v0, v1, v15, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 85
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 87
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mediatek/widget/ChartBandwidthGridView;->mPrimary:Landroid/graphics/drawable/Drawable;

    .line 88
    .local v9, "primary":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/widget/ChartBandwidthGridView;->mPrimary:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    .line 89
    .local v10, "primaryWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mediatek/widget/ChartBandwidthGridView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/settings/widget/ChartAxis;->getTickPoints()[F

    move-result-object v6

    .line 90
    .local v6, "horizTicks":[F
    move-object v3, v6

    array-length v8, v3

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_1

    aget v16, v3, v7

    .line 91
    .local v16, "x":F
    int-to-float v0, v10

    move/from16 v18, v0

    add-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v11, v0

    .line 92
    .local v11, "right":I
    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v9, v0, v1, v11, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 95
    .end local v11    # "right":I
    .end local v16    # "x":F
    :cond_1
    return-void
.end method

.method setBounds(JJ)V
    .locals 1
    .param p1, "start"    # J
    .param p3, "end"    # J

    .prologue
    .line 67
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 69
    return-void
.end method
