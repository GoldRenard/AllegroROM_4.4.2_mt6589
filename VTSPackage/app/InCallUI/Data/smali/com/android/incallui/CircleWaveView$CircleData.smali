.class Lcom/android/incallui/CircleWaveView$CircleData;
.super Ljava/lang/Object;
.source "CircleWaveView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CircleWaveView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CircleData"
.end annotation


# instance fields
.field public c1:I

.field public c2:I

.field public r1:F

.field public r2:F

.field final synthetic this$0:Lcom/android/incallui/CircleWaveView;

.field public w1:I

.field public w2:I


# direct methods
.method public constructor <init>(Lcom/android/incallui/CircleWaveView;IIIIII)V
    .locals 2
    .param p2, "r1"    # I
    .param p3, "c1"    # I
    .param p4, "w1"    # I
    .param p5, "r2"    # I
    .param p6, "c2"    # I
    .param p7, "w2"    # I

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/incallui/CircleWaveView$CircleData;->this$0:Lcom/android/incallui/CircleWaveView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 104
    .local v0, "scale":F
    int-to-float v1, p2

    # invokes: Lcom/android/incallui/CircleWaveView;->dip2px(Landroid/view/View;F)F
    invoke-static {p1, p1, v1}, Lcom/android/incallui/CircleWaveView;->access$000(Lcom/android/incallui/CircleWaveView;Landroid/view/View;F)F

    move-result v1

    iput v1, p0, Lcom/android/incallui/CircleWaveView$CircleData;->r1:F

    .line 105
    iput p3, p0, Lcom/android/incallui/CircleWaveView$CircleData;->c1:I

    .line 106
    int-to-float v1, p4

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/incallui/CircleWaveView$CircleData;->w1:I

    .line 107
    int-to-float v1, p5

    # invokes: Lcom/android/incallui/CircleWaveView;->dip2px(Landroid/view/View;F)F
    invoke-static {p1, p1, v1}, Lcom/android/incallui/CircleWaveView;->access$000(Lcom/android/incallui/CircleWaveView;Landroid/view/View;F)F

    move-result v1

    iput v1, p0, Lcom/android/incallui/CircleWaveView$CircleData;->r2:F

    .line 108
    iput p6, p0, Lcom/android/incallui/CircleWaveView$CircleData;->c2:I

    .line 109
    int-to-float v1, p7

    mul-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lcom/android/incallui/CircleWaveView$CircleData;->w2:I

    .line 110
    return-void
.end method
