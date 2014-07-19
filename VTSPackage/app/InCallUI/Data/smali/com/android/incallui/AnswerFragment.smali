.class public Lcom/android/incallui/AnswerFragment;
.super Lcom/android/incallui/BaseFragment;
.source "AnswerFragment.java"

# interfaces
.implements Lcom/android/incallui/AnswerPresenter$AnswerUi;
.implements Lcom/android/incallui/GlowPadWrapper$AnswerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AnswerFragment$CircleRunnable;,
        Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;,
        Lcom/android/incallui/AnswerFragment$RespondViaSmsItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/AnswerPresenter;",
        "Lcom/android/incallui/AnswerPresenter$AnswerUi;",
        ">;",
        "Lcom/android/incallui/GlowPadWrapper$AnswerListener;",
        "Lcom/android/incallui/AnswerPresenter$AnswerUi;"
    }
.end annotation


# static fields
.field private static final MSG_PLAY_WAVE_ANIMATION:I = 0x3ee

.field private static final MSG_RESET_CALL_SLIDE:I = 0x3f0

.field private static final MSG_SHOW_ANIMATION:I = 0x3ed

.field private static final MSG_SLOW_MOVE_BACK_AND_SHAKE:I = 0x3eb

.field private static final MSG_SLOW_MOVING_CALL_SLIDE:I = 0x3ea

.field private static final MSG_STOP_WAVE_ANIMATION:I = 0x3ef

.field public static final SU_THEMES_19_INCOMING_CALL_RESPOND_SMS:Ljava/lang/String; = "respond_sms"

.field public static final SU_THEMES_20_INCOMING_CALL_INCOMING_HANGUP:Ljava/lang/String; = "incoming_hangup"

.field public static final SU_THEMES_21_INCOMING_CALL_INCOMING_ANSWER:Ljava/lang/String; = "incoming_answer"

.field public static final SU_THEMES_22_INCOMING_CALL_ANSWER_ANIM:Ljava/lang/String; = "answer_anim"

.field public static final SU_THEMES_22_INCOMING_CALL_ANSWER_INDICATOR:Ljava/lang/String; = "answer_indicator_anim"

.field public static final SU_THEMES_22_INCOMING_CALL_BG:Ljava/lang/String; = "incoming_call_bg"

.field public static final SU_THEMES_22_INCOMING_CALL_REJECT_ANIM:Ljava/lang/String; = "reject_anim"

.field public static final SU_THEMES_22_INCOMING_CALL_REJECT_INDICATOR:Ljava/lang/String; = "reject_indicator_anim"

.field public static final SU_THEMES_22_INCOMING_CALL_SLIDE_BG:Ljava/lang/String; = "slide_bg"


# instance fields
.field private final MAX_MESSAGE_LEN:I

.field private mAnswerRect:Landroid/graphics/Rect;

.field private mArrowAnim:Landroid/widget/ImageView;

.field private mCallSlide:Landroid/widget/RelativeLayout;

.field private mCallSlideRect:Landroid/graphics/Rect;

.field private mCannedResponsePopup:Landroid/app/Dialog;

.field private mCircleRunnable:Lcom/android/incallui/AnswerFragment$CircleRunnable;

.field private mCircleWaveView:Lcom/android/incallui/CircleWaveView;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mCurrentX:F

.field private mCurrentY:F

.field private mCustomMessagePopup:Landroid/app/AlertDialog;

.field private mFocusRing:Landroid/widget/ImageView;

.field private mFocusRingStart:Z

.field private mGlowpad:Lcom/android/incallui/GlowPadWrapper;

.field private final mHandler:Landroid/os/Handler;

.field private mHangupRect:Landroid/graphics/Rect;

.field private mIncomingAnswer:Landroid/widget/ImageView;

.field private mIncomingCallView:Landroid/widget/RelativeLayout;

.field private mIncomingHangup:Landroid/widget/ImageView;

.field private mIncomingMenuButton:Landroid/widget/ImageButton;

.field private mIncomingPopupMenu:Landroid/widget/PopupMenu;

.field private mIncomingReminder:Landroid/widget/ImageView;

.field private mIncomingSms:Landroid/widget/ImageView;

.field private mInsetPhoto:Landroid/widget/ImageView;

.field private mKeyPressed:Z

.field private mRadius:I

.field private mReminderListener:Landroid/content/DialogInterface$OnClickListener;

.field private mReminderPopup:Landroid/app/Dialog;

.field private mReminderRect:Landroid/graphics/Rect;

.field private mScreenWidth:I

.field private mShowTextButton:Z

.field private mSmsRect:Landroid/graphics/Rect;

.field private mStopAnimation:Z

.field private mStopMoving:Z

.field private mTextResponsesAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 233
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 100
    iput-object v2, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    .line 105
    iput-object v2, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    .line 107
    iput-object v2, p0, Lcom/android/incallui/AnswerFragment;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    .line 139
    iput v1, p0, Lcom/android/incallui/AnswerFragment;->mRadius:I

    .line 152
    iput-object v2, p0, Lcom/android/incallui/AnswerFragment;->mReminderPopup:Landroid/app/Dialog;

    .line 166
    iput-boolean v1, p0, Lcom/android/incallui/AnswerFragment;->mStopMoving:Z

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/AnswerFragment;->mShowTextButton:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/incallui/AnswerFragment;->mFocusRingStart:Z

    .line 172
    iput-boolean v1, p0, Lcom/android/incallui/AnswerFragment;->mStopAnimation:Z

    .line 173
    new-instance v0, Lcom/android/incallui/AnswerFragment$CircleRunnable;

    invoke-direct {v0, p0, v2}, Lcom/android/incallui/AnswerFragment$CircleRunnable;-><init>(Lcom/android/incallui/AnswerFragment;Lcom/android/incallui/AnswerFragment$1;)V

    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCircleRunnable:Lcom/android/incallui/AnswerFragment$CircleRunnable;

    .line 174
    iput v1, p0, Lcom/android/incallui/AnswerFragment;->mCount:I

    .line 176
    iput-boolean v1, p0, Lcom/android/incallui/AnswerFragment;->mKeyPressed:Z

    .line 189
    new-instance v0, Lcom/android/incallui/AnswerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/AnswerFragment$1;-><init>(Lcom/android/incallui/AnswerFragment;)V

    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mHandler:Landroid/os/Handler;

    .line 216
    new-instance v0, Lcom/android/incallui/AnswerFragment$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/AnswerFragment$2;-><init>(Lcom/android/incallui/AnswerFragment;)V

    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mReminderListener:Landroid/content/DialogInterface$OnClickListener;

    .line 787
    const/16 v0, 0x8c

    iput v0, p0, Lcom/android/incallui/AnswerFragment;->MAX_MESSAGE_LEN:I

    .line 234
    return-void
