.class public Lcom/android/incallui/Rotate3d;
.super Landroid/view/animation/Animation;
.source "Rotate3d.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mCenterX:F

.field private mCenterY:F

.field private mFromDegree:F

.field private mLeft:F

.field private mToDegree:F

.field private mTop:F


# direct methods
.method public constructor <init>(FFFFFF)V
    .locals 0
    .param p1, "fromDegree"    # F
    .param p2, "toDegree"    # F
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "centerX"    # F
    .param p6, "centerY"    # F

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 19
    iput p1, p0, Lcom/android/incallui/Rotate3d;->mFromDegree:F

    .line 20
    iput p2, p0, Lcom/android/incallui/Rotate3d;->mToDegree:F

    .line 21
    iput p3, p0, Lcom/android/incallui/Rotate3d;->mLeft:F

    .line 22
    iput p4, p0, Lcom/android/incallui/Rotate3d;->mTop:F

    .line 23
    iput p5, p0, Lcom/android/incallui/Rotate3d;->mCenterX:F

    .line 24
    iput p6, p0, Lcom/android/incallui/Rotate3d;->mCenterY:F

    .line 25
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    const/4 v7, 0x0

    .line 36
    iget v0, p0, Lcom/android/incallui/Rotate3d;->mFromDegree:F

    .line 37
    .local v0, "FromDegree":F
    iget v5, p0, Lcom/android/incallui/Rotate3d;->mToDegree:F

    iget v6, p0, Lcom/android/incallui/Rotate3d;->mFromDegree:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float v3, v0, v5

    .line 39
    .local v3, "degrees":F
    iget v1, p0, Lcom/android/incallui/Rotate3d;->mCenterX:F

    .line 40
    .local v1, "centerX":F
    iget v2, p0, Lcom/android/incallui/Rotate3d;->mCenterY:F

    .line 41
    .local v2, "centerY":F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 43
    .local v4, "matrix":Landroid/graphics/Matrix;
    const/high16 v5, -0x3d680000

    cmpg-float v5, v3, v5

    if-gtz v5, :cond_0

    .line 44
    const/high16 v3, -0x3d4c0000

    .line 45
    iget-object v5, p0, Lcom/android/incallui/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 46
    iget-object v5, p0, Lcom/android/incallui/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v3}, Landroid/graphics/Camera;->rotateX(F)V

    .line 47
    iget-object v5, p0, Lcom/android/incallui/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 48
    iget-object v5, p0, Lcom/android/incallui/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    .line 63
    :goto_0
    neg-float v5, v1

    neg-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 64
    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 65
    return-void

    .line 49
    :cond_0
    const/high16 v5, 0x42980000

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_1

    .line 50
    const/high16 v3, 0x42b40000

    .line 51
    iget-object v5, p0, Lcom/android/incallui/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 52
    iget-object v5, p0, Lcom/android/incallui/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v3}, Landroid/graphics/Camera;->rotateX(F)V

    .line 53
    iget-object v5, p0, Lcom/android/incallui/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 54
    iget-object v5, p0, Lcom/android/incallui/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 57
    iget-object v5, p0, Lcom/android/incallui/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v7, v7, v1}, Landroid/graphics/Camera;->translate(FFF)V

    .line 58
    iget-object v5, p0, Lcom/android/incallui/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v3}, Landroid/graphics/Camera;->rotateX(F)V

    .line 59
    iget-object v5, p0, Lcom/android/incallui/Rotate3d;->mCamera:Landroid/graphics/Camera;

    neg-float v6, v1

    invoke-virtual {v5, v7, v7, v6}, Landroid/graphics/Camera;->translate(FFF)V

    .line 60
    iget-object v5, p0, Lcom/android/incallui/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v4}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 61
    iget-object v5, p0, Lcom/android/incallui/Rotate3d;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 31
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/Rotate3d;->mCamera:Landroid/graphics/Camera;

    .line 32
    return-void
.end method
