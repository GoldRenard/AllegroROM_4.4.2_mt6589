.class public Lcom/lenovo/pinscroll/PinScrollIndicator;
.super Ljava/lang/Object;
.source "PinScrollIndicator.java"


# static fields
.field public static final PIN_STATE_IDLE:I = 0x0

.field public static final PIN_STATE_PINABLE:I = 0x1

.field public static final PIN_STATE_PINNED:I = 0x2


# instance fields
.field private mHeight:I

.field private final mPinable:Landroid/graphics/drawable/Drawable;

.field private final mPinned:Landroid/graphics/drawable/Drawable;

.field private mState:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 24
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x308015d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/pinscroll/PinScrollIndicator;->mPinable:Landroid/graphics/drawable/Drawable;

    .line 25
    const v1, 0x308015e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/pinscroll/PinScrollIndicator;->mPinned:Landroid/graphics/drawable/Drawable;

    .line 27
    iget-object v1, p0, Lcom/lenovo/pinscroll/PinScrollIndicator;->mPinable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/lenovo/pinscroll/PinScrollIndicator;->mWidth:I

    .line 28
    iget-object v1, p0, Lcom/lenovo/pinscroll/PinScrollIndicator;->mPinable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/lenovo/pinscroll/PinScrollIndicator;->mHeight:I

    .line 30
    iget-object v1, p0, Lcom/lenovo/pinscroll/PinScrollIndicator;->mPinable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/lenovo/pinscroll/PinScrollIndicator;->mWidth:I

    iget v3, p0, Lcom/lenovo/pinscroll/PinScrollIndicator;->mHeight:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 31
    iget-object v1, p0, Lcom/lenovo/pinscroll/PinScrollIndicator;->mPinned:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/lenovo/pinscroll/PinScrollIndicator;->mWidth:I

    iget v3, p0, Lcom/lenovo/pinscroll/PinScrollIndicator;->mHeight:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 32
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 36
    iget v0, p0, Lcom/lenovo/pinscroll/PinScrollIndicator;->mWidth:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/lenovo/pinscroll/PinScrollIndicator;->mHeight:I

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 38
    iget v0, p0, Lcom/lenovo/pinscroll/PinScrollIndicator;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 39
    iget-object v0, p0, Lcom/lenovo/pinscroll/PinScrollIndicator;->mPinable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget v0, p0, Lcom/lenovo/pinscroll/PinScrollIndicator;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/lenovo/pinscroll/PinScrollIndicator;->mPinned:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/lenovo/pinscroll/PinScrollIndicator;->mState:I

    .line 47
    return-void
.end method
