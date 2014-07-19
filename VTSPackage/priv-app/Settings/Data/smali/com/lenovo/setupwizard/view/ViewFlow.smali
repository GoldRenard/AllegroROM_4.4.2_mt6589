.class public Lcom/lenovo/setupwizard/view/ViewFlow;
.super Landroid/widget/AdapterView;
.source "ViewFlow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/setupwizard/view/ViewFlow$AdapterDataSetObserver;,
        Lcom/lenovo/setupwizard/view/ViewFlow$ViewSwitchListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/AdapterView",
        "<",
        "Landroid/widget/Adapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final INVALID_SCREEN:I = -0x1

.field private static final SNAP_VELOCITY:I = 0x3e8

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private handler:Landroid/os/Handler;

.field private mAdapter:Landroid/widget/Adapter;

.field private mCurrentAdapterIndex:I

.field private mCurrentBufferIndex:I

.field private mCurrentScreen:I

.field private mDataSetObserver:Lcom/lenovo/setupwizard/view/ViewFlow$AdapterDataSetObserver;

.field private mFirstLayout:Z

.field private mIndicator:Lcom/lenovo/setupwizard/view/FlowIndicator;

.field private mLastMotionX:F

.field private mLastOrientation:I

.field private mLastScrollDirection:I

.field private mLoadedViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMaximumVelocity:I

.field private mNextScreen:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSideBuffer:I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mViewSwitchListener:Lcom/lenovo/setupwizard/view/ViewFlow$ViewSwitchListener;

.field private orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private timeSpan:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 92
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mSideBuffer:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mTouchState:I

    .line 53
    iput v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mNextScreen:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mFirstLayout:Z

    .line 60
    iput v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLastOrientation:I

    .line 61
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->timeSpan:J

    .line 63
    new-instance v0, Lcom/lenovo/setupwizard/view/ViewFlow$1;

    invoke-direct {v0, p0}, Lcom/lenovo/setupwizard/view/ViewFlow$1;-><init>(Lcom/lenovo/setupwizard/view/ViewFlow;)V

    iput-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 93
    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mSideBuffer:I

    .line 94
    invoke-direct {p0}, Lcom/lenovo/setupwizard/view/ViewFlow;->init()V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sideBuffer"    # I

    .prologue
    const/4 v1, -0x1

    .line 98
    invoke-direct {p0, p1}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mSideBuffer:I

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mTouchState:I

    .line 53
    iput v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mNextScreen:I

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mFirstLayout:Z

    .line 60
    iput v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLastOrientation:I

    .line 61
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->timeSpan:J

    .line 63
    new-instance v0, Lcom/lenovo/setupwizard/view/ViewFlow$1;

    invoke-direct {v0, p0}, Lcom/lenovo/setupwizard/view/ViewFlow$1;-><init>(Lcom/lenovo/setupwizard/view/ViewFlow;)V

    iput-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 99
    iput p2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mSideBuffer:I

    .line 100
    invoke-direct {p0}, Lcom/lenovo/setupwizard/view/ViewFlow;->init()V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v1, 0x2

    iput v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mSideBuffer:I

    .line 48
    iput v3, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mTouchState:I

    .line 53
    iput v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mNextScreen:I

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mFirstLayout:Z

    .line 60
    iput v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLastOrientation:I

    .line 61
    const-wide/16 v1, 0xbb8

    iput-wide v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->timeSpan:J

    .line 63
    new-instance v1, Lcom/lenovo/setupwizard/view/ViewFlow$1;

    invoke-direct {v1, p0}, Lcom/lenovo/setupwizard/view/ViewFlow$1;-><init>(Lcom/lenovo/setupwizard/view/ViewFlow;)V

    iput-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 105
    sget-object v1, Lcom/android/settings/R$styleable;->ViewFlow:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 107
    .local v0, "styledAttrs":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mSideBuffer:I

    .line 108
    invoke-direct {p0}, Lcom/lenovo/setupwizard/view/ViewFlow;->init()V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/setupwizard/view/ViewFlow;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/setupwizard/view/ViewFlow;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lenovo/setupwizard/view/ViewFlow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/setupwizard/view/ViewFlow;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentAdapterIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/lenovo/setupwizard/view/ViewFlow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/setupwizard/view/ViewFlow;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentAdapterIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/lenovo/setupwizard/view/ViewFlow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/setupwizard/view/ViewFlow;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentScreen:I

    return v0
