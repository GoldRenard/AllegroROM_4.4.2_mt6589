.class public Lcom/lenovo/setupwizard/view/CircleFlowIndicator;
.super Landroid/view/View;
.source "CircleFlowIndicator.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/lenovo/setupwizard/view/FlowIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/setupwizard/view/CircleFlowIndicator$1;,
        Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;
    }
.end annotation


# static fields
.field private static final STYLE_FILL:I = 0x1

.field private static final STYLE_STROKE:I


# instance fields
.field private activeRadius:F

.field private animation:Landroid/view/animation/Animation;

.field public animationListener:Landroid/view/animation/Animation$AnimationListener;

.field private circleSeparation:F

.field private currentScroll:I

.field private fadeOutTime:I

.field private flowWidth:I

.field private final mPaintActive:Landroid/graphics/Paint;

.field private final mPaintInactive:Landroid/graphics/Paint;

.field private radius:F

.field private stockWidth:F

.field private timer:Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;

.field private viewFlow:Lcom/lenovo/setupwizard/view/ViewFlow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, 0x40000000

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    const/high16 v0, 0x40800000

    iput v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->radius:F

    .line 23
    iput v1, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->stockWidth:F

    .line 24
    iget v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->radius:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->radius:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->circleSeparation:F

    .line 25
    const/high16 v0, 0x3f000000

    iput v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->activeRadius:F

    .line 26
    iput v2, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->fadeOutTime:I

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    .line 30
    iput v2, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->currentScroll:I

    .line 31
    iput v2, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->flowWidth:I

    .line 33
    iput-object p0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 43
    const/4 v0, -0x1

    const v1, 0x55ffffff

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->initColors(IIII)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/high16 v7, 0x40800000

    iput v7, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->radius:F

    .line 23
    const/high16 v7, 0x40000000

    iput v7, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->stockWidth:F

    .line 24
    const/high16 v7, 0x40000000

    iget v8, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->radius:F

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->radius:F

    add-float/2addr v7, v8

    iput v7, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->circleSeparation:F

    .line 25
    const/high16 v7, 0x3f000000

    iput v7, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->activeRadius:F

    .line 26
    const/4 v7, 0x0

    iput v7, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->fadeOutTime:I

    .line 27
    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    .line 28
    new-instance v7, Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v7, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    .line 30
    const/4 v7, 0x0

    iput v7, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->currentScroll:I

    .line 31
    const/4 v7, 0x0

    iput v7, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->flowWidth:I

    .line 33
    iput-object p0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->animationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 55
    sget-object v7, Lcom/android/settings/R$styleable;->CircleFlowIndicator:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x7

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 62
    .local v3, "activeType":I
    const/4 v2, -0x1

    .line 65
    .local v2, "activeDefaultColor":I
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 70
    .local v1, "activeColor":I
    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 73
    .local v6, "inactiveType":I
    const v5, 0x44ffffff

    .line 75
    .local v5, "inactiveDefaultColor":I
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 80
    .local v4, "inactiveColor":I
    const/4 v7, 0x2

    const/high16 v8, 0x40800000

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->radius:F

    .line 81
    const/4 v7, 0x3

    const/high16 v8, 0x40800000

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->stockWidth:F

    .line 83
    const/16 v7, 0x8

    const/high16 v8, 0x40000000

    iget v9, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->radius:F

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->radius:F

    add-float/2addr v8, v9

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->circleSeparation:F

    .line 84
    const/16 v7, 0x9

    const/high16 v8, 0x3f000000

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->activeRadius:F

    .line 86
    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->fadeOutTime:I

    .line 88
    invoke-direct {p0, v1, v4, v3, v6}, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->initColors(IIII)V

    .line 89
    return-void
.end method

