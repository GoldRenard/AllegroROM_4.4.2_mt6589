.class public Lcom/android/incallui/InCallActivity;
.super Landroid/app/Activity;
.source "InCallActivity.java"


# static fields
.field private static ACTION_LOCKED:Ljava/lang/String; = null

.field private static ACTION_UNLOCK:Ljava/lang/String; = null

.field private static final INVALID_RES_ID:I = -0x1

.field private static final MSG_SHOW_BLUE_WALLPAPER:I = 0xab

.field private static NOTIFY_LOCKED:Ljava/lang/String; = null

.field private static NOTIFY_UNLOCK:Ljava/lang/String; = null

.field private static final RECORDING_TIME_MSG:I = 0xaa

.field public static final SHOW_DIALPAD_EXTRA:Ljava/lang/String; = "InCallActivity.show_dialpad"

.field private static final TOP_PACKAGE_ON_FLOAT:Ljava/lang/String; = "com.autonavi.xmgd.navigator"

.field public static final VT_CALL_EXTRA:Ljava/lang/String; = "com.android.phone.extra.video"

.field private static final VT_VOICE_ANSWER_OVER:I = 0xa1


# instance fields
.field private mAnswerFragment:Lcom/android/incallui/AnswerFragment;

.field private mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

.field private mCallCardFragment:Lcom/android/incallui/CallCardFragment;

.field private mCallContenter:Landroid/view/ViewGroup;

.field private mCallFloatservice:Landroid/content/Intent;

.field private mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

.field private final mDMLockReceiver:Landroid/content/BroadcastReceiver;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialpadFragment:Lcom/android/incallui/DialpadFragment;

.field private mHandler:Landroid/os/Handler;

.field private mHour:I

.field private mInVoiceAnswerVideoCall:Z

.field private mIsForegroundActivity:Z

.field public mIsLandscape:Z

.field private mMinute:I

.field private mNavigationBarHeight:I

.field private mSceenBlur:Z

.field private mSecond:I

.field private mShowDialpadRequested:Z

.field private mStatusBarHeight:I

.field private mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

.field private mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

