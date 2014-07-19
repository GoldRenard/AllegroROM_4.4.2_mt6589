.class public Lcom/android/incallui/widget/multiwaveview/GlowPadView;
.super Landroid/view/View;
.source "GlowPadView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;,
        Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final HIDE_ANIMATION_DELAY:I = 0xc8

.field private static final HIDE_ANIMATION_DURATION:I = 0xc8

.field private static final INITIAL_SHOW_HANDLE_DURATION:I = 0xc8

.field private static final RETURN_TO_HOME_DELAY:I = 0x4b0

.field private static final RETURN_TO_HOME_DURATION:I = 0xc8

.field private static final REVEAL_GLOW_DELAY:I = 0x0

.field private static final REVEAL_GLOW_DURATION:I = 0x0

.field private static final RING_SCALE_COLLAPSED:F = 0.5f

.field private static final RING_SCALE_EXPANDED:F = 1.0f

.field private static final SHOW_ANIMATION_DELAY:I = 0x32

.field private static final SHOW_ANIMATION_DURATION:I = 0xc8

.field private static final SNAP_MARGIN_DEFAULT:F = 20.0f

.field private static final STATE_FINISH:I = 0x5

.field private static final STATE_FIRST_TOUCH:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_SNAP:I = 0x4

.field private static final STATE_START:I = 0x1

.field private static final STATE_TRACKING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GlowPadView"

.field private static final TAP_RADIUS_SCALE_ACCESSIBILITY_ENABLED:F = 1.3f

.field private static final TARGET_SCALE_COLLAPSED:F = 0.8f

.field private static final TARGET_SCALE_EXPANDED:F = 1.0f

.field private static final WAVE_ANIMATION_DURATION:I = 0x546


# instance fields
.field private mActiveTarget:I

.field private mAllowScaling:Z

.field private mAlphaEnable:Z

.field private mAlwaysTrackFinger:Z

.field private mAnimatingTargets:Z

.field private mBackgroundAnimator:Lcom/android/incallui/widget/multiwaveview/Tweener;

.field private mCustomHandleDrawable:Z

.field private mDirectionDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectionDescriptionsResourceId:I

.field private mDragging:Z

.field private mFeedbackCount:I

.field private mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

.field private mGlowRadius:F

.field private mGrabbedState:I

.field private mGravity:I

.field private mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

.field private mHorizontalInset:I

.field private mInitialLayout:Z

.field private mInnerRadius:F

.field private mMaxTargetHeight:I

.field private mMaxTargetWidth:I

.field private mNewTargetResources:I

.field private mOnTriggerListener:Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;

.field private mOuterRadius:F

.field private mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

.field private mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

.field private mPointerId:I

.field private mResetListener:Landroid/animation/Animator$AnimatorListener;

.field private mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

.field private mRingScaleFactor:F

.field private mSnapMargin:F

.field private mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

.field private mTargetDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDescriptionsResourceId:I

.field private mTargetDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/widget/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetResourceId:I

.field private mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

.field private mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mVerticalInset:I

.field private mVibrationDuration:I

.field private mVibrator:Landroid/os/Vibrator;

.field private mWaveAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

.field private mWaveCenterX:F

