.class Landroid/widget/Editor$SelectPopupWindow;
.super Landroid/widget/PopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectPopupWindow"
.end annotation


# instance fields
.field private mBottomY:I

.field private mContentView:Landroid/view/ViewGroup;

.field public mMagnifierPopupWindow:Landroid/widget/Editor$MagnifierPopupWindow;

.field private mPositionX:I

.field private mTopY:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2336
    iput-object p1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    .line 2337
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2338
    new-instance v5, Landroid/widget/Editor$MagnifierPopupWindow;

    invoke-direct {v5, p1}, Landroid/widget/Editor$MagnifierPopupWindow;-><init>(Landroid/widget/Editor;)V

    iput-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mMagnifierPopupWindow:Landroid/widget/Editor$MagnifierPopupWindow;

    .line 2339
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 2341
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x3040027

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/view/ViewGroup;

    .line 2342
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v6, 0x30c0032

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2343
    .local v4, "paste":Landroid/widget/TextView;
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v6, 0x30c0030

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2344
    .local v1, "copy":Landroid/widget/TextView;
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v6, 0x30c0031

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2345
    .local v2, "cut":Landroid/widget/TextView;
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/view/ViewGroup;

    const v6, 0x30c002f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2346
    .local v0, "all":Landroid/widget/TextView;
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->canPaste()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2347
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2349
    :cond_0
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->canCopy()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2350
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2352
    :cond_1
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    if-nez v5, :cond_2

    .line 2353
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2355
    :cond_2
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2356
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2357
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2358
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2359
    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2360
    iput-boolean v7, p1, Landroid/widget/Editor;->mIsShowMagnifier:Z

    .line 2361
    return-void
.end method

.method private computeLocalPosition()V
    .locals 6

    .prologue
    .line 2431
    iget-object v4, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 2432
    .local v1, "offsetEnd":I
    iget-object v4, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 2433
    .local v2, "offsetStart":I
    iget-object v4, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mPositionX:I

    .line 2435
    iget v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mPositionX:I

    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mPositionX:I

    .line 2437
    iget-object v4, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 2438
    .local v3, "startLine":I
    iget-object v4, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mTopY:I

    .line 2439
    iget v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mTopY:I

    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mTopY:I

    .line 2440
    iget-object v4, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 2441
    .local v0, "endLine":I
    iget-object v4, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iput v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    .line 2442
    iget v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    iget-object v5, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    .line 2443
    return-void
.end method