.field private mVTVoiceAnswerTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1493
    const-string v0, "com.mediatek.dm.LAWMO_LOCK"

    sput-object v0, Lcom/android/incallui/InCallActivity;->ACTION_LOCKED:Ljava/lang/String;

    .line 1494
    const-string v0, "com.mediatek.dm.LAWMO_UNLOCK"

    sput-object v0, Lcom/android/incallui/InCallActivity;->ACTION_UNLOCK:Ljava/lang/String;

    .line 1498
    const-string v0, "com.mediatek.ppl.NOTIFY_LOCK"

    sput-object v0, Lcom/android/incallui/InCallActivity;->NOTIFY_LOCKED:Ljava/lang/String;

    .line 1499
    const-string v0, "com.mediatek.ppl.NOTIFY_UNLOCK"

    sput-object v0, Lcom/android/incallui/InCallActivity;->NOTIFY_UNLOCK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    iput v0, p0, Lcom/android/incallui/InCallActivity;->mHour:I

    .line 109
    iput v0, p0, Lcom/android/incallui/InCallActivity;->mMinute:I

    .line 110
    iput v0, p0, Lcom/android/incallui/InCallActivity;->mSecond:I

    .line 114
    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    .line 119
    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mSceenBlur:Z

    .line 817
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    .line 1091
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerTimer:Ljava/util/Timer;

    .line 1139
    new-instance v0, Lcom/android/incallui/InCallActivity$12;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$12;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    .line 1502
    new-instance v0, Lcom/android/incallui/InCallActivity$14;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$14;-><init>(Lcom/android/incallui/InCallActivity;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDMLockReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/InCallActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->onDialogDismissed()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/incallui/InCallActivity;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/incallui/InCallActivity;->NOTIFY_UNLOCK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/incallui/InCallActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/incallui/InCallActivity;->ACTION_LOCKED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/incallui/InCallActivity;->ACTION_UNLOCK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/incallui/InCallActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mInVoiceAnswerVideoCall:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/incallui/InCallActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/InCallActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/incallui/InCallActivity;->mHour:I

    return v0
.end method

.method static synthetic access$408(Lcom/android/incallui/InCallActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/incallui/InCallActivity;->mHour:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/InCallActivity;->mHour:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/incallui/InCallActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/incallui/InCallActivity;->mMinute:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/incallui/InCallActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/incallui/InCallActivity;->mMinute:I

    return p1
.end method

.method static synthetic access$508(Lcom/android/incallui/InCallActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/incallui/InCallActivity;->mMinute:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/InCallActivity;->mMinute:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/incallui/InCallActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/incallui/InCallActivity;->mSecond:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/incallui/InCallActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/android/incallui/InCallActivity;->mSecond:I

    return p1
.end method

.method static synthetic access$608(Lcom/android/incallui/InCallActivity;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 90
    iget v0, p0, Lcom/android/incallui/InCallActivity;->mSecond:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/InCallActivity;->mSecond:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/incallui/InCallActivity;)Lcom/mediatek/incallui/vt/VTCallFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/incallui/InCallActivity;)Lcom/android/incallui/CallButtonFragment;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/incallui/InCallActivity;->NOTIFY_LOCKED:Ljava/lang/String;

    return-object v0
.end method

.method private blurScreen()V
    .locals 1

    .prologue
    .line 1440
    new-instance v0, Lcom/android/incallui/InCallActivity$13;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$13;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1449
    return-void
.end method

.method private getResIdForDisconnectCause(Lcom/android/services/telephony/common/Call$DisconnectCause;)I
    .locals 2
    .param p1, "cause"    # Lcom/android/services/telephony/common/Call$DisconnectCause;

    .prologue
    .line 789
    const/4 v0, -0x1

    .line 791
    .local v0, "resId":I
    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->CALL_BARRED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p1, v1, :cond_1

    .line 792
    const v0, 0x7f0a0151

    .line 803
    :cond_0
    :goto_0
    return v0

    .line 793
    :cond_1
    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->FDN_BLOCKED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p1, v1, :cond_2

    .line 794
    const v0, 0x7f0a0150

    goto :goto_0

    .line 795
    :cond_2
    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p1, v1, :cond_3

    .line 796
    const v0, 0x7f0a0152

    goto :goto_0

    .line 797
    :cond_3
    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p1, v1, :cond_4

    .line 798
    const v0, 0x7f0a0153

    goto :goto_0

    .line 799
    :cond_4
    sget-object v1, Lcom/android/services/telephony/common/Call$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/services/telephony/common/Call$DisconnectCause;

    if-ne p1, v1, :cond_0

    .line 800
    const v0, 0x7f0a0154

    goto :goto_0
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDialerKeyDown: keyCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0, p2}, Lcom/android/incallui/DialpadFragment;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 535
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasPendingErrorDialog()Z
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeInCall()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 581
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-nez v0, :cond_0

    .line 582
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f06005b

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    .line 584
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    if-nez v0, :cond_1

    .line 588
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f060059

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    if-nez v0, :cond_2

    .line 593
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f06005c

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/AnswerFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    .line 597
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    if-nez v0, :cond_3

    .line 598
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f06005a

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    .line 600
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 603
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    if-nez v0, :cond_4

    .line 604
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f06005d

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ConferenceManagerFragment;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    .line 606
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 625
    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallContenter:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    .line 626
    const v0, 0x7f060057

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallContenter:Landroid/view/ViewGroup;

    .line 630
    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->initializeInCallMTK()V

    .line 631
    return-void
.end method

.method private initializeInCallMTK()V
    .locals 3

    .prologue
    .line 822
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVT()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    if-nez v1, :cond_0

    .line 823
    const-string v1, "[initializeInCallMTK]on VT call, init the VTCallFragment"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 824
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f060056

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/vt/VTCallFragment;

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    .line 828
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    sget-object v1, Lcom/android/incallui/InCallActivity;->ACTION_LOCKED:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 829
    .local v0, "lockFilter":Landroid/content/IntentFilter;
    sget-object v1, Lcom/android/incallui/InCallActivity;->ACTION_UNLOCK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 831
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportPrivacyProtect()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 832
    const-string v1, "register ppl lock message"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 833
    sget-object v1, Lcom/android/incallui/InCallActivity;->NOTIFY_LOCKED:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 834
    sget-object v1, Lcom/android/incallui/InCallActivity;->NOTIFY_UNLOCK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 836
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDMLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 838
    return-void
.end method

.method private internalResolveIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 544
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 552
    const-string v2, "InCallActivity.show_dialpad"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 557
    const-string v2, "InCallActivity.show_dialpad"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 558
    .local v1, "showDialpad":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- internalResolveIntent: SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallActivity;->relaunchedFromDialer(Z)V

    .line 565
    .end local v1    # "showDialpad":Z
    :cond_0
    return-void
.end method

.method private onDialogDismissed()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 808
    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    .line 810
    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 811
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onDismissDialog()V

    .line 812
    return-void
.end method

.method private relaunchedFromDialer(Z)V
    .locals 4
    .param p1, "showDialpad"    # Z

    .prologue
    .line 568
    iput-boolean p1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    .line 570
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    if-eqz v1, :cond_0

    .line 573
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 574
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    .line 575
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/CallCommandClient;->hold(IZ)V

    .line 578
    .end local v0    # "call":Lcom/android/services/telephony/common/Call;
    :cond_0
    return-void
.end method

.method private setOrientation()V
    .locals 5

    .prologue
    const/16 v4, 0x400

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 949
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isLandscape()Z

    move-result v0

    .line 950
    .local v0, "isLandscape":Z
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->inCarMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 951
    if-nez v0, :cond_0

    .line 952
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 954
    :cond_0
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    .line 962
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->inCarMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 963
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 966
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x100000

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFlags(II)V

    .line 969
    :cond_1
    return-void

    .line 956
    :cond_2
    if-eqz v0, :cond_3

    .line 957
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 959
    :cond_3
    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    goto :goto_0
.end method

.method private setWindowFlag()V
    .locals 4

    .prologue
    .line 974
    const v1, 0x288000

    .line 978
    .local v1, "flags":I
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 979
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v3

    invoke-static {v3}, Lcom/android/services/telephony/common/Call$State;->isConnected(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 987
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->isDMLocked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 988
    const/high16 v3, 0x400000

    or-int/2addr v1, v3

    .line 989
    const-string v3, "set window FLAG_DISMISS_KEYGUARD flag "

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 994
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 995
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 996
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 997
    return-void
.end method

.method private showErrorDialog(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    .line 755
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 756
    .local v0, "msg":Ljava/lang/CharSequence;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Show Dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 760
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0158

    new-instance v3, Lcom/android/incallui/InCallActivity$3;

    invoke-direct {v3, p0}, Lcom/android/incallui/InCallActivity$3;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/InCallActivity$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$2;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/InCallActivity$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$1;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 784
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 785
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 786
    return-void
.end method

.method private showReCallDialog(ILjava/lang/String;I)V
    .locals 7
    .param p1, "resid"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "slot"    # I

    .prologue
    .line 1029
    const-string v4, "showReCallDialog... "

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1031
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 1032
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1033
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 1035
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1037
    .local v3, "msg":Ljava/lang/CharSequence;
    new-instance v1, Lcom/android/incallui/InCallActivity$5;

    invoke-direct {v1, p0, p2, p3}, Lcom/android/incallui/InCallActivity$5;-><init>(Lcom/android/incallui/InCallActivity;Ljava/lang/String;I)V

    .line 1051
    .local v1, "clickListener1":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/incallui/InCallActivity$6;

    invoke-direct {v2, p0}, Lcom/android/incallui/InCallActivity$6;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 1064
    .local v2, "clickListener2":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/incallui/InCallActivity$7;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallActivity$7;-><init>(Lcom/android/incallui/InCallActivity;)V

    .line 1071
    .local v0, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 1075
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 1076
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/incallui/InCallActivity$8;

    invoke-direct {v5, p0}, Lcom/android/incallui/InCallActivity$8;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1083
    iget-object v4, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1084
    return-void
.end method

.method private toast(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 634
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 636
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 637
    return-void
.end method

.method private updateInCallUI()V
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    if-eqz v0, :cond_0

    .line 1243
    const-string v0, "[onResume] call updateSimIndicator"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1244
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->updateCallCard()V

    .line 1247
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-eqz v0, :cond_1

    .line 1248
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragment;->updateVTCallButton()V

    .line 1250
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->updateInCallActivity()V

    .line 1251
    return-void
.end method


# virtual methods
.method public applyPhoneTheme()V
    .locals 1

    .prologue
    .line 1476
    const-string v0, "applyPhoneTheme()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1477
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->inCarMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1488
    :cond_0
    :goto_0
    return-void

    .line 1480
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragment;->applyPhoneTheme()V

    .line 1481
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->applyPhoneTheme()V

    .line 1482
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->applyPhoneTheme()V

    .line 1483
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadFragment;->applyPhoneTheme()V

    .line 1484
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/BaseFragment;->applyPhoneTheme()V

    .line 1485
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    if-eqz v0, :cond_0

    .line 1486
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v0}, Lcom/android/incallui/BaseFragment;->applyPhoneTheme()V

    goto :goto_0
.end method

.method public checkDisplayFloatCall()V
    .locals 7

    .prologue
    .line 1323
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->inCarMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1324
    const-string v5, "com.autonavi.xmgd.navigator"

    invoke-virtual {p0, p0, v5}, Lcom/android/incallui/InCallActivity;->isUnderMyActivity(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    .line 1327
    .local v0, "bTopApp":Z
    if-eqz v0, :cond_1

    .line 1329
    const-string v5, "cgm, yep find the top activity"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1332
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    .line 1333
    .local v2, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    .line 1337
    .local v1, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 1338
    const-string v5, "cgm,goto background when no in idle"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1339
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 1341
    const-string v3, ""

    .line 1342
    .local v3, "drawable":Ljava/lang/String;
    const-string v4, ""

    .line 1343
    .local v4, "name":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    if-eqz v5, :cond_0

    .line 1344
    iget-object v5, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v5}, Lcom/android/incallui/CallCardFragment;->getCallName()Ljava/lang/String;

    move-result-object v4

    .line 1346
    :cond_0
    invoke-virtual {p0, v3, v4}, Lcom/android/incallui/InCallActivity;->startInCallFloatService(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1352
    .end local v0    # "bTopApp":Z
    .end local v1    # "call":Lcom/android/services/telephony/common/Call;
    .end local v2    # "calls":Lcom/android/incallui/CallList;
    .end local v3    # "drawable":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1348
    .restart local v0    # "bTopApp":Z
    .restart local v1    # "call":Lcom/android/services/telephony/common/Call;
    .restart local v2    # "calls":Lcom/android/incallui/CallList;
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->stopInCallFloatService()Z

    goto :goto_0
.end method

.method public dismissKeyguard(Z)V
    .locals 2
    .param p1, "dismiss"    # Z

    .prologue
    const/high16 v1, 0x400000

    .line 648
    if-eqz p1, :cond_0

    .line 649
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 653
    :goto_0
    return-void

    .line 651
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public dismissPendingDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 720
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 721
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 722
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 726
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 727
    iput-object v1, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    if-eqz v0, :cond_2

    .line 731
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->dismissPendingDialogues()V

    .line 735
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-eqz v0, :cond_3

    .line 736
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragment;->dismissPopupMenu()V

    .line 739
    :cond_3
    return-void
.end method

.method public dismissPendingDialogsAndHideConferenceFragment()V
    .locals 2

    .prologue
    .line 744
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/ConferenceManagerFragment;->isFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/ConferenceManagerFragment;->setVisible(Z)V

    .line 747
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 749
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 705
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public displayDialpad(Z)V
    .locals 4
    .param p1, "showDialpad"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayDialpad("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    if-eqz p1, :cond_2

    .line 658
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0, v3}, Lcom/android/incallui/DialpadFragment;->setVisible(Z)V

    .line 661
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->inCarMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0, v3}, Lcom/android/incallui/CallButtonFragment;->setVisible(Z)V

    .line 682
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/ProximitySensor;->onDialpadVisible(Z)V

    .line 683
    return-void

    .line 664
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallButtonFragment;->setVisible(Z)V

    goto :goto_0

    .line 668
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0, v2}, Lcom/android/incallui/DialpadFragment;->setVisible(Z)V

    .line 671
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->inCarMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 672
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallButtonFragment;->setVisible(Z)V

    goto :goto_0

    .line 674
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0, v3}, Lcom/android/incallui/CallButtonFragment;->setVisible(Z)V

    .line 675
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragment;->showManageConferenceCallButton()V

    goto :goto_0
.end method

.method public displayFragment(Z)V
    .locals 4
    .param p1, "incomingCall"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayFragment("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1256
    if-eqz p1, :cond_2

    .line 1257
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->inCarMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1260
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallButtonFragment;->setVisible(Z)V

    .line 1261
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0, v2}, Lcom/android/incallui/DialpadFragment;->setVisible(Z)V

    .line 1263
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    if-eqz v0, :cond_1

    .line 1264
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v0, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->setVisible(Z)V

    .line 1280
    :cond_1
    :goto_0
    return-void

    .line 1268
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0, v3}, Lcom/android/incallui/CallCardFragment;->setVisible(Z)V

    .line 1269
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0, v3}, Lcom/android/incallui/CallButtonFragment;->setVisible(Z)V

    .line 1270
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1271
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragment;->showManageConferenceCallButton()V

    .line 1274
    :cond_3
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1275
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v0, v3}, Lcom/mediatek/incallui/vt/VTCallFragment;->setVisible(Z)V

    goto :goto_0