.field private mWaveCenterY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 220
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 100
    new-instance v7, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v7, p0, v3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;Lcom/android/incallui/widget/multiwaveview/GlowPadView$1;)V

    iput-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    .line 101
    new-instance v7, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v7, p0, v3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;Lcom/android/incallui/widget/multiwaveview/GlowPadView$1;)V

    iput-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    .line 102
    new-instance v7, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-direct {v7, p0, v3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;-><init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;Lcom/android/incallui/widget/multiwaveview/GlowPadView$1;)V

    iput-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    .line 110
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    .line 111
    iput v8, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    .line 113
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 119
    const/high16 v7, 0x3f800000

    iput v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    .line 122
    iput v11, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 123
    iput v11, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 163
    new-instance v7, Lcom/android/incallui/widget/multiwaveview/GlowPadView$1;

    invoke-direct {v7, p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$1;-><init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)V

    iput-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    .line 170
    new-instance v7, Lcom/android/incallui/widget/multiwaveview/GlowPadView$2;

    invoke-direct {v7, p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$2;-><init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)V

    iput-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    .line 178
    new-instance v7, Lcom/android/incallui/widget/multiwaveview/GlowPadView$3;

    invoke-direct {v7, p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$3;-><init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)V

    iput-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 185
    new-instance v7, Lcom/android/incallui/widget/multiwaveview/GlowPadView$4;

    invoke-direct {v7, p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$4;-><init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)V

    iput-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    .line 201
    const/16 v7, 0x30

    iput v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGravity:I

    .line 202
    iput-boolean v9, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mInitialLayout:Z

    .line 208
    iput-boolean v9, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAlphaEnable:Z

    .line 209
    iput-boolean v8, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mCustomHandleDrawable:Z

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 223
    .local v5, "res":Landroid/content/res/Resources;
    sget-object v7, Lcom/android/incallui/R$styleable;->GlowPadView:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 224
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x7

    iget v10, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    .line 225
    const/16 v7, 0x8

    iget v10, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 226
    const/16 v7, 0xb

    iget v10, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 227
    const/16 v7, 0xa

    iget v10, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    .line 229
    const/16 v7, 0xc

    iget v10, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    .line 231
    const/16 v7, 0xe

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAllowScaling:Z

    .line 232
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 233
    .local v1, "handle":Landroid/util/TypedValue;
    new-instance v10, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    if-eqz v1, :cond_3

    iget v7, v1, Landroid/util/TypedValue;->resourceId:I

    :goto_0
    invoke-direct {v10, v5, v7, v12}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;II)V

    iput-object v10, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 234
    iget-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    sget-object v10, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v7, v10}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 235
    new-instance v7, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    const/4 v10, 0x5

    invoke-direct {p0, v0, v10}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v10

    invoke-direct {v7, v5, v10, v9}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;II)V

    iput-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 238
    const/16 v7, 0xd

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    .line 240
    const/4 v7, 0x6

    invoke-direct {p0, v0, v7}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getResourceId(Landroid/content/res/TypedArray;I)I

    move-result v4

    .line 241
    .local v4, "pointId":I
    if-eqz v4, :cond_0

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 242
    .local v3, "pointDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    const/16 v7, 0x9

    invoke-virtual {v0, v7, v11}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    .line 244
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 247
    .local v2, "outValue":Landroid/util/TypedValue;
    invoke-virtual {v0, v9, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 248
    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {p0, v7}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    .line 250
    :cond_1
    iget-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_4

    .line 251
    :cond_2
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Must specify at least one target drawable"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v2    # "outValue":Landroid/util/TypedValue;
    .end local v3    # "pointDrawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "pointId":I
    :cond_3
    move v7, v8

    .line 233
    goto :goto_0

    .line 255
    .restart local v2    # "outValue":Landroid/util/TypedValue;
    .restart local v3    # "pointDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "pointId":I
    :cond_4
    invoke-virtual {v0, v12, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 256
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    .line 257
    .local v6, "resourceId":I
    if-nez v6, :cond_5

    .line 258
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Must specify target descriptions"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 260
    :cond_5
    invoke-virtual {p0, v6}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 264
    .end local v6    # "resourceId":I
    :cond_6
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 265
    iget v6, v2, Landroid/util/TypedValue;->resourceId:I

    .line 266
    .restart local v6    # "resourceId":I
    if-nez v6, :cond_7

    .line 267
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Must specify direction descriptions"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 269
    :cond_7
    invoke-virtual {p0, v6}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 272
    .end local v6    # "resourceId":I
    :cond_8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 276
    const/16 v7, 0x30

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGravity:I

    .line 277
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 280
    iget v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    if-lez v7, :cond_9

    move v8, v9

    :cond_9
    invoke-virtual {p0, v8}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setVibrateEnabled(Z)V

    .line 282
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->assignDefaultsIfNeeded()V

    .line 284
    new-instance v7, Lcom/android/incallui/widget/multiwaveview/PointCloud;

    invoke-direct {v7, v3}, Lcom/android/incallui/widget/multiwaveview/PointCloud;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    .line 285
    iget-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    iget v8, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    iget v9, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    invoke-virtual {v7, v8, v9}, Lcom/android/incallui/widget/multiwaveview/PointCloud;->makePointCloud(FF)V

    .line 286
    iget-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    iget-object v7, v7, Lcom/android/incallui/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;

    iget v8, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    invoke-virtual {v7, v8}, Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;->setRadius(F)V

    .line 287
    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/incallui/widget/multiwaveview/GlowPadView;IFF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/widget/multiwaveview/GlowPadView;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->dispatchOnFinishFinalAnimation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mNewTargetResources:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/incallui/widget/multiwaveview/GlowPadView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/widget/multiwaveview/GlowPadView;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mNewTargetResources:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/incallui/widget/multiwaveview/GlowPadView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/widget/multiwaveview/GlowPadView;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/incallui/widget/multiwaveview/GlowPadView;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/widget/multiwaveview/GlowPadView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/incallui/widget/multiwaveview/GlowPadView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/widget/multiwaveview/GlowPadView;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)Lcom/android/incallui/widget/multiwaveview/PointCloud;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/widget/multiwaveview/GlowPadView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    return-object v0
.end method

.method private announceTargets()V
    .locals 8

    .prologue
    .line 1289
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1290
    .local v5, "utterance":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1291
    .local v2, "targetCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1292
    invoke-direct {p0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v3

    .line 1293
    .local v3, "targetDescription":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getDirectionDescription(I)Ljava/lang/String;

    move-result-object v0

    .line 1294
    .local v0, "directionDescription":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1296
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1297
    .local v4, "text":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    .end local v4    # "text":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1300
    .end local v0    # "directionDescription":Ljava/lang/String;
    .end local v3    # "targetDescription":Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1301
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1303
    :cond_2
    return-void
.end method

.method private assignDefaultsIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1069
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    .line 1072
    :cond_0
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    .line 1073
    const/4 v0, 0x1

    const/high16 v1, 0x41a00000

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    .line 1076
    :cond_1
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 1077
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41200000

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mInnerRadius:F

    .line 1079
    :cond_2
    return-void
.end method

.method private computeInsets(II)V
    .locals 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v3, 0x0

    .line 1082
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    .line 1083
    .local v1, "layoutDirection":I
    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGravity:I

    invoke-static {v2, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1085
    .local v0, "absoluteGravity":I
    and-int/lit8 v2, v0, 0x7

    packed-switch v2, :pswitch_data_0

    .line 1094
    :pswitch_0
    div-int/lit8 v2, p1, 0x2

    iput v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHorizontalInset:I

    .line 1097
    :goto_0
    and-int/lit8 v2, v0, 0x70

    sparse-switch v2, :sswitch_data_0

    .line 1106
    div-int/lit8 v2, p2, 0x2

    iput v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVerticalInset:I

    .line 1109
    :goto_1
    return-void

    .line 1087
    :pswitch_1
    iput v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 1090
    :pswitch_2
    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHorizontalInset:I

    goto :goto_0

    .line 1099
    :sswitch_0
    iput v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 1102
    :sswitch_1
    iput p2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVerticalInset:I

    goto :goto_1

    .line 1085
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1097
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method private computeScaleFactor(IIII)F
    .locals 7
    .param p1, "desiredWidth"    # I
    .param p2, "desiredHeight"    # I
    .param p3, "actualWidth"    # I
    .param p4, "actualHeight"    # I

    .prologue
    const/high16 v4, 0x3f800000

    .line 1119
    iget-boolean v5, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAllowScaling:Z

    if-nez v5, :cond_0

    .line 1155
    :goto_0
    return v4

    .line 1121
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    .line 1122
    .local v1, "layoutDirection":I
    iget v5, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGravity:I

    invoke-static {v5, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    .line 1124
    .local v0, "absoluteGravity":I
    const/high16 v2, 0x3f800000

    .line 1125
    .local v2, "scaleX":F
    const/high16 v3, 0x3f800000

    .line 1131
    .local v3, "scaleY":F
    and-int/lit8 v5, v0, 0x7

    packed-switch v5, :pswitch_data_0

    .line 1137
    :pswitch_0
    if-le p1, p3, :cond_1

    .line 1138
    int-to-float v5, p3

    mul-float/2addr v5, v4

    iget v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    sub-int v6, p1, v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 1143
    :cond_1
    :pswitch_1
    and-int/lit8 v5, v0, 0x70

    sparse-switch v5, :sswitch_data_0

    .line 1149
    if-le p2, p4, :cond_2

    .line 1150
    int-to-float v5, p4

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    div-float v3, v4, v5

    .line 1155
    :cond_2
    :sswitch_0
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    goto :goto_0

    .line 1131
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1143
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method private deactivateTargets()V
    .locals 4

    .prologue
    .line 468
    iget-object v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 469
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 470
    iget-object v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 471
    .local v2, "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    sget-object v3, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 469
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    .end local v2    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 474
    return-void
.end method

.method private dispatchOnFinishFinalAnimation()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;->onFinishFinalAnimation()V

    .line 491
    :cond_0
    return-void
.end method

.method private dispatchTriggerEvent(I)V
    .locals 1
    .param p1, "whichTarget"    # I

    .prologue
    .line 481
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->vibrate()V

    .line 482
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 485
    :cond_0
    return-void
.end method

.method private dist2(FF)F
    .locals 2
    .param p1, "dx"    # F
    .param p2, "dy"    # F

    .prologue
    .line 1272
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private doFinish()V
    .locals 8

    .prologue
    const/16 v7, 0xc8

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 494
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    .line 495
    .local v0, "activeTarget":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    move v1, v2

    .line 497
    .local v1, "targetHit":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 498
    const-string v2, "GlowPadView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finish with target hit = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-direct {p0, v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->highlightSelected(I)V

    .line 503
    const/16 v2, 0x4b0

    iget-object v4, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mResetListener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v7, v2, v6, v4}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 504
    invoke-direct {p0, v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->dispatchTriggerEvent(I)V

    .line 505
    iget-boolean v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-nez v2, :cond_0

    .line 507
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 515
    :cond_0
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setGrabbedState(I)V

    .line 516
    return-void

    .end local v1    # "targetHit":Z
    :cond_1
    move v1, v3

    .line 495
    goto :goto_0

    .line 511
    .restart local v1    # "targetHit":Z
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mResetListenerWithPing:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, v7, v3, v6, v4}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 512
    invoke-direct {p0, v2, v3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    goto :goto_1
.end method

.method private dump()V
    .locals 3

    .prologue
    .line 295
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outer Radius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SnapMargin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FeedbackCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VibrationDuration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlowRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WaveCenterY = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method

.method private getDirectionDescription(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1319
    :cond_0
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    .line 1320
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1321
    const-string v0, "GlowPadView"

    const-string v1, "The number of target drawables must be equal to the number of direction descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    const/4 v0, 0x0

    .line 1326
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private getResourceId(Landroid/content/res/TypedArray;I)I
    .locals 2
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "id"    # I

    .prologue
    .line 290
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 291
    .local v0, "tv":Landroid/util/TypedValue;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method

.method private getRingHeight()F
    .locals 4

    .prologue
    .line 1163
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000

    iget v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private getRingWidth()F
    .locals 4

    .prologue
    .line 1159
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000

    iget v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private getScaledGlowRadiusSquared()F
    .locals 4

    .prologue
    .line 1277
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1280
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1281
    const v2, 0x3fa66666

    iget v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    mul-float v1, v2, v3

    .line 1285
    .local v1, "scaledTapRadius":F
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->square(F)F

    move-result v2

    return v2

    .line 1283
    .end local v1    # "scaledTapRadius":F
    :cond_0
    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowRadius:F

    .restart local v1    # "scaledTapRadius":F
    goto :goto_0
.end method

.method private getTargetDescription(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1306
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1307
    :cond_0
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    invoke-direct {p0, v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->loadDescriptions(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    .line 1308
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1309
    const-string v0, "GlowPadView"

    const-string v1, "The number of target drawables must be equal to the number of target descriptions."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    const/4 v0, 0x0

    .line 1314
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private handleCancel(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 899
    iget-boolean v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDragging:Z

    if-eqz v1, :cond_0

    const-string v1, "GlowPadView"

    const-string v2, "** Handle CANCEL"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_0
    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 909
    .local v0, "actionIndex":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 910
    :cond_1
    const/4 v1, 0x5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 911
    return-void
.end method

.method private handleDown(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 878
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 879
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 880
    .local v1, "eventX":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 881
    .local v2, "eventY":F
    const/4 v3, 0x1

    invoke-direct {p0, v3, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 882
    invoke-direct {p0, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->trySwitchToFirstTouchState(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 883
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDragging:Z

    .line 888
    :goto_0
    return-void

    .line 885
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointerId:I

    .line 886
    invoke-direct {p0, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    goto :goto_0
.end method

.method private handleMove(Landroid/view/MotionEvent;)V
    .locals 37
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 914
    const/4 v6, -0x1

    .line 915
    .local v6, "activeTarget":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v12

    .line 916
    .local v12, "historySize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    .line 917
    .local v27, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/widget/multiwaveview/TargetDrawable;>;"
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 918
    .local v17, "ntargets":I
    const/16 v31, 0x0

    .line 919
    .local v31, "x":F
    const/16 v32, 0x0

    .line 920
    .local v32, "y":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointerId:I

    move/from16 v33, v0

    move-object/from16 v0, p1

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 922
    .local v5, "actionIndex":I
    const/16 v33, -0x1

    move/from16 v0, v33

    if-ne v5, v0, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 926
    :cond_1
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_1
    add-int/lit8 v33, v12, 0x1

    move/from16 v0, v33

    if-ge v14, v0, :cond_b

    .line 927
    if-ge v14, v12, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v14}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v10

    .line 929
    .local v10, "eventX":F
    :goto_2
    if-ge v14, v12, :cond_7

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v14}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v11

    .line 932
    .local v11, "eventY":F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    move/from16 v33, v0

    sub-float v29, v10, v33

    .line 933
    .local v29, "tx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    move/from16 v33, v0

    sub-float v30, v11, v33

    .line 934
    .local v30, "ty":F
    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v33

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v33

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v28, v0

    .line 935
    .local v28, "touchRadius":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v33, v0

    cmpl-float v33, v28, v33

    if-lez v33, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v33, v0

    div-float v18, v33, v28

    .line 936
    .local v18, "scale":F
    :goto_4
    mul-float v15, v29, v18

    .line 937
    .local v15, "limitX":F
    mul-float v16, v30, v18

    .line 938
    .local v16, "limitY":F
    move/from16 v0, v30

    neg-float v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    move/from16 v0, v29

    float-to-double v0, v0

    move-wide/from16 v35, v0

    invoke-static/range {v33 .. v36}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    .line 940
    .local v8, "angleRad":D
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v33, v0

    if-nez v33, :cond_2

    .line 941
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->trySwitchToFirstTouchState(FF)Z

    .line 944
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v33, v0

    if-eqz v33, :cond_a

    .line 946
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    move/from16 v33, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    move/from16 v34, v0

    mul-float v33, v33, v34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mSnapMargin:F

    move/from16 v34, v0

    sub-float v20, v33, v34

    .line 947
    .local v20, "snapRadius":F
    mul-float v19, v20, v20

    .line 949
    .local v19, "snapDistance2":F
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5
    move/from16 v0, v17

    if-ge v13, v0, :cond_a

    .line 950
    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 952
    .local v21, "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    int-to-double v0, v13

    move-wide/from16 v33, v0

    const-wide/high16 v35, 0x3fe0000000000000L

    sub-double v33, v33, v35

    const-wide/high16 v35, 0x4000000000000000L

    mul-double v33, v33, v35

    const-wide v35, 0x400921fb54442d18L

    mul-double v33, v33, v35

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v35, v0

    div-double v25, v33, v35

    .line 953
    .local v25, "targetMinRad":D
    int-to-double v0, v13

    move-wide/from16 v33, v0

    const-wide/high16 v35, 0x3fe0000000000000L

    add-double v33, v33, v35

    const-wide/high16 v35, 0x4000000000000000L

    mul-double v33, v33, v35

    const-wide v35, 0x400921fb54442d18L

    mul-double v33, v33, v35

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v35, v0

    div-double v23, v33, v35

    .line 954
    .local v23, "targetMaxRad":D
    invoke-virtual/range {v21 .. v21}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->isEnabled()Z

    move-result v33

    if-eqz v33, :cond_5

    .line 955
    cmpl-double v33, v8, v25

    if-lez v33, :cond_3

    cmpg-double v33, v8, v23

    if-lez v33, :cond_4

    :cond_3
    const-wide v33, 0x401921fb54442d18L

    add-double v33, v33, v8

    cmpl-double v33, v33, v25

    if-lez v33, :cond_9

    const-wide v33, 0x401921fb54442d18L

    add-double v33, v33, v8

    cmpg-double v33, v33, v23

    if-gtz v33, :cond_9

    :cond_4
    const/4 v7, 0x1

    .line 959
    .local v7, "angleMatches":Z
    :goto_6
    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v33

    cmpl-float v33, v33, v19

    if-lez v33, :cond_5

    .line 960
    move v6, v13

    .line 949
    .end local v7    # "angleMatches":Z
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 927
    .end local v8    # "angleRad":D
    .end local v10    # "eventX":F
    .end local v11    # "eventY":F
    .end local v13    # "i":I
    .end local v15    # "limitX":F
    .end local v16    # "limitY":F
    .end local v18    # "scale":F
    .end local v19    # "snapDistance2":F
    .end local v20    # "snapRadius":F
    .end local v21    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    .end local v23    # "targetMaxRad":D
    .end local v25    # "targetMinRad":D
    .end local v28    # "touchRadius":F
    .end local v29    # "tx":F
    .end local v30    # "ty":F
    :cond_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    goto/16 :goto_2

    .line 929
    .restart local v10    # "eventX":F
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    goto/16 :goto_3

    .line 935
    .restart local v11    # "eventY":F
    .restart local v28    # "touchRadius":F
    .restart local v29    # "tx":F
    .restart local v30    # "ty":F
    :cond_8
    const/high16 v18, 0x3f800000

    goto/16 :goto_4

    .line 955
    .restart local v8    # "angleRad":D
    .restart local v13    # "i":I
    .restart local v15    # "limitX":F
    .restart local v16    # "limitY":F
    .restart local v18    # "scale":F
    .restart local v19    # "snapDistance2":F
    .restart local v20    # "snapRadius":F
    .restart local v21    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    .restart local v23    # "targetMaxRad":D
    .restart local v25    # "targetMinRad":D
    :cond_9
    const/4 v7, 0x0

    goto :goto_6

    .line 965
    .end local v13    # "i":I
    .end local v19    # "snapDistance2":F
    .end local v20    # "snapRadius":F
    .end local v21    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    .end local v23    # "targetMaxRad":D
    .end local v25    # "targetMinRad":D
    :cond_a
    move/from16 v31, v15

    .line 966
    move/from16 v32, v16

    .line 926
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 969
    .end local v8    # "angleRad":D
    .end local v10    # "eventX":F
    .end local v11    # "eventY":F
    .end local v15    # "limitX":F
    .end local v16    # "limitY":F
    .end local v18    # "scale":F
    .end local v28    # "touchRadius":F
    .end local v29    # "tx":F
    .end local v30    # "ty":F
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDragging:Z

    move/from16 v33, v0

    if-eqz v33, :cond_0

    .line 973
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v6, v0, :cond_f

    .line 974
    const/16 v33, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 975
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 987
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    move/from16 v0, v33

    if-eq v0, v6, :cond_e

    .line 989
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    const/16 v34, -0x1

    move/from16 v0, v33

    move/from16 v1, v34

    if-eq v0, v1, :cond_d

    .line 990
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    move/from16 v33, v0

    move-object/from16 v0, v27

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 991
    .restart local v21    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    sget-object v33, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 994
    .end local v21    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_d
    const/16 v33, -0x1

    move/from16 v0, v33

    if-eq v6, v0, :cond_e

    .line 995
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 996
    .restart local v21    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    sget-object v33, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    move-object/from16 v0, v21

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 997
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v33

    const-string v34, "accessibility"

    invoke-virtual/range {v33 .. v34}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    .line 1000
    .local v4, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v33

    if-eqz v33, :cond_e

    .line 1001
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getTargetDescription(I)Ljava/lang/String;

    move-result-object v22

    .line 1002
    .local v22, "targetContentDescription":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1006
    .end local v4    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v21    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    .end local v22    # "targetContentDescription":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mActiveTarget:I

    goto/16 :goto_0

    .line 977
    :cond_f
    const/16 v33, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v33

    move/from16 v2, v31

    move/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 978
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 980
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAlphaEnable:Z

    move/from16 v33, v0

    if-nez v33, :cond_c

    .line 982
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->updateHandleDrawablePosition(FF)V

    goto/16 :goto_7
.end method

.method private handleUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 891
    iget-boolean v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDragging:Z

    if-eqz v1, :cond_0

    const-string v1, "GlowPadView"

    const-string v2, "** Handle RELEASE"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 893
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointerId:I

    if-ne v1, v2, :cond_1

    .line 894
    const/4 v1, 0x5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 896
    :cond_1
    return-void
.end method

.method private hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 8
    .param p1, "duration"    # I
    .param p2, "delay"    # I
    .param p3, "finalAlpha"    # F
    .param p4, "finishListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v7, 0x0

    .line 454
    const-string v0, "GlowPadView"

    const-string v1, "hideGlow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 456
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/android/incallui/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xe

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/incallui/widget/multiwaveview/Ease$Quart;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "x"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "y"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0xa

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0xc

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0xd

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/incallui/widget/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 465
    return-void
.end method

.method private hideTargets(ZZ)V
    .locals 17
    .param p1, "animate"    # Z
    .param p2, "expanded"    # Z

    .prologue
    .line 536
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v10}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 539
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    .line 540
    if-eqz p1, :cond_0

    const/16 v3, 0xc8

    .line 541
    .local v3, "duration":I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v2, 0xc8

    .line 543
    .local v2, "delay":I
    :goto_1
    if-eqz p2, :cond_2

    const/high16 v9, 0x3f800000

    .line 545
    .local v9, "targetScale":F
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 546
    .local v6, "length":I
    sget-object v5, Lcom/android/incallui/widget/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    .line 547
    .local v5, "interpolator":Landroid/animation/TimeInterpolator;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v6, :cond_3

    .line 548
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 549
    .local v8, "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    sget-object v10, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v8, v10}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 550
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    int-to-long v11, v3

    const/16 v13, 0xc

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "ease"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object v5, v13, v14

    const/4 v14, 0x2

    const-string v15, "alpha"

    aput-object v15, v13, v14

    const/4 v14, 0x3

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x4

    const-string v15, "scaleX"

    aput-object v15, v13, v14

    const/4 v14, 0x5

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x6

    const-string v15, "scaleY"

    aput-object v15, v13, v14

    const/4 v14, 0x7

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0x8

    const-string v15, "delay"

    aput-object v15, v13, v14

    const/16 v14, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/16 v14, 0xa

    const-string v15, "onUpdate"

    aput-object v15, v13, v14

    const/16 v14, 0xb

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v15, v13, v14

    invoke-static {v8, v11, v12, v13}, Lcom/android/incallui/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/incallui/widget/multiwaveview/Tweener;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 540
    .end local v2    # "delay":I
    .end local v3    # "duration":I
    .end local v4    # "i":I
    .end local v5    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v6    # "length":I
    .end local v8    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    .end local v9    # "targetScale":F
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 541
    .restart local v3    # "duration":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 543
    .restart local v2    # "delay":I
    :cond_2
    const v9, 0x3f4ccccd

    goto :goto_2

    .line 559
    .restart local v4    # "i":I
    .restart local v5    # "interpolator":Landroid/animation/TimeInterpolator;
    .restart local v6    # "length":I
    .restart local v9    # "targetScale":F
    :cond_3
    if-eqz p2, :cond_4

    const/high16 v7, 0x3f800000

    .line 561
    .local v7, "ringScaleTarget":F
    :goto_4
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    mul-float/2addr v7, v10

    .line 562
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    int-to-long v12, v3

    const/16 v14, 0xe

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    const-string v16, "ease"

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v5, v14, v15

    const/4 v15, 0x2

    const-string v16, "alpha"

    aput-object v16, v14, v15

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x4

    const-string v16, "scaleX"

    aput-object v16, v14, v15

    const/4 v15, 0x5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x6

    const-string v16, "scaleY"

    aput-object v16, v14, v15

    const/4 v15, 0x7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0x8

    const-string v16, "delay"

    aput-object v16, v14, v15

    const/16 v15, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/16 v15, 0xa

    const-string v16, "onUpdate"

    aput-object v16, v14, v15

    const/16 v15, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/16 v15, 0xc

    const-string v16, "onComplete"

    aput-object v16, v14, v15

    const/16 v15, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v11, v12, v13, v14}, Lcom/android/incallui/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/incallui/widget/multiwaveview/Tweener;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v10}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 572
    return-void

    .line 559
    .end local v7    # "ringScaleTarget":F
    :cond_4
    const/high16 v7, 0x3f000000

    goto :goto_4
.end method

.method private hideUnselected(I)V
    .locals 3
    .param p1, "active"    # I

    .prologue
    .line 525
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 526
    if-eq v0, p1, :cond_0

    .line 528
    iget-boolean v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAlphaEnable:Z

    if-eqz v1, :cond_0

    .line 530
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 525
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    :cond_1
    return-void
.end method

.method private highlightSelected(I)V
    .locals 2
    .param p1, "activeTarget"    # I

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    sget-object v1, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 521
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->hideUnselected(I)V

    .line 522
    return-void
.end method

.method private internalSetTargetResources(I)V
    .locals 8
    .param p1, "resourceId"    # I

    .prologue
    .line 626
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->loadDrawableArray(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 627
    .local v5, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/widget/multiwaveview/TargetDrawable;>;"
    iput-object v5, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 628
    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetResourceId:I

    .line 630
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v3

    .line 631
    .local v3, "maxWidth":I
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v2

    .line 632
    .local v2, "maxHeight":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 633
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 634
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 635
    .local v4, "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v4}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 636
    invoke-virtual {v4}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 633
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 638
    .end local v4    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_0
    iget v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    if-ne v6, v3, :cond_1

    iget v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    if-eq v6, v2, :cond_2

    .line 639
    :cond_1
    iput v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    .line 640
    iput v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    .line 641
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 646
    :goto_1
    return-void

    .line 643
    :cond_2
    iget v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->updateTargetPositions(FF)V

    .line 644
    iget v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    iget v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    invoke-direct {p0, v6, v7}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->updatePointCloudPosition(FF)V

    goto :goto_1
.end method

.method private loadDescriptions(I)Ljava/util/ArrayList;
    .locals 6
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1330
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1331
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    .line 1332
    .local v2, "count":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1333
    .local v4, "targetContentDescriptions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1334
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1335
    .local v1, "contentDescription":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1337
    .end local v1    # "contentDescription":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1338
    return-object v4
.end method

.method private loadDrawableArray(I)Ljava/util/ArrayList;
    .locals 9
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/incallui/widget/multiwaveview/TargetDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 612
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 613
    .local v4, "res":Landroid/content/res/Resources;
    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 614
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 615
    .local v1, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 616
    .local v2, "drawables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/widget/multiwaveview/TargetDrawable;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 617
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v6

    .line 618
    .local v6, "value":Landroid/util/TypedValue;
    new-instance v5, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    if-eqz v6, :cond_0

    iget v7, v6, Landroid/util/TypedValue;->resourceId:I

    :goto_1
    const/4 v8, 0x3

    invoke-direct {v5, v4, v7, v8}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;-><init>(Landroid/content/res/Resources;II)V

    .line 619
    .local v5, "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 618
    .end local v5    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 621
    .end local v6    # "value":Landroid/util/TypedValue;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 622
    return-object v2
.end method

.method private replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    .locals 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "existingResourceId"    # I
    .param p3, "newResourceId"    # I

    .prologue
    .line 1373
    if-eqz p2, :cond_0

    if-nez p3, :cond_2

    .line 1374
    :cond_0
    const/4 v2, 0x0

    .line 1392
    :cond_1
    :goto_0
    return v2

    .line 1377
    :cond_2
    const/4 v2, 0x0

    .line 1378
    .local v2, "result":Z
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1379
    .local v0, "drawables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/widget/multiwaveview/TargetDrawable;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1380
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v3, :cond_4

    .line 1381
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 1382
    .local v4, "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v5

    if-ne v5, p2, :cond_3

    .line 1383
    invoke-virtual {v4, p1, p3}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 1384
    const/4 v2, 0x1

    .line 1380
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1388
    .end local v4    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_4
    if-eqz v2, :cond_1

    .line 1389
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method private resolveMeasured(II)I
    .locals 3
    .param p1, "measureSpec"    # I
    .param p2, "desired"    # I

    .prologue
    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 353
    .local v1, "specSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 362
    move v0, v1

    .line 364
    :goto_0
    return v0

    .line 355
    :sswitch_0
    move v0, p2

    .line 356
    goto :goto_0

    .line 358
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 359
    goto :goto_0

    .line 353
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private setGrabbedState(I)V
    .locals 2
    .param p1, "newState"    # I

    .prologue
    const/4 v1, 0x1

    .line 1039
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGrabbedState:I

    if-eq p1, v0, :cond_1

    .line 1040
    if-eqz p1, :cond_0

    .line 1041
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->vibrate()V

    .line 1043
    :cond_0
    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGrabbedState:I

    .line 1044
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;

    if-eqz v0, :cond_1

    .line 1045
    if-nez p1, :cond_2

    .line 1046
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;->onReleased(Landroid/view/View;I)V

    .line 1050
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 1053
    :cond_1
    return-void

    .line 1048
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;

    invoke-interface {v0, p0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;->onGrabbed(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .param p1, "duration"    # I
    .param p2, "delay"    # I
    .param p3, "finalAlpha"    # F
    .param p4, "finishListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 441
    const-string v0, "GlowPadView"

    const-string v1, "showGlow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 443
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/android/incallui/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;

    int-to-long v2, p1

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "ease"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/android/incallui/widget/multiwaveview/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "alpha"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    aput-object p4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/incallui/widget/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 450
    return-void
.end method

.method private showTargets(Z)V
    .locals 13
    .param p1, "animate"    # Z

    .prologue
    .line 575
    const-string v6, "GlowPadView"

    const-string v7, "showTargets"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v6}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 577
    iput-boolean p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    .line 578
    if-eqz p1, :cond_0

    const/16 v0, 0x32

    .line 579
    .local v0, "delay":I
    :goto_0
    if-eqz p1, :cond_1

    const/16 v1, 0xc8

    .line 580
    .local v1, "duration":I
    :goto_1
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 581
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 582
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 583
    .local v5, "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    sget-object v6, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v5, v6}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 584
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    int-to-long v7, v1

    const/16 v9, 0xc

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string v11, "ease"

    aput-object v11, v9, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/android/incallui/widget/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v11, v9, v10

    const/4 v10, 0x2

    const-string v11, "alpha"

    aput-object v11, v9, v10

    const/4 v10, 0x3

    const/high16 v11, 0x3f800000

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x4

    const-string v11, "scaleX"

    aput-object v11, v9, v10

    const/4 v10, 0x5

    const/high16 v11, 0x3f800000

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x6

    const-string v11, "scaleY"

    aput-object v11, v9, v10

    const/4 v10, 0x7

    const/high16 v11, 0x3f800000

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0x8

    const-string v11, "delay"

    aput-object v11, v9, v10

    const/16 v10, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/16 v10, 0xa

    const-string v11, "onUpdate"

    aput-object v11, v9, v10

    const/16 v10, 0xb

    iget-object v11, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v11, v9, v10

    invoke-static {v5, v7, v8, v9}, Lcom/android/incallui/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/incallui/widget/multiwaveview/Tweener;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 578
    .end local v0    # "delay":I
    .end local v1    # "duration":I
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v5    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 579
    .restart local v0    # "delay":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 592
    .restart local v1    # "duration":I
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    :cond_2
    iget v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    const/high16 v7, 0x3f800000

    mul-float v4, v6, v7

    .line 593
    .local v4, "ringScale":F
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    int-to-long v8, v1

    const/16 v10, 0xe

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "ease"

    aput-object v12, v10, v11

    const/4 v11, 0x1

    sget-object v12, Lcom/android/incallui/widget/multiwaveview/Ease$Cubic;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const-string v12, "alpha"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/high16 v12, 0x3f800000

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x4

    const-string v12, "scaleX"

    aput-object v12, v10, v11

    const/4 v11, 0x5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x6

    const-string v12, "scaleY"

    aput-object v12, v10, v11

    const/4 v11, 0x7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0x8

    const-string v12, "delay"

    aput-object v12, v10, v11

    const/16 v11, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/16 v11, 0xa

    const-string v12, "onUpdate"

    aput-object v12, v10, v11

    const/16 v11, 0xb

    iget-object v12, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v12, v10, v11

    const/16 v11, 0xc

    const-string v12, "onComplete"

    aput-object v12, v10, v11

    const/16 v11, 0xd

    iget-object v12, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetUpdateListener:Landroid/animation/Animator$AnimatorListener;

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9, v10}, Lcom/android/incallui/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/incallui/widget/multiwaveview/Tweener;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v6}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 603
    return-void
.end method

.method private square(F)F
    .locals 1
    .param p1, "d"    # F

    .prologue
    .line 1268
    mul-float v0, p1, p1

    return v0
.end method

.method private startBackgroundAnimation(IF)V
    .locals 6
    .param p1, "duration"    # I
    .param p2, "alpha"    # F

    .prologue
    .line 817
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 818
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 819
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/incallui/widget/multiwaveview/Tweener;

    if-eqz v1, :cond_0

    .line 820
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/incallui/widget/multiwaveview/Tweener;

    iget-object v1, v1, Lcom/android/incallui/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 822
    :cond_0
    int-to-long v1, p1

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "ease"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/android/incallui/widget/multiwaveview/Ease$Cubic;->easeIn:Landroid/animation/TimeInterpolator;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "alpha"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/high16 v5, 0x437f0000

    mul-float/2addr v5, p2

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "delay"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/android/incallui/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/incallui/widget/multiwaveview/Tweener;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/incallui/widget/multiwaveview/Tweener;

    .line 826
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mBackgroundAnimator:Lcom/android/incallui/widget/multiwaveview/Tweener;

    iget-object v1, v1, Lcom/android/incallui/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 828
    :cond_1
    return-void
.end method

.method private startWaveAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x40000000

    .line 782
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 783
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 784
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v7

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;->setRadius(F)V

    .line 785
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    iget-object v1, v1, Lcom/android/incallui/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;

    const-wide/16 v2, 0x546

    const/16 v4, 0xa

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "ease"

    aput-object v5, v4, v8

    const/4 v5, 0x1

    sget-object v6, Lcom/android/incallui/widget/multiwaveview/Ease$Quad;->easeOut:Landroid/animation/TimeInterpolator;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "delay"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "radius"

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    const-string v6, "onUpdate"

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    aput-object v6, v4, v5

    const/16 v5, 0x8

    const-string v6, "onComplete"

    aput-object v6, v4, v5

    const/16 v5, 0x9

    new-instance v6, Lcom/android/incallui/widget/multiwaveview/GlowPadView$5;

    invoke-direct {v6, p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$5;-><init>(Lcom/android/incallui/widget/multiwaveview/GlowPadView;)V

    aput-object v6, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/widget/multiwaveview/Tweener;->to(Ljava/lang/Object;J[Ljava/lang/Object;)Lcom/android/incallui/widget/multiwaveview/Tweener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 798
    return-void
.end method

.method private stopAndHideWaveAnimation()V
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->cancel()V

    .line 778
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    iget-object v0, v0, Lcom/android/incallui/widget/multiwaveview/PointCloud;->waveManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/PointCloud$WaveManager;->setAlpha(F)V

    .line 779
    return-void
.end method

.method private switchToState(IFF)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 385
    packed-switch p1, :pswitch_data_0

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 387
    :pswitch_0
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->deactivateTargets()V

    .line 388
    invoke-direct {p0, v2, v2, v3, v5}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 389
    invoke-direct {p0, v2, v3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 390
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    sget-object v2, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setState([I)V

    .line 391
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v4}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    goto :goto_0

    .line 395
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    goto :goto_0

    .line 400
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAlphaEnable:Z

    if-eqz v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v3}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 403
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->deactivateTargets()V

    .line 404
    invoke-direct {p0, v6}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->showTargets(Z)V

    .line 405
    const/16 v1, 0xc8

    invoke-direct {p0, v1, v4}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 406
    invoke-direct {p0, v6}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setGrabbedState(I)V

    .line 408
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 411
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 412
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->announceTargets()V

    goto :goto_0

    .line 418
    .end local v0    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAlphaEnable:Z

    if-eqz v1, :cond_2

    .line 420
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v3}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 421
    :cond_2
    invoke-direct {p0, v2, v2, v4, v5}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 427
    :pswitch_4
    iget-boolean v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAlphaEnable:Z

    if-eqz v1, :cond_3

    .line 429
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v3}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setAlpha(F)V

    .line 430
    :cond_3
    invoke-direct {p0, v2, v2, v3, v5}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->showGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 434
    :pswitch_5
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->doFinish()V

    goto :goto_0

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private trySwitchToFirstTouchState(FF)Z
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x1

    .line 1056
    iget v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    sub-float v0, p1, v3

    .line 1057
    .local v0, "tx":F
    iget v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    sub-float v1, p2, v3

    .line 1058
    .local v1, "ty":F
    iget-boolean v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAlwaysTrackFinger:Z

    if-nez v3, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->dist2(FF)F

    move-result v3

    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getScaledGlowRadiusSquared()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1

    .line 1059
    :cond_0
    const-string v3, "GlowPadView"

    const-string v4, "** Handle HIT"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const/4 v3, 0x2

    invoke-direct {p0, v3, p1, p2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->switchToState(IFF)V

    .line 1061
    invoke-direct {p0, v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 1062
    iput-boolean v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDragging:Z

    .line 1065
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateGlowPosition(FF)V
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v3, 0x3f800000

    .line 869
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getX()F

    move-result v2

    sub-float v0, p1, v2

    .line 870
    .local v0, "dx":F
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getY()F

    move-result v2

    sub-float v1, p2, v2

    .line 871
    .local v1, "dy":F
    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    div-float v2, v3, v2

    mul-float/2addr v0, v2

    .line 872
    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    div-float v2, v3, v2

    mul-float/2addr v1, v2

    .line 873
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    iget-object v2, v2, Lcom/android/incallui/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;

    iget-object v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v3}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getX()F

    move-result v3

    add-float/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;->setX(F)V

    .line 874
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    iget-object v2, v2, Lcom/android/incallui/widget/multiwaveview/PointCloud;->glowManager:Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;

    iget-object v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v3}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getY()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/android/incallui/widget/multiwaveview/PointCloud$GlowManager;->setY(F)V

    .line 875
    return-void
.end method

.method private updateHandleDrawablePosition(FF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v7, 0x3f800000

    .line 1226
    const-string v4, "GlowPadView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cgm,updateHandleDrawablePosition x="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    iget-object v4, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v4}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getX()F

    move-result v4

    sub-float v0, p1, v4

    .line 1228
    .local v0, "dx":F
    iget-object v4, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v4}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getY()F

    move-result v4

    sub-float v1, p2, v4

    .line 1229
    .local v1, "dy":F
    iget v4, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    div-float v4, v7, v4

    mul-float/2addr v0, v4

    .line 1230
    iget v4, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    div-float v4, v7, v4

    mul-float/2addr v1, v4

    .line 1231
    iget-object v4, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v4}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getX()F

    move-result v4

    add-float v2, v4, v0

    .line 1232
    .local v2, "newx":F
    iget-object v4, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v4}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getY()F

    move-result v4

    add-float v3, v4, v1

    .line 1233
    .local v3, "newy":F
    const-string v4, "GlowPadView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cgm,updateHandleDrawablePosition setX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",setY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    iget-object v4, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v4, v2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 1235
    iget-object v4, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v4, v3}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 1236
    return-void
.end method

.method private updateHandleDrawablePosition(IFF)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 1221
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cgm,updateHandleDrawablePosition x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 1223
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p3}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 1224
    return-void
.end method

.method private updatePointCloudPosition(FF)V
    .locals 1
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F

    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/widget/multiwaveview/PointCloud;->setCenter(FF)V

    .line 1247
    return-void
.end method

.method private updateTargetPositions(FF)V
    .locals 11
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F

    .prologue
    const/high16 v10, 0x40000000

    .line 1207
    iget-object v5, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    .line 1208
    .local v5, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/incallui/widget/multiwaveview/TargetDrawable;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1209
    .local v3, "size":I
    const-wide v6, -0x3fe6de04abbbd2e8L

    int-to-double v8, v3

    div-double/2addr v6, v8

    double-to-float v0, v6

    .line 1210
    .local v0, "alpha":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1211
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 1212
    .local v4, "targetIcon":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    int-to-float v6, v2

    mul-float v1, v0, v6

    .line 1213
    .local v1, "angle":F
    invoke-virtual {v4, p1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1214
    invoke-virtual {v4, p2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1215
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getRingWidth()F

    move-result v6

    div-float/2addr v6, v10

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setX(F)V

    .line 1216
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getRingHeight()F

    move-result v6

    div-float/2addr v6, v10

    float-to-double v7, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {v4, v6}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setY(F)V

    .line 1210
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1218
    .end local v1    # "angle":F
    .end local v4    # "targetIcon":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_0
    return-void
.end method

.method private vibrate()V
    .locals 3

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVibrationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 609
    :cond_0
    return-void
.end method


# virtual methods
.method public getDirectionDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 737
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    return v0
.end method

.method public getResourceIdForTarget(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1342
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 1343
    .local v0, "drawable":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v1

    goto :goto_0
.end method

.method protected getScaledSuggestedMinimumHeight()I
    .locals 4

    .prologue
    .line 345
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000

    iget v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getScaledSuggestedMinimumWidth()I
    .locals 4

    .prologue
    .line 337
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000

    iget v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRadius:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getTargetDescriptionsResourceId()I
    .locals 1

    .prologue
    .line 716
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    return v0
.end method

.method public getTargetPosition(I)I
    .locals 3
    .param p1, "resourceId"    # I

    .prologue
    .line 1362
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1363
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 1364
    .local v1, "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1368
    .end local v0    # "i":I
    .end local v1    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :goto_1
    return v0

    .line 1362
    .restart local v0    # "i":I
    .restart local v1    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1368
    .end local v1    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getTargetResourceId()I
    .locals 1

    .prologue
    .line 695
    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetResourceId:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1251
    iget-object v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    invoke-virtual {v3, p1}, Lcom/android/incallui/widget/multiwaveview/PointCloud;->draw(Landroid/graphics/Canvas;)V

    .line 1252
    iget-object v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1253
    iget-object v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1254
    .local v1, "ntargets":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1255
    iget-object v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 1256
    .local v2, "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    if-eqz v2, :cond_0

    .line 1257
    invoke-virtual {v2, p1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1260
    .end local v2    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v3, p1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1261
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 1011
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1014
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1015
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 1016
    .local v1, "action":I
    packed-switch v1, :pswitch_data_0

    .line 1027
    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1028
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1030
    .end local v1    # "action":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1031
    return v4

    .line 1018
    .restart local v1    # "action":I
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1021
    :pswitch_2
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1024
    :pswitch_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 1016
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/high16 v9, 0x40000000

    const/4 v8, 0x0

    .line 1168
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 1169
    sub-int v5, p4, p2

    .line 1170
    .local v5, "width":I
    sub-int v0, p5, p3

    .line 1174
    .local v0, "height":I
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getRingWidth()F

    move-result v4

    .line 1175
    .local v4, "placementWidth":F
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getRingHeight()F

    move-result v3

    .line 1176
    .local v3, "placementHeight":F
    iget v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHorizontalInset:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetWidth:I

    int-to-float v7, v7

    add-float/2addr v7, v4

    div-float/2addr v7, v9

    add-float v1, v6, v7

    .line 1178
    .local v1, "newWaveCenterX":F
    iget v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVerticalInset:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mMaxTargetHeight:I

    int-to-float v7, v7

    add-float/2addr v7, v3

    div-float/2addr v7, v9

    add-float v2, v6, v7

    .line 1181
    .local v2, "newWaveCenterY":F
    iget-boolean v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mInitialLayout:Z

    if-eqz v6, :cond_0

    .line 1182
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->stopAndHideWaveAnimation()V

    .line 1183
    invoke-direct {p0, v8, v8}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    .line 1184
    iput-boolean v8, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mInitialLayout:Z

    .line 1187
    :cond_0
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1188
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOuterRing:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1190
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mPointCloud:Lcom/android/incallui/widget/multiwaveview/PointCloud;

    iget v7, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    invoke-virtual {v6, v7}, Lcom/android/incallui/widget/multiwaveview/PointCloud;->setScale(F)V

    .line 1192
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setPositionX(F)V

    .line 1193
    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v6, v2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setPositionY(F)V

    .line 1195
    invoke-direct {p0, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->updateTargetPositions(FF)V

    .line 1196
    invoke-direct {p0, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->updatePointCloudPosition(FF)V

    .line 1197
    invoke-direct {p0, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->updateGlowPosition(FF)V

    .line 1199
    iput v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterX:F

    .line 1200
    iput v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveCenterY:F

    .line 1202
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->dump()V

    .line 1203
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 369
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getSuggestedMinimumWidth()I

    move-result v3

    .line 370
    .local v3, "minimumWidth":I
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getSuggestedMinimumHeight()I

    move-result v2

    .line 371
    .local v2, "minimumHeight":I
    invoke-direct {p0, p1, v3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->resolveMeasured(II)I

    move-result v1

    .line 372
    .local v1, "computedWidth":I
    invoke-direct {p0, p2, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->resolveMeasured(II)I

    move-result v0

    .line 374
    .local v0, "computedHeight":I
    invoke-direct {p0, v3, v2, v1, v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->computeScaleFactor(IIII)F

    move-result v6

    iput v6, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mRingScaleFactor:F

    .line 377
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getScaledSuggestedMinimumWidth()I

    move-result v5

    .line 378
    .local v5, "scaledWidth":I
    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getScaledSuggestedMinimumHeight()I

    move-result v4

    .line 380
    .local v4, "scaledHeight":I
    sub-int v6, v1, v5

    sub-int v7, v0, v4

    invoke-direct {p0, v6, v7}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->computeInsets(II)V

    .line 381
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 382
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 832
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 833
    .local v0, "action":I
    const/4 v1, 0x0

    .line 834
    .local v1, "handled":Z
    packed-switch v0, :pswitch_data_0

    .line 864
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 865
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 837
    :pswitch_1
    const-string v2, "GlowPadView"

    const-string v3, "*** DOWN ***"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->handleDown(Landroid/view/MotionEvent;)V

    .line 839
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 840
    const/4 v1, 0x1

    .line 841
    goto :goto_0

    .line 844
    :pswitch_2
    const-string v2, "GlowPadView"

    const-string v3, "*** MOVE ***"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 846
    const/4 v1, 0x1

    .line 847
    goto :goto_0

    .line 851
    :pswitch_3
    const-string v2, "GlowPadView"

    const-string v3, "*** UP ***"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 853
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->handleUp(Landroid/view/MotionEvent;)V

    .line 854
    const/4 v1, 0x1

    .line 855
    goto :goto_0

    .line 858
    :pswitch_4
    const-string v2, "GlowPadView"

    const-string v3, "*** CANCEL ***"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->handleMove(Landroid/view/MotionEvent;)V

    .line 860
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->handleCancel(Landroid/view/MotionEvent;)V

    .line 861
    const/4 v1, 0x1

    goto :goto_0

    .line 865
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    .line 834
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public ping()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 758
    iget v4, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mFeedbackCount:I

    if-lez v4, :cond_1

    .line 759
    const/4 v0, 0x1

    .line 760
    .local v0, "doWaveAnimation":Z
    iget-object v3, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    .line 763
    .local v3, "waveAnimations":Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/widget/multiwaveview/Tweener;

    iget-object v4, v4, Lcom/android/incallui/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 764
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/widget/multiwaveview/Tweener;

    iget-object v4, v4, Lcom/android/incallui/widget/multiwaveview/Tweener;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    .line 765
    .local v1, "t":J
    const-wide/16 v4, 0x2a3

    cmp-long v4, v1, v4

    if-gez v4, :cond_0

    .line 766
    const/4 v0, 0x0

    .line 770
    .end local v1    # "t":J
    :cond_0
    if-eqz v0, :cond_1

    .line 771
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->startWaveAnimation()V

    .line 774
    .end local v0    # "doWaveAnimation":Z
    .end local v3    # "waveAnimations":Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;
    :cond_1
    return-void
.end method

.method public replaceTargetDrawablesIfPresent(Landroid/content/ComponentName;Ljava/lang/String;I)Z
    .locals 10
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "existingResId"    # I

    .prologue
    .line 1405
    if-nez p3, :cond_1

    const/4 v5, 0x0

    .line 1433
    :cond_0
    :goto_0
    return v5

    .line 1407
    :cond_1
    const/4 v5, 0x0

    .line 1408
    .local v5, "replaced":Z
    if-eqz p1, :cond_2

    .line 1410
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1412
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v4, p1, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    iget-object v2, v7, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 1414
    .local v2, "metaData":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 1415
    invoke-virtual {v2, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 1416
    .local v1, "iconResId":I
    if-eqz v1, :cond_2

    .line 1417
    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;

    move-result-object v6

    .line 1418
    .local v6, "res":Landroid/content/res/Resources;
    invoke-direct {p0, v6, p3, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 1429
    .end local v1    # "iconResId":I
    .end local v2    # "metaData":Landroid/os/Bundle;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v6    # "res":Landroid/content/res/Resources;
    :cond_2
    :goto_1
    if-nez v5, :cond_0

    .line 1431
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {p0, v7, p3, p3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->replaceTargetDrawables(Landroid/content/res/Resources;II)Z

    goto :goto_0

    .line 1421
    :catch_0
    move-exception v0

    .line 1422
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "GlowPadView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to swap drawable; "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1424
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v3

    .line 1425
    .local v3, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v7, "GlowPadView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to swap drawable from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public reset(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 807
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 808
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->stop()V

    .line 809
    invoke-direct {p0, v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->startBackgroundAnimation(IF)V

    .line 810
    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->stopAndHideWaveAnimation()V

    .line 811
    invoke-direct {p0, p1, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->hideTargets(ZZ)V

    .line 812
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v2, v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->hideGlow(IIFLandroid/animation/Animator$AnimatorListener;)V

    .line 813
    invoke-static {}, Lcom/android/incallui/widget/multiwaveview/Tweener;->reset()V

    .line 814
    return-void
.end method

.method public resetHandleDrawablePosition()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1241
    invoke-direct {p0, v0, v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->updateHandleDrawablePosition(FF)V

    .line 1242
    return-void
.end method

.method public resumeAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 311
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 312
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 313
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 314
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 315
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 316
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->start()V

    .line 317
    return-void
.end method

.method public setDirectionDescriptionsResourceId(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 725
    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDirectionDescriptionsResourceId:I

    .line 726
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mDirectionDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 729
    :cond_0
    return-void
.end method

.method public setEnableTarget(IZ)V
    .locals 3
    .param p1, "resourceId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 1347
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1348
    iget-object v2, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDrawables:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    .line 1349
    .local v1, "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getResourceId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 1350
    invoke-virtual {v1, p2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setEnabled(Z)V

    .line 1354
    .end local v1    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_0
    return-void

    .line 1347
    .restart local v1    # "target":Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setHandleDrawableAlaphEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 676
    iput-boolean p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAlphaEnable:Z

    .line 677
    return-void
.end method

.method public setHandleDrawableImage(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 1438
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1439
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    if-eqz v1, :cond_0

    .line 1440
    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v1, v0, p1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    .line 1442
    :cond_0
    return-void
.end method

.method public setHandleDrawableImage(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v3, 0x0

    .line 657
    const-string v0, "GlowPadView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cgm,setHandleDrawableImage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    if-nez p1, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mHandleDrawable:Lcom/android/incallui/widget/multiwaveview/TargetDrawable;

    invoke-virtual {v0, p1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 662
    invoke-direct {p0, v3, v3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->updateHandleDrawablePosition(FF)V

    goto :goto_0
.end method

.method public setOnTriggerListener(Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;

    .prologue
    .line 1264
    iput-object p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mOnTriggerListener:Lcom/android/incallui/widget/multiwaveview/GlowPadView$OnTriggerListener;

    .line 1265
    return-void
.end method

.method public setTargetDescriptionsResourceId(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 704
    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDescriptionsResourceId:I

    .line 705
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 708
    :cond_0
    return-void
.end method

.method public setTargetResources(I)V
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 686
    iget-boolean v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mAnimatingTargets:Z

    if-eqz v0, :cond_0

    .line 688
    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mNewTargetResources:I

    .line 692
    :goto_0
    return-void

    .line 690
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->internalSetTargetResources(I)V

    goto :goto_0
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 746
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 747
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    .line 751
    :goto_0
    return-void

    .line 749
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method public suspendAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 305
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mWaveAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 306
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mTargetAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 307
    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->mGlowAnimations:Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView$AnimationBundle;->setSuspended(Z)V

    .line 308
    return-void
.end method
