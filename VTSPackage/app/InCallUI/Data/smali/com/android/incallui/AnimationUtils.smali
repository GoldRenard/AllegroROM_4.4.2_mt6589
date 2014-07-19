.class public Lcom/android/incallui/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AnimationUtils$CrossFadeDrawable;,
        Lcom/android/incallui/AnimationUtils$Fade;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:I = 0xfa

.field private static final FADE_DBG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/incallui/AnimationUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/AnimationUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 282
    sget-object v0, Lcom/android/incallui/AnimationUtils;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method private static newCrossFadeDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/incallui/AnimationUtils$CrossFadeDrawable;
    .locals 2
    .param p0, "first"    # Landroid/graphics/drawable/Drawable;
    .param p1, "second"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 198
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    .line 199
    .local v0, "layers":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 200
    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 201
    new-instance v1, Lcom/android/incallui/AnimationUtils$CrossFadeDrawable;

    invoke-direct {v1, v0}, Lcom/android/incallui/AnimationUtils$CrossFadeDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method public static startCrossFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 10
    .param p0, "imageView"    # Landroid/widget/ImageView;
    .param p1, "from"    # Landroid/graphics/drawable/Drawable;
    .param p2, "to"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 212
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v3, v7

    .line 213
    .local v3, "drawableIsEqual":Z
    :goto_0
    instance-of v6, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_3

    move-object v6, p1

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_3

    move v4, v7

    .line 215
    .local v4, "hasFromImage":Z
    :goto_1
    instance-of v6, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v6, :cond_4

    move-object v6, p2

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_4

    move v5, v7

    .line 217
    .local v5, "hasToImage":Z
    :goto_2
    if-nez v3, :cond_0

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    move-object v6, p1

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    move-object v6, p2

    check-cast v6, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_0
    move v1, v7

    .line 220
    .local v1, "areSameImage":Z
    :goto_3
    if-nez v1, :cond_6

    .line 227
    invoke-static {p1, p2}, Lcom/android/incallui/AnimationUtils;->newCrossFadeDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/incallui/AnimationUtils$CrossFadeDrawable;

    move-result-object v2

    .line 228
    .local v2, "crossFadeDrawable":Lcom/android/incallui/AnimationUtils$CrossFadeDrawable;
    invoke-virtual {v2}, Lcom/android/incallui/AnimationUtils$CrossFadeDrawable;->getAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 229
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 231
    new-instance v6, Lcom/android/incallui/AnimationUtils$1;

    invoke-direct {v6, p1, p2, p0}, Lcom/android/incallui/AnimationUtils$1;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 254
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 268
    invoke-virtual {p0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 277
    .end local v0    # "animator":Landroid/animation/ObjectAnimator;
    .end local v2    # "crossFadeDrawable":Lcom/android/incallui/AnimationUtils$CrossFadeDrawable;
    :cond_1
    :goto_4
    return-void

    .end local v1    # "areSameImage":Z
    .end local v3    # "drawableIsEqual":Z
    .end local v4    # "hasFromImage":Z
    .end local v5    # "hasToImage":Z
    :cond_2
    move v3, v8

    .line 212
    goto :goto_0

    .restart local v3    # "drawableIsEqual":Z
    :cond_3
    move v4, v8

    .line 213
    goto :goto_1

    .restart local v4    # "hasFromImage":Z
    :cond_4
    move v5, v8

    .line 215
    goto :goto_2

    .restart local v5    # "hasToImage":Z
    :cond_5
    move v1, v8

    .line 217
    goto :goto_3

    .line 269
    .restart local v1    # "areSameImage":Z
    :cond_6
    if-nez v4, :cond_1

    if-eqz v5, :cond_1

    .line 270
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 271
    invoke-virtual {p0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_4
.end method
