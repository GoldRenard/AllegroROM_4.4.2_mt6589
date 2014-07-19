.class Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;
.super Landroid/view/HardwareRenderer$GraphDataProvider;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HardwareRenderer$GlRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawPerformanceDataProvider"
.end annotation


# instance fields
.field private final mGraphType:I

.field private mHorizontalMargin:I

.field private mHorizontalUnit:I

.field private mThresholdStroke:I

.field private mVerticalUnit:I

.field final synthetic this$0:Landroid/view/HardwareRenderer$GlRenderer;


# direct methods
.method constructor <init>(Landroid/view/HardwareRenderer$GlRenderer;I)V
    .locals 0
    .param p2, "graphType"    # I

    .prologue
    .line 1854
    iput-object p1, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->this$0:Landroid/view/HardwareRenderer$GlRenderer;

    invoke-direct {p0, p1}, Landroid/view/HardwareRenderer$GraphDataProvider;-><init>(Landroid/view/HardwareRenderer;)V

    .line 1855
    iput p2, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mGraphType:I

    .line 1856
    return-void
.end method


# virtual methods
.method getCurrentFrame()I
    .locals 1

    .prologue
    .line 1910
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->this$0:Landroid/view/HardwareRenderer$GlRenderer;

    iget v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileCurrentFrame:I

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method getData()[F
    .locals 1

    .prologue
    .line 1890
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->this$0:Landroid/view/HardwareRenderer$GlRenderer;

    iget-object v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    return-object v0
.end method

.method getElementCount()I
    .locals 1

    .prologue
    .line 1905
    const/4 v0, 0x3

    return v0
.end method

.method getFrameCount()I
    .locals 1

    .prologue
    .line 1900
    iget-object v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->this$0:Landroid/view/HardwareRenderer$GlRenderer;

    iget-object v0, v0, Landroid/view/HardwareRenderer$GlRenderer;->mProfileData:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method getGraphType()I
    .locals 1

    .prologue
    .line 1870
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mGraphType:I

    return v0
.end method

.method getHorizontaUnitMargin()I
    .locals 1

    .prologue
    .line 1885
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mHorizontalMargin:I

    return v0
.end method

.method getHorizontalUnitSize()I
    .locals 1

    .prologue
    .line 1880
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mHorizontalUnit:I

    return v0
.end method

.method getThreshold()F
    .locals 1

    .prologue
    .line 1895
    const/high16 v0, 0x41800000

    return v0
.end method

.method getVerticalUnitSize()I
    .locals 1

    .prologue
    .line 1875
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mVerticalUnit:I

    return v0
.end method

.method prepare(Landroid/util/DisplayMetrics;)V
    .locals 2
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;

    .prologue
    .line 1860
    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    .line 1862
    .local v0, "density":F
    const/4 v1, 0x7

    # invokes: Landroid/view/HardwareRenderer$GlRenderer;->dpToPx(IF)I
    invoke-static {v1, v0}, Landroid/view/HardwareRenderer$GlRenderer;->access$400(IF)I

    move-result v1

    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mVerticalUnit:I

    .line 1863
    const/4 v1, 0x3

    # invokes: Landroid/view/HardwareRenderer$GlRenderer;->dpToPx(IF)I
    invoke-static {v1, v0}, Landroid/view/HardwareRenderer$GlRenderer;->access$400(IF)I

    move-result v1

    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mHorizontalUnit:I

    .line 1864
    const/4 v1, 0x0

    # invokes: Landroid/view/HardwareRenderer$GlRenderer;->dpToPx(IF)I
    invoke-static {v1, v0}, Landroid/view/HardwareRenderer$GlRenderer;->access$400(IF)I

    move-result v1

    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mHorizontalMargin:I

    .line 1865
    const/4 v1, 0x2

    # invokes: Landroid/view/HardwareRenderer$GlRenderer;->dpToPx(IF)I
    invoke-static {v1, v0}, Landroid/view/HardwareRenderer$GlRenderer;->access$400(IF)I

    move-result v1

    iput v1, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mThresholdStroke:I

    .line 1866
    return-void
.end method

.method setupCurrentFramePaint(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1927
    const v0, -0x30a055b3

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1928
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mGraphType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mThresholdStroke:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1929
    :cond_0
    return-void
.end method

.method setupGraphPaint(Landroid/graphics/Paint;I)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;
    .param p2, "elementIndex"    # I

    .prologue
    .line 1915
    # getter for: Landroid/view/HardwareRenderer$GlRenderer;->PROFILE_DRAW_COLORS:[I
    invoke-static {}, Landroid/view/HardwareRenderer$GlRenderer;->access$500()[I

    move-result-object v0

    aget v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1916
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mGraphType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mThresholdStroke:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1917
    :cond_0
    return-void
.end method

.method setupThresholdPaint(Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1921
    const v0, -0xa055b3

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1922
    iget v0, p0, Landroid/view/HardwareRenderer$GlRenderer$DrawPerformanceDataProvider;->mThresholdStroke:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1923
    return-void
.end method
