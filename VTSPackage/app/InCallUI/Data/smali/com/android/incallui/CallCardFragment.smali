.class public Lcom/android/incallui/CallCardFragment;
.super Lcom/android/incallui/BaseFragment;
.source "CallCardFragment.java"

# interfaces
.implements Lcom/android/incallui/CallCardPresenter$CallCardUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallCardFragment$10;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/CallCardPresenter;",
        "Lcom/android/incallui/CallCardPresenter$CallCardUi;",
        ">;",
        "Lcom/android/incallui/CallCardPresenter$CallCardUi;"
    }
.end annotation


# static fields
.field private static final MSG_GET_CALL_SIGN:I = 0x66

.field public static final SU_THEMES_01_PHOTO_BORDER_LG:Ljava/lang/String; = "photo_border_lg"

.field public static final SU_THEMES_02_INCALL_STATUS_BACKGROUND:Ljava/lang/String; = "incall_status_background"

.field public static final SU_THEMES_03_INCALL_STATUS_BACKGROUND_2:Ljava/lang/String; = "incall_status_background_2"

.field public static final SU_THEMES_04_CALL_CARD_BG:Ljava/lang/String; = "callcard_bg"

.field public static final SU_THEMES_04_VERTICAL_SEPARATOR:Ljava/lang/String; = "vertical_separator"


# instance fields
.field callCardListener:Landroid/view/View$OnClickListener;

.field m2ndHoldName:Landroid/widget/TextView;

.field m2ndHoldState:Landroid/widget/TextView;

.field m2ndIncomingName:Landroid/widget/TextView;

.field m2ndIncomingState:Landroid/widget/TextView;

.field mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCallBannerSidePadding:I

.field private mCallBannerTopBottomPadding:I

.field private mCallCardHeight:I

.field private mCallInfoContainer:Landroid/view/ViewGroup;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallStateLabelTitle:Landroid/widget/TextView;

.field private mCallStateTitle:Landroid/view/ViewGroup;

.field private mCallTimeTitle:Landroid/widget/TextView;

.field private mCallType:I

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mDensity:F

.field private mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

.field private mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mHasMultiCall:Z

.field private mInCallGobackView:Landroid/widget/ImageView;

.field private mIncomingCall2Info:Landroid/view/ViewGroup;

.field private mIncomingCall2PhotoDimEffect:Landroid/view/View;

.field private mIncomingCallInfoHeight:I

.field private mIncomingCallInfoTopMargin:I

.field private mIncomingCallInfoWidth:I

.field private mIsPhotoVisible:Z

.field private mLabelAndNumber:Landroid/widget/TextView;

.field private mLeSafeContainer:Landroid/view/ViewGroup;

.field private mLeSafeDisplay:Z

.field private mLocation:Landroid/widget/TextView;

.field private mMainCallBanner:Landroid/view/ViewGroup;

.field private mMainCallStateLabel:Landroid/widget/TextView;

.field private mMainGeoDescription:Landroid/widget/TextView;

.field private mMainLabelAndNumber:Landroid/widget/TextView;

.field private mMainLeSafeMessage:Landroid/widget/TextView;

.field private mMainName:Landroid/widget/TextView;

.field private mMainNumberGeo:Landroid/view/ViewGroup;

.field private mMainSimContainer:Landroid/view/ViewGroup;

.field private mMainSimIcon:Landroid/widget/ImageView;

.field private mMainSimIndicator:Landroid/widget/TextView;

.field private mNeedShowIncomingCall2Animator:Z

.field private mNumberLabel:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoHoldPre:Landroid/widget/ImageView;

.field private mPhotoIncomingPre:Landroid/widget/ImageView;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryCallInfo:Landroid/view/ViewGroup;

.field private mPrimaryName:Landroid/widget/TextView;

.field private mProviderInfo:Landroid/view/View;

.field private mProviderLabel:Landroid/widget/TextView;

.field private mProviderNumber:Landroid/widget/TextView;

.field private mRecentlyCallHint:Landroid/widget/TextView;

.field private mSecCallInfoView:Landroid/view/ViewGroup;

.field private mSecondHoldCallBanner:Landroid/view/ViewGroup;

.field private mSecondIncomingCallBanner:Landroid/view/ViewGroup;

.field private mSecondaryCallBanner:Landroid/view/ViewGroup;

.field private mSecondaryCallName:Landroid/widget/TextView;

.field private mSecondaryCallStatus:Landroid/widget/TextView;

.field private mSecondaryGeoDescription:Landroid/widget/TextView;

.field private mSecondaryNumber:Landroid/widget/TextView;

.field private mSecondarySimIndicator:Landroid/widget/TextView;

.field private mShowAnimator2End:I

.field private mShowSwtchCall2Animator:Z

