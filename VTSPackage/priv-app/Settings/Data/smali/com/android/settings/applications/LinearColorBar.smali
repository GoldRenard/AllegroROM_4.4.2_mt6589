.class public Lcom/android/settings/applications/LinearColorBar;
.super Landroid/widget/LinearLayout;
.source "LinearColorBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;
    }
.end annotation


# static fields
.field static final GRAY_COLOR:I = -0xaaaaab

.field static final LEFT_COLOR:I = -0xe15b00

.field static final MIDDLE_COLOR:I = -0xe15b00

.field public static final REGION_ALL:I = 0x7

.field public static final REGION_GREEN:I = 0x4

.field public static final REGION_RED:I = 0x1

.field public static final REGION_YELLOW:I = 0x2

.field static final RIGHT_COLOR:I = -0x777778

.field static final WHITE_COLOR:I = -0x1


# instance fields
.field final mColorGradientPaint:Landroid/graphics/Paint;

.field final mColorPath:Landroid/graphics/Path;

.field private mColoredRegions:I

.field final mEdgeGradientPaint:Landroid/graphics/Paint;

.field final mEdgePath:Landroid/graphics/Path;

.field private mGreenRatio:F

.field mLastInterestingLeft:I

.field mLastInterestingRight:I

.field mLastLeftDiv:I

.field mLastRegion:I

.field mLastRightDiv:I

.field private mLeftColor:I

.field mLineWidth:I

.field private mMiddleColor:I

.field private mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

.field final mPaint:Landroid/graphics/Paint;

.field final mRect:Landroid/graphics/Rect;

.field private mRedRatio:F

.field private mRightColor:I

.field private mShowIndicator:Z

.field private mShowingGreen:Z

.field private mYellowRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, -0xFF6634

    const/4 v1, 0x1

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->mLeftColor:I

    .line 31
    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->mMiddleColor:I

    .line 32
    const v0, -0x777778

    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->mRightColor:I

    .line 34
    iput-boolean v1, p0, Lcom/android/settings/applications/LinearColorBar;->mShowIndicator:Z

    .line 38
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColoredRegions:I

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    .line 50
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0xf0

    if-lt v0, v2, :cond_0

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->mLineWidth:I

    .line 72
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/settings/applications/LinearColorBar;->mLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    return-void

    :cond_0
    move v0, v1

    .line 70
    goto :goto_0
.end method

.method private pickColor(II)I
    .locals 1
    .param p1, "color"    # I
    .param p2, "region"    # I

    .prologue
    .line 178
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    .line 179
    const/4 p1, -0x1

    .line 184
    .end local p1    # "color":I
    :cond_0
    :goto_0
    return p1

    .line 181
    .restart local p1    # "color":I
    :cond_1
    iget v0, p0, Lcom/android/settings/applications/LinearColorBar;->mColoredRegions:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    .line 182
    const p1, -0xaaaaab

    goto :goto_0
.end method

.method private updateIndicator()V
    .locals 10

    .prologue
    const v3, 0xffffff

    const/4 v1, 0x0

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int v8, v0, v2

    .line 120
    .local v8, "off":I
    if-gez v8, :cond_0

    const/4 v8, 0x0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v8, v0, Landroid/graphics/Rect;->top:I

    .line 122
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 123
    iget-boolean v0, p0, Lcom/android/settings/applications/LinearColorBar;->mShowIndicator:Z

    if-nez v0, :cond_1

    .line 135
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/applications/LinearColorBar;->mShowingGreen:Z

    if-eqz v0, :cond_2

    .line 127
    iget-object v9, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    add-int/lit8 v2, v8, -0x2

    int-to-float v4, v2

    iget v2, p0, Lcom/android/settings/applications/LinearColorBar;->mRightColor:I

    and-int v5, v2, v3

    iget v6, p0, Lcom/android/settings/applications/LinearColorBar;->mRightColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 133
    :goto_1
    iget-object v9, p0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    div-int/lit8 v2, v8, 0x2

    int-to-float v4, v2

    const v5, 0xa0a0a0

    const v6, -0x5f5f60

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 130
    :cond_2
    iget-object v9, p0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    add-int/lit8 v2, v8, -0x2

    int-to-float v4, v2

    iget v2, p0, Lcom/android/settings/applications/LinearColorBar;->mMiddleColor:I

    and-int v5, v2, v3

    iget v6, p0, Lcom/android/settings/applications/LinearColorBar;->mMiddleColor:I

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_1
.end method