.method private updatePosition(II)V
    .locals 13
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I

    .prologue
    .line 2446
    iget v11, p0, Landroid/widget/Editor$SelectPopupWindow;->mTopY:I

    iget-object v12, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    if-gt v11, v12, :cond_0

    iget v11, p0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    if-gez v11, :cond_1

    .line 2510
    :cond_0
    :goto_0
    return-void

    .line 2450
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$SelectPopupWindow;->measureContent()V

    .line 2451
    iget v11, p0, Landroid/widget/Editor$SelectPopupWindow;->mPositionX:I

    add-int v6, p1, v11

    .line 2452
    .local v6, "positionX":I
    iget v11, p0, Landroid/widget/Editor$SelectPopupWindow;->mTopY:I

    add-int v7, p2, v11

    .line 2453
    .local v7, "positionY":I
    iget-object v11, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 2454
    .local v10, "width":I
    iget-object v11, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 2456
    .local v2, "height":I
    iget-object v11, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 2457
    .local v9, "textViewHeight":I
    const/4 v8, 0x0

    .line 2458
    .local v8, "sHeight":I
    iget-object v11, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v11}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 2459
    iget-object v11, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleLeft:Landroid/graphics/drawable/Drawable;
    invoke-static {v11}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v8

    .line 2463
    :cond_2
    :goto_1
    iget v11, p0, Landroid/widget/Editor$SelectPopupWindow;->mTopY:I

    if-gez v11, :cond_9

    .line 2464
    iget v11, p0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    add-int/2addr v11, v2

    add-int/2addr v11, v8

    if-le v11, v9, :cond_8

    .line 2465
    iget v11, p0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    sub-int/2addr v11, v2

    if-lez v11, :cond_7

    .line 2466
    iget v11, p0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    if-ge v11, v9, :cond_6

    .line 2467
    iget v11, p0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    add-int/2addr v11, v2

    div-int/lit8 v11, v11, 0x2

    add-int v7, p2, v11

    .line 2487
    :cond_3
    :goto_2
    if-gez v7, :cond_4

    .line 2488
    iget-object v11, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    iget-object v12, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v12

    add-int/2addr v11, v12

    div-int/lit8 v5, v11, 0x2

    .line 2489
    .local v5, "offset":I
    iget-object v11, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    .line 2490
    .local v3, "layout":Landroid/text/Layout;
    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 2491
    .local v4, "line":I
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v11

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    sub-int/2addr v11, v12

    add-int/2addr v7, v11

    .line 2492
    iget-object v11, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v7, v11

    .line 2495
    iget-object v11, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget-object v12, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v12}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v12

    iget v12, v12, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2497
    .local v1, "handle":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    add-int/2addr v7, v11

    .line 2500
    .end local v1    # "handle":Landroid/graphics/drawable/Drawable;
    .end local v3    # "layout":Landroid/text/Layout;
    .end local v4    # "line":I
    .end local v5    # "offset":I
    :cond_4
    int-to-float v11, v10

    const/high16 v12, 0x40000000

    div-float/2addr v11, v12

    float-to-int v11, v11

    sub-int/2addr v6, v11

    .line 2501
    iget-object v11, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2502
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v11, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 2503
    iget v11, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v11, v10

    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2504
    const/4 v11, 0x0

    sub-int v12, v7, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2505
    const/4 v11, 0x0

    invoke-static {v11, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2507
    iget-object v11, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v11}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v12, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 2509
    invoke-virtual {p0, v6, v7, v10, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_0

    .line 2460
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_5
    iget-object v11, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v11}, Landroid/widget/Editor;->access$1500(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 2461
    iget-object v11, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleRight:Landroid/graphics/drawable/Drawable;
    invoke-static {v11}, Landroid/widget/Editor;->access$1500(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v8

    goto/16 :goto_1

    .line 2469
    :cond_6
    add-int v11, v9, v2

    div-int/lit8 v11, v11, 0x2

    add-int v7, p2, v11

    goto/16 :goto_2

    .line 2473
    :cond_7
    sub-int v11, p2, v2

    if-gez v11, :cond_3

    .line 2474
    iget v11, p0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    add-int/2addr v11, p2

    add-int/2addr v11, v2

    add-int v7, v11, v8

    goto/16 :goto_2

    .line 2479
    :cond_8
    iget v11, p0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    add-int/2addr v11, p2

    add-int/2addr v11, v2

    add-int v7, v11, v8

    goto/16 :goto_2

    .line 2482
    :cond_9
    sub-int v11, v7, v2

    if-gez v11, :cond_3

    .line 2483
    iget v11, p0, Landroid/widget/Editor$SelectPopupWindow;->mBottomY:I

    add-int/2addr v11, p2

    add-int/2addr v11, v2

    add-int v7, v11, v8

    goto/16 :goto_2
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2382
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/widget/Editor;->mSelectPopupWindow:Landroid/widget/Editor$SelectPopupWindow;

    .line 2383
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 2384
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    if-nez v0, :cond_0

    .line 2385
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 2387
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setHasTransientState(Z)V

    .line 2390
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_1

    .line 2391
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 2394
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mMagnifierPopupWindow:Landroid/widget/Editor$MagnifierPopupWindow;

    if-eqz v0, :cond_2

    .line 2395
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->mMagnifierPopupWindow:Landroid/widget/Editor$MagnifierPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$MagnifierPopupWindow;->hide()V

    .line 2398
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mIsSetHardwareAccelerated:Z

    if-eqz v0, :cond_3

    .line 2399
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    iput-boolean v2, v0, Landroid/widget/Editor;->mIsSetHardwareAccelerated:Z

    .line 2400
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setHardwareAccelerated(Z)V

    .line 2403
    :cond_3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2404
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 2377
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 2378
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2379
    return-void
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 2524
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2525
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    .line 2530
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2408
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2428
    :goto_0
    return-void

    .line 2410
    :pswitch_0
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020022

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 2411
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 2414
    :pswitch_1
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020021

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 2415
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 2418
    :pswitch_2
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1020020

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 2419
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 2422
    :pswitch_3
    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x102001f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    .line 2423
    invoke-virtual {p0}, Landroid/widget/Editor$SelectPopupWindow;->show()V

    goto :goto_0

    .line 2408
    :pswitch_data_0
    .packed-switch 0x30c002f
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public show()V
    .locals 3

    .prologue
    .line 2364
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mIsShowMagnifier:Z

    if-eqz v1, :cond_0

    .line 2374
    :goto_0
    return-void

    .line 2367
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 2368
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 2370
    invoke-direct {p0}, Landroid/widget/Editor$SelectPopupWindow;->computeLocalPosition()V

    .line 2372
    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    .line 2373
    .local v0, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/Editor$SelectPopupWindow;->updatePosition(II)V

    goto :goto_0
.end method

.method public updatePosition(IIZZ)V
    .locals 2
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 2516
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v1, p0, Landroid/widget/Editor$SelectPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$1600(Landroid/widget/Editor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2517
    if-eqz p4, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor$SelectPopupWindow;->computeLocalPosition()V

    .line 2518
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$SelectPopupWindow;->updatePosition(II)V

    .line 2522
    :goto_0
    return-void

    .line 2520
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$SelectPopupWindow;->hide()V

    goto :goto_0
.end method