.end method

.method public displayManageConferencePanel(Z)V
    .locals 2
    .param p1, "showPanel"    # Z

    .prologue
    .line 690
    if-eqz p1, :cond_0

    .line 691
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/ConferenceManagerFragment;->setVisible(Z)V

    .line 693
    :cond_0
    return-void
.end method

.method enableHomeKeyDispatched(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 1191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableHomeKeyDispatched, enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1192
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1193
    .local v1, "window":Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1194
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 1195
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1199
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1200
    return-void

    .line 1197
    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finish().  Dialog showing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragment;->dismissPopupMenu()V

    .line 349
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 353
    invoke-virtual {p0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 355
    return-void

    .line 341
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishIfNecessory(Z)V
    .locals 1
    .param p1, "forceFinish"    # Z

    .prologue
    .line 1312
    if-eqz p1, :cond_1

    .line 1313
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-eqz v0, :cond_0

    .line 1314
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonFragment;->dismissPopupMenu()V

    .line 1316
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1320
    :goto_0
    return-void

    .line 1318
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->finish()V

    goto :goto_0
.end method

.method public getBlurWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 21

    .prologue
    .line 1407
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getWallpaper()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 1408
    .local v13, "wall":Landroid/graphics/drawable/Drawable;
    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    .end local v13    # "wall":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1409
    .local v3, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1410
    .local v5, "bmpWidth":I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1411
    .local v4, "bmpHeight":I
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 1412
    .local v10, "rect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1413
    iget v11, v10, Landroid/graphics/Rect;->top:I

    .line 1414
    .local v11, "statusBarHeight":I
    const-string v20, "window"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    .line 1415
    .local v14, "wm":Landroid/view/WindowManager;
    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getHeight()I

    move-result v17

    .line 1416
    .local v17, "z_h":I
    mul-int v20, v17, v5

    div-int v18, v20, v4

    .line 1417
    .local v18, "z_w":I
    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getWidth()I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/Display;->getWidth()I

    move-result v12

    .line 1418
    .local v12, "w":I
    :goto_0
    sub-int v7, v17, v11

    .line 1421
    .local v7, "h":I
    const/16 v20, 0x1

    :try_start_0
    move/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v20

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 1422
    .local v19, "zoomBitmap":Landroid/graphics/Bitmap;
    const/4 v15, 0x0

    .line 1423
    .local v15, "x":I
    move/from16 v16, v11

    .line 1424
    .local v16, "y":I
    move/from16 v0, v18

    if-le v0, v12, :cond_0

    .line 1425
    sub-int v20, v18, v12

    div-int/lit8 v15, v20, 0x2

    .line 1427
    :cond_0
    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-static {v0, v15, v1, v12, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1430
    .local v9, "pbm":Landroid/graphics/Bitmap;
    const/16 v20, 0x32

    move/from16 v0, v20

    invoke-static {v9, v0}, Llenovo/jni/ImageUtils;->fastBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 1431
    .local v8, "newBmp":Landroid/graphics/Bitmap;
    new-instance v20, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v20

    invoke-direct {v0, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1434
    .end local v8    # "newBmp":Landroid/graphics/Bitmap;
    .end local v9    # "pbm":Landroid/graphics/Bitmap;
    .end local v15    # "x":I
    .end local v16    # "y":I
    .end local v19    # "zoomBitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-object v20

    .end local v7    # "h":I
    .end local v12    # "w":I
    :cond_1
    move/from16 v12, v18

    .line 1417
    goto :goto_0

    .line 1432
    .restart local v7    # "h":I
    .restart local v12    # "w":I
    :catch_0
    move-exception v6

    .line 1433
    .local v6, "e":Ljava/lang/OutOfMemoryError;
    const-string v20, "Error allocating bitmap"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1434
    const/16 v20, 0x0

    goto :goto_1
.end method

.method public getInVoiceAnswerVideoCall()Z
    .locals 1

    .prologue
    .line 1094
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mInVoiceAnswerVideoCall:Z

    return v0
.end method

.method public handleVTMenuClick(Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v0, p1}, Lcom/mediatek/incallui/vt/VTCallFragment;->handleVTMenuClick(Landroid/view/MenuItem;)V

    .line 908
    :cond_0
    return-void
.end method

.method public hideDialpadForDisconnect()V
    .locals 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(Z)V

    .line 645
    return-void
.end method

.method public inCarMode()Z
    .locals 1

    .prologue
    .line 1304
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->inCarMode()Z

    move-result v0

    return v0
.end method

.method public isDialpadVisible()Z
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    return v0
.end method

.method isForegroundActivity()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    return v0
.end method

.method public isLandscape()Z
    .locals 2

    .prologue
    .line 1308
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenBlur()Z
    .locals 1

    .prologue
    .line 1468
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1469
    const/4 v0, 0x1

    .line 1471
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mSceenBlur:Z

    goto :goto_0
.end method

.method protected isUnderMyActivity(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "packagename"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1381
    const-string v4, "activity"

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1382
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 1383
    .local v3, "tasksInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1384
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1385
    .local v1, "packageName0":Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1386
    .local v2, "packageName1":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package0="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ",package1="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1387
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 1391
    .end local v1    # "packageName0":Ljava/lang/String;
    .end local v2    # "packageName1":Ljava/lang/String;
    :goto_0
    return v4

    :cond_0
    move v4, v6

    goto :goto_0
.end method

.method public maybeShowErrorDialogOnDisconnect(Lcom/android/services/telephony/common/Call$DisconnectCause;)V
    .locals 2
    .param p1, "cause"    # Lcom/android/services/telephony/common/Call$DisconnectCause;

    .prologue
    .line 709
    const-string v1, "maybeShowErrorDialogOnDisconnect"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 712
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->getResIdForDisconnectCause(Lcom/android/services/telephony/common/Call$DisconnectCause;)I

    move-result v0

    .line 713
    .local v0, "resId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 714
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->showErrorDialog(I)V

    .line 717
    .end local v0    # "resId":I
    :cond_0
    return-void
.end method

.method public maybeShowErrorDialogOnDisconnectForVT(Lcom/android/services/telephony/common/Call$DisconnectCause;ZLjava/lang/String;I)Z
    .locals 5
    .param p1, "cause"    # Lcom/android/services/telephony/common/Call$DisconnectCause;
    .param p2, "isIncoming"    # Z
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "slot"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v4, -0x1

    .line 1001
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybeShowErrorDialogOnDisconnectForVT()... cause / isIncoming / number / slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1004
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1005
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isForegroundActivity()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1006
    invoke-static {p1}, Lcom/mediatek/incallui/vt/VTUtils;->getResIdForVTErrorDialog(Lcom/android/services/telephony/common/Call$DisconnectCause;)I

    move-result v0

    .line 1007
    .local v0, "resId":I
    if-eq v0, v4, :cond_1

    .line 1008
    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->showErrorDialog(I)V

    .line 1025
    .end local v0    # "resId":I
    :cond_0
    :goto_0
    return v1

    .line 1013
    :cond_1
    if-nez p2, :cond_2

    .line 1014
    invoke-static {p1}, Lcom/mediatek/incallui/vt/VTUtils;->getResIdForVTReCallDialog(Lcom/android/services/telephony/common/Call$DisconnectCause;)I

    move-result v0

    .line 1015
    .restart local v0    # "resId":I
    if-eq v0, v4, :cond_2

    .line 1017
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->isForegroundActivity()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTAutoDropBack:Z

    if-nez v2, :cond_0

    .line 1019
    invoke-direct {p0, v0, p3, p4}, Lcom/android/incallui/InCallActivity;->showReCallDialog(ILjava/lang/String;I)V

    goto :goto_0

    .line 1025
    .end local v0    # "resId":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 389
    const-string v1, "onBackPressed()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    const-string v1, "BACK key while incoming: ignored~~"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 404
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->inCarMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 405
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 409
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(Z)V

    .line 412
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragment;->showManageConferenceCallButton()V

    goto :goto_0

    .line 417
    :cond_3
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 418
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mConferenceManagerFragment:Lcom/android/incallui/ConferenceManagerFragment;

    invoke-virtual {v1, v2}, Lcom/android/incallui/ConferenceManagerFragment;->setVisible(Z)V

    goto :goto_0

    .line 423
    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 424
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    if-eqz v0, :cond_5

    .line 425
    const-string v1, "Consume Back press for an inconing call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_5
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCallCardLayoutChange(I)V
    .locals 1
    .param p1, "callCardBottom"    # I

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->inCarMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1205
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v0, p1}, Lcom/mediatek/incallui/vt/VTCallFragment;->amendVtLayout(I)V

    .line 1207
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 540
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/ProximitySensor;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 541
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate()...  this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/phone/SIMInfoWrapper;->init(Landroid/content/Context;)V

    .line 133
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->setOrientation()V

    .line 148
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->setWindowFlag()V

    .line 151
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 156
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/incallui/ext/ExtensionManager;->initPlugin(Landroid/content/Context;)V

    .line 157
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInCallUIExtension()Lcom/mediatek/incallui/ext/InCallUIExtension;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v0, p1, p0, v1}, Lcom/mediatek/incallui/ext/InCallUIExtension;->onCreate(Landroid/os/Bundle;Landroid/app/Activity;Lcom/mediatek/incallui/ext/IInCallScreen;)V

    .line 161
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 162
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->initializeInCall()V

    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    .line 170
    const-string v0, "onCreate(): exit"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 872
    const-string v1, "onCreateOptionsMenu()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 873
    new-instance v0, Landroid/view/MenuInflater;

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 875
    .local v0, "inflate":Landroid/view/MenuInflater;
    const v1, 0x7f0d0001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 876
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy()...  this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    invoke-static {}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getRecorderState()I

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->stopRecording()V

    .line 289
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->stopRecord()V

    .line 292
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setActivity(Lcom/android/incallui/InCallActivity;)V

    .line 294
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 296
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/SIMInfoWrapper;->release()V

    .line 300
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportPrivacyProtect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/incallui/InCallUtils;->setprivacyProtectEnabled(Z)V

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDMLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 307
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->stopVoiceCommand()V

    .line 308
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->clearVoiceCommandHandler()V

    .line 310
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInCallUIExtension()Lcom/mediatek/incallui/ext/InCallUIExtension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/incallui/ext/InCallUIExtension;->onDestroy(Landroid/app/Activity;)V

    .line 312
    return-void
.end method

.method public onFinishVtVideoLayout(IIII)V
    .locals 1
    .param p1, "marginLeft"    # I
    .param p2, "marginBottom"    # I
    .param p3, "height"    # I
    .param p4, "marginTop"    # I

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->inCarMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1212
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/incallui/CallButtonFragment;->amendCallButtonLayout(IIII)V

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->onFinishLayoutAmend()V

    .line 1216
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x1

    .line 447
    sparse-switch p1, :sswitch_data_0

    .line 511
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/InCallActivity;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 515
    :cond_1
    :goto_0
    :sswitch_0
    return v6

    .line 452
    :sswitch_1
    const-string v5, "ignore KEYCODE_HOME ~~"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :sswitch_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->handleCallKey()Z

    move-result v2

    .line 458
    .local v2, "handled":Z
    if-nez v2, :cond_1

    .line 459
    const-string v5, "InCallActivity should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 481
    .end local v2    # "handled":Z
    :sswitch_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 482
    .local v0, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    .line 483
    .local v3, "incomingCall":Lcom/android/services/telephony/common/Call;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "incomingCall = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    if-eqz v3, :cond_0

    goto :goto_0

    .line 492
    .end local v0    # "calls":Lcom/android/incallui/CallList;
    .end local v3    # "incomingCall":Lcom/android/services/telephony/common/Call;
    :sswitch_4
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    :goto_1
    invoke-virtual {v7, v5}, Lcom/android/incallui/CallCommandClient;->mute(Z)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 498
    :sswitch_5
    const-string v5, "----------- InCallActivity View dump --------------"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 501
    .local v4, "w":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 502
    .local v1, "decorView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->debug()V

    goto :goto_0

    .line 515
    .end local v1    # "decorView":Landroid/view/View;
    .end local v4    # "w":Landroid/view/Window;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    goto :goto_0

    .line 447
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_0
        0x4c -> :sswitch_5
        0x5b -> :sswitch_4
        0xa4 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 436
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    invoke-virtual {v1, p2}, Lcom/android/incallui/DialpadFragment;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    :cond_0
    :goto_0
    return v0

    .line 438
    :cond_1
    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 442
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/phone/SIMInfoWrapper;->init(Landroid/content/Context;)V

    .line 367
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/ProximitySensor;->lightOnScreenForSmartBook()V

    .line 378
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 384
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallActivity;->internalResolveIntent(Landroid/content/Intent;)V

    .line 385
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 894
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    .line 895
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    if-eqz v0, :cond_1

    .line 896
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/AnswerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 901
    :goto_0
    return v0

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallButtonFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 901
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 250
    const-string v0, "onPause()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 253
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    .line 255
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialpadFragment:Lcom/android/incallui/DialpadFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/DialpadFragment;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 257
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    .line 262
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 268
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/ProximitySensor;->screenOffForSmartBook()V

    .line 270
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 881
    const-string v0, "onPrepareOptionsMenu()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 882
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mediatek/incallui/InCallUtils;->setAllMenuVisible(Landroid/view/Menu;Z)V

    .line 883
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_1

    .line 884
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/AnswerFragment;->setupIncomingMenuItems(Landroid/view/Menu;)V

    .line 889
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 887
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallButtonFragment;->setupMenuItems(Landroid/view/Menu;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 184
    const-string v1, "onResume()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 186
    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z

    .line 187
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/InCallPresenter;->onUiShowing(Z)V

    .line 189
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragment;->getShowDialpadButton()Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    .line 190
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    if-eqz v1, :cond_2

    .line 192
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonFragment;->hideExtraRow()V

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {v1, v3}, Lcom/android/incallui/CallButtonFragment;->displayDialpad(Z)V

    .line 197
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mShowDialpadRequested:Z

    .line 200
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->inCarMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 201
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v1

    if-nez v1, :cond_a

    .line 202
    invoke-virtual {p0, v3}, Lcom/android/incallui/InCallActivity;->displayDialpad(Z)V

    .line 208
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->stopInCallFloatService()Z

    .line 214
    :cond_4
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->updateInCallUI()V

    .line 222
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->inCarMode()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 223
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    if-nez v1, :cond_5

    .line 224
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 226
    :cond_5
    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    .line 233
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 234
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "InCallActivity.show_dialpad"

    iget-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    invoke-virtual {p0}, Lcom/android/incallui/InCallActivity;->inCarMode()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTIdle()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mSceenBlur:Z

    if-nez v1, :cond_6

    .line 236
    invoke-direct {p0}, Lcom/android/incallui/InCallActivity;->blurScreen()V

    .line 240
    :cond_6
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTActive()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTOutgoing()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 241
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallActivity;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 244
    :cond_8
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_9
    move v1, v2

    .line 189
    goto/16 :goto_0

    .line 204
    :cond_a
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    if-eqz v1, :cond_3

    .line 205
    iget-object v1, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v1, v3}, Lcom/android/incallui/CallCardFragment;->updateCallState(Z)V

    goto :goto_1

    .line 228
    :cond_b
    iget-boolean v1, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    if-eqz v1, :cond_c

    .line 229
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 231
    :cond_c
    iput-boolean v2, p0, Lcom/android/incallui/InCallActivity;->mIsLandscape:Z

    goto :goto_2
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 175
    const-string v0, "onStart()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 179
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->setActivity(Lcom/android/incallui/InCallActivity;)V

    .line 180
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 274
    const-string v0, "onStop()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 277
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->setVTScreenMode(Lcom/mediatek/incallui/vt/Constants$VTScreenMode;)V

    .line 281
    :cond_0
    return-void
.end method

.method public onVTSwapVideoClick()V
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->onVTSwapVideoClick()V

    .line 914
    :cond_0
    return-void
.end method

.method public rejectCallWithReminder(J)V
    .locals 1
    .param p1, "inTime"    # J

    .prologue
    .line 1462
    const-string v0, "rejectCallWithReminder()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1463
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    if-eqz v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/CallCardFragment;->rejectCallWithReminder(J)V

    .line 1466
    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1396
    if-eqz p1, :cond_0

    .line 1397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mSceenBlur:Z

    .line 1400
    :cond_0
    if-nez p1, :cond_1

    .line 1401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallActivity;->mSceenBlur:Z

    .line 1403
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallContenter:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1404
    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue

    iput-boolean p2, p0, Lcom/android/incallui/InCallActivity;->mSceenBlur:Z

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallContenter:Landroid/view/ViewGroup;

	const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setInVoiceAnswerVideoCall(Z)V
    .locals 5
    .param p1, "value"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInVoiceAnswerVideoCall() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1099
    if-eqz p1, :cond_1

    .line 1100
    iput-boolean v4, p0, Lcom/android/incallui/InCallActivity;->mInVoiceAnswerVideoCall:Z

    .line 1101
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    .line 1102
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1103
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1104
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/incallui/InCallActivity$9;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$9;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1110
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/incallui/InCallActivity$10;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$10;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1117
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1119
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerTimer:Ljava/util/Timer;

    .line 1120
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/incallui/InCallActivity$11;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$11;-><init>(Lcom/android/incallui/InCallActivity;)V

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1137
    :cond_0
    :goto_0
    return-void

    .line 1126
    :cond_1
    iput-boolean v3, p0, Lcom/android/incallui/InCallActivity;->mInVoiceAnswerVideoCall:Z

    .line 1127
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/android/incallui/CallCommandClient;->setVTVoiceAnswerRelated(ZLjava/lang/String;)V

    .line 1128
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    .line 1129
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1130
    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerProgressDialog:Landroid/app/ProgressDialog;

    .line 1132
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1134
    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mVTVoiceAnswerTimer:Ljava/util/Timer;

    goto :goto_0
.end method

.method public setPrimaryImage(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1451
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 1452
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    const/4 v1, 0x0

    .line 1453
    .local v1, "incomingCall":Z
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1454
    :cond_0
    const/4 v1, 0x1

    .line 1456
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPrimaryImage(incomingCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1457
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 1458
    iget-object v2, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v2, p1}, Lcom/android/incallui/AnswerFragment;->setPrimaryImage(Landroid/graphics/drawable/Drawable;)V

    .line 1460
    :cond_2
    return-void
.end method

.method public setVTScreenMode(Lcom/mediatek/incallui/vt/Constants$VTScreenMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    .prologue
    .line 1219
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportVT()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    if-nez v0, :cond_1

    .line 1220
    :cond_0
    const-string v0, "setVTScreenMode()... VT is not support, or not in VTCall, just return."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1233
    :goto_0
    return-void

    .line 1223
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVTScreenMode()... mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1224
    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    if-ne v0, p1, :cond_3

    .line 1225
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardFragment;->setPhotoVisible(Z)V

    .line 1232
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v0, p1}, Lcom/mediatek/incallui/vt/VTCallFragment;->setVTScreenMode(Lcom/mediatek/incallui/vt/Constants$VTScreenMode;)V

    goto :goto_0

    .line 1226
    :cond_3
    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_OPEN:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    if-ne v0, p1, :cond_2

    .line 1227
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallCardFragment:Lcom/android/incallui/CallCardFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCardFragment;->setPhotoVisible(Z)V

    goto :goto_1
.end method

.method public showPostCharWaitDialog(ILjava/lang/String;)V
    .locals 3
    .param p1, "callId"    # I
    .param p2, "chars"    # Ljava/lang/String;

    .prologue
    .line 696
    new-instance v0, Lcom/android/incallui/PostCharDialogFragment;

    invoke-direct {v0, p1, p2}, Lcom/android/incallui/PostCharDialogFragment;-><init>(ILjava/lang/String;)V

    .line 697
    .local v0, "fragment":Lcom/android/incallui/PostCharDialogFragment;
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "postCharWait"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 698
    return-void
.end method

.method public showSuppMessageDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 917
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 918
    const-string v0, "- DISMISSING mSuppServiceFailureDialog."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 920
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 921
    iput-object v2, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 924
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0158

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    .line 926
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/incallui/InCallActivity$4;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallActivity$4;-><init>(Lcom/android/incallui/InCallActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 932
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 933
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 934
    return-void
.end method

.method public startInCallFloatService(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "photo"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1354
    const-string v0, "cgm, startInCallFloatService"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1356
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallFloatservice:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 1357
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallFloatservice:Landroid/content/Intent;

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallFloatservice:Landroid/content/Intent;

    const-string v1, "photo"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1360
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallFloatservice:Landroid/content/Intent;

    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1361
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallFloatservice:Landroid/content/Intent;

    const-class v1, Lcom/android/incallui/FloatService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1362
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallFloatservice:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1365
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1363
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startRecord()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1283
    const-string v0, "startRecord()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1284
    iput v1, p0, Lcom/android/incallui/InCallActivity;->mHour:I

    .line 1285
    iput v1, p0, Lcom/android/incallui/InCallActivity;->mMinute:I

    .line 1286
    iput v1, p0, Lcom/android/incallui/InCallActivity;->mSecond:I

    .line 1287
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1288
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0373

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1290
    return-void
.end method

.method public stopInCallFloatService()Z
    .locals 1

    .prologue
    .line 1369
    const-string v0, "cgm,stopInCallFloatService"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1371
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallFloatservice:Landroid/content/Intent;

    if-eqz v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallFloatservice:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 1373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallFloatservice:Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1378
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1375
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 3

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1294
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    if-eqz v0, :cond_0

    .line 1295
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mCallButtonFragment:Lcom/android/incallui/CallButtonFragment;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a036b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonFragment;->updateRecordBtnTitle(Ljava/lang/String;)V

    .line 1298
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    if-eqz v0, :cond_1

    .line 1299
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->updateRecord(Ljava/lang/String;)V

    .line 1301
    :cond_1
    return-void
.end method

.method public updateInCallActivity()V
    .locals 2

    .prologue
    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateInCallActivity()... call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 848
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTOutgoing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 850
    :cond_0
    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_OPEN:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->setVTScreenMode(Lcom/mediatek/incallui/vt/Constants$VTScreenMode;)V

    .line 863
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    if-eqz v0, :cond_2

    .line 865
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mAnswerFragment:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v0}, Lcom/android/incallui/AnswerFragment;->updateIncomingCallMenuButton()V

    .line 868
    :cond_2
    return-void

    .line 851
    :cond_3
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTActive()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->existNonVTCall()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 852
    const-string v0, "[updateInCallActivity]Existing non-VT Call while VT not active, should close VT_SCREEN"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->setVTScreenMode(Lcom/mediatek/incallui/vt/Constants$VTScreenMode;)V

    goto :goto_0

    .line 854
    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_5

    .line 855
    const-string v0, "[updateInCallActivity]InCallState.INCOMING, should close VT_SCREEN"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 856
    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->setVTScreenMode(Lcom/mediatek/incallui/vt/Constants$VTScreenMode;)V

    goto :goto_0

    .line 858
    :cond_5
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    if-eqz v0, :cond_1

    .line 859
    const-string v0, "keep current VT Screen Mode."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 860
    iget-object v0, p0, Lcom/android/incallui/InCallActivity;->mVTCallFragment:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getVTScreenMode()Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallActivity;->setVTScreenMode(Lcom/mediatek/incallui/vt/Constants$VTScreenMode;)V

    goto :goto_0
.end method