.field private mSimBorderMap:[I

.field private mSimColorMap:[I

.field private mSimIndicator:Landroid/widget/TextView;

.field private mSimIndicatorPaddingLeft:I

.field private mSimIndicatorPaddingRight:I

.field private mSlotId:I

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mSupplementaryInfoContainer:Landroid/view/ViewGroup;

.field private mVoiceRecorderIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 126
    iput-boolean v1, p0, Lcom/android/incallui/CallCardFragment;->mLeSafeDisplay:Z

    .line 127
    iput-boolean v1, p0, Lcom/android/incallui/CallCardFragment;->mHasMultiCall:Z

    .line 137
    new-instance v0, Lcom/android/incallui/CallCardFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallCardFragment$1;-><init>(Lcom/android/incallui/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mHandler:Landroid/os/Handler;

    .line 1053
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimColorMap:[I

    .line 1060
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimBorderMap:[I

    .line 1077
    iput v2, p0, Lcom/android/incallui/CallCardFragment;->mShowAnimator2End:I

    .line 1335
    iput-boolean v2, p0, Lcom/android/incallui/CallCardFragment;->mIsPhotoVisible:Z

    .line 1640
    new-instance v0, Lcom/android/incallui/CallCardFragment$7;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallCardFragment$7;-><init>(Lcom/android/incallui/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->callCardListener:Landroid/view/View$OnClickListener;

    .line 1662
    new-instance v0, Lcom/android/incallui/CallCardFragment$8;

    invoke-direct {v0, p0}, Lcom/android/incallui/CallCardFragment$8;-><init>(Lcom/android/incallui/CallCardFragment;)V

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 1765
    iput v1, p0, Lcom/android/incallui/CallCardFragment;->mCallType:I

    return-void

    .line 1053
    nop

    :array_0
    .array-data 4
        0x7f0200c8
        0x7f0200c9
        0x7f0200ca
        0x7f0200cb
    .end array-data

    .line 1060
    :array_1
    .array-data 4
        0x7f0200e6
        0x7f0200e9
        0x7f0200e7
        0x7f0200ea
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/incallui/CallCardFragment;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardFragment;->displayLeSafeMessage([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/CallCardFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mCallCardHeight:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/CallCardFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2Info:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/incallui/CallCardFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/incallui/CallCardFragment;->mCallCardHeight:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/incallui/CallCardFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/incallui/CallCardFragment;->mNeedShowIncomingCall2Animator:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/incallui/CallCardFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/incallui/CallCardFragment;->mNeedShowIncomingCall2Animator:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/incallui/CallCardFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/CallCardFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/incallui/CallCardFragment;->mShowSwtchCall2Animator:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/incallui/CallCardFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/incallui/CallCardFragment;->mShowSwtchCall2Animator:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/incallui/CallCardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->displaySwitchIncomingAnimator()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/CallCardFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mShowAnimator2End:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/incallui/CallCardFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;
    .param p1, "x1"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/android/incallui/CallCardFragment;->mShowAnimator2End:I

    return p1
.end method

.method static synthetic access$508(Lcom/android/incallui/CallCardFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mShowAnimator2End:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/CallCardFragment;->mShowAnimator2End:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/incallui/CallCardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->broadRingCallToggled()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/incallui/CallCardFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/incallui/CallCardFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/incallui/CallCardFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 79
    iget v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoTopMargin:I

    return v0
.end method

.method private broadRingCallToggled()V
    .locals 2

    .prologue
    .line 1756
    const-string v1, "broadRingCallToggled() action:com.mediatek.phone.action.RING_CALL_TOGGLED"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1757
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.phone.action.RING_CALL_TOGGLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1758
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1759
    return-void
.end method

.method private dip2px(Landroid/view/View;F)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dpValue"    # F

    .prologue
    .line 1857
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1858
    .local v0, "scale":F
    mul-float v1, p2, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1024
    if-nez p2, :cond_1

    .line 1032
    :cond_0
    :goto_0
    return-void

    .line 1025
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    .line 1026
    .local v0, "eventText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1027
    .local v1, "size":I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1029
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1030
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private displayLeSafeMessage([Ljava/lang/String;)V
    .locals 12
    .param p1, "resultStrs"    # [Ljava/lang/String;

    .prologue
    .line 1915
    iget-object v6, p0, Lcom/android/incallui/CallCardFragment;->mMainLeSafeMessage:Landroid/widget/TextView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/CallCardFragment;->mMainLeSafeMessage:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1916
    if-nez p1, :cond_1

    .line 1918
    const-string v6, "This number has not been marked by LeSafe"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1919
    iget-object v6, p0, Lcom/android/incallui/CallCardFragment;->mMainLeSafeMessage:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1957
    :cond_0
    :goto_0
    return-void

    .line 1920
    :cond_1
    array-length v6, p1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 1922
    iget-object v6, p0, Lcom/android/incallui/CallCardFragment;->mMainLeSafeMessage:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1923
    iget-object v6, p0, Lcom/android/incallui/CallCardFragment;->mMainLeSafeMessage:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0374

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget-object v10, p1, v10

    invoke-static {v10}, Lcom/lesafe/antiInterface/SafeSignSupport;->getDescFromType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1924
    .local v0, "msg":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1925
    .local v1, "sp":Landroid/text/SpannableString;
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-static {v6}, Lcom/lesafe/antiInterface/SafeSignSupport;->getDescFromType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1926
    .local v2, "startIndex":I
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-static {v6}, Lcom/lesafe/antiInterface/SafeSignSupport;->getDescFromType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v4, v2, v6

    .line 1927
    .local v4, "stopIndex":I
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const v7, -0x1271dc

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v7, 0x21

    invoke-virtual {v1, v6, v2, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1931
    iget-object v6, p0, Lcom/android/incallui/CallCardFragment;->mMainLeSafeMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1932
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This number has been marked by Local Lesafe as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-static {v7}, Lcom/lesafe/antiInterface/SafeSignSupport;->getDescFromType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1933
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "sp":Landroid/text/SpannableString;
    .end local v2    # "startIndex":I
    .end local v4    # "stopIndex":I
    :cond_2
    array-length v6, p1

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 1935
    iget-object v6, p0, Lcom/android/incallui/CallCardFragment;->mMainLeSafeMessage:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1936
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x1

    aget-object v7, p1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/CallCardFragment;->mMainLeSafeMessage:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0375

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-static {v11}, Lcom/lesafe/antiInterface/SafeSignSupport;->getDescFromType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1937
    .restart local v0    # "msg":Ljava/lang/String;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1938
    .restart local v1    # "sp":Landroid/text/SpannableString;
    const/4 v2, 0x0

    .line 1939
    .restart local v2    # "startIndex":I
    const/4 v6, 0x1

    aget-object v6, p1, v6

    invoke-static {v6}, Lcom/lesafe/antiInterface/SafeSignSupport;->getDescFromType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 1941
    .restart local v4    # "stopIndex":I
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-static {v6}, Lcom/lesafe/antiInterface/SafeSignSupport;->getDescFromType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 1942
    .local v3, "startIndex_1":I
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-static {v6}, Lcom/lesafe/antiInterface/SafeSignSupport;->getDescFromType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v5, v3, v6

    .line 1944
    .local v5, "stopIndex_1":I
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const v7, -0x1271dc

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v7, 0x21

    invoke-virtual {v1, v6, v2, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1949
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const v7, -0x1271dc

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v7, 0x21

    invoke-virtual {v1, v6, v2, v4, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1953
    iget-object v6, p0, Lcom/android/incallui/CallCardFragment;->mMainLeSafeMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1954
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "There are "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, p1, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " marked this number as "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v7, p1, v7

    invoke-static {v7}, Lcom/lesafe/antiInterface/SafeSignSupport;->getDescFromType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private displaySecondaryIncomingAnimator()V
    .locals 13

    .prologue
    const v2, 0x3ecccccd

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1716
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1718
    .local v9, "animationSet":Landroid/view/animation/AnimationSet;
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoWidth:I

    add-int v10, v3, v4

    .line 1719
    .local v10, "dx":I
    iget v3, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoTopMargin:I

    iget v4, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoHeight:I

    add-int v11, v3, v4

    .line 1720
    .local v11, "dy":I
    new-instance v12, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v10

    int-to-float v4, v11

    invoke-direct {v12, v1, v3, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1721
    .local v12, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v3, 0x12c

    invoke-virtual {v12, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1722
    invoke-virtual {v9, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1724
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v1

    move v7, v5

    move v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1726
    .local v0, "myAnimationScale":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1727
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1729
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1730
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2Info:Landroid/view/ViewGroup;

    invoke-virtual {v1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1731
    return-void
.end method

.method private displaySwitchIncomingAnimator()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x1f4

    const v1, 0x3ecccccd

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1735
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget v4, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoWidth:I

    sub-int v10, v3, v4

    .line 1737
    .local v10, "dx":I
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1738
    .local v9, "animationSet":Landroid/view/animation/AnimationSet;
    new-instance v11, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v10

    iget v4, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoTopMargin:I

    int-to-float v4, v4

    invoke-direct {v11, v3, v2, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1739
    .local v11, "translateAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v11, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1740
    invoke-virtual {v9, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1742
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1744
    .local v0, "myAnimationScale":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1745
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1746
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v9, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1748
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2Info:Landroid/view/ViewGroup;

    invoke-virtual {v1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1749
    return-void
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1841
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getCallFailedString(Lcom/android/services/telephony/common/Call$DisconnectCause;)Ljava/lang/String;
    .locals 3
    .param p1, "cause"    # Lcom/android/services/telephony/common/Call$DisconnectCause;

    .prologue
    .line 892
    const v0, 0x7f0a0282

    .line 898
    .local v0, "resID":I
    sget-object v1, Lcom/android/incallui/CallCardFragment$10;->$SwitchMap$com$android$services$telephony$common$Call$DisconnectCause:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 958
    const v0, 0x7f0a0282

    .line 961
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 900
    :pswitch_0
    const v0, 0x7f0a0143

    .line 901
    goto :goto_0

    .line 904
    :pswitch_1
    const v0, 0x7f0a0144

    .line 905
    goto :goto_0

    .line 908
    :pswitch_2
    const v0, 0x7f0a0145

    .line 909
    goto :goto_0

    .line 912
    :pswitch_3
    const v0, 0x7f0a0146

    .line 913
    goto :goto_0

    .line 916
    :pswitch_4
    const v0, 0x7f0a0147

    .line 917
    goto :goto_0

    .line 920
    :pswitch_5
    const v0, 0x7f0a0148

    .line 921
    goto :goto_0

    .line 924
    :pswitch_6
    const v0, 0x7f0a014a

    .line 925
    goto :goto_0

    .line 928
    :pswitch_7
    const v0, 0x7f0a0149

    .line 929
    goto :goto_0

    .line 933
    :pswitch_8
    const v0, 0x7f0a014b

    .line 934
    goto :goto_0

    .line 937
    :pswitch_9
    const v0, 0x7f0a014c

    .line 938
    goto :goto_0

    .line 941
    :pswitch_a
    const v0, 0x7f0a014d

    .line 942
    goto :goto_0

    .line 945
    :pswitch_b
    const v0, 0x7f0a014e

    .line 946
    goto :goto_0

    .line 949
    :pswitch_c
    const v0, 0x7f0a014f

    .line 950
    goto :goto_0

    .line 954
    :pswitch_d
    const v0, 0x7f0a0155

    .line 955
    goto :goto_0

    .line 898
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private getCallStateLabelFromState(ILcom/android/services/telephony/common/Call$DisconnectCause;)Ljava/lang/String;
    .locals 4
    .param p1, "state"    # I
    .param p2, "cause"    # Lcom/android/services/telephony/common/Call$DisconnectCause;

    .prologue
    .line 837
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 838
    .local v1, "context":Landroid/content/Context;
    const/4 v0, 0x0

    .line 840
    .local v0, "callStateLabel":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    .line 844
    const-string v0, ""

    .line 885
    :cond_0
    :goto_0
    return-object v0

    .line 847
    :cond_1
    const/4 v2, 0x2

    if-eq v2, p1, :cond_0

    .line 851
    const/4 v2, 0x7

    if-ne v2, p1, :cond_2

    .line 852
    const v2, 0x7f0a0283

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 853
    :cond_2
    const/4 v2, 0x5

    if-ne v2, p1, :cond_4

    .line 855
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTOutgoing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 856
    const v2, 0x7f0a0387

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 858
    :cond_3
    const v2, 0x7f0a027e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 861
    :cond_4
    const/4 v2, 0x6

    if-ne v2, p1, :cond_5

    .line 862
    const v2, 0x7f0a027f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 863
    :cond_5
    const/4 v2, 0x3

    if-eq v2, p1, :cond_6

    const/4 v2, 0x4

    if-ne v2, p1, :cond_8

    .line 864
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->isVTCall()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 865
    const v2, 0x7f0a0132

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 867
    :cond_7
    const/4 v0, 0x0

    goto :goto_0

    .line 869
    :cond_8
    const/16 v2, 0x8

    if-ne v2, p1, :cond_9

    .line 876
    const v2, 0x7f0a0284

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 878
    :cond_9
    const/16 v2, 0x9

    if-ne v2, p1, :cond_a

    .line 879
    invoke-direct {p0, p2}, Lcom/android/incallui/CallCardFragment;->getCallFailedString(Lcom/android/services/telephony/common/Call$DisconnectCause;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 882
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCallStateWidgets: unexpected call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getConferencePhoto(Z)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "isGeneric"    # Z

    .prologue
    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGenericPhoto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 813
    if-eqz p1, :cond_0

    const v0, 0x7f02010b

    .line 814
    .local v0, "resId":I
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    .line 813
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x7f02010a

    goto :goto_0
.end method

.method private getConferenceString(Z)Ljava/lang/String;
    .locals 3
    .param p1, "isGeneric"    # Z

    .prologue
    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGenericString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 807
    if-eqz p1, :cond_0

    const v0, 0x7f0a0285

    .line 808
    .local v0, "resId":I
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 807
    .end local v0    # "resId":I
    :cond_0
    const v0, 0x7f0a0280

    goto :goto_0
.end method

.method private static getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "roundPx"    # F

    .prologue
    const/4 v9, 0x0

    .line 1824
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1826
    .local v2, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1827
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v1, -0xbdbdbe

    .line 1828
    .local v1, "color":I
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1829
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-direct {v4, v9, v9, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1830
    .local v4, "rect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1831
    .local v5, "rectF":Landroid/graphics/RectF;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1832
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1833
    const v6, -0xbdbdbe

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1834
    invoke-virtual {v0, v5, p1, p1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1835
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1836
    invoke-virtual {v0, p0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1837
    return-object v2
.end method

.method private inCarMode()Z
    .locals 1

    .prologue
    .line 1861
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1862
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->inCarMode()Z

    move-result v0

    .line 1864
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initPaddingDimensions()V
    .locals 2

    .prologue
    .line 1158
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mCallBannerSidePadding:I

    .line 1159
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mCallBannerTopBottomPadding:I

    .line 1160
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicatorPaddingLeft:I

    .line 1161
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicatorPaddingRight:I

    .line 1162
    return-void
.end method

.method private initResourcesForDualTalk(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 1420
    const v0, 0x7f0600a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2Info:Landroid/view/ViewGroup;

    .line 1421
    const v0, 0x7f060082

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhotoIncomingPre:Landroid/widget/ImageView;

    .line 1423
    const v0, 0x7f060081

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndIncomingName:Landroid/widget/TextView;

    .line 1424
    const v0, 0x7f060085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndIncomingState:Landroid/widget/TextView;

    .line 1425
    const v0, 0x7f060084

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondIncomingCallBanner:Landroid/view/ViewGroup;

    .line 1427
    const v0, 0x7f060083

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    .line 1428
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1429
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 1430
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->callCardListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1433
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1435
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoWidth:I

    .line 1437
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoHeight:I

    .line 1439
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCallInfoTopMargin:I

    .line 1441
    return-void
.end method

.method private initVoiceRecorderIcon(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1322
    const v0, 0x7f0600aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVoiceRecorderIcon:Landroid/widget/ImageView;

    .line 1323
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVoiceRecorderIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVoiceRecorderIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200ec

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1325
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVoiceRecorderIcon:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1327
    :cond_0
    return-void
.end method

.method private onViewCreateLenovo(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1784
    const v0, 0x7f060062

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mLeSafeContainer:Landroid/view/ViewGroup;

    .line 1787
    const v0, 0x7f060093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainCallBanner:Landroid/view/ViewGroup;

    .line 1788
    const v0, 0x7f060067

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainName:Landroid/widget/TextView;

    .line 1789
    const v0, 0x7f060069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainLabelAndNumber:Landroid/widget/TextView;

    .line 1790
    const v0, 0x7f06006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainGeoDescription:Landroid/widget/TextView;

    .line 1792
    const v0, 0x7f06006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainCallStateLabel:Landroid/widget/TextView;

    .line 1793
    const v0, 0x7f060068

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainNumberGeo:Landroid/view/ViewGroup;

    .line 1794
    const v0, 0x7f060065

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainSimIndicator:Landroid/widget/TextView;

    .line 1795
    const v0, 0x7f06006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainLeSafeMessage:Landroid/widget/TextView;

    .line 1796
    const v0, 0x7f060063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainSimContainer:Landroid/view/ViewGroup;

    .line 1797
    const v0, 0x7f060064

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainSimIcon:Landroid/widget/ImageView;

    .line 1798
    const v0, 0x7f06009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondarySimIndicator:Landroid/widget/TextView;

    .line 1800
    const v0, 0x7f0600ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabelTitle:Landroid/widget/TextView;

    .line 1801
    const v0, 0x7f0600af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallTimeTitle:Landroid/widget/TextView;

    .line 1802
    const v0, 0x7f0600ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateTitle:Landroid/view/ViewGroup;

    .line 1803
    const v0, 0x7f060021

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecCallInfoView:Landroid/view/ViewGroup;

    .line 1804
    const v0, 0x7f0600ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mInCallGobackView:Landroid/widget/ImageView;

    .line 1805
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mInCallGobackView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1806
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mInCallGobackView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/incallui/CallCardFragment$9;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardFragment$9;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1822
    :cond_0
    return-void
.end method

.method private setBluetoothOn(Z)V
    .locals 4
    .param p1, "onOff"    # Z

    .prologue
    const/4 v3, 0x0

    .line 821
    const v0, 0x7f02006a

    .line 823
    .local v0, "bluetoothIconId":I
    if-eqz p1, :cond_0

    .line 824
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const v2, 0x7f02006a

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 825
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/incallui/CallCardFragment;->mDensity:F

    const/high16 v3, 0x40a00000

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 830
    :goto_0
    return-void

    .line 828
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 710
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 714
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setDrawableToImageView], photo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 715
    iget-boolean v1, p0, Lcom/android/incallui/CallCardFragment;->mIsPhotoVisible:Z

    if-nez v1, :cond_2

    .line 716
    const-string v1, "[setDrawableToImageView]not visible"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 803
    :cond_1
    :goto_0
    return-void

    .line 736
    :cond_2
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->inCarMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 737
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInComingCall = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->isInComingCall()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 738
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->isInComingCall()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 739
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 742
    :cond_3
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 743
    .local v0, "current":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_4

    .line 744
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 745
    invoke-static {p1}, Lcom/android/incallui/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 746
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 748
    :cond_4
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private showAndInitializeSecondaryCallInfo()V
    .locals 2

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 997
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f06009e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    .line 999
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryGeoDescription:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 1000
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryGeoDescription:Landroid/widget/TextView;

    .line 1002
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryNumber:Landroid/widget/TextView;

    if-nez v0, :cond_2

    .line 1003
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryNumber:Landroid/widget/TextView;

    .line 1006
    :cond_2
    return-void
.end method

.method private showInternetCallLabel(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    .line 653
    if-eqz p1, :cond_0

    .line 654
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a02a5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "label":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 657
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    .end local v0    # "label":Ljava/lang/String;
    :goto_0
    return-void

    .line 659
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCallBannerBackground(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Landroid/view/ViewGroup;I)V
    .locals 0
    .param p1, "simInfo"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .param p2, "callBanner"    # Landroid/view/ViewGroup;
    .param p3, "callType"    # I

    .prologue
    .line 1258
    return-void
.end method

.method private static zoomBitmap(Landroid/graphics/Bitmap;FF)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    const/4 v1, 0x0

    .line 1845
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1846
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1847
    .local v4, "height":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1848
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, v3

    div-float v9, p1, v0

    .line 1849
    .local v9, "scaleWidht":F
    int-to-float v0, v4

    div-float v8, p2, v0

    .line 1850
    .local v8, "scaleHeight":F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1851
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1853
    .local v7, "newbmp":Landroid/graphics/Bitmap;
    return-object v7
.end method


# virtual methods
.method public applyPhoneTheme()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1999
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    .line 2006
    .local v2, "incallpresenter":Lcom/android/incallui/InCallPresenter;
    const-string v3, "incall_status_background"

    const v4, 0x7f0200a3

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2008
    .local v0, "incallStatusBg":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->inCarMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2009
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2014
    :goto_0
    const-string v3, "incall_status_background_2"

    const v4, 0x7f0200a4

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2016
    .local v1, "incallStatusBg2":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->inCarMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2017
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2031
    :goto_1
    return-void

    .line 2011
    .end local v1    # "incallStatusBg2":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2019
    .restart local v1    # "incallStatusBg2":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public checkDisplayFloatCall(Lcom/android/incallui/InCallPresenter$InCallState;)V
    .locals 1
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    .line 1905
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1906
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_1

    .line 1907
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->checkDisplayFloatCall()V

    .line 1912
    :cond_0
    :goto_0
    return-void

    .line 1909
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->stopInCallFloatService()Z

    goto :goto_0
.end method

.method public createPresenter()Lcom/android/incallui/CallCardPresenter;
    .locals 1

    .prologue
    .line 171
    new-instance v0, Lcom/android/incallui/CallCardPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallCardPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->createPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    return-object v0
.end method

.method public disableSecondHoldCallView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1601
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndHoldName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1602
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndHoldName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1604
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndHoldState:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1605
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndHoldState:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1607
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhotoHoldPre:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1608
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhotoHoldPre:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1610
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 1611
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1613
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 1614
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/incallui/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    .line 1616
    :cond_4
    return-void
.end method

.method public disableSecondIncomingCallView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1619
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndIncomingName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1620
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndIncomingName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1622
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndIncomingState:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1623
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndIncomingState:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1625
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhotoIncomingPre:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1626
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhotoIncomingPre:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1628
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1629
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2PhotoDimEffect:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/incallui/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    .line 1631
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondIncomingCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 1632
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondIncomingCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1634
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2Info:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 1635
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mIncomingCall2Info:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1636
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallCardFragment;->mNeedShowIncomingCall2Animator:Z

    .line 1638
    :cond_5
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1009
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1011
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1020
    :goto_0
    return-void

    .line 1014
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1015
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1016
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1017
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1018
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public getCallName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1900
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/CallCardPresenter$CallCardUi;
    .locals 0

    .prologue
    .line 165
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/incallui/CallCardFragment;->getUi()Lcom/android/incallui/CallCardPresenter$CallCardUi;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 184
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 185
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 186
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/incallui/CallCardPresenter;->init(Landroid/content/Context;Lcom/android/services/telephony/common/Call;)V

    .line 187
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 176
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 177
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 192
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 194
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/android/incallui/CallCardFragment;->mDensity:F

    .line 196
    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 199
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/android/incallui/CallCardFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/android/incallui/CallCardFragment$2;-><init>(Lcom/android/incallui/CallCardFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 222
    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 227
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 229
    const v0, 0x7f060098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    .line 230
    const v0, 0x7f060096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    .line 234
    const v0, 0x7f06009c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    .line 235
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->inCarMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/incallui/CallCardFragment$3;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardFragment$3;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    :cond_0
    const v0, 0x7f060092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    .line 249
    const v0, 0x7f06009a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    .line 250
    const v0, 0x7f06009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;

    .line 257
    const v0, 0x7f0600a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mProviderInfo:Landroid/view/View;

    .line 258
    const v0, 0x7f0600a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mProviderLabel:Landroid/widget/TextView;

    .line 259
    const v0, 0x7f0600a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mProviderNumber:Landroid/widget/TextView;

    .line 260
    const v0, 0x7f0600a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSupplementaryInfoContainer:Landroid/view/ViewGroup;

    .line 263
    const v0, 0x7f06001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallInfoContainer:Landroid/view/ViewGroup;

    .line 266
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardFragment;->onViewCreatedMTK(Landroid/view/View;)V

    .line 268
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardFragment;->onViewCreateLenovo(Landroid/view/View;)V

    .line 269
    return-void
.end method

.method public onViewCreatedMTK(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1347
    const v0, 0x7f060020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 1348
    const v0, 0x7f060097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    .line 1349
    const v0, 0x7f060094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 1350
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->initPaddingDimensions()V

    .line 1356
    const v0, 0x7f060099

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mLocation:Landroid/widget/TextView;

    .line 1357
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->inCarMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/incallui/CallCardFragment$6;

    invoke-direct {v1, p0}, Lcom/android/incallui/CallCardFragment$6;-><init>(Lcom/android/incallui/CallCardFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1371
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardFragment;->initVoiceRecorderIcon(Landroid/view/View;)V

    .line 1374
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportDualTalk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1375
    invoke-direct {p0, p1}, Lcom/android/incallui/CallCardFragment;->initResourcesForDualTalk(Landroid/view/View;)V

    .line 1379
    :cond_1
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/ext/ExtensionManager;->getCallCardExtension()Lcom/mediatek/incallui/ext/CallCardExtension;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/incallui/ext/CallCardExtension;->onViewCreated(Landroid/content/Context;Landroid/view/View;)V

    .line 1380
    return-void
.end method

.method public rejectCallWithReminder(J)V
    .locals 1
    .param p1, "inTime"    # J

    .prologue
    .line 1959
    const-string v0, "rejectCallWithReminder()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1960
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/CallCardPresenter;->rejectCallWithReminder(J)V

    .line 1961
    return-void
.end method

.method public setCallState(ILcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "cause"    # Lcom/android/services/telephony/common/Call$DisconnectCause;
    .param p3, "bluetoothOn"    # Z
    .param p4, "gatewayLabel"    # Ljava/lang/String;
    .param p5, "gatewayNumber"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 547
    const/4 v0, 0x0

    .line 550
    .local v0, "callStateLabel":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallCardFragment;->getCallStateLabelFromState(ILcom/android/services/telephony/common/Call$DisconnectCause;)Ljava/lang/String;

    move-result-object v0

    .line 552
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCallState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DisconnectCause "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 554
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bluetooth on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gateway "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    invoke-static {p1}, Lcom/android/services/telephony/common/Call$State;->isDialing(I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x9

    if-eq p1, v4, :cond_0

    if-ne p1, v6, :cond_6

    :cond_0
    const/4 v1, 0x1

    .line 561
    .local v1, "skipAnimation":Z
    :goto_0
    const/4 v2, 0x0

    .line 562
    .local v2, "transition":Landroid/animation/LayoutTransition;
    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mSupplementaryInfoContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 563
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mSupplementaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v2

    .line 564
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mSupplementaryInfoContainer:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 574
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 580
    if-eqz v0, :cond_2

    .line 581
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    :cond_2
    if-eqz v0, :cond_7

    .line 600
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mMainCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mMainCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 605
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->inCarMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 606
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabelTitle:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 607
    if-eqz v0, :cond_8

    .line 608
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabelTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 609
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabelTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mMainCallStateLabel:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    .line 615
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mMainCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 638
    :cond_4
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 639
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mProviderLabel:Landroid/widget/TextView;

    invoke-virtual {v4, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mProviderNumber:Landroid/widget/TextView;

    invoke-virtual {v4, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mProviderInfo:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 647
    :goto_3
    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSupplementaryInfoContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    .line 648
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSupplementaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 650
    :cond_5
    return-void

    .end local v1    # "skipAnimation":Z
    .end local v2    # "transition":Landroid/animation/LayoutTransition;
    :cond_6
    move v1, v3

    .line 559
    goto :goto_0

    .line 603
    .restart local v1    # "skipAnimation":Z
    .restart local v2    # "transition":Landroid/animation/LayoutTransition;
    :cond_7
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mMainCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 611
    :cond_8
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabelTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 643
    :cond_9
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mProviderInfo:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public setLenovoCallBannerForTv(Z)V
    .locals 8
    .param p1, "istv"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 1965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLenovoCallBannerForTv is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1966
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->inCarMode()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1967
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1968
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1970
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mMainCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 1971
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mMainCallBanner:Landroid/view/ViewGroup;

    if-eqz p1, :cond_5

    move v1, v3

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1985
    :cond_1
    :goto_2
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->getVTCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 1987
    .local v0, "vt":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getConnectTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    .line 1988
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mMainCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1989
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mMainCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1991
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 1992
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1995
    :cond_3
    return-void

    .end local v0    # "vt":Lcom/android/services/telephony/common/Call;
    :cond_4
    move v1, v3

    .line 1968
    goto :goto_0

    :cond_5
    move v1, v2

    .line 1971
    goto :goto_1

    .line 1974
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mMainCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 1975
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mMainCallBanner:Landroid/view/ViewGroup;

    if-eqz p1, :cond_8

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1977
    :cond_7
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 1978
    iget-object v4, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz p1, :cond_9

    move v1, v3

    :goto_4
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_8
    move v1, v3

    .line 1975
    goto :goto_3

    :cond_9
    move v1, v2

    .line 1978
    goto :goto_4
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 4
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1292
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mLocation:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1297
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1298
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainGeoDescription:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1299
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1304
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainLabelAndNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1306
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainNumberGeo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1318
    :goto_2
    return-void

    .line 1294
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1301
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1302
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1308
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainNumberGeo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method setPhotoVisible(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1338
    iput-boolean p1, p0, Lcom/android/incallui/CallCardFragment;->mIsPhotoVisible:Z

    .line 1340
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1341
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1343
    :cond_0
    return-void

    .line 1341
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZLjava/lang/String;)V
    .locals 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p6, "isConference"    # Z
    .param p7, "isGeneric"    # Z
    .param p8, "isSipCall"    # Z
    .param p9, "location"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 370
    const-string v3, "Setting primary call"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    if-eqz p6, :cond_0

    .line 373
    invoke-direct {p0, p7}, Lcom/android/incallui/CallCardFragment;->getConferenceString(Z)Ljava/lang/String;

    move-result-object p2

    .line 374
    const/4 p5, 0x0

    .line 375
    const/4 p3, 0x0

    .line 378
    :cond_0
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 379
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTIdle()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v4

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/incallui/CallCardFragment;->setLenovoCallBannerForTv(Z)V

    .line 383
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0, p2, p3}, Lcom/android/incallui/CallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    .line 389
    invoke-virtual {p0, p4}, Lcom/android/incallui/CallCardFragment;->setPrimaryLabel(Ljava/lang/String;)V

    .line 391
    invoke-direct {p0, p8}, Lcom/android/incallui/CallCardFragment;->showInternetCallLabel(Z)V

    .line 393
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->inCarMode()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->isInComingCall()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 394
    invoke-virtual {p0, v4}, Lcom/android/incallui/CallCardFragment;->updateCallState(Z)V

    .line 395
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v3, p5}, Lcom/android/incallui/CallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 402
    :goto_1
    invoke-virtual {p0, p9}, Lcom/android/incallui/CallCardFragment;->setLocation(Ljava/lang/String;)V

    .line 405
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->inCarMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 406
    if-nez p3, :cond_2

    if-eqz p2, :cond_2

    .line 407
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 408
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mLocation:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 411
    :cond_2
    move-object v2, p1

    .line 412
    .local v2, "phoneNumber":Ljava/lang/String;
    move-object v1, p2

    .line 414
    .local v1, "phoneName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 415
    .local v0, "mContext":Landroid/content/Context;
    if-nez p6, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->inCarMode()Z

    move-result v3

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/incallui/CallCardFragment;->mLeSafeDisplay:Z

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    .line 416
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 417
    new-instance v3, Lcom/android/incallui/CallCardFragment$4;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/incallui/CallCardFragment$4;-><init>(Lcom/android/incallui/CallCardFragment;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 443
    :cond_3
    :goto_2
    return-void

    .line 379
    .end local v0    # "mContext":Landroid/content/Context;
    .end local v1    # "phoneName":Ljava/lang/String;
    .end local v2    # "phoneNumber":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 397
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v3, p5}, Lcom/android/incallui/CallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 428
    .restart local v0    # "mContext":Landroid/content/Context;
    .restart local v1    # "phoneName":Ljava/lang/String;
    .restart local v2    # "phoneNumber":Ljava/lang/String;
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz p3, :cond_3

    .line 429
    new-instance v3, Lcom/android/incallui/CallCardFragment$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/incallui/CallCardFragment$5;-><init>(Lcom/android/incallui/CallCardFragment;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto :goto_2
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "callTimeElapsed"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 665
    if-eqz p1, :cond_1

    .line 675
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 676
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    :goto_0
    if-eqz p1, :cond_2

    .line 689
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 690
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->inCarMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallTimeTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 697
    if-eqz p1, :cond_3

    .line 698
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    :cond_0
    :goto_2
    return-void

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 692
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 701
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mCallTimeTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 312
    if-eqz p1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/CallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 315
    :cond_0
    return-void
.end method

.method public setPrimaryLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 365
    return-void
.end method

.method public setPrimaryName(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nameIsNumber"    # Z

    .prologue
    .line 282
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 296
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mMainName:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :goto_1
    return-void

    .line 285
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "nameDirection":I
    if-eqz p2, :cond_1

    .line 290
    const/4 v0, 0x3

    .line 292
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_0

    .line 298
    .end local v0    # "nameDirection":I
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mMainName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    const/4 v0, 0x0

    .line 302
    .restart local v0    # "nameDirection":I
    if-eqz p2, :cond_3

    .line 303
    const/4 v0, 0x3

    .line 305
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mMainName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_1
.end method

.method public setPrimaryPhoneNumber(Ljava/lang/String;)V
    .locals 5
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 320
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 329
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainLabelAndNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainLabelAndNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 337
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainLabelAndNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainNumberGeo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 351
    :goto_2
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_0

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainLabelAndNumber:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainLabelAndNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainLabelAndNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_1

    .line 341
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mMainNumberGeo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public setSecondary(ZLjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZLjava/lang/String;)V
    .locals 5
    .param p1, "show"    # Z
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "nameIsNumber"    # Z
    .param p5, "label"    # Ljava/lang/String;
    .param p6, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p7, "isConference"    # Z
    .param p8, "isGeneric"    # Z
    .param p9, "location"    # Ljava/lang/String;

    .prologue
    .line 449
    if-eqz p1, :cond_8

    .line 451
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 452
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mMainCallBanner:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 453
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mMainSimContainer:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 454
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 456
    if-eqz p7, :cond_0

    .line 457
    invoke-direct {p0, p8}, Lcom/android/incallui/CallCardFragment;->getConferenceString(Z)Ljava/lang/String;

    move-result-object p3

    .line 458
    const/4 p6, 0x0

    .line 459
    const/4 p4, 0x0

    .line 462
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->showAndInitializeSecondaryCallInfo()V

    .line 463
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 464
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 465
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryNumber:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryNumber:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 474
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, "nameDirection":I
    if-eqz p4, :cond_2

    .line 478
    const/4 v0, 0x3

    .line 480
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/view/View;->setTextDirection(I)V

    .line 483
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/incallui/CallCardFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 484
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->inCarMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 485
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mLocation:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 486
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryGeoDescription:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 487
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v4, 0x7f0600b1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 488
    .local v1, "primaryCallStateStatus":Landroid/view/ViewGroup;
    if-eqz v1, :cond_3

    .line 489
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 492
    :cond_3
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v4, 0x7f0600b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 493
    .local v2, "secondCallStateStatus":Landroid/view/ViewGroup;
    if-eqz v2, :cond_4

    .line 494
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 535
    .end local v0    # "nameDirection":I
    .end local v1    # "primaryCallStateStatus":Landroid/view/ViewGroup;
    .end local v2    # "secondCallStateStatus":Landroid/view/ViewGroup;
    :cond_4
    :goto_1
    return-void

    .line 468
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryNumber:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryNumber:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 470
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryNumber:Landroid/widget/TextView;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/view/View;->setTextDirection(I)V

    goto :goto_0

    .line 497
    .restart local v0    # "nameDirection":I
    :cond_6
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 498
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryGeoDescription:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 500
    :cond_7
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryGeoDescription:Landroid/widget/TextView;

    invoke-virtual {v3, p9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryGeoDescription:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 511
    .end local v0    # "nameDirection":I
    :cond_8
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTIdle()Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/incallui/CallCardFragment;->setLenovoCallBannerForTv(Z)V

    .line 512
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 520
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->inCarMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 521
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mLocation:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 522
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v4, 0x7f0600b1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 523
    .restart local v1    # "primaryCallStateStatus":Landroid/view/ViewGroup;
    if-eqz v1, :cond_9

    .line 524
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 527
    :cond_9
    iget-object v3, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v4, 0x7f0600b5

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 528
    .restart local v2    # "secondCallStateStatus":Landroid/view/ViewGroup;
    if-eqz v2, :cond_4

    .line 529
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 511
    .end local v1    # "primaryCallStateStatus":Landroid/view/ViewGroup;
    .end local v2    # "secondCallStateStatus":Landroid/view/ViewGroup;
    :cond_a
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public setSecondaryCallClickable(Z)V
    .locals 0
    .param p1, "clickable"    # Z

    .prologue
    .line 1282
    return-void
.end method

.method public setSecondaryHold(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p6, "isConference"    # Z
    .param p7, "isGeneric"    # Z

    .prologue
    .line 1473
    return-void
.end method

.method public setSecondaryImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 539
    if-eqz p1, :cond_0

    .line 542
    :cond_0
    return-void
.end method

.method public setSecondaryIncoming(ZLjava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)V
    .locals 0
    .param p1, "show"    # Z
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "nameIsNumber"    # Z
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p6, "isConference"    # Z
    .param p7, "isGeneric"    # Z

    .prologue
    .line 1577
    return-void
.end method

.method public setSimIndicator(II)V
    .locals 9
    .param p1, "slotId"    # I
    .param p2, "callType"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 1093
    iput p1, p0, Lcom/android/incallui/CallCardFragment;->mSlotId:I

    .line 1094
    iput p2, p0, Lcom/android/incallui/CallCardFragment;->mCallType:I

    .line 1096
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_2

    .line 1097
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mMainSimContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 1098
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mMainSimContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1100
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1101
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSecondarySimIndicator:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 1102
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSecondarySimIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1152
    :cond_1
    :goto_0
    return-void

    .line 1107
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 1108
    .local v1, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v1, :cond_3

    .line 1109
    const-string v2, "setSimIndicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iccid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slot:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " displayName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " color:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " operator:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mOperator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    :cond_3
    if-eqz v1, :cond_9

    iget-object v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    if-eq v8, p2, :cond_9

    .line 1115
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1117
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSecondarySimIndicator:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 1118
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSecondarySimIndicator:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1119
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSecondarySimIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1122
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mMainSimIndicator:Landroid/widget/TextView;

    iget-object v3, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    if-nez p1, :cond_8

    const v0, 0x7f020118

    .line 1124
    .local v0, "res":I
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mMainSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1125
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mMainSimContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1141
    .end local v0    # "res":I
    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->inCarMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1142
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    :cond_6
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTIdle()Z

    move-result v2

    if-nez v2, :cond_7

    .line 1145
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mMainSimContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_7

    .line 1146
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mMainSimContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1151
    :cond_7
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, v2, p2}, Lcom/android/incallui/CallCardFragment;->updateCallBannerBackground(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Landroid/view/ViewGroup;I)V

    goto/16 :goto_0

    .line 1123
    :cond_8
    const v0, 0x7f020119

    goto :goto_1

    .line 1127
    :cond_9
    if-ne v8, p2, :cond_a

    .line 1128
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    const v3, 0x7f0a02a5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1129
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1131
    :cond_a
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSimIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1133
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mMainSimContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1134
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSecondarySimIndicator:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 1135
    iget-object v2, p0, Lcom/android/incallui/CallCardFragment;->mSecondarySimIndicator:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 273
    if-eqz p1, :cond_0

    .line 274
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method showAndInitializeSecondaryHoldCallInfo()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1496
    const-string v0, "showAndInitializeSecondaryHoldCallInfo"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1498
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 1499
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0600a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    .line 1501
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1502
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f06007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhotoHoldPre:Landroid/widget/ImageView;

    .line 1503
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f06007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndHoldName:Landroid/widget/TextView;

    .line 1504
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f060080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndHoldState:Landroid/widget/TextView;

    .line 1505
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f06007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mSecondHoldCallBanner:Landroid/view/ViewGroup;

    .line 1506
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f06007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    .line 1508
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1509
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 1510
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->callCardListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1513
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    new-instance v1, Lcom/android/incallui/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/incallui/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1518
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndHoldName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1519
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->m2ndHoldState:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1520
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mPhotoHoldPre:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1521
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-static {v0}, Lcom/android/incallui/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 1522
    return-void

    .line 1516
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mDualTalkSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateCallCard()V
    .locals 0

    .prologue
    .line 1780
    return-void
.end method

.method public updateCallInfoLayout(Lcom/android/incallui/InCallPresenter$InCallState;)V
    .locals 3
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    .line 1383
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1384
    .local v0, "newState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v1, Lcom/android/incallui/CallCardFragment$10;->$SwitchMap$com$android$incallui$InCallPresenter$InCallState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1399
    :goto_0
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/ext/ExtensionManager;->getCallCardExtension()Lcom/mediatek/incallui/ext/CallCardExtension;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mediatek/incallui/ext/CallCardExtension;->updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1411
    :cond_0
    return-void

    .line 1387
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1388
    goto :goto_0

    .line 1390
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1391
    goto :goto_0

    .line 1393
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1394
    goto :goto_0

    .line 1384
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateCallState(Z)V
    .locals 6
    .param p1, "incoming"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCallState incoming = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1869
    if-eqz p1, :cond_4

    .line 1870
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateTitle:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1871
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateTitle:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1873
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    .line 1874
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1876
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->inCarMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 1877
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1879
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/16 v2, 0x48

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1880
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1882
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecCallInfoView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 1883
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecCallInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1898
    :cond_3
    :goto_0
    return-void

    .line 1886
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateTitle:Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 1887
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mCallStateTitle:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1889
    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/CallCardFragment;->inCarMode()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    if-eqz v1, :cond_6

    .line 1890
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1891
    .restart local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1892
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1894
    .end local v0    # "lp":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecCallInfoView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    .line 1895
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecCallInfoView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateSecondaryCallBannerBackground(II)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "callType"    # I

    .prologue
    .line 1266
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 1267
    .local v0, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 1268
    const-string v1, "setSimIndicator"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iccid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mIccId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " displayName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " color:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " operator:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mOperator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mSecondaryCallBanner:Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v1, p2}, Lcom/android/incallui/CallCardFragment;->updateCallBannerBackground(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Landroid/view/ViewGroup;I)V

    .line 1273
    return-void
.end method

.method public updateSecondaryHoldCallBannerBackground(II)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "callType"    # I

    .prologue
    .line 1493
    return-void
.end method

.method public updateSecondaryIncomingCallBannerBackground(II)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "callType"    # I

    .prologue
    .line 1598
    return-void
.end method

.method public updateVoiceRecordIcon(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment;->mVoiceRecorderIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1332
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment;->mVoiceRecorderIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1333
    :cond_0
    return-void

    .line 1332
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method