.method static synthetic access$200(Lcom/lenovo/setupwizard/view/CircleFlowIndicator;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/setupwizard/view/CircleFlowIndicator;

    .prologue
    .line 17
    iget v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->fadeOutTime:I

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/setupwizard/view/CircleFlowIndicator;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/setupwizard/view/CircleFlowIndicator;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->animation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$302(Lcom/lenovo/setupwizard/view/CircleFlowIndicator;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/setupwizard/view/CircleFlowIndicator;
    .param p1, "x1"    # Landroid/view/animation/Animation;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->animation:Landroid/view/animation/Animation;

    return-object p1
.end method

.method private initColors(IIII)V
    .locals 2
    .param p1, "activeColor"    # I
    .param p2, "inactiveColor"    # I
    .param p3, "activeType"    # I
    .param p4, "inactiveType"    # I

    .prologue
    .line 94
    packed-switch p4, :pswitch_data_0

    .line 99
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    iget v1, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->stockWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    packed-switch p3, :pswitch_data_1

    .line 110
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    :goto_1
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    return-void

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 107
    :pswitch_1
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_1

    .line 94
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 105
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private measureHeight(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 258
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 261
    .local v2, "specSize":I
    const/high16 v3, 0x40000000

    if-ne v1, v3, :cond_1

    .line 262
    move v0, v2

    .line 273
    :cond_0
    :goto_0
    return v0

    .line 266
    :cond_1
    const/high16 v3, 0x40000000

    iget v4, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->radius:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 269
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 270
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 8
    .param p1, "measureSpec"    # I

    .prologue
    .line 222
    const/4 v1, 0x0

    .line 223
    .local v1, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 224
    .local v2, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 227
    .local v3, "specSize":I
    const/high16 v5, 0x40000000

    if-ne v2, v5, :cond_1

    .line 228
    move v1, v3

    .line 245
    :cond_0
    :goto_0
    return v1

    .line 232
    :cond_1
    const/4 v0, 0x3

    .line 233
    .local v0, "count":I
    iget-object v5, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->viewFlow:Lcom/lenovo/setupwizard/view/ViewFlow;

    if-eqz v5, :cond_2

    .line 234
    iget-object v5, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->viewFlow:Lcom/lenovo/setupwizard/view/ViewFlow;

    invoke-virtual {v5}, Lcom/lenovo/setupwizard/view/ViewFlow;->getViewsCount()I

    move-result v0

    .line 236
    :cond_2
    iget v5, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->circleSeparation:F

    const/high16 v6, 0x40000000

    iget v7, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->radius:F

    mul-float/2addr v6, v7

    sub-float v4, v5, v6

    .line 237
    .local v4, "temp":F
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    mul-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    iget v7, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->radius:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-int/lit8 v6, v0, -0x1

    int-to-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    const/high16 v6, 0x3f800000

    add-float/2addr v5, v6

    float-to-int v1, v5

    .line 241
    const/high16 v5, -0x80000000

    if-ne v2, v5, :cond_0

    .line 242
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private resetTimer()V
    .locals 2

    .prologue
    .line 303
    iget v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->fadeOutTime:I

    if-lez v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->timer:Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->timer:Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;

    # getter for: Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;->_run:Z
    invoke-static {v0}, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;->access$000(Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 307
    :cond_0
    new-instance v0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;-><init>(Lcom/lenovo/setupwizard/view/CircleFlowIndicator;Lcom/lenovo/setupwizard/view/CircleFlowIndicator$1;)V

    iput-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->timer:Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;

    .line 308
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->timer:Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 314
    :cond_1
    :goto_0
    return-void

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->timer:Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;

    invoke-virtual {v0}, Lcom/lenovo/setupwizard/view/CircleFlowIndicator$FadeTimer;->resetTimer()V

    goto :goto_0
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 363
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 364
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 368
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 372
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 123
    const/4 v1, 0x3

    .line 124
    .local v1, "count":I
    iget-object v5, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->viewFlow:Lcom/lenovo/setupwizard/view/ViewFlow;

    if-eqz v5, :cond_0

    .line 125
    iget-object v5, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->viewFlow:Lcom/lenovo/setupwizard/view/ViewFlow;

    invoke-virtual {v5}, Lcom/lenovo/setupwizard/view/ViewFlow;->getViewsCount()I

    move-result v1

    .line 129
    :cond_0
    const/4 v0, 0x0

    .line 131
    .local v0, "centeringOffset":F
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    .line 133
    .local v4, "leftPadding":I
    const/4 v2, 0x0

    .line 134
    .local v2, "cx":F
    iget v5, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->flowWidth:I

    if-eqz v5, :cond_1

    .line 136
    iget v5, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->currentScroll:I

    int-to-float v5, v5

    iget v6, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->circleSeparation:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->flowWidth:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 140
    :cond_1
    const/4 v3, 0x0

    .local v3, "iLoop":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 141
    int-to-float v5, v4

    iget v6, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->radius:F

    add-float/2addr v5, v6

    int-to-float v6, v3

    iget v7, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->circleSeparation:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-float/2addr v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->radius:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->radius:F

    iget-object v8, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 144
    iget v5, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->circleSeparation:F

    div-float v5, v2, v5

    float-to-int v5, v5

    if-ne v5, v3, :cond_2

    .line 145
    int-to-float v5, v4

    iget v6, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->radius:F

    add-float/2addr v5, v6

    int-to-float v6, v3

    iget v7, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->circleSeparation:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    add-float/2addr v5, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->radius:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->radius:F

    iget v8, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->activeRadius:F

    add-float/2addr v7, v8

    iget-object v8, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 140
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->measureWidth(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->measureHeight(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 212
    return-void
.end method

.method public onScrolled(IIII)V
    .locals 2
    .param p1, "h"    # I
    .param p2, "v"    # I
    .param p3, "oldh"    # I
    .param p4, "oldv"    # I

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 193
    invoke-direct {p0}, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->resetTimer()V

    .line 194
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->viewFlow:Lcom/lenovo/setupwizard/view/ViewFlow;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->flowWidth:I

    .line 195
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->viewFlow:Lcom/lenovo/setupwizard/view/ViewFlow;

    invoke-virtual {v0}, Lcom/lenovo/setupwizard/view/ViewFlow;->getViewsCount()I

    move-result v0

    iget v1, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->flowWidth:I

    mul-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->viewFlow:Lcom/lenovo/setupwizard/view/ViewFlow;

    invoke-virtual {v0}, Lcom/lenovo/setupwizard/view/ViewFlow;->getViewsCount()I

    move-result v0

    iget v1, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->flowWidth:I

    mul-int/2addr v0, v1

    rem-int v0, p1, v0

    iput v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->currentScroll:I

    .line 200
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 201
    return-void

    .line 198
    :cond_0
    iput p1, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->currentScroll:I

    goto :goto_0
.end method

.method public onSwitched(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 167
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->mPaintActive:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 284
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 285
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 294
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->mPaintInactive:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 295
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 296
    return-void
.end method

.method public setViewFlow(Lcom/lenovo/setupwizard/view/ViewFlow;)V
    .locals 1
    .param p1, "view"    # Lcom/lenovo/setupwizard/view/ViewFlow;

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->resetTimer()V

    .line 179
    iput-object p1, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->viewFlow:Lcom/lenovo/setupwizard/view/ViewFlow;

    .line 180
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->viewFlow:Lcom/lenovo/setupwizard/view/ViewFlow;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/lenovo/setupwizard/view/CircleFlowIndicator;->flowWidth:I

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 182
    return-void
.end method