.end method

.method private TranslateHorizontalAnimation(Landroid/view/View;Landroid/graphics/Rect;Z)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rt"    # Landroid/graphics/Rect;
    .param p3, "right"    # Z

    .prologue
    const/high16 v10, 0x3f800000

    const/4 v9, 0x0

    .line 1580
    iget v6, p2, Landroid/graphics/Rect;->top:I

    .line 1581
    .local v6, "top":I
    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 1582
    .local v3, "left":I
    iget-object v7, p0, Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    div-int/lit8 v1, v7, 0x2

    .line 1583
    .local v1, "centerX":I
    iget-object v7, p0, Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    div-int/lit8 v2, v7, 0x2

    .line 1586
    .local v2, "centerY":I
    if-eqz p3, :cond_0

    .line 1587
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    sub-int v7, v1, v3

    int-to-float v7, v7

    invoke-direct {v5, v7, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1588
    .local v5, "t":Landroid/view/animation/TranslateAnimation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1589
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1596
    :goto_0
    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-direct {v4, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1597
    .local v4, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1598
    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1599
    const-wide/16 v7, 0x1f4

    invoke-virtual {v4, v7, v8}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1600
    invoke-virtual {p1, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1601
    return-void

    .line 1591
    .end local v0    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v4    # "set":Landroid/view/animation/AnimationSet;
    .end local v5    # "t":Landroid/view/animation/TranslateAnimation;
    :cond_0
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    sub-int v7, v1, v3

    int-to-float v7, v7

    invoke-direct {v5, v9, v7, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1592
    .restart local v5    # "t":Landroid/view/animation/TranslateAnimation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v10, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1593
    .restart local v0    # "alpha":Landroid/view/animation/AlphaAnimation;
    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private TranslateVerticalAnimation(Landroid/view/View;Landroid/graphics/Rect;Z)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rt"    # Landroid/graphics/Rect;
    .param p3, "up"    # Z

    .prologue
    const/high16 v10, 0x3f800000

    const/4 v9, 0x0

    .line 1557
    iget v6, p2, Landroid/graphics/Rect;->top:I

    .line 1558
    .local v6, "top":I
    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 1559
    .local v3, "left":I
    iget-object v7, p0, Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    div-int/lit8 v1, v7, 0x2

    .line 1560
    .local v1, "centerX":I
    iget-object v7, p0, Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    div-int/lit8 v2, v7, 0x2

    .line 1563
    .local v2, "centerY":I
    if-eqz p3, :cond_0

    .line 1564
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    sub-int v7, v2, v6

    int-to-float v7, v7

    invoke-direct {v5, v9, v9, v7, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1565
    .local v5, "t":Landroid/view/animation/TranslateAnimation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1566
    .local v0, "alpha":Landroid/view/animation/AlphaAnimation;
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1573
    :goto_0
    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-direct {v4, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1574
    .local v4, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1575
    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1576
    const-wide/16 v7, 0x1f4

    invoke-virtual {v4, v7, v8}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1577
    invoke-virtual {p1, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1578
    return-void

    .line 1568
    .end local v0    # "alpha":Landroid/view/animation/AlphaAnimation;
    .end local v4    # "set":Landroid/view/animation/AnimationSet;
    .end local v5    # "t":Landroid/view/animation/TranslateAnimation;
    :cond_0
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    sub-int v7, v2, v6

    int-to-float v7, v7

    invoke-direct {v5, v9, v9, v9, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1569
    .restart local v5    # "t":Landroid/view/animation/TranslateAnimation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v10, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1570
    .restart local v0    # "alpha":Landroid/view/animation/AlphaAnimation;
    const/16 v7, 0x8

    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->slowMoveCallSlideWidgetBack()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/incallui/AnswerFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->dismissCustomMessagePopup()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/incallui/AnswerFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/incallui/AnswerFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/incallui/AnswerFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/incallui/AnswerFragment;Landroid/view/MenuItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;
    .param p1, "x1"    # Landroid/view/MenuItem;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerFragment;->handleIncomingMenuItemClickMTK(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/incallui/AnswerFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/incallui/AnswerFragment;->mCurrentY:F

    return v0
.end method

.method static synthetic access$1502(Lcom/android/incallui/AnswerFragment;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;
    .param p1, "x1"    # F

    .prologue
    .line 90
    iput p1, p0, Lcom/android/incallui/AnswerFragment;->mCurrentY:F

    return p1
.end method

.method static synthetic access$1600(Lcom/android/incallui/AnswerFragment;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/incallui/AnswerFragment;->mCurrentX:F

    return v0
.end method

.method static synthetic access$1602(Lcom/android/incallui/AnswerFragment;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;
    .param p1, "x1"    # F

    .prologue
    .line 90
    iput p1, p0, Lcom/android/incallui/AnswerFragment;->mCurrentX:F

    return p1
.end method

.method static synthetic access$1700(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->pressCallSlideAnim()V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/incallui/AnswerFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/incallui/AnswerFragment;->mStopMoving:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/incallui/AnswerFragment;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->showAnimation()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->releaseCallSlideAnim()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->stopFocusRing()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mAnswerRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/incallui/AnswerFragment;IILandroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/graphics/Rect;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/AnswerFragment;->pointInRect(IILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mHangupRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mSmsRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mReminderRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/incallui/AnswerFragment;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/incallui/AnswerFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/incallui/AnswerFragment;->mRadius:I

    return v0
.end method

.method static synthetic access$2802(Lcom/android/incallui/AnswerFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/incallui/AnswerFragment;->mRadius:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/incallui/AnswerFragment;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/AnswerFragment;->moveCallSlide(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->playWaveAnim()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->startFocusRing()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/incallui/AnswerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/incallui/AnswerFragment;->mKeyPressed:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/incallui/AnswerFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mInsetPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/incallui/AnswerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/incallui/AnswerFragment;->mStopAnimation:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/android/incallui/AnswerFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerFragment;->showAnimation1(Z)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/incallui/AnswerFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerFragment;->showAnimation2(Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->playWaveAnim2()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->playWaveAnim3()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->startCircleWaveAnim()V

    return-void
.end method

.method static synthetic access$3902(Lcom/android/incallui/AnswerFragment;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment;->mReminderPopup:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->stopCircleWaveAnim()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/incallui/AnswerFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/incallui/AnswerFragment;->mCount:I

    return v0
.end method

.method static synthetic access$4008(Lcom/android/incallui/AnswerFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/incallui/AnswerFragment;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/AnswerFragment;->mCount:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/incallui/AnswerFragment;)Lcom/android/incallui/CircleWaveView;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCircleWaveView:Lcom/android/incallui/CircleWaveView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->resetCallSlide()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->dismissReminderPopup()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->onIncomingMenuButtonClick()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/incallui/AnswerFragment;)Lcom/android/incallui/GlowPadWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->dismissCannedResponsePopup()V

    return-void
.end method

.method private constructIncomingPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 3
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 665
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 666
    .local v1, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 667
    .local v0, "menu":Landroid/view/Menu;
    const v2, 0x7f0d0002

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 668
    new-instance v2, Lcom/android/incallui/AnswerFragment$10;

    invoke-direct {v2, p0}, Lcom/android/incallui/AnswerFragment$10;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 674
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/mediatek/incallui/InCallUtils;->setAllMenuVisible(Landroid/view/Menu;Z)V

    .line 675
    invoke-virtual {p0, v0}, Lcom/android/incallui/AnswerFragment;->setupIncomingMenuItems(Landroid/view/Menu;)V

    .line 676
    return-object v1
.end method

.method private dip2px(F)I
    .locals 3
    .param p1, "dpValue"    # F

    .prologue
    .line 1002
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1003
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private dip2px(Landroid/view/View;F)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dpValue"    # F

    .prologue
    .line 1422
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1423
    .local v0, "scale":F
    mul-float v1, p2, v0

    const/high16 v2, 0x3f000000

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private dismissCannedResponsePopup()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 465
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    .line 467
    :cond_0
    return-void
.end method

.method private dismissCustomMessagePopup()V
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    .line 477
    :cond_0
    return-void
.end method

.method private dismissReminderPopup()V
    .locals 1

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mReminderPopup:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mReminderPopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1784
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mReminderPopup:Landroid/app/Dialog;

    .line 1786
    :cond_0
    return-void
.end method

.method private static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1406
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getMessageForVoiceUI()Ljava/lang/String;
    .locals 4

    .prologue
    .line 798
    const/4 v1, 0x0

    .line 799
    .local v1, "message":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 800
    .local v0, "callList":Lcom/android/incallui/CallList;
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVoiceUI()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getSecondaryIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 808
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/AnswerPresenter;->getVoiceUIShowMsg()Ljava/lang/String;

    move-result-object v1

    .line 810
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 811
    return-object v1
.end method

.method public static getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "ratio"    # F

    .prologue
    const/4 v8, 0x0

    .line 1387
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1389
    .local v1, "output":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1391
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1392
    .local v2, "paint":Landroid/graphics/Paint;
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v3, v8, v8, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1393
    .local v3, "rect":Landroid/graphics/Rect;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 1395
    .local v4, "rectF":Landroid/graphics/RectF;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1396
    invoke-virtual {v0, v8, v8, v8, v8}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 1397
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, p1

    invoke-virtual {v0, v4, v5, v6, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 1400
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1401
    invoke-virtual {v0, p0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1402
    return-object v1
.end method

.method private getViewRect(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "iv"    # Landroid/view/View;

    .prologue
    .line 1538
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1539
    .local v0, "rt":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1540
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1541
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1542
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1543
    return-object v0
.end method

.method private handleIncomingMenuItemClickMTK(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onMenuItemClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  title: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 705
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 716
    const-string v0, "unhandled menu!!"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    :goto_0
    return v2

    .line 707
    :sswitch_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->setInVoiceAnswerVideoCall(Z)V

    .line 708
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->acceptVtCallWithVoiceOnly()V

    goto :goto_0

    .line 712
    :sswitch_1
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->hangupActiveAndAnswerWaiting()V

    goto :goto_0

    .line 705
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0600cb -> :sswitch_0
        0x7f0600d7 -> :sswitch_1
    .end sparse-switch
.end method

.method private hideCallSlide()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1810
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1820
    :goto_0
    return-void

    .line 1813
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1814
    .local v0, "alpha":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1815
    .local v1, "set":Landroid/view/animation/AnimationSet;
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1816
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1817
    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1818
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1819
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private inCarMode()Z
    .locals 1

    .prologue
    .line 1500
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1501
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->inCarMode()Z

    move-result v0

    .line 1503
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCannedResponsePopupShowing()Z
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    .line 446
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCustomMessagePopupShowing()Z
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    .line 453
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveCallSlide(II)V
    .locals 2
    .param p1, "offsetX"    # I
    .param p2, "offsetY"    # I

    .prologue
    .line 1174
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1176
    .local v0, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1177
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v1, p2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1178
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1179
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 1180
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1181
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1182
    return-void
.end method

.method private onIncomingMenuButtonClick()V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 658
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingMenuButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerFragment;->constructIncomingPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingPopupMenu:Landroid/widget/PopupMenu;

    .line 659
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 660
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 662
    :cond_1
    return-void
.end method

.method private playWaveAnim()V
    .locals 1

    .prologue
    .line 1628
    iget-boolean v0, p0, Lcom/android/incallui/AnswerFragment;->mStopAnimation:Z

    if-nez v0, :cond_0

    .line 1629
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->playWaveAnim1()V

    .line 1631
    :cond_0
    return-void
.end method

.method private playWaveAnim1()V
    .locals 10

    .prologue
    const/high16 v1, 0x3f800000

    const v2, 0x3f666666

    const/high16 v6, 0x3f000000

    const/4 v5, 0x1

    .line 1634
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1637
    .local v0, "scale":Landroid/view/animation/Animation;
    const-wide/16 v1, 0xa7

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1638
    new-instance v1, Lcom/android/incallui/AnswerFragment$15;

    invoke-direct {v1, p0}, Lcom/android/incallui/AnswerFragment$15;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1654
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1655
    .local v9, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1656
    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1657
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1658
    return-void
.end method

.method private playWaveAnim2()V
    .locals 10

    .prologue
    const/high16 v2, 0x3f800000

    const v1, 0x3f666666

    const/high16 v6, 0x3f000000

    const/4 v5, 0x1

    .line 1660
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1663
    .local v0, "scale":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1664
    new-instance v1, Lcom/android/incallui/AnswerFragment$16;

    invoke-direct {v1, p0}, Lcom/android/incallui/AnswerFragment$16;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1680
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1681
    .local v9, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1682
    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1683
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1684
    return-void
.end method

.method private playWaveAnim3()V
    .locals 10

    .prologue
    const/high16 v2, 0x3f800000

    const v1, 0x3f666666

    const/high16 v6, 0x3f000000

    const/4 v5, 0x1

    .line 1686
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1689
    .local v0, "scale":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1690
    new-instance v1, Lcom/android/incallui/AnswerFragment$17;

    invoke-direct {v1, p0}, Lcom/android/incallui/AnswerFragment$17;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1706
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1707
    .local v9, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1708
    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1709
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1710
    return-void
.end method

.method private pointInRect(IILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "pointX"    # I
    .param p2, "pointY"    # I
    .param p3, "rt"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 1547
    if-nez p3, :cond_1

    .line 1554
    :cond_0
    :goto_0
    return v0

    .line 1550
    :cond_1
    iget v1, p3, Landroid/graphics/Rect;->left:I

    if-lt p1, v1, :cond_0

    iget v1, p3, Landroid/graphics/Rect;->right:I

    if-gt p1, v1, :cond_0

    iget v1, p3, Landroid/graphics/Rect;->top:I

    if-lt p2, v1, :cond_0

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v1, :cond_0

    .line 1552
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private pressCallSlideAnim()V
    .locals 10

    .prologue
    const/high16 v1, 0x3f800000

    const v2, 0x3f666666

    const/high16 v6, 0x3f000000

    const/4 v5, 0x1

    .line 1615
    iput-boolean v5, p0, Lcom/android/incallui/AnswerFragment;->mStopAnimation:Z

    .line 1616
    iget-object v3, p0, Lcom/android/incallui/AnswerFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x3ee

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1617
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1620
    .local v0, "scale":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1621
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1622
    .local v9, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1623
    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1624
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1625
    iput-boolean v5, p0, Lcom/android/incallui/AnswerFragment;->mKeyPressed:Z

    .line 1626
    return-void
.end method

.method private releaseCallSlideAnim()V
    .locals 11

    .prologue
    const/high16 v2, 0x3f800000

    const v1, 0x3f666666

    const/high16 v6, 0x3f000000

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 1603
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1606
    .local v0, "scale":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1607
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1608
    .local v9, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1609
    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1610
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1611
    iput-boolean v10, p0, Lcom/android/incallui/AnswerFragment;->mStopAnimation:Z

    .line 1612
    iput-boolean v10, p0, Lcom/android/incallui/AnswerFragment;->mKeyPressed:Z

    .line 1613
    return-void
.end method

.method private resetCallSlide()V
    .locals 6

    .prologue
    .line 1788
    const-string v4, "resetCallSlide"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1789
    iget-object v4, p0, Lcom/android/incallui/AnswerFragment;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x3f0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1790
    iget-object v4, p0, Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    .line 1791
    iget-object v4, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 1792
    .local v3, "top":I
    iget-object v4, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 1793
    .local v0, "left":I
    iget-object v4, p0, Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v2, v4, v3

    .line 1794
    .local v2, "offsetY":I
    iget-object v4, p0, Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v1, v4, v0

    .line 1795
    .local v1, "offsetX":I
    invoke-direct {p0, v1, v2}, Lcom/android/incallui/AnswerFragment;->moveCallSlide(II)V

    .line 1797
    .end local v0    # "left":I
    .end local v1    # "offsetX":I
    .end local v2    # "offsetY":I
    .end local v3    # "top":I
    :cond_0
    return-void
.end method

.method private scaleDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "wpix"    # I
    .param p3, "hpix"    # I

    .prologue
    const/4 v4, 0x0

    .line 1526
    invoke-static {p1}, Lcom/android/incallui/AnswerFragment;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1527
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 1535
    :cond_0
    :goto_0
    return-object v4

    .line 1529
    :cond_1
    const/4 v5, 0x1

    invoke-static {v0, p2, p3, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1530
    .local v3, "zoomBitmap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 1533
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 1534
    .local v2, "w":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1535
    .local v1, "h":I
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const v7, 0x7f08001f

    .line 1321
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[setDrawableToImageView], photo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1322
    if-nez p2, :cond_0

    .line 1323
    iget-object v5, p0, Lcom/android/incallui/AnswerFragment;->mInsetPhoto:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1350
    :goto_0
    return-void

    .line 1328
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->inCarMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1329
    invoke-virtual {p0, p2}, Lcom/android/incallui/AnswerFragment;->setInComingCallWidgetHandlerDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1333
    :cond_1
    invoke-static {p2}, Lcom/android/incallui/AnswerFragment;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1334
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const/4 v7, 0x1

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1339
    .local v4, "zoomBitmap":Landroid/graphics/Bitmap;
    const/high16 v5, 0x40000000

    invoke-static {v4, v5}, Lcom/android/incallui/AnswerFragment;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1340
    .local v2, "roundBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v3, v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 1341
    .local v3, "roundCornerDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1342
    .local v1, "current":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_2

    .line 1343
    const-string v5, "[setDrawableToImageView]current is null"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1344
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1347
    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private showAnimation()V
    .locals 13

    .prologue
    const/high16 v6, 0x3f000000

    const/high16 v1, 0x3e800000

    const/4 v12, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    .line 1007
    const/4 v10, 0x1

    .line 1008
    .local v10, "screenBlur":Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1009
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->isScreenBlur()Z

    move-result v10

    .line 1011
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showAnimation("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1012
    if-eqz v10, :cond_1

    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-nez v2, :cond_3

    .line 1013
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1088
    :cond_2
    :goto_0
    return-void

    .line 1017
    :cond_3
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1018
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v2}, Lcom/android/incallui/AnswerFragment;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;

    .line 1021
    :cond_4
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mIncomingAnswer:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1022
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mIncomingHangup:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1023
    iget-boolean v2, p0, Lcom/android/incallui/AnswerFragment;->mShowTextButton:Z

    if-eqz v2, :cond_c

    .line 1024
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mIncomingSms:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1025
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mIncomingReminder:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1030
    :goto_1
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mIncomingAnswer:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mAnswerRect:Landroid/graphics/Rect;

    if-nez v2, :cond_5

    .line 1031
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mIncomingAnswer:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/android/incallui/AnswerFragment;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/AnswerFragment;->mAnswerRect:Landroid/graphics/Rect;

    .line 1033
    :cond_5
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mIncomingHangup:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mHangupRect:Landroid/graphics/Rect;

    if-nez v2, :cond_6

    .line 1034
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mIncomingHangup:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/android/incallui/AnswerFragment;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/AnswerFragment;->mHangupRect:Landroid/graphics/Rect;

    .line 1036
    :cond_6
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mIncomingSms:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mSmsRect:Landroid/graphics/Rect;

    if-nez v2, :cond_7

    iget-boolean v2, p0, Lcom/android/incallui/AnswerFragment;->mShowTextButton:Z

    if-eqz v2, :cond_7

    .line 1037
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mIncomingSms:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/android/incallui/AnswerFragment;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/AnswerFragment;->mSmsRect:Landroid/graphics/Rect;

    .line 1039
    :cond_7
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mIncomingReminder:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mReminderRect:Landroid/graphics/Rect;

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/android/incallui/AnswerFragment;->mShowTextButton:Z

    if-eqz v2, :cond_8

    .line 1040
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mIncomingReminder:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/android/incallui/AnswerFragment;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/AnswerFragment;->mReminderRect:Landroid/graphics/Rect;

    .line 1042
    :cond_8
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->stopFocusRing()V

    .line 1043
    iput-boolean v12, p0, Lcom/android/incallui/AnswerFragment;->mStopAnimation:Z

    .line 1044
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3f0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1045
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3fa00000

    const/high16 v4, 0x3fa00000

    move v3, v1

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1048
    .local v0, "scale":Landroid/view/animation/Animation;
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1049
    .local v9, "alpha":Landroid/view/animation/Animation;
    new-instance v11, Landroid/view/animation/AnimationSet;

    invoke-direct {v11, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1050
    .local v11, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1051
    invoke-virtual {v11, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1052
    const-wide/16 v1, 0xd0

    invoke-virtual {v11, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1053
    invoke-virtual {v11, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1054
    new-instance v1, Lcom/android/incallui/AnswerFragment$12;

    invoke-direct {v1, p0}, Lcom/android/incallui/AnswerFragment$12;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v11, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1072
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mArrowAnim:Landroid/widget/ImageView;

    invoke-direct {p0, v1, v12}, Lcom/android/incallui/AnswerFragment;->startImageViewAnimation(Landroid/widget/ImageView;Z)V

    .line 1073
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1074
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1076
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mHangupRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_9

    .line 1077
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mIncomingHangup:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mHangupRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2, v5}, Lcom/android/incallui/AnswerFragment;->TranslateVerticalAnimation(Landroid/view/View;Landroid/graphics/Rect;Z)V

    .line 1079
    :cond_9
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mAnswerRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_a

    .line 1080
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mIncomingAnswer:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mAnswerRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2, v5}, Lcom/android/incallui/AnswerFragment;->TranslateVerticalAnimation(Landroid/view/View;Landroid/graphics/Rect;Z)V

    .line 1082
    :cond_a
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mSmsRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_b

    .line 1083
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mIncomingSms:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mSmsRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2, v5}, Lcom/android/incallui/AnswerFragment;->TranslateHorizontalAnimation(Landroid/view/View;Landroid/graphics/Rect;Z)V

    .line 1085
    :cond_b
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mReminderRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    .line 1086
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mIncomingReminder:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mReminderRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v2, v5}, Lcom/android/incallui/AnswerFragment;->TranslateHorizontalAnimation(Landroid/view/View;Landroid/graphics/Rect;Z)V

    goto/16 :goto_0

    .line 1027
    .end local v0    # "scale":Landroid/view/animation/Animation;
    .end local v9    # "alpha":Landroid/view/animation/Animation;
    .end local v11    # "set":Landroid/view/animation/AnimationSet;
    :cond_c
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mIncomingSms:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1028
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mIncomingReminder:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private showAnimation1(Z)V
    .locals 10
    .param p1, "playWaveAnim"    # Z

    .prologue
    const/high16 v1, 0x3fa00000

    const v2, 0x3f666666

    const/high16 v6, 0x3f000000

    const/4 v5, 0x1

    .line 1091
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1094
    .local v0, "scale":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x7d

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1095
    new-instance v1, Lcom/android/incallui/AnswerFragment$13;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/AnswerFragment$13;-><init>(Lcom/android/incallui/AnswerFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1111
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1112
    .local v9, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1113
    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1114
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1115
    return-void
.end method

.method private showAnimation2(Z)V
    .locals 10
    .param p1, "playWaveAnim"    # Z

    .prologue
    const/high16 v2, 0x3f800000

    const v1, 0x3f666666

    const/high16 v6, 0x3f000000

    const/4 v5, 0x1

    .line 1117
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1120
    .local v0, "scale":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1121
    new-instance v1, Lcom/android/incallui/AnswerFragment$14;

    invoke-direct {v1, p0, p1}, Lcom/android/incallui/AnswerFragment$14;-><init>(Lcom/android/incallui/AnswerFragment;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1141
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1142
    .local v9, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1143
    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1144
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1145
    return-void
.end method

.method private slowMoveCallSlideWidgetBack()V
    .locals 9

    .prologue
    const/high16 v8, 0x41a00000

    .line 1147
    iget-object v5, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 1148
    .local v4, "top":I
    iget-object v5, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 1149
    .local v1, "left":I
    const/4 v2, 0x0

    .line 1150
    .local v2, "offsetX":I
    const/4 v3, 0x0

    .line 1151
    .local v3, "offsetY":I
    iget-object v5, p0, Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v5, v4, v5

    iget-object v6, p0, Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, v4, v6

    mul-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v6, v1, v6

    iget-object v7, p0, Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int v7, v1, v7

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-int v0, v5

    .line 1153
    .local v0, "d":I
    invoke-direct {p0, v8}, Lcom/android/incallui/AnswerFragment;->dip2px(F)I

    move-result v5

    if-le v0, v5, :cond_2

    .line 1154
    iget-object v5, p0, Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v4

    invoke-direct {p0, v8}, Lcom/android/incallui/AnswerFragment;->dip2px(F)I

    move-result v6

    mul-int/2addr v5, v6

    div-int v3, v5, v0

    .line 1155
    iget-object v5, p0, Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v1

    invoke-direct {p0, v8}, Lcom/android/incallui/AnswerFragment;->dip2px(F)I

    move-result v6

    mul-int/2addr v5, v6

    div-int v2, v5, v0

    .line 1160
    :goto_0
    if-nez v2, :cond_0

    if-eqz v3, :cond_3

    .line 1161
    :cond_0
    invoke-direct {p0, v2, v3}, Lcom/android/incallui/AnswerFragment;->moveCallSlide(II)V

    .line 1162
    iget-boolean v5, p0, Lcom/android/incallui/AnswerFragment;->mStopMoving:Z

    if-nez v5, :cond_1

    .line 1163
    iget-object v5, p0, Lcom/android/incallui/AnswerFragment;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x3ea

    const-wide/16 v7, 0x5

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1171
    :cond_1
    :goto_1
    return-void

    .line 1157
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v3, v5, v4

    .line 1158
    iget-object v5, p0, Lcom/android/incallui/AnswerFragment;->mCallSlideRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v2, v5, v1

    goto :goto_0

    .line 1166
    :cond_3
    iget-boolean v5, p0, Lcom/android/incallui/AnswerFragment;->mStopAnimation:Z

    if-nez v5, :cond_1

    .line 1168
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->startCircleWaveAnim()V

    goto :goto_1
.end method

.method private startCircleWaveAnim()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1799
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCircleWaveView:Lcom/android/incallui/CircleWaveView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1800
    iput v1, p0, Lcom/android/incallui/AnswerFragment;->mCount:I

    .line 1801
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCircleRunnable:Lcom/android/incallui/AnswerFragment$CircleRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1802
    return-void
.end method

.method private startFocusRing()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v1, 0x3fab851f

    const v2, 0x3f666666

    const/high16 v6, 0x3f000000

    const/4 v5, 0x1

    .line 1750
    iput-boolean v5, p0, Lcom/android/incallui/AnswerFragment;->mStopMoving:Z

    .line 1751
    iget-boolean v3, p0, Lcom/android/incallui/AnswerFragment;->mFocusRingStart:Z

    if-nez v3, :cond_0

    .line 1752
    iput-boolean v5, p0, Lcom/android/incallui/AnswerFragment;->mFocusRingStart:Z

    .line 1757
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1760
    .local v0, "scale":Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1761
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1762
    .local v9, "set":Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1763
    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1764
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mFocusRing:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1765
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mFocusRing:Landroid/widget/ImageView;

    invoke-virtual {v1, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1766
    .end local v0    # "scale":Landroid/view/animation/Animation;
    .end local v9    # "set":Landroid/view/animation/AnimationSet;
    :cond_0
    return-void
.end method

.method private startImageViewAnimation(Landroid/widget/ImageView;Z)V
    .locals 6
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "waveAnim"    # Z

    .prologue
    .line 1185
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1186
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1187
    .local v0, "anim":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1188
    const/16 v1, 0x4b8

    .line 1189
    .local v1, "duration":I
    if-eqz p2, :cond_0

    .line 1190
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ef

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1191
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x3ee

    const/16 v4, 0x5b2

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1193
    :cond_0
    return-void
.end method

.method private stopCircleWaveAnim()V
    .locals 2

    .prologue
    const/16 v1, 0x23

    .line 1804
    iput v1, p0, Lcom/android/incallui/AnswerFragment;->mCount:I

    .line 1805
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCircleWaveView:Lcom/android/incallui/CircleWaveView;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CircleWaveView;->updateCount(I)V

    .line 1806
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCircleWaveView:Lcom/android/incallui/CircleWaveView;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 1807
    return-void
.end method

.method private stopFocusRing()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1768
    iget-boolean v2, p0, Lcom/android/incallui/AnswerFragment;->mFocusRingStart:Z

    if-eqz v2, :cond_0

    .line 1769
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/incallui/AnswerFragment;->mFocusRingStart:Z

    .line 1773
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1774
    .local v0, "alpha":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1775
    .local v1, "set":Landroid/view/animation/AnimationSet;
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1776
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1777
    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1778
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mFocusRing:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1779
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mFocusRing:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1780
    .end local v0    # "alpha":Landroid/view/animation/Animation;
    .end local v1    # "set":Landroid/view/animation/AnimationSet;
    :cond_0
    return-void
.end method

.method private stopImageViewAnimation(Landroid/widget/ImageView;)V
    .locals 2
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 1195
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1196
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 1197
    .local v0, "anim":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 1198
    return-void
.end method


# virtual methods
.method public applyPhoneTheme()V
    .locals 1

    .prologue
    .line 1840
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    .line 1888
    .local v0, "incallpresenter":Lcom/android/incallui/InCallPresenter;
    return-void
.end method

.method public configureMessageDialog(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, "textResponses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 591
    .local v0, "textResponsesForDisplay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0340

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1090003

    const v4, 0x1020014

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    .line 595
    return-void
.end method

.method public createPresenter()Lcom/android/incallui/AnswerPresenter;
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lcom/android/incallui/AnswerPresenter;

    invoke-direct {v0}, Lcom/android/incallui/AnswerPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->createPresenter()Lcom/android/incallui/AnswerPresenter;

    move-result-object v0

    return-object v0
.end method

.method public dismissPendingDialogues()V
    .locals 1

    .prologue
    .line 480
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->isCannedResponsePopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->dismissCannedResponsePopup()V

    .line 484
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->isCustomMessagePopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->dismissCustomMessagePopup()V

    .line 487
    :cond_1
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1432
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/AnswerPresenter$AnswerUi;
    .locals 0

    .prologue
    .line 245
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getUi()Lcom/android/incallui/AnswerPresenter$AnswerUi;

    move-result-object v0

    return-object v0
.end method

.method public hasPendingDialogs()Z
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideScreen()V
    .locals 0

    .prologue
    .line 1202
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1427
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1428
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mContext:Landroid/content/Context;

    .line 1429
    return-void
.end method

.method public onAnswer()V
    .locals 1

    .prologue
    .line 599
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onAnswer()V

    .line 600
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 644
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 645
    const-string v0, "onCreate()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->setVoiceUIListener()V

    .line 647
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->setUpVoiceCommandService()V

    .line 648
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 251
    const/high16 v1, 0x7f030000

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 253
    .local v0, "parent":Landroid/view/View;
    const v1, 0x7f06000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/GlowPadWrapper;

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    .line 254
    const v1, 0x7f06000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mTextView:Landroid/widget/TextView;

    .line 257
    const v1, 0x7f06000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mIncomingMenuButton:Landroid/widget/ImageButton;

    .line 258
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mIncomingMenuButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/incallui/AnswerFragment$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/AnswerFragment$3;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    const-string v1, "Creating view for answer fragment "

    invoke-static {p0, v1, p0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 266
    const-string v1, "Created from activity"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 267
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v1, p0}, Lcom/android/incallui/GlowPadWrapper;->setAnswerListener(Lcom/android/incallui/GlowPadWrapper$AnswerListener;)V

    .line 268
    return-object v0
.end method

.method public onDecline()V
    .locals 1

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onDecline()V

    .line 605
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 273
    const-string v0, "onDestroyView"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v0}, Lcom/android/incallui/GlowPadWrapper;->stopPing()V

    .line 276
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 281
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 282
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 698
    invoke-direct {p0, p1}, Lcom/android/incallui/AnswerFragment;->handleIncomingMenuItemClickMTK(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onText()V
    .locals 1

    .prologue
    .line 609
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->onText()V

    .line 610
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 816
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 818
    const v1, 0x7f06000d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mIncomingCallView:Landroid/widget/RelativeLayout;

    .line 819
    const v1, 0x7f060070

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    .line 832
    const v1, 0x7f06006f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mArrowAnim:Landroid/widget/ImageView;

    .line 833
    const v1, 0x7f060072

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mFocusRing:Landroid/widget/ImageView;

    .line 834
    const v1, 0x7f06006e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CircleWaveView;

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCircleWaveView:Lcom/android/incallui/CircleWaveView;

    .line 836
    const v1, 0x7f060071

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mInsetPhoto:Landroid/widget/ImageView;

    .line 838
    const v1, 0x7f06005f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mIncomingAnswer:Landroid/widget/ImageView;

    .line 839
    const v1, 0x7f06005e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mIncomingHangup:Landroid/widget/ImageView;

    .line 840
    const v1, 0x7f060061

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mIncomingSms:Landroid/widget/ImageView;

    .line 841
    const v1, 0x7f060060

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mIncomingReminder:Landroid/widget/ImageView;

    .line 843
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 844
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/incallui/AnswerFragment;->mScreenWidth:I

    .line 846
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/android/incallui/AnswerFragment$11;

    invoke-direct {v2, p0}, Lcom/android/incallui/AnswerFragment$11;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1000
    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x4

    .line 1205
    iput-boolean v3, p0, Lcom/android/incallui/AnswerFragment;->mStopAnimation:Z

    .line 1206
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1207
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1208
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mInsetPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1215
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mCallSlide:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1216
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingAnswer:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1217
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingHangup:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1218
    iget-boolean v0, p0, Lcom/android/incallui/AnswerFragment;->mShowTextButton:Z

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingSms:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1220
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingReminder:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1228
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mArrowAnim:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/android/incallui/AnswerFragment;->stopImageViewAnimation(Landroid/widget/ImageView;)V

    .line 1229
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->stopFocusRing()V

    .line 1230
    iput-boolean v3, p0, Lcom/android/incallui/AnswerFragment;->mStopMoving:Z

    .line 1231
    return-void

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingSms:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1223
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingReminder:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setInComingCallWidgetHandlerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v5, 0x129

    .line 1506
    if-nez p1, :cond_1

    .line 1524
    :cond_0
    :goto_0
    return-void

    .line 1509
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1510
    .local v2, "w":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1511
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cgm,setInComingCallWidgetHandlerDrawable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1513
    invoke-direct {p0, p1, v5, v5}, Lcom/android/incallui/AnswerFragment;->scaleDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1514
    .local v1, "newDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 1515
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 1516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cgm,scaleDrawable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1518
    iget-object v3, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 1520
    const-string v3, "cgm,setInComingCallWidgetHandlerDrawable when VISIBLE"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1521
    iget-object v3, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v3, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setHandleDrawableImage(Landroid/graphics/drawable/Drawable;)V

    .line 1522
    iget-object v3, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setHandleDrawableAlaphEnable(Z)V

    goto/16 :goto_0
.end method

.method public setPrimary(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Landroid/graphics/drawable/Drawable;ZZZLjava/lang/String;)V
    .locals 1
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
    .line 1235
    const-string v0, "Setting primary call"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1242
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mInsetPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p5}, Lcom/android/incallui/AnswerFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1275
    return-void
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1297
    if-eqz p1, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mInsetPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/AnswerFragment;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1300
    :cond_0
    return-void
.end method

.method public setupIncomingMenuItems(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 680
    const-string v2, "setupIncomingMenuItems()..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    const v2, 0x7f0600cb

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 682
    .local v1, "voiceAnswerMenu":Landroid/view/MenuItem;
    const v2, 0x7f0600d7

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 684
    .local v0, "hangupActiveAndAnswerWaitingMenu":Landroid/view/MenuItem;
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->isDMLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->updateIncomingMenuState()V

    .line 688
    if-eqz v1, :cond_2

    .line 689
    sget-boolean v2, Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;->sCanVTVoiceAnswer:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 692
    :cond_2
    if-eqz v0, :cond_0

    .line 693
    sget-boolean v2, Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;->sCanHangupActiveAndAnswerWaiting:Z

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public showAnswerUi(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 287
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->inCarMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    iget-object v3, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 293
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerPresenter;->isVTCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const v1, 0x7f0200c0

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setHandleDrawableImage(I)V

    .line 301
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->updateIncomingCallMenuButton()V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show answer UI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    if-eqz p1, :cond_2

    .line 306
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v0}, Lcom/android/incallui/GlowPadWrapper;->startPing()V

    .line 312
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/AnswerFragment;->updatePromptsMessage(Z)V

    .line 335
    :goto_3
    return-void

    :cond_0
    move v0, v2

    .line 291
    goto :goto_0

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setHandleDrawableImage(I)V

    goto :goto_1

    .line 308
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v0}, Lcom/android/incallui/GlowPadWrapper;->stopPing()V

    goto :goto_2

    .line 315
    :cond_3
    if-eqz p1, :cond_5

    .line 316
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_4

    .line 317
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallActivity;->displayFragment(Z)V

    .line 323
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->reset()V

    .line 324
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 325
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingCallView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 327
    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_6

    .line 328
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->displayFragment(Z)V

    .line 331
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->reset()V

    .line 332
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingCallView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method public showCustomMessageDialog()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 498
    const-string v4, "showCustomMessageDialog~~"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 504
    .local v1, "et":Landroid/widget/EditText;
    new-array v3, v6, [Landroid/text/InputFilter;

    .line 505
    .local v3, "smsLengthFilter":[Landroid/text/InputFilter;
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x8c

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v3, v7

    .line 506
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 509
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0342

    new-instance v6, Lcom/android/incallui/AnswerFragment$7;

    invoke-direct {v6, p0, v1}, Lcom/android/incallui/AnswerFragment$7;-><init>(Lcom/android/incallui/AnswerFragment;Landroid/widget/EditText;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0341

    new-instance v6, Lcom/android/incallui/AnswerFragment$6;

    invoke-direct {v6, p0}, Lcom/android/incallui/AnswerFragment$6;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0a0340

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 541
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    .line 544
    new-instance v4, Lcom/android/incallui/AnswerFragment$8;

    invoke-direct {v4, p0}, Lcom/android/incallui/AnswerFragment$8;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 562
    iget-object v4, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 567
    iget-object v4, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/incallui/AnswerFragment$9;

    invoke-direct {v5, p0}, Lcom/android/incallui/AnswerFragment$9;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 580
    iget-object v4, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 583
    iget-object v4, p0, Lcom/android/incallui/AnswerFragment;->mCustomMessagePopup:Landroid/app/AlertDialog;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 584
    .local v2, "sendButton":Landroid/widget/Button;
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 585
    return-void
.end method

.method public showMessageDialog()V
    .locals 4

    .prologue
    .line 398
    const-string v2, "showMessageDialog~~"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    new-instance v1, Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 401
    .local v1, "lv":Landroid/widget/ListView;
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mTextResponsesAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 403
    new-instance v2, Lcom/android/incallui/AnswerFragment$RespondViaSmsItemClickListener;

    invoke-direct {v2, p0}, Lcom/android/incallui/AnswerFragment$RespondViaSmsItemClickListener;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 405
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 407
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/android/incallui/AnswerFragment$4;

    invoke-direct {v2, p0}, Lcom/android/incallui/AnswerFragment$4;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 424
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    .line 428
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    new-instance v3, Lcom/android/incallui/AnswerFragment$5;

    invoke-direct {v3, p0}, Lcom/android/incallui/AnswerFragment$5;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 439
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mCannedResponsePopup:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 440
    return-void
.end method

.method public showReminderDialog()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1712
    const-string v2, "showReminderDialog~~"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1713
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    .line 1715
    .local v1, "items":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a037b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1716
    invoke-virtual {p0}, Lcom/android/incallui/AnswerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0a037c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 1717
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1719
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mReminderListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1720
    const v2, 0x7f0a037a

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1721
    const v2, 0x7f0a013c

    new-instance v3, Lcom/android/incallui/AnswerFragment$18;

    invoke-direct {v3, p0}, Lcom/android/incallui/AnswerFragment$18;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1727
    new-instance v2, Lcom/android/incallui/AnswerFragment$19;

    invoke-direct {v2, p0}, Lcom/android/incallui/AnswerFragment$19;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1734
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/AnswerFragment;->mReminderPopup:Landroid/app/Dialog;

    .line 1738
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mReminderPopup:Landroid/app/Dialog;

    new-instance v3, Lcom/android/incallui/AnswerFragment$20;

    invoke-direct {v3, p0}, Lcom/android/incallui/AnswerFragment$20;-><init>(Lcom/android/incallui/AnswerFragment;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1747
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mReminderPopup:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1748
    return-void
.end method

.method public showTextButton(Z)V
    .locals 7
    .param p1, "show"    # Z

    .prologue
    const v6, 0x7f05000a

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x0

    const v1, 0x7f050009

    .line 339
    if-eqz p1, :cond_1

    const v0, 0x7f050006

    .line 343
    .local v0, "targetResourceId":I
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->inCarMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 344
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getTargetResourceId()I

    move-result v2

    if-eq v2, v1, :cond_0

    .line 345
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v2, v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    .line 346
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v1, v6}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 348
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const v2, 0x7f05000b

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 350
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v1, v3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->reset(Z)V

    .line 394
    :cond_0
    :goto_1
    return-void

    .end local v0    # "targetResourceId":I
    :cond_1
    move v0, v1

    .line 339
    goto :goto_0

    .line 355
    .restart local v0    # "targetResourceId":I
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v1}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->getTargetResourceId()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 356
    if-eqz p1, :cond_5

    .line 358
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v1, v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    .line 359
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const v2, 0x7f050007

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 361
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const v2, 0x7f050008

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 372
    :goto_2
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v1, v3}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->reset(Z)V

    .line 376
    :cond_3
    iput-boolean p1, p0, Lcom/android/incallui/AnswerFragment;->mShowTextButton:Z

    .line 377
    iget-boolean v1, p0, Lcom/android/incallui/AnswerFragment;->mShowTextButton:Z

    if-eqz v1, :cond_6

    .line 378
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mIncomingSms:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mIncomingReminder:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 380
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mIncomingSms:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mSmsRect:Landroid/graphics/Rect;

    if-nez v1, :cond_4

    .line 381
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mIncomingSms:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/incallui/AnswerFragment;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mSmsRect:Landroid/graphics/Rect;

    .line 383
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mIncomingReminder:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mReminderRect:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    .line 384
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mIncomingReminder:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/incallui/AnswerFragment;->getViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mReminderRect:Landroid/graphics/Rect;

    goto :goto_1

    .line 365
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v1, v0}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    .line 366
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v1, v6}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 368
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    const v2, 0x7f05000b

    invoke-virtual {v1, v2}, Lcom/android/incallui/widget/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    goto :goto_2

    .line 387
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mIncomingSms:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 388
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mIncomingReminder:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 389
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mSmsRect:Landroid/graphics/Rect;

    .line 390
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/incallui/AnswerFragment;->mReminderRect:Landroid/graphics/Rect;

    goto/16 :goto_1
.end method

.method public updateIncomingCallMenuButton()V
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mGlowpad:Lcom/android/incallui/GlowPadWrapper;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 755
    :cond_0
    :goto_0
    return-void

    .line 748
    :cond_1
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->updateIncomingMenuState()V

    .line 749
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/incallui/InCallUtils;->hasPermanentMenuKey(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;->sCanVTVoiceAnswer:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/incallui/AnswerFragment$IncomingCallMenuState;->sCanHangupActiveAndAnswerWaiting:Z

    if-eqz v0, :cond_3

    .line 751
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingMenuButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 753
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/AnswerFragment;->mIncomingMenuButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updatePromptsMessage(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    const/16 v2, 0x8

    .line 760
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/AnswerPresenter;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mTextView:Landroid/widget/TextView;

    if-nez v1, :cond_2

    .line 761
    :cond_0
    const-string v1, "updatePromptsMessage, incoming call is null or TextView is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 784
    :cond_1
    :goto_0
    return-void

    .line 764
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/AnswerFragment;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 765
    if-eqz p1, :cond_1

    .line 766
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/AnswerPresenter;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getRejectCallNotifyMsg()Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, "message":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 770
    invoke-direct {p0}, Lcom/android/incallui/AnswerFragment;->getMessageForVoiceUI()Ljava/lang/String;

    move-result-object v0

    .line 777
    :cond_3
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 778
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 779
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v0    # "message":Ljava/lang/String;
    :cond_4
    move v1, v2

    .line 764
    goto :goto_1

    .line 780
    .restart local v0    # "message":Ljava/lang/String;
    :cond_5
    if-nez v0, :cond_1

    .line 781
    iget-object v1, p0, Lcom/android/incallui/AnswerFragment;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