# virtual methods
.method protected dispatchSetPressed(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 166
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 189
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 191
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v17

    .line 193
    .local v17, "width":I
    const/4 v10, 0x0

    .line 195
    .local v10, "left":I
    move/from16 v0, v17

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->mRedRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v14, v10, v1

    .line 196
    .local v14, "right":I
    move/from16 v0, v17

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->mYellowRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v15, v14, v1

    .line 197
    .local v15, "right2":I
    move/from16 v0, v17

    int-to-float v1, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->mGreenRatio:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int v16, v15, v1

    .line 200
    .local v16, "right3":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/applications/LinearColorBar;->mShowingGreen:Z

    if-eqz v1, :cond_7

    .line 201
    move v8, v15

    .line 202
    .local v8, "indicatorLeft":I
    move/from16 v9, v16

    .line 208
    .local v9, "indicatorRight":I
    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/applications/LinearColorBar;->mLastInterestingLeft:I

    if-ne v1, v8, :cond_0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/applications/LinearColorBar;->mLastInterestingRight:I

    if-eq v1, v9, :cond_2

    .line 209
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 210
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 211
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/applications/LinearColorBar;->mShowIndicator:Z

    if-eqz v1, :cond_1

    if-ge v8, v9, :cond_1

    .line 212
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v13, v1, Landroid/graphics/Rect;->top:I

    .line 213
    .local v13, "midTopY":I
    const/4 v12, 0x0

    .line 214
    .local v12, "midBottomY":I
    const/16 v18, 0x2

    .line 215
    .local v18, "xoff":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    int-to-float v2, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 216
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    int-to-float v2, v8

    const/4 v3, 0x0

    const/high16 v4, -0x40000000

    int-to-float v5, v13

    const/high16 v6, -0x40000000

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    add-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 220
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    add-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    int-to-float v3, v13

    int-to-float v4, v9

    const/4 v5, 0x0

    int-to-float v6, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 223
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 224
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/applications/LinearColorBar;->mLineWidth:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000

    add-float v11, v1, v2

    .line 225
    .local v11, "lineOffset":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    const/high16 v2, -0x40000000

    add-float/2addr v2, v11

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    const/high16 v2, -0x40000000

    add-float/2addr v2, v11

    int-to-float v3, v13

    int-to-float v4, v8

    add-float/2addr v4, v11

    const/4 v5, 0x0

    int-to-float v6, v8

    add-float/2addr v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    add-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sub-float/2addr v2, v11

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 230
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    add-int/lit8 v2, v17, 0x2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    sub-float/2addr v2, v11

    int-to-float v3, v13

    int-to-float v4, v9

    sub-float/2addr v4, v11

    const/4 v5, 0x0

    int-to-float v6, v9

    sub-float/2addr v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 234
    .end local v11    # "lineOffset":F
    .end local v12    # "midBottomY":I
    .end local v13    # "midTopY":I
    .end local v18    # "xoff":I
    :cond_1
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/settings/applications/LinearColorBar;->mLastInterestingLeft:I

    .line 235
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/settings/applications/LinearColorBar;->mLastInterestingRight:I

    .line 238
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mEdgeGradientPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 240
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mColorPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mColorGradientPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 243
    :cond_3
    if-ge v10, v14, :cond_4

    .line 244
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 245
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v14, v1, Landroid/graphics/Rect;->right:I

    .line 246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->mLeftColor:I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->pickColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 248
    sub-int v1, v14, v10

    sub-int v17, v17, v1

    .line 249
    move v10, v14

    .line 252
    :cond_4
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/applications/LinearColorBar;->mLastLeftDiv:I

    .line 253
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/settings/applications/LinearColorBar;->mLastRightDiv:I

    .line 255
    move v14, v15

    .line 257
    if-ge v10, v14, :cond_5

    .line 258
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v14, v1, Landroid/graphics/Rect;->right:I

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->mMiddleColor:I

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->pickColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 262
    sub-int v1, v14, v10

    sub-int v17, v17, v1

    .line 263
    move v10, v14

    .line 267
    :cond_5
    add-int v14, v10, v17

    .line 268
    if-ge v10, v14, :cond_6

    .line 269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v10, v1, Landroid/graphics/Rect;->left:I

    .line 270
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    iput v14, v1, Landroid/graphics/Rect;->right:I

    .line 271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/LinearColorBar;->mRightColor:I

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/settings/applications/LinearColorBar;->pickColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 272
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/LinearColorBar;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/LinearColorBar;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 274
    :cond_6
    return-void

    .line 204
    .end local v8    # "indicatorLeft":I
    .end local v9    # "indicatorRight":I
    :cond_7
    move v8, v14

    .line 205
    .restart local v8    # "indicatorLeft":I
    move v9, v15

    .restart local v9    # "indicatorRight":I
    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 139
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 140
    invoke-direct {p0}, Lcom/android/settings/applications/LinearColorBar;->updateIndicator()V

    .line 141
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 145
    iget-object v1, p0, Lcom/android/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    if-eqz v1, :cond_0

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 160
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 148
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v0, v1

    .line 149
    .local v0, "x":I
    iget v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastLeftDiv:I

    if-ge v0, v1, :cond_1

    .line 150
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    .line 156
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 151
    :cond_1
    iget v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRightDiv:I

    if-ge v0, v1, :cond_2

    .line 152
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    goto :goto_1

    .line 154
    :cond_2
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    goto :goto_1

    .line 146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    iget v1, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    invoke-interface {v0, v1}, Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;->onRegionTapped(I)V

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/LinearColorBar;->mLastRegion:I

    .line 174
    :cond_0
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public setColoredRegions(I)V
    .locals 0
    .param p1, "regions"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/android/settings/applications/LinearColorBar;->mColoredRegions:I

    .line 86
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 87
    return-void
.end method

.method public setColors(III)V
    .locals 0
    .param p1, "red"    # I
    .param p2, "yellow"    # I
    .param p3, "green"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/android/settings/applications/LinearColorBar;->mLeftColor:I

    .line 98
    iput p2, p0, Lcom/android/settings/applications/LinearColorBar;->mMiddleColor:I

    .line 99
    iput p3, p0, Lcom/android/settings/applications/LinearColorBar;->mRightColor:I

    .line 100
    invoke-direct {p0}, Lcom/android/settings/applications/LinearColorBar;->updateIndicator()V

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 102
    return-void
.end method

.method public setOnRegionTappedListener(Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    if-eq p1, v0, :cond_0

    .line 79
    iput-object p1, p0, Lcom/android/settings/applications/LinearColorBar;->mOnRegionTappedListener:Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;

    .line 80
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    .line 82
    :cond_0
    return-void

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRatios(FFF)V
    .locals 0
    .param p1, "red"    # F
    .param p2, "yellow"    # F
    .param p3, "green"    # F

    .prologue
    .line 90
    iput p1, p0, Lcom/android/settings/applications/LinearColorBar;->mRedRatio:F

    .line 91
    iput p2, p0, Lcom/android/settings/applications/LinearColorBar;->mYellowRatio:F

    .line 92
    iput p3, p0, Lcom/android/settings/applications/LinearColorBar;->mGreenRatio:F

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 94
    return-void
.end method

.method public setShowIndicator(Z)V
    .locals 0
    .param p1, "showIndicator"    # Z

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/settings/applications/LinearColorBar;->mShowIndicator:Z

    .line 106
    invoke-direct {p0}, Lcom/android/settings/applications/LinearColorBar;->updateIndicator()V

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 108
    return-void
.end method

.method public setShowingGreen(Z)V
    .locals 1
    .param p1, "showingGreen"    # Z

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/settings/applications/LinearColorBar;->mShowingGreen:Z

    if-eq v0, p1, :cond_0

    .line 112
    iput-boolean p1, p0, Lcom/android/settings/applications/LinearColorBar;->mShowingGreen:Z

    .line 113
    invoke-direct {p0}, Lcom/android/settings/applications/LinearColorBar;->updateIndicator()V

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 116
    :cond_0
    return-void
.end method