.end method

.method static synthetic access$300(Lcom/lenovo/setupwizard/view/ViewFlow;I)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/setupwizard/view/ViewFlow;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/lenovo/setupwizard/view/ViewFlow;->snapToScreen(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/lenovo/setupwizard/view/ViewFlow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/setupwizard/view/ViewFlow;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lenovo/setupwizard/view/ViewFlow;)J
    .locals 2
    .param p0, "x0"    # Lcom/lenovo/setupwizard/view/ViewFlow;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->timeSpan:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/lenovo/setupwizard/view/ViewFlow;)I
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/setupwizard/view/ViewFlow;

    .prologue
    .line 35
    iget v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentBufferIndex:I

    return v0
.end method

.method static synthetic access$700(Lcom/lenovo/setupwizard/view/ViewFlow;)Landroid/widget/Adapter;
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/setupwizard/view/ViewFlow;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lenovo/setupwizard/view/ViewFlow;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/setupwizard/view/ViewFlow;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/lenovo/setupwizard/view/ViewFlow;->resetFocus()V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 112
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    .line 113
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mScroller:Landroid/widget/Scroller;

    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 116
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mTouchSlop:I

    .line 117
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mMaximumVelocity:I

    .line 118
    return-void
.end method

.method private makeAndAddView(IZLandroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "addToEnd"    # Z
    .param p3, "convertView"    # Landroid/view/View;

    .prologue
    .line 694
    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1, p1, p3, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 695
    .local v0, "view":Landroid/view/View;
    if-eqz p3, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v0, p2, v1}, Lcom/lenovo/setupwizard/view/ViewFlow;->setupChild(Landroid/view/View;ZZ)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private postViewSwitched(I)V
    .locals 5
    .param p1, "direction"    # I

    .prologue
    const/4 v4, 0x1

    .line 610
    if-nez p1, :cond_1

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 613
    :cond_1
    if-lez p1, :cond_5

    .line 614
    iget v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentAdapterIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentAdapterIndex:I

    .line 615
    iget v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentBufferIndex:I

    .line 622
    const/4 v1, 0x0

    .line 625
    .local v1, "recycleView":Landroid/view/View;
    iget v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentAdapterIndex:I

    iget v3, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mSideBuffer:I

    if-le v2, v3, :cond_2

    .line 626
    iget-object v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "recycleView":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 627
    .restart local v1    # "recycleView":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 629
    iget v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentBufferIndex:I

    .line 633
    :cond_2
    iget v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentAdapterIndex:I

    iget v3, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mSideBuffer:I

    add-int v0, v2, v3

    .line 634
    .local v0, "newBufferIndex":I
    iget-object v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 635
    iget-object v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-direct {p0, v0, v4, v1}, Lcom/lenovo/setupwizard/view/ViewFlow;->makeAndAddView(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 665
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 666
    iget v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentBufferIndex:I

    invoke-direct {p0, v2, v4}, Lcom/lenovo/setupwizard/view/ViewFlow;->setVisibleView(IZ)V

    .line 667
    iget-object v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mIndicator:Lcom/lenovo/setupwizard/view/FlowIndicator;

    if-eqz v2, :cond_4

    .line 668
    iget-object v3, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mIndicator:Lcom/lenovo/setupwizard/view/FlowIndicator;

    iget-object v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v4, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v4, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v3, v2, v4}, Lcom/lenovo/setupwizard/view/FlowIndicator;->onSwitched(Landroid/view/View;I)V

    .line 671
    :cond_4
    iget-object v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mViewSwitchListener:Lcom/lenovo/setupwizard/view/ViewFlow$ViewSwitchListener;

    if-eqz v2, :cond_0

    .line 672
    iget-object v3, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mViewSwitchListener:Lcom/lenovo/setupwizard/view/ViewFlow$ViewSwitchListener;

    iget-object v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v4, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v4, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v3, v2, v4}, Lcom/lenovo/setupwizard/view/ViewFlow$ViewSwitchListener;->onSwitched(Landroid/view/View;I)V

    goto :goto_0

    .line 639
    .end local v0    # "newBufferIndex":I
    .end local v1    # "recycleView":Landroid/view/View;
    :cond_5
    iget v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentAdapterIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentAdapterIndex:I

    .line 640
    iget v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentBufferIndex:I

    .line 647
    const/4 v1, 0x0

    .line 650
    .restart local v1    # "recycleView":Landroid/view/View;
    iget-object v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v2}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentAdapterIndex:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mSideBuffer:I

    if-le v2, v3, :cond_6

    .line 651
    iget-object v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "recycleView":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 652
    .restart local v1    # "recycleView":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    .line 656
    :cond_6
    iget v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentAdapterIndex:I

    iget v3, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mSideBuffer:I

    sub-int v0, v2, v3

    .line 657
    .restart local v0    # "newBufferIndex":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_3

    .line 658
    iget-object v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1}, Lcom/lenovo/setupwizard/view/ViewFlow;->makeAndAddView(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 660
    iget v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentBufferIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentBufferIndex:I

    goto :goto_1
.end method

.method private resetFocus()V
    .locals 4

    .prologue
    .line 596
    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 597
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 599
    const/4 v1, 0x0

    iget v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentAdapterIndex:I

    iget v3, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mSideBuffer:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iget v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentAdapterIndex:I

    iget v3, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mSideBuffer:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 602
    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, Lcom/lenovo/setupwizard/view/ViewFlow;->makeAndAddView(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 603
    iget v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentAdapterIndex:I

    if-ne v0, v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentBufferIndex:I

    .line 601
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 606
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 607
    return-void
.end method

.method private setVisibleView(IZ)V
    .locals 6
    .param p1, "indexInBuffer"    # I
    .param p2, "uiThread"    # Z

    .prologue
    const/4 v4, 0x0

    .line 471
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentScreen:I

    .line 473
    iget v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentScreen:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int v3, v0, v1

    .line 474
    .local v3, "dx":I
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 476
    if-nez v3, :cond_0

    .line 477
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    add-int/2addr v0, v3

    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iget-object v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    add-int/2addr v2, v3

    iget-object v4, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v4

    invoke-virtual {p0, v0, v1, v2, v4}, Lcom/lenovo/setupwizard/view/ViewFlow;->onScrollChanged(IIII)V

    .line 478
    :cond_0
    if-eqz p2, :cond_1

    .line 479
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 482
    :goto_0
    return-void

    .line 481
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method

.method private setupChild(Landroid/view/View;ZZ)Landroid/view/View;
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "addToEnd"    # Z
    .param p3, "recycle"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 679
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 681
    .local v0, "p":Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 682
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    .end local v0    # "p":Landroid/view/ViewGroup$LayoutParams;
    const/4 v3, -0x2

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    .line 686
    .restart local v0    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    if-eqz p3, :cond_2

    .line 687
    if-eqz p2, :cond_1

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 690
    :goto_1
    return-object p1

    :cond_1
    move v1, v2

    .line 687
    goto :goto_0

    .line 689
    :cond_2
    if-eqz p2, :cond_3

    :goto_2
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method

.method private snapToDestination()V
    .locals 4

    .prologue
    .line 429
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 430
    .local v0, "screenWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    div-int v1, v2, v0

    .line 433
    .local v1, "whichScreen":I
    invoke-direct {p0, v1}, Lcom/lenovo/setupwizard/view/ViewFlow;->snapToScreen(I)V

    .line 434
    return-void
.end method

.method private snapToScreen(I)V
    .locals 7
    .param p1, "whichScreen"    # I

    .prologue
    const/4 v2, 0x0

    .line 437
    iget v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentScreen:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLastScrollDirection:I

    .line 438
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 449
    :goto_0
    return-void

    .line 441
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 443
    iput p1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mNextScreen:I

    .line 445
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int v6, p1, v0

    .line 446
    .local v6, "newX":I
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v0

    sub-int v3, v6, v0

    .line 447
    .local v3, "delta":I
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v5

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 448
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 453
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 455
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mNextScreen:I

    if-eq v0, v3, :cond_0

    .line 457
    const/4 v0, 0x0

    iget v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mNextScreen:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentScreen:I

    .line 459
    iput v3, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mNextScreen:I

    .line 460
    iget v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLastScrollDirection:I

    invoke-direct {p0, v0}, Lcom/lenovo/setupwizard/view/ViewFlow;->postViewSwitched(I)V

    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getCurrentScreen()I
    .locals 1

    .prologue
    .line 730
    iget v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentScreen:I

    return v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 531
    iget v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentAdapterIndex:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 525
    iget v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentBufferIndex:I

    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getViewsCount()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mSideBuffer:I

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 143
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLastOrientation:I

    if-eq v0, v1, :cond_0

    .line 144
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLastOrientation:I

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->orientationChangeListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 147
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v13, 0x3e8

    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 200
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    if-nez v12, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v11

    .line 203
    :cond_1
    iget-object v12, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_2

    .line 204
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    iput-object v12, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 206
    :cond_2
    iget-object v12, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 209
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 211
    .local v7, "x":F
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 217
    :pswitch_0
    iget-object v12, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->isFinished()Z

    move-result v12

    if-nez v12, :cond_3

    .line 218
    iget-object v12, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->abortAnimation()V

    .line 222
    :cond_3
    iput v7, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLastMotionX:F

    .line 224
    iget-object v12, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v12}, Landroid/widget/Scroller;->isFinished()Z

    move-result v12

    if-eqz v12, :cond_4

    move v10, v11

    :cond_4
    iput v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mTouchState:I

    .line 226
    iget-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->handler:Landroid/os/Handler;

    if-eqz v10, :cond_0

    .line 227
    iget-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->handler:Landroid/os/Handler;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 231
    :pswitch_1
    iget v12, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLastMotionX:F

    sub-float v12, v7, v12

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    float-to-int v8, v12

    .line 233
    .local v8, "xDiff":I
    iget v12, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mTouchSlop:I

    if-le v8, v12, :cond_7

    move v9, v10

    .line 235
    .local v9, "xMoved":Z
    :goto_1
    if-eqz v9, :cond_5

    .line 237
    iput v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mTouchState:I

    .line 240
    :cond_5
    iget v12, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mTouchState:I

    if-ne v12, v10, :cond_0

    .line 242
    iget v12, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLastMotionX:F

    sub-float/2addr v12, v7

    float-to-int v2, v12

    .line 243
    .local v2, "deltaX":I
    iput v7, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLastMotionX:F

    .line 245
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    .line 246
    .local v4, "scrollX":I
    if-gez v2, :cond_8

    .line 247
    if-lez v4, :cond_6

    .line 248
    neg-int v12, v4

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-virtual {p0, v12, v11}, Landroid/view/View;->scrollBy(II)V

    :cond_6
    :goto_2
    move v11, v10

    .line 258
    goto :goto_0

    .end local v2    # "deltaX":I
    .end local v4    # "scrollX":I
    .end local v9    # "xMoved":Z
    :cond_7
    move v9, v11

    .line 233
    goto :goto_1

    .line 250
    .restart local v2    # "deltaX":I
    .restart local v4    # "scrollX":I
    .restart local v9    # "xMoved":Z
    :cond_8
    if-lez v2, :cond_6

    .line 251
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {p0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v12

    sub-int/2addr v12, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v13

    sub-int v1, v12, v13

    .line 254
    .local v1, "availableToScroll":I
    if-lez v1, :cond_6

    .line 255
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-virtual {p0, v12, v11}, Landroid/view/View;->scrollBy(II)V

    goto :goto_2

    .line 263
    .end local v1    # "availableToScroll":I
    .end local v2    # "deltaX":I
    .end local v4    # "scrollX":I
    .end local v8    # "xDiff":I
    .end local v9    # "xMoved":Z
    :pswitch_2
    iget v12, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mTouchState:I

    if-ne v12, v10, :cond_9

    .line 264
    iget-object v5, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 265
    .local v5, "velocityTracker":Landroid/view/VelocityTracker;
    iget v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mMaximumVelocity:I

    int-to-float v10, v10

    invoke-virtual {v5, v13, v10}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 266
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v10

    float-to-int v6, v10

    .line 268
    .local v6, "velocityX":I
    if-le v6, v13, :cond_a

    iget v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentScreen:I

    if-lez v10, :cond_a

    .line 270
    iget v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentScreen:I

    add-int/lit8 v10, v10, -0x1

    invoke-direct {p0, v10}, Lcom/lenovo/setupwizard/view/ViewFlow;->snapToScreen(I)V

    .line 279
    :goto_3
    iget-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_9

    .line 280
    iget-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 281
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 285
    .end local v5    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v6    # "velocityX":I
    :cond_9
    iput v11, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mTouchState:I

    .line 286
    iget-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->handler:Landroid/os/Handler;

    if-eqz v10, :cond_0

    .line 287
    iget-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->handler:Landroid/os/Handler;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 288
    .local v3, "message":Landroid/os/Message;
    iget-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->handler:Landroid/os/Handler;

    iget-wide v12, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->timeSpan:J

    invoke-virtual {v10, v3, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 271
    .end local v3    # "message":Landroid/os/Message;
    .restart local v5    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v6    # "velocityX":I
    :cond_a
    const/16 v10, -0x3e8

    if-ge v6, v10, :cond_b

    iget v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentScreen:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    if-ge v10, v12, :cond_b

    .line 274
    iget v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentScreen:I

    add-int/lit8 v10, v10, 0x1

    invoke-direct {p0, v10}, Lcom/lenovo/setupwizard/view/ViewFlow;->snapToScreen(I)V

    goto :goto_3

    .line 276
    :cond_b
    invoke-direct {p0}, Lcom/lenovo/setupwizard/view/ViewFlow;->snapToDestination()V

    goto :goto_3

    .line 292
    .end local v5    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v6    # "velocityX":I
    :pswitch_3
    iput v11, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mTouchState:I

    goto/16 :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 184
    const/4 v1, 0x0

    .line 186
    .local v1, "childLeft":I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 187
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 188
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 189
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 191
    .local v2, "childWidth":I
    const/4 v5, 0x0

    add-int v6, v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 193
    add-int/2addr v1, v2

    .line 187
    .end local v2    # "childWidth":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 196
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000

    const/4 v1, 0x0

    .line 155
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 157
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 158
    .local v9, "width":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 159
    .local v10, "widthMode":I
    if-eq v10, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewFlow can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 165
    .local v7, "heightMode":I
    if-eq v7, v2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewFlow can only be used in EXACTLY mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 172
    .local v6, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_2

    .line 173
    invoke-virtual {p0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 172
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 176
    :cond_2
    iget-boolean v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mFirstLayout:Z

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mScroller:Landroid/widget/Scroller;

    iget v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentScreen:I

    mul-int v3, v2, v9

    move v2, v1

    move v4, v1

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 178
    iput-boolean v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mFirstLayout:Z

    .line 180
    :cond_3
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 3
    .param p1, "h"    # I
    .param p2, "v"    # I
    .param p3, "oldh"    # I
    .param p4, "oldv"    # I

    .prologue
    .line 415
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onScrollChanged(IIII)V

    .line 416
    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mIndicator:Lcom/lenovo/setupwizard/view/FlowIndicator;

    if-eqz v1, :cond_0

    .line 422
    iget v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentAdapterIndex:I

    iget v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentBufferIndex:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    mul-int/2addr v1, v2

    add-int v0, p1, v1

    .line 424
    .local v0, "hPerceived":I
    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mIndicator:Lcom/lenovo/setupwizard/view/FlowIndicator;

    invoke-interface {v1, v0, p2, p3, p4}, Lcom/lenovo/setupwizard/view/FlowIndicator;->onScrolled(IIII)V

    .line 426
    .end local v0    # "hPerceived":I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 302
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    if-nez v10, :cond_0

    .line 303
    const/4 v10, 0x0

    .line 410
    :goto_0
    return v10

    .line 305
    :cond_0
    iget-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_1

    .line 306
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 308
    :cond_1
    iget-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 310
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 311
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    .line 313
    .local v7, "x":F
    packed-switch v0, :pswitch_data_0

    .line 410
    :cond_2
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 319
    :pswitch_0
    iget-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-nez v10, :cond_3

    .line 320
    iget-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->abortAnimation()V

    .line 324
    :cond_3
    iput v7, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLastMotionX:F

    .line 326
    iget-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v10}, Landroid/widget/Scroller;->isFinished()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v10, 0x0

    :goto_2
    iput v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mTouchState:I

    .line 328
    iget-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->handler:Landroid/os/Handler;

    if-eqz v10, :cond_2

    .line 329
    iget-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->handler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1

    .line 326
    :cond_4
    const/4 v10, 0x1

    goto :goto_2

    .line 333
    :pswitch_1
    iget v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLastMotionX:F

    sub-float v10, v7, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v8, v10

    .line 335
    .local v8, "xDiff":I
    iget v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mTouchSlop:I

    if-le v8, v10, :cond_7

    const/4 v9, 0x1

    .line 337
    .local v9, "xMoved":Z
    :goto_3
    if-eqz v9, :cond_5

    .line 339
    const/4 v10, 0x1

    iput v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mTouchState:I

    .line 342
    :cond_5
    iget v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mTouchState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 344
    iget v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLastMotionX:F

    sub-float/2addr v10, v7

    float-to-int v2, v10

    .line 345
    .local v2, "deltaX":I
    iput v7, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLastMotionX:F

    .line 347
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v4

    .line 348
    .local v4, "scrollX":I
    if-gez v2, :cond_8

    .line 349
    if-lez v4, :cond_6

    .line 350
    neg-int v10, v4

    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/view/View;->scrollBy(II)V

    .line 360
    :cond_6
    :goto_4
    const/4 v10, 0x1

    goto :goto_0

    .line 335
    .end local v2    # "deltaX":I
    .end local v4    # "scrollX":I
    .end local v9    # "xMoved":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_3

    .line 352
    .restart local v2    # "deltaX":I
    .restart local v4    # "scrollX":I
    .restart local v9    # "xMoved":Z
    :cond_8
    if-lez v2, :cond_6

    .line 353
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    sub-int/2addr v10, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v11

    sub-int v1, v10, v11

    .line 356
    .local v1, "availableToScroll":I
    if-lez v1, :cond_6

    .line 357
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/view/View;->scrollBy(II)V

    goto :goto_4

    .line 365
    .end local v1    # "availableToScroll":I
    .end local v2    # "deltaX":I
    .end local v4    # "scrollX":I
    .end local v8    # "xDiff":I
    .end local v9    # "xMoved":Z
    :pswitch_2
    iget v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mTouchState:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_9

    .line 366
    iget-object v5, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 367
    .local v5, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v10, 0x3e8

    iget v11, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mMaximumVelocity:I

    int-to-float v11, v11

    invoke-virtual {v5, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 368
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v10

    float-to-int v6, v10

    .line 370
    .local v6, "velocityX":I
    const/16 v10, 0x3e8

    if-le v6, v10, :cond_a

    iget v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentScreen:I

    if-lez v10, :cond_a

    .line 372
    iget v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentScreen:I

    add-int/lit8 v10, v10, -0x1

    invoke-direct {p0, v10}, Lcom/lenovo/setupwizard/view/ViewFlow;->snapToScreen(I)V

    .line 390
    :goto_5
    iget-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_9

    .line 391
    iget-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 392
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 396
    .end local v5    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v6    # "velocityX":I
    :cond_9
    const/4 v10, 0x0

    iput v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mTouchState:I

    .line 398
    iget-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->handler:Landroid/os/Handler;

    if-eqz v10, :cond_2

    .line 399
    iget-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->handler:Landroid/os/Handler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 400
    .local v3, "message":Landroid/os/Message;
    iget-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->handler:Landroid/os/Handler;

    iget-wide v11, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->timeSpan:J

    invoke-virtual {v10, v3, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1

    .line 373
    .end local v3    # "message":Landroid/os/Message;
    .restart local v5    # "velocityTracker":Landroid/view/VelocityTracker;
    .restart local v6    # "velocityX":I
    :cond_a
    const/16 v10, -0x3e8

    if-ge v6, v10, :cond_b

    iget v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentScreen:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ge v10, v11, :cond_b

    .line 376
    iget v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentScreen:I

    add-int/lit8 v10, v10, 0x1

    invoke-direct {p0, v10}, Lcom/lenovo/setupwizard/view/ViewFlow;->snapToScreen(I)V

    goto :goto_5

    .line 387
    :cond_b
    invoke-direct {p0}, Lcom/lenovo/setupwizard/view/ViewFlow;->snapToDestination()V

    goto :goto_5

    .line 404
    .end local v5    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v6    # "velocityX":I
    :pswitch_3
    invoke-direct {p0}, Lcom/lenovo/setupwizard/view/ViewFlow;->snapToDestination()V

    .line 405
    const/4 v10, 0x0

    iput v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mTouchState:I

    goto/16 :goto_1

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 502
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lenovo/setupwizard/view/ViewFlow;->setAdapter(Landroid/widget/Adapter;I)V

    .line 503
    return-void
.end method

.method public setAdapter(Landroid/widget/Adapter;I)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/Adapter;
    .param p2, "initialPosition"    # I

    .prologue
    .line 506
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mDataSetObserver:Lcom/lenovo/setupwizard/view/ViewFlow$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 510
    :cond_0
    iput-object p1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    .line 512
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    .line 513
    new-instance v0, Lcom/lenovo/setupwizard/view/ViewFlow$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/lenovo/setupwizard/view/ViewFlow$AdapterDataSetObserver;-><init>(Lcom/lenovo/setupwizard/view/ViewFlow;)V

    iput-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mDataSetObserver:Lcom/lenovo/setupwizard/view/ViewFlow$AdapterDataSetObserver;

    .line 514
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mDataSetObserver:Lcom/lenovo/setupwizard/view/ViewFlow$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    .line 521
    :cond_2
    :goto_0
    return-void

    .line 520
    :cond_3
    invoke-virtual {p0, p2}, Lcom/lenovo/setupwizard/view/ViewFlow;->setSelection(I)V

    goto :goto_0
.end method

.method public setFlowIndicator(Lcom/lenovo/setupwizard/view/FlowIndicator;)V
    .locals 1
    .param p1, "flowIndicator"    # Lcom/lenovo/setupwizard/view/FlowIndicator;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mIndicator:Lcom/lenovo/setupwizard/view/FlowIndicator;

    .line 541
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mIndicator:Lcom/lenovo/setupwizard/view/FlowIndicator;

    invoke-interface {v0, p0}, Lcom/lenovo/setupwizard/view/FlowIndicator;->setViewFlow(Lcom/lenovo/setupwizard/view/ViewFlow;)V

    .line 542
    return-void
.end method

.method public setOnViewSwitchListener(Lcom/lenovo/setupwizard/view/ViewFlow$ViewSwitchListener;)V
    .locals 0
    .param p1, "l"    # Lcom/lenovo/setupwizard/view/ViewFlow$ViewSwitchListener;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mViewSwitchListener:Lcom/lenovo/setupwizard/view/ViewFlow$ViewSwitchListener;

    .line 493
    return-void
.end method

.method public setSelection(I)V
    .locals 13
    .param p1, "position"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 546
    const/4 v8, -0x1

    iput v8, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mNextScreen:I

    .line 547
    iget-object v8, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v8, v12}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 548
    iget-object v8, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    if-nez v8, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    invoke-static {p1, v11}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 552
    iget-object v8, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v8}, Landroid/widget/Adapter;->getCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {p1, v8}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 554
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v5, "recycleViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_1
    iget-object v8, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    .line 557
    iget-object v8, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, "recycleView":Landroid/view/View;
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->detachViewFromParent(Landroid/view/View;)V

    goto :goto_1

    .line 561
    .end local v4    # "recycleView":Landroid/view/View;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v9

    :goto_2
    invoke-direct {p0, p1, v12, v8}, Lcom/lenovo/setupwizard/view/ViewFlow;->makeAndAddView(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 563
    .local v0, "currentView":Landroid/view/View;
    iget-object v8, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 565
    const/4 v3, 0x1

    .local v3, "offset":I
    :goto_3
    iget v8, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mSideBuffer:I

    sub-int/2addr v8, v3

    if-ltz v8, :cond_8

    .line 566
    sub-int v2, p1, v3

    .line 567
    .local v2, "leftIndex":I
    add-int v6, p1, v3

    .line 568
    .local v6, "rightIndex":I
    if-ltz v2, :cond_3

    .line 569
    iget-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v8, v9

    :goto_4
    invoke-direct {p0, v2, v11, v8}, Lcom/lenovo/setupwizard/view/ViewFlow;->makeAndAddView(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 571
    :cond_3
    iget-object v8, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mAdapter:Landroid/widget/Adapter;

    invoke-interface {v8}, Landroid/widget/Adapter;->getCount()I

    move-result v8

    if-ge v6, v8, :cond_4

    .line 572
    iget-object v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v8, v9

    :goto_5
    invoke-direct {p0, v6, v12, v8}, Lcom/lenovo/setupwizard/view/ViewFlow;->makeAndAddView(IZLandroid/view/View;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 565
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 561
    .end local v0    # "currentView":Landroid/view/View;
    .end local v2    # "leftIndex":I
    .end local v3    # "offset":I
    .end local v6    # "rightIndex":I
    :cond_5
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    goto :goto_2

    .line 569
    .restart local v0    # "currentView":Landroid/view/View;
    .restart local v2    # "leftIndex":I
    .restart local v3    # "offset":I
    .restart local v6    # "rightIndex":I
    :cond_6
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    goto :goto_4

    .line 572
    :cond_7
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    goto :goto_5

    .line 576
    .end local v2    # "leftIndex":I
    .end local v6    # "rightIndex":I
    :cond_8
    iget-object v8, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    invoke-virtual {v8, v0}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    iput v8, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentBufferIndex:I

    .line 577
    iput p1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentAdapterIndex:I

    .line 579
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 580
    .local v7, "view":Landroid/view/View;
    invoke-virtual {p0, v7, v11}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_6

    .line 582
    .end local v7    # "view":Landroid/view/View;
    :cond_9
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 583
    iget v8, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentBufferIndex:I

    invoke-direct {p0, v8, v11}, Lcom/lenovo/setupwizard/view/ViewFlow;->setVisibleView(IZ)V

    .line 584
    iget-object v8, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mIndicator:Lcom/lenovo/setupwizard/view/FlowIndicator;

    if-eqz v8, :cond_a

    .line 585
    iget-object v9, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mIndicator:Lcom/lenovo/setupwizard/view/FlowIndicator;

    iget-object v8, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v8, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iget v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v9, v8, v10}, Lcom/lenovo/setupwizard/view/FlowIndicator;->onSwitched(Landroid/view/View;I)V

    .line 588
    :cond_a
    iget-object v8, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mViewSwitchListener:Lcom/lenovo/setupwizard/view/ViewFlow$ViewSwitchListener;

    if-eqz v8, :cond_0

    .line 589
    iget-object v9, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mViewSwitchListener:Lcom/lenovo/setupwizard/view/ViewFlow$ViewSwitchListener;

    iget-object v8, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mLoadedViews:Ljava/util/LinkedList;

    iget v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentBufferIndex:I

    invoke-virtual {v8, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    iget v10, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mCurrentAdapterIndex:I

    invoke-interface {v9, v8, v10}, Lcom/lenovo/setupwizard/view/ViewFlow$ViewSwitchListener;->onSwitched(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method public setTimeSpan(J)V
    .locals 0
    .param p1, "timeSpan"    # J

    .prologue
    .line 722
    iput-wide p1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->timeSpan:J

    .line 723
    return-void
.end method

.method public setmSideBuffer(I)V
    .locals 0
    .param p1, "mSideBuffer"    # I

    .prologue
    .line 726
    iput p1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->mSideBuffer:I

    .line 727
    return-void
.end method

.method public startAutoFlowTimer()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->handler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 122
    new-instance v1, Lcom/lenovo/setupwizard/view/ViewFlow$2;

    invoke-direct {v1, p0}, Lcom/lenovo/setupwizard/view/ViewFlow$2;-><init>(Lcom/lenovo/setupwizard/view/ViewFlow;)V

    iput-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->handler:Landroid/os/Handler;

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 133
    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 134
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->handler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->timeSpan:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 135
    return-void
.end method

.method public stopAutoFlowTimer()V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 139
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/setupwizard/view/ViewFlow;->handler:Landroid/os/Handler;

    .line 140
    return-void
.end method
