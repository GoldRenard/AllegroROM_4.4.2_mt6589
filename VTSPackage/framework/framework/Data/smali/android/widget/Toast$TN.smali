.class Landroid/widget/Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TN"
.end annotation


# instance fields
.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field final mHide:Ljava/lang/Runnable;

.field mHorizontalMargin:F

.field mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field final mShow:Ljava/lang/Runnable;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 354
    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    .line 324
    new-instance v1, Landroid/widget/Toast$TN$1;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$1;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mShow:Ljava/lang/Runnable;

    .line 331
    new-instance v1, Landroid/widget/Toast$TN$2;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$2;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    .line 340
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 341
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    .line 357
    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 358
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 359
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 360
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 361
    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 362
    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 363
    const-string v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 364
    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 368
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 369
    return-void
.end method

.method private trySendAccessibilityEvent()V
    .locals 3

    .prologue
    .line 427
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 429
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 440
    :goto_0
    return-void

    .line 434
    :cond_0
    const/16 v2, 0x40

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 436
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 437
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 439
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method


# virtual methods
.method public handleHide()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 453
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 455
    :cond_1
    return-void
.end method

.method public handleShow()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000

    .line 392
    iget-object v3, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v4, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    if-eq v3, v4, :cond_4

    .line 394
    invoke-virtual {p0}, Landroid/widget/Toast$TN;->handleHide()V

    .line 395
    iget-object v3, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    iput-object v3, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 396
    iget-object v3, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 397
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_0

    .line 398
    iget-object v3, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 400
    :cond_0
    const-string/jumbo v3, "window"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    .line 403
    iget-object v3, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 404
    .local v0, "config":Landroid/content/res/Configuration;
    iget v3, p0, Landroid/widget/Toast$TN;->mGravity:I

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-static {v3, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 405
    .local v2, "gravity":I
    iget-object v3, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 406
    and-int/lit8 v3, v2, 0x7

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 407
    iget-object v3, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 409
    :cond_1
    and-int/lit8 v3, v2, 0x70

    const/16 v4, 0x70

    if-ne v3, v4, :cond_2

    .line 410
    iget-object v3, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 412
    :cond_2
    iget-object v3, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Landroid/widget/Toast$TN;->mX:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 413
    iget-object v3, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Landroid/widget/Toast$TN;->mY:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 414
    iget-object v3, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 415
    iget-object v3, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 416
    iget-object v3, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 418
    iget-object v3, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v3, v4}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 421
    :cond_3
    iget-object v3, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v4, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v5, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    invoke-direct {p0}, Landroid/widget/Toast$TN;->trySendAccessibilityEvent()V

    .line 424
    .end local v0    # "config":Landroid/content/res/Configuration;
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "gravity":I
    :cond_4
    return-void
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 387
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 377
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 378
    return-void
.end method
