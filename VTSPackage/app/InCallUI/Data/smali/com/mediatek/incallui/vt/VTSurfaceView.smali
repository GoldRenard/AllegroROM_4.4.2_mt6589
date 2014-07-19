.class public Lcom/mediatek/incallui/vt/VTSurfaceView;
.super Landroid/widget/VideoView;
.source "VTSurfaceView.java"


# instance fields
.field private mRequestHeight:I

.field private mRequestWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 16
    iput v0, p0, Lcom/mediatek/incallui/vt/VTSurfaceView;->mRequestWidth:I

    .line 17
    iput v0, p0, Lcom/mediatek/incallui/vt/VTSurfaceView;->mRequestHeight:I

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput v0, p0, Lcom/mediatek/incallui/vt/VTSurfaceView;->mRequestWidth:I

    .line 17
    iput v0, p0, Lcom/mediatek/incallui/vt/VTSurfaceView;->mRequestHeight:I

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    iput v0, p0, Lcom/mediatek/incallui/vt/VTSurfaceView;->mRequestWidth:I

    .line 17
    iput v0, p0, Lcom/mediatek/incallui/vt/VTSurfaceView;->mRequestHeight:I

    .line 29
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 72
    iget v0, p0, Lcom/mediatek/incallui/vt/VTSurfaceView;->mRequestHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/mediatek/incallui/vt/VTSurfaceView;->mRequestHeight:I

    if-eqz v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMeasuredDimension mRequestWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/incallui/vt/VTSurfaceView;->mRequestWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRequestHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mediatek/incallui/vt/VTSurfaceView;->mRequestHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    iget v0, p0, Lcom/mediatek/incallui/vt/VTSurfaceView;->mRequestWidth:I

    iget v1, p0, Lcom/mediatek/incallui/vt/VTSurfaceView;->mRequestHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->onMeasure(II)V

    goto :goto_0
.end method

.method public setVideoDisplaySize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/mediatek/incallui/vt/VTSurfaceView;->mRequestWidth:I

    .line 33
    iput p2, p0, Lcom/mediatek/incallui/vt/VTSurfaceView;->mRequestHeight:I

    .line 34
    return-void
.end method
