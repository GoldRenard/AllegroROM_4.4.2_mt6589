.class public Lcom/mediatek/incallui/vt/VTCallFragment;
.super Lcom/android/incallui/BaseFragment;
.source "VTCallFragment.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;,
        Lcom/mediatek/incallui/vt/VTCallFragment$InCallVideoSettingLocalEffectListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/mediatek/incallui/vt/VTCallPresenter;",
        "Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;",
        ">;",
        "Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;",
        "Landroid/view/SurfaceHolder$Callback;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/PopupMenu$OnMenuItemClickListener;",
        "Landroid/widget/PopupMenu$OnDismissListener;",
        "Landroid/view/View$OnTouchListener;"
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final SECOND_TO_MILLISECOND:I = 0x3e8

.field private static final VDBG:Z = true

.field public static final VT_MSG_CLEAR_BG:I = 0x1001

.field private static final WAITING_TIME_FOR_ASK_VT_SHOW_ME:I = 0x5


# instance fields
.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mBkgBitmapHandler:Lcom/mediatek/incallui/vt/VTBackgroundBitmapHandler;

.field private mCallList:Lcom/android/incallui/CallList;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHighVideoHolder:Landroid/view/SurfaceHolder;

.field private mInCallVideoSettingDialog:Landroid/app/AlertDialog;

.field private mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

.field private mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

.field private mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

.field private mLocaleChanged:Z

.field private mLowVideoHolder:Landroid/view/SurfaceHolder;

.field private mNavigationBarHeight:I

.field private mRecHintTextView:Landroid/widget/TextView;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mStatusBarHeight:I

.field private mStorageSpaceDialog:Landroid/app/AlertDialog;

.field private mVTHighDown:Landroid/widget/ImageButton;

.field private mVTHighUp:Landroid/widget/ImageButton;

.field private mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

.field private mVTLowDown:Landroid/widget/ImageButton;

.field private mVTLowUp:Landroid/widget/ImageButton;

.field private mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

.field private mVTMTAskDialog:Landroid/app/AlertDialog;

.field mVTRecorderEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVTRecorderSelector:Landroid/app/AlertDialog;

.field private mVTScreenMode:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

.field private mVTVoiceReCallDialog:Landroid/app/AlertDialog;

.field private mVTVoiceRecordContainer:Landroid/view/ViewGroup;

.field private mVTVoiceRecordingIcon:Landroid/widget/ImageView;

.field private mVTWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mVtCallStateAndSimIndicate:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 136
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mCallList:Lcom/android/incallui/CallList;

    .line 148
    new-instance v0, Lcom/mediatek/incallui/vt/VTCallFragment$1;

    invoke-direct {v0, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$1;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mHandler:Landroid/os/Handler;

    .line 1803
    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTScreenMode:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/incallui/vt/VTCallFragment;)Lcom/mediatek/incallui/vt/VTSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mediatek/incallui/vt/VTCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/mediatek/incallui/vt/VTCallFragment;->makeVoiceReCall(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/mediatek/incallui/vt/VTCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/incallui/vt/VTCallFragment;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/incallui/vt/VTCallFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->showVTLocalZoom()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/incallui/vt/VTCallFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->showVTLocalBrightness()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/incallui/vt/VTCallFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->showVTLocalContrast()V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/incallui/vt/VTCallFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->onVTInCallVideoSettingLocalEffect()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/incallui/vt/VTCallFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->onVTInCallVideoSettingLocalNightMode()V

    return-void
.end method

.method static synthetic access$1900(Lcom/mediatek/incallui/vt/VTCallFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->onVTInCallVideoSettingPeerQuality()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/incallui/vt/VTCallFragment;)Lcom/mediatek/incallui/vt/VTSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderSelector:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/mediatek/incallui/vt/VTCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderSelector:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/mediatek/incallui/vt/VTCallFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/mediatek/incallui/vt/VTCallFragment;->startRecord(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mStorageSpaceDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/incallui/vt/VTCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/incallui/vt/VTCallFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->updateLocalZoomOrBrightness()V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mediatek/incallui/vt/VTCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mediatek/incallui/vt/VTCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTMTAskDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/incallui/vt/VTCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/incallui/vt/VTCallFragment;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTMTAskDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method private acquireVtWakeLock()V
    .locals 1

    .prologue
    .line 1684
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTOutgoing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1685
    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1686
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1687
    const-string v0, "acquire VT wake lock"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1690
    :cond_1
    return-void
.end method

.method private adjustLocalVT(Z)V
    .locals 1
    .param p1, "inc"    # Z

    .prologue
    .line 1222
    const-string v0, "onClick: adjustLocalVT()..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1224
    if-eqz p1, :cond_3

    .line 1225
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v0, :cond_1

    .line 1226
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->incZoom()V

    .line 1241
    :cond_0
    :goto_0
    return-void

    .line 1227
    :cond_1
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v0, :cond_2

    .line 1228
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->incBrightness()V

    goto :goto_0

    .line 1229
    :cond_2
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_0

    .line 1230
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->incContrast()V

    goto :goto_0

    .line 1233
    :cond_3
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v0, :cond_4

    .line 1234
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->decZoom()V

    goto :goto_0

    .line 1235
    :cond_4
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v0, :cond_5

    .line 1236
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->decBrightness()V

    goto :goto_0

    .line 1237
    :cond_5
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_0

    .line 1238
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->decContrast()V

    goto :goto_0
.end method

.method private dismissAudioModePopup()V
    .locals 1

    .prologue
    .line 933
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 935
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 936
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mAudioModePopupVisible:Z

    .line 938
    :cond_0
    return-void
.end method

.method private dismissVideoSettingDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 958
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 960
    iput-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 963
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 964
    iput-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    .line 966
    :cond_1
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 967
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 968
    iput-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    .line 970
    :cond_2
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 971
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 972
    iput-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    .line 974
    :cond_3
    return-void
.end method

.method private getVTInControlRes()Z
    .locals 1

    .prologue
    .line 644
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInControlRes:Z

    return v0
.end method

.method private handleStorageFull(Z)V
    .locals 3
    .param p1, "isForCheckingOrRecording"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1542
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getMountedStorageCount(Landroid/content/Context;)I

    move-result v1

    if-le v1, v2, :cond_3

    .line 1544
    const-string v1, "handleStorageFull(), mounted storage count > 1"

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1545
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getDefaultStorageType(Landroid/content/Context;)I

    move-result v1

    if-ne v2, v1, :cond_1

    .line 1547
    const-string v1, "handleStorageFull(), SD card is using"

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1548
    const v1, 0x20500dd

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->showStorageFullDialog(IZ)V

    .line 1575
    :cond_0
    :goto_0
    return-void

    .line 1549
    :cond_1
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getDefaultStorageType(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_2

    .line 1551
    const-string v1, "handleStorageFull(), phone storage is using"

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1552
    const v1, 0x20500db

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->showStorageFullDialog(IZ)V

    goto :goto_0

    .line 1555
    :cond_2
    const-string v1, "handleStorageFull(), never happen here"

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1557
    :cond_3
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getMountedStorageCount(Landroid/content/Context;)I

    move-result v1

    if-ne v2, v1, :cond_0

    .line 1558
    const-string v1, "handleStorageFull(), mounted storage count == 1"

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1559
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getDefaultStorageType(Landroid/content/Context;)I

    move-result v1

    if-ne v2, v1, :cond_6

    .line 1561
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStorageFull(), SD card is using, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_4

    const-string v1, "checking case"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1562
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1564
    .local v0, "toast":Ljava/lang/String;
    :goto_2
    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1561
    .end local v0    # "toast":Ljava/lang/String;
    :cond_4
    const-string v1, "recording case"

    goto :goto_1

    .line 1562
    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1565
    :cond_6
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getDefaultStorageType(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_7

    .line 1568
    const-string v1, "handleStorageFull(), phone storage is using"

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1569
    const v1, 0x20500dc

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->showStorageFullDialog(IZ)V

    goto :goto_0

    .line 1572
    :cond_7
    const-string v1, "handleStorageFull(), never happen here"

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private hideLocalZoomOrBrightness()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1842
    const-string v0, "hideLocalZoomOrBrightness()..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1845
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1846
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1847
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1848
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1849
    return-void
.end method

.method private hideLocalZoomOrBrightness(Z)V
    .locals 3
    .param p1, "resetSetting"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1345
    const-string v0, "hideLocalZoomOrBrightness()..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1348
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1349
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1350
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1351
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1353
    if-eqz p1, :cond_0

    .line 1354
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 1355
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 1356
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 1358
    :cond_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1407
    invoke-static {p0, p1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1408
    return-void
.end method

.method private makeVoiceReCall(Ljava/lang/String;I)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "slot"    # I

    .prologue
    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeVoiceReCall(), number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slot is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 831
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 832
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone.extra.slot"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 833
    const-string v1, "com.android.phone.extra.international"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 834
    const-string v1, "com.android.phone.extra.vt_make_voice_recall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 835
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 836
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 840
    return-void
.end method

.method private onVTInCallVideoSettingLocalEffect()V
    .locals 12

    .prologue
    .line 400
    const-string v10, "onVTInCallVideoSettingLocalEffect() ! "

    invoke-direct {p0, v10}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 402
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 403
    .local v7, "myBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x1040000

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/mediatek/incallui/vt/VTCallFragment$2;

    invoke-direct {v11, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$2;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    invoke-virtual {v7, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 412
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v9

    .line 414
    .local v9, "supportEntryValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_1

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f05001d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 420
    .local v3, "entryValues":[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f05001c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "entries":[Ljava/lang/CharSequence;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .local v4, "entryValues2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v2, "entries2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    array-length v6, v3

    .local v6, "len":I
    :goto_1
    if-ge v5, v6, :cond_3

    .line 426
    aget-object v10, v3, v5

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_2

    .line 427
    aget-object v10, v3, v5

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    aget-object v10, v1, v5

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 433
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onVTInCallVideoSettingLocalEffect() : entryValues2.size() - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getColorEffect()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 438
    .local v0, "currentValue":I
    new-instance v8, Lcom/mediatek/incallui/vt/VTCallFragment$InCallVideoSettingLocalEffectListener;

    invoke-direct {v8, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$InCallVideoSettingLocalEffectListener;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    .line 440
    .local v8, "myClickListener":Lcom/mediatek/incallui/vt/VTCallFragment$InCallVideoSettingLocalEffectListener;
    invoke-virtual {v8, v4}, Lcom/mediatek/incallui/vt/VTCallFragment$InCallVideoSettingLocalEffectListener;->setValues(Ljava/util/ArrayList;)V

    .line 441
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v10, v0, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 444
    const v10, 0x7f0a0022

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 445
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    .line 446
    iget-object v10, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method private onVTInCallVideoSettingLocalNightMode()V
    .locals 6

    .prologue
    const v5, 0x7f050020

    const/4 v4, 0x0

    .line 476
    const-string v2, "onVTInCallVideoSettingLocalNightMode() ! "

    invoke-direct {p0, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 479
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 480
    .local v0, "myBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mediatek/incallui/vt/VTCallFragment$3;

    invoke-direct {v3, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$3;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 489
    const v2, 0x7f0a0023

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 491
    new-instance v1, Lcom/mediatek/incallui/vt/VTCallFragment$4;

    invoke-direct {v1, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$4;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    .line 516
    .local v1, "myClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/incallui/vt/VTManagerLocal;->isSupportNightMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 517
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getNightMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    invoke-virtual {v0, v5, v4, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 539
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    .line 540
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 541
    return-void

    .line 522
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 527
    :cond_1
    const v2, 0x7f050021

    new-instance v3, Lcom/mediatek/incallui/vt/VTCallFragment$5;

    invoke-direct {v3, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$5;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    invoke-virtual {v0, v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private onVTInCallVideoSettingPeerQuality()V
    .locals 6

    .prologue
    const v5, 0x7f050022

    const/4 v4, 0x1

    .line 545
    const-string v2, "onVTInCallVideoSettingPeerQuality() ! "

    invoke-direct {p0, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 547
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 548
    .local v0, "myBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mediatek/incallui/vt/VTCallFragment$6;

    invoke-direct {v3, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$6;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 557
    const v2, 0x7f0a0024

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 559
    new-instance v1, Lcom/mediatek/incallui/vt/VTCallFragment$7;

    invoke-direct {v1, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$7;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    .line 584
    .local v1, "myClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getVideoQuality()I

    move-result v2

    if-ne v4, v2, :cond_0

    .line 585
    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 600
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    .line 601
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 602
    return-void

    .line 588
    :cond_0
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getVideoQuality()I

    move-result v2

    if-nez v2, :cond_1

    .line 589
    invoke-virtual {v0, v5, v4, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 594
    :cond_1
    const-string v2, "CallCommandClient.getInstance().getVideoQuality() is not VT_VQ_SHARP or VT_VQ_NORMAL , error ! "

    invoke-direct {p0, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onVoiceVideoRecordClick(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 1411
    const-string v1, "onVoiceVideoRecordClick"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1413
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1414
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1438
    :cond_0
    :goto_0
    return-void

    .line 1418
    :cond_1
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->isExternalStorageMounted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1419
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1424
    :cond_2
    const-wide/32 v1, 0x200000

    invoke-static {v1, v2}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->diskSpaceAvailable(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1425
    invoke-direct {p0, v4}, Lcom/mediatek/incallui/vt/VTCallFragment;->handleStorageFull(Z)V

    goto :goto_0

    .line 1429
    :cond_3
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0a006d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1430
    invoke-static {}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getRecorderState()I

    move-result v1

    if-nez v1, :cond_0

    .line 1431
    const-string v1, "startRecord"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1432
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->showStartVTRecorderDialog()V

    goto :goto_0

    .line 1434
    :cond_4
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0a006e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1435
    const-string v1, "stopRecord"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1436
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/mediatek/incallui/vt/VTCallPresenter;

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTCallPresenter;->stopRecording()V

    goto :goto_0
.end method

.method private releaseVtWakeLock()V
    .locals 1

    .prologue
    .line 1693
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1694
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1695
    const-string v0, "release VT wake lock"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1697
    :cond_0
    return-void
.end method

.method private setVTInControlRes(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 648
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean p1, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInControlRes:Z

    .line 649
    return-void
.end method

.method private showGenericErrorDialog(IZ)V
    .locals 1
    .param p1, "resid"    # I
    .param p2, "isStartupError"    # Z

    .prologue
    .line 797
    const-string v0, "showGenericErrorDialog "

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 799
    return-void
.end method

.method private showReCallDialogEx(ILjava/lang/String;I)V
    .locals 7
    .param p1, "resid"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "slot"    # I

    .prologue
    .line 860
    const-string v4, "showReCallDialogEx... "

    invoke-direct {p0, v4}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 863
    iget-object v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 864
    iget-object v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 924
    :goto_0
    return-void

    .line 868
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 872
    .local v3, "msg":Ljava/lang/CharSequence;
    new-instance v1, Lcom/mediatek/incallui/vt/VTCallFragment$11;

    invoke-direct {v1, p0, p2, p3}, Lcom/mediatek/incallui/vt/VTCallFragment$11;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;Ljava/lang/String;I)V

    .line 889
    .local v1, "clickListener1":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/mediatek/incallui/vt/VTCallFragment$12;

    invoke-direct {v2, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$12;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    .line 907
    .local v2, "clickListener2":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/mediatek/incallui/vt/VTCallFragment$13;

    invoke-direct {v0, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$13;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    .line 915
    .local v0, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x1040000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

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

    iput-object v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    .line 920
    iget-object v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 923
    iget-object v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private showStartVTRecorderDialog()V
    .locals 5

    .prologue
    .line 1441
    const-string v2, "showStartVTRecorderDialog() ..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1442
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1443
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0341

    new-instance v3, Lcom/mediatek/incallui/vt/VTCallFragment$17;

    invoke-direct {v3, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$17;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1452
    const v2, 0x7f0a0066

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1454
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderEntries:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 1455
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderEntries:Ljava/util/ArrayList;

    .line 1460
    :goto_0
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1462
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1464
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0069

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1467
    new-instance v1, Lcom/mediatek/incallui/vt/VTCallFragment$18;

    invoke-direct {v1, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$18;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    .line 1505
    .local v1, "myClickListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderEntries:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1509
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderSelector:Landroid/app/AlertDialog;

    .line 1510
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderSelector:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1511
    return-void

    .line 1457
    .end local v1    # "myClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1538
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1539
    return-void
.end method

.method private showVTLocalBrightness()V
    .locals 5

    .prologue
    const v4, 0x7f020100

    const v3, 0x7f0200ff

    const/4 v2, 0x0

    .line 1278
    const-string v0, "showVTLocalBrightness()..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1282
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->READY:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v1, :cond_0

    .line 1307
    :goto_0
    return-void

    .line 1287
    :cond_0
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 1288
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1289
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1290
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1291
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1292
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1293
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1303
    :goto_1
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 1304
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 1305
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 1295
    :cond_1
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1296
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1297
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1298
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1299
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1300
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method private showVTLocalContrast()V
    .locals 5

    .prologue
    const v4, 0x7f020102

    const v3, 0x7f020101

    const/4 v2, 0x0

    .line 1311
    const-string v0, "showVTLocalContrast()..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1315
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->READY:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v1, :cond_0

    .line 1340
    :goto_0
    return-void

    .line 1320
    :cond_0
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 1321
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1322
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1323
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1324
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1325
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1326
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1336
    :goto_1
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 1337
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 1338
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 1328
    :cond_1
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1329
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1330
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1331
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1332
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1333
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method private showVTLocalZoom()V
    .locals 5

    .prologue
    const v4, 0x7f020104

    const v3, 0x7f020103

    const/4 v2, 0x0

    .line 1245
    const-string v0, "showVTLocalZoom()..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1249
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->READY:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v1, :cond_0

    .line 1274
    :goto_0
    return-void

    .line 1254
    :cond_0
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 1255
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1256
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1257
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1258
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1259
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1260
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1270
    :goto_1
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 1271
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 1272
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 1262
    :cond_1
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1263
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1264
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1265
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1266
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1267
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method private startRecord(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    .line 1515
    const-string v2, "startVTRecorder() ..."

    invoke-direct {p0, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1518
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v2

    sget-object v3, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v2, v3, :cond_1

    .line 1519
    const-string v2, "startRecord: failed, state should be CONNECTED."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1535
    :cond_0
    :goto_0
    return-void

    .line 1523
    :cond_1
    invoke-static {}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getDiskAvailableSize()J

    move-result-wide v2

    const-wide/32 v4, 0x200000

    sub-long v0, v2, v4

    .line 1524
    .local v0, "sdMaxSize":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 1525
    const/4 v2, 0x2

    if-ne v2, p1, :cond_2

    .line 1526
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/mediatek/incallui/vt/VTCallPresenter;

    invoke-virtual {v2}, Lcom/mediatek/incallui/vt/VTCallPresenter;->startVoiceRecording()V

    goto :goto_0

    .line 1527
    :cond_2
    if-lez p1, :cond_0

    .line 1528
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/mediatek/incallui/vt/VTCallPresenter;

    invoke-virtual {v2, p1, v0, v1}, Lcom/mediatek/incallui/vt/VTCallPresenter;->startVtRecording(IJ)V

    goto :goto_0

    .line 1530
    :cond_3
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_4

    .line 1531
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 1533
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateLocalZoomOrBrightness()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1362
    const-string v0, "updateLocalZoomOrBrightness()..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1365
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-nez v0, :cond_1

    .line 1368
    const-string v0, "updateLocalZoomOrBrightness()... not in any operation, set related view gone."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1369
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1370
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1371
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1372
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1399
    :cond_0
    :goto_0
    return-void

    .line 1376
    :cond_1
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_4

    .line 1377
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v0, :cond_2

    .line 1378
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1379
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 1380
    :cond_2
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v0, :cond_3

    .line 1381
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1382
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 1383
    :cond_3
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_0

    .line 1384
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1385
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 1388
    :cond_4
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v0, :cond_5

    .line 1389
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1390
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1391
    :cond_5
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v0, :cond_6

    .line 1392
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1393
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1394
    :cond_6
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_0

    .line 1395
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canIncContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1396
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->canDecContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method private updatePeerVideoBkgDrawable()V
    .locals 3

    .prologue
    const/high16 v2, -0x1000000

    .line 1651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePeerVideoBkgDrawable()... mVTToReplacePeer / mVTPeerBigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTToReplacePeer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1655
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-eqz v0, :cond_0

    .line 1656
    const-string v0, "updatePeerVideoBkgDrawable()...Already receive first frame of VT Call, so do nothing here. "

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1681
    :goto_0
    return-void

    .line 1660
    :cond_0
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTToReplacePeer:Z

    if-eqz v0, :cond_3

    .line 1661
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTReplacePeerBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1662
    const-string v0, "updatePeerVideoBkgDrawable(): replace the peer video with drawable."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1663
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 1664
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTReplacePeerBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1666
    :cond_1
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTReplacePeerBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1670
    :cond_2
    const-string v0, "VTInCallScreenFlags.getInstance().mVTReplacePeerBitmap is null"

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1674
    :cond_3
    const-string v0, "updatePeerVideoBkgDrawable(): replace the peer video with BLACK color."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1675
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_4

    .line 1676
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 1678
    :cond_4
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private updateVTLocalPeerDisplay()V
    .locals 3

    .prologue
    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVTLocalPeerDisplay()...mVTPeerBigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 950
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_0

    .line 951
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/CallCommandClient;->setDisplay(Landroid/view/Surface;Landroid/view/Surface;)V

    .line 955
    :goto_0
    return-void

    .line 953
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/CallCommandClient;->setDisplay(Landroid/view/Surface;Landroid/view/Surface;)V

    goto :goto_0
.end method


# virtual methods
.method public amendVtLayout(I)V
    .locals 4
    .param p1, "callCardBottom"    # I

    .prologue
    const/4 v3, 0x1

    .line 1768
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/android/incallui/InCallActivity;->onFinishVtVideoLayout(IIII)V

    .line 1773
    return-void
.end method

.method public answerVTCallPre()V
    .locals 1

    .prologue
    .line 1852
    const-string v0, "answerVTCallPre()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1853
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->updatePeerVideoBkgDrawable()V

    .line 1857
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-eqz v0, :cond_0

    .line 1858
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_0

    .line 1859
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->updateVTLocalPeerDisplay()V

    .line 1860
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTUtils;->setVTVisible(Z)V

    .line 1863
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->updateVTScreen()V

    .line 1864
    return-void
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->createPresenter()Lcom/mediatek/incallui/vt/VTCallPresenter;

    move-result-object v0

    return-object v0
.end method

.method public createPresenter()Lcom/mediatek/incallui/vt/VTCallPresenter;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/mediatek/incallui/vt/VTCallPresenter;

    invoke-direct {v0}, Lcom/mediatek/incallui/vt/VTCallPresenter;-><init>()V

    return-object v0
.end method

.method public dialVTCallSuccess()V
    .locals 1

    .prologue
    .line 1867
    const-string v0, "dialVTCallSuccess()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1869
    return-void
.end method

.method public dismissVTDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 607
    const-string v0, "dismissVTDialogs() ! "

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 609
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 611
    iput-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 614
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 615
    iput-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 618
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 619
    iput-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    .line 621
    :cond_2
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 622
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 623
    iput-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    .line 625
    :cond_3
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTMTAskDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 626
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTMTAskDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 627
    iput-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTMTAskDialog:Landroid/app/AlertDialog;

    .line 629
    :cond_4
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 630
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 635
    iput-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    .line 637
    :cond_5
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderSelector:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 638
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderSelector:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 639
    iput-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTRecorderSelector:Landroid/app/AlertDialog;

    .line 641
    :cond_6
    return-void
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getUi()Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/mediatek/incallui/vt/VTCallPresenter$VTCallUi;
    .locals 0

    .prologue
    .line 101
    return-object p0
.end method

.method public getVTScreenMode()Lcom/mediatek/incallui/vt/Constants$VTScreenMode;
    .locals 1

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTScreenMode:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    return-object v0
.end method

.method public handleVTMenuClick(Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 1002
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1022
    :pswitch_0
    const-string v0, "This is not VT menu item."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1024
    :goto_0
    return-void

    .line 1004
    :pswitch_1
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->onVTSwitchCameraClick()V

    goto :goto_0

    .line 1007
    :pswitch_2
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->onVTTakePeerPhotoClick()V

    goto :goto_0

    .line 1010
    :pswitch_3
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->onVTHideMeClick()V

    goto :goto_0

    .line 1013
    :pswitch_4
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->onVTSwapVideoClick()V

    goto :goto_0

    .line 1016
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/mediatek/incallui/vt/VTCallFragment;->onVoiceVideoRecordClick(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 1019
    :pswitch_6
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->onVTShowSettingClick()V

    goto :goto_0

    .line 1002
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600ce
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 181
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    .line 184
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 185
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 186
    .local v0, "call":Lcom/android/services/telephony/common/Call;
    iget-object v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 187
    .local v3, "pw":Landroid/os/PowerManager;
    const v4, 0x2000000a

    const-string v5, "VTWakeLock"

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 190
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/mediatek/incallui/vt/VTCallPresenter;

    invoke-virtual {v4, v0}, Lcom/mediatek/incallui/vt/VTCallPresenter;->init(Lcom/android/services/telephony/common/Call;)V

    .line 193
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mStatusBarHeight:I

    .line 195
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105000d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mNavigationBarHeight:I

    .line 197
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 198
    .local v2, "point":Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 199
    iget v4, v2, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mScreenHeight:I

    .line 200
    iget v4, v2, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mScreenWidth:I

    .line 202
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 777
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 779
    .local v0, "id":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 781
    packed-switch v0, :pswitch_data_0

    .line 794
    :goto_0
    :pswitch_0
    return-void

    .line 784
    :pswitch_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->adjustLocalVT(Z)V

    goto :goto_0

    .line 788
    :pswitch_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->adjustLocalVT(Z)V

    goto :goto_0

    .line 781
    :pswitch_data_0
    .packed-switch 0x7f060089
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 308
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 309
    const v0, 0x7f0d0004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 310
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 206
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 207
    const v0, 0x7f03000f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onDismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 944
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mAudioModePopupVisible:Z

    .line 945
    return-void
.end method

.method public onFinishLayoutAmend()V
    .locals 2

    .prologue
    .line 1776
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1777
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 998
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 813
    const-string v0, "onStart"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 814
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 816
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTOutgoing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 817
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->updatePeerVideoBkgDrawable()V

    .line 822
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->acquireVtWakeLock()V

    .line 824
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 802
    const-string v0, "onStop"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 803
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 804
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->dismissAudioModePopup()V

    .line 807
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->releaseVtWakeLock()V

    .line 809
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 978
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/ext/ExtensionManager;->getVTCallExtension()Lcom/mediatek/incallui/ext/VTCallExtension;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    invoke-virtual {v0, p1, p2, v1}, Lcom/mediatek/incallui/ext/VTCallExtension;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 993
    :goto_0
    return v2

    .line 983
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 986
    :pswitch_0
    const-string v0, "MotionEvent.ACTION_DOWN"

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 988
    invoke-direct {p0, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->hideLocalZoomOrBrightness(Z)V

    goto :goto_0

    .line 983
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onVTHideMeClick()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1067
    const-string v0, "onVTHideMeClick()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1069
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v2, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->READY:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v2, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v2, :cond_0

    .line 1071
    const-string v0, "onVTHideMeClick: failed, state should be READY or CONNECTED."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1078
    :goto_0
    return-void

    .line 1075
    :cond_0
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    .line 1076
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCommandClient;->hideLocal(Z)V

    .line 1077
    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->hideLocalZoomOrBrightness(Z)V

    goto :goto_0

    .line 1075
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onVTReady()V
    .locals 3

    .prologue
    .line 672
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->isDMLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 674
    const-string v0, "Now DM locked, just return"

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 678
    :cond_1
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->unlockPeerVideo()V

    .line 680
    const-string v0, "Now DM not locked, VTManager.getInstance().unlockPeerVideo();"

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/vt/VTCallPresenter;

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTCallPresenter;->isIncomingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTShowLocalMT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 686
    const-string v0, "- VTSettingUtils.getInstance().mShowLocalMT : 1 !"

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 688
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mediatek/incallui/vt/VTCallFragment$10;

    invoke-direct {v2, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$10;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mediatek/incallui/vt/VTCallFragment$9;

    invoke-direct {v2, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$9;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/incallui/vt/VTCallFragment$8;

    invoke-direct {v1, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$8;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTMTAskDialog:Landroid/app/AlertDialog;

    .line 737
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTMTAskDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 739
    new-instance v0, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTMTAskDialog:Landroid/app/AlertDialog;

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;ILandroid/app/AlertDialog;)V

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTCallFragment$DialogCancelTimer;->start()V

    goto/16 :goto_0
.end method

.method public onVTReceiveFirstFrame()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVTReceiveFirstFrame()...  mVTPeerBigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 655
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onVTShowSettingClick()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const v5, 0x7f05001e

    const v4, 0x7f0a001f

    .line 1112
    const-string v2, "onVTInCallVideoSetting() ! "

    invoke-direct {p0, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1114
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v2

    sget-object v3, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v2, v3, :cond_0

    .line 1115
    const-string v2, "onVTShowSettingClick: failed, state should be CONNECTED."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1218
    :goto_0
    return-void

    .line 1119
    :cond_0
    new-instance v1, Lcom/mediatek/incallui/vt/VTCallFragment$14;

    invoke-direct {v1, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$14;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    .line 1179
    .local v1, "myClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1180
    .local v0, "myBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0a0341

    new-instance v3, Lcom/mediatek/incallui/vt/VTCallFragment$15;

    invoke-direct {v3, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$15;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1189
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-nez v2, :cond_4

    .line 1190
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v2, :cond_1

    .line 1191
    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1215
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    .line 1216
    iget-object v2, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 1193
    :cond_1
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v2, :cond_2

    .line 1194
    const/4 v2, 0x1

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1196
    :cond_2
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v2, :cond_3

    .line 1197
    const/4 v2, 0x2

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1200
    :cond_3
    invoke-virtual {v0, v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 1204
    :cond_4
    const v2, 0x7f05001f

    new-instance v3, Lcom/mediatek/incallui/vt/VTCallFragment$16;

    invoke-direct {v3, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$16;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    invoke-virtual {v0, v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method public onVTSwapVideoClick()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1081
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v3, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v3, :cond_2

    .line 1083
    :cond_0
    const-string v0, "onVTSwapVideoClick: failed, peer video is unvisiable now."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1109
    :cond_1
    :goto_0
    return-void

    .line 1088
    :cond_2
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-nez v0, :cond_3

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_4

    .line 1091
    :cond_3
    invoke-direct {p0, v2}, Lcom/mediatek/incallui/vt/VTCallFragment;->hideLocalZoomOrBrightness(Z)V

    .line 1094
    :cond_4
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-nez v0, :cond_7

    move v0, v1

    :goto_1
    iput-boolean v0, v3, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    .line 1096
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCommandClient;->setVTVisible(Z)V

    .line 1097
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->updateVTLocalPeerDisplay()V

    .line 1098
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->setVTVisible(Z)V

    .line 1100
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v0, :cond_5

    .line 1101
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->showVTLocalZoom()V

    .line 1103
    :cond_5
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v0, :cond_6

    .line 1104
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->showVTLocalBrightness()V

    .line 1106
    :cond_6
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_1

    .line 1107
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->showVTLocalContrast()V

    goto :goto_0

    :cond_7
    move v0, v2

    .line 1094
    goto :goto_1
.end method

.method public onVTSwitchCameraClick()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1027
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v2, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->READY:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v2, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v2, :cond_0

    .line 1029
    const-string v0, "onVTSwitchCameraClick: failed, state should be READY or CONNECTED."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1046
    :goto_0
    return-void

    .line 1033
    :cond_0
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInSwitchCamera:Z

    if-eqz v0, :cond_1

    .line 1034
    const-string v0, "VTManager is handling switchcamera now, so returns this time."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1039
    :cond_1
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInSwitchCamera:Z

    .line 1040
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->switchCamera()V

    .line 1042
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTFrontCameraNow:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, v2, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTFrontCameraNow:Z

    .line 1045
    invoke-direct {p0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->hideLocalZoomOrBrightness(Z)V

    goto :goto_0

    .line 1042
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onVTTakePeerPhotoClick()V
    .locals 2

    .prologue
    .line 1049
    const-string v0, "onVTTakePeerPhotoClick()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1051
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-eq v0, v1, :cond_1

    .line 1053
    :cond_0
    const-string v0, "onVTTakePeerPhotoClick: failed, peer video is unvisiable now."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1064
    :goto_0
    return-void

    .line 1057
    :cond_1
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInSnapshot:Z

    if-eqz v0, :cond_2

    .line 1058
    const-string v0, "onVTTakePeerPhotoClick: failed, VTManager is handling snapshot now."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1062
    :cond_2
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTInSnapshot:Z

    .line 1063
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->savePeerPhoto()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 212
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 213
    const-string v0, "onViewCreated()..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 215
    const v0, 0x7f060088

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/vt/VTSurfaceView;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    .line 216
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 217
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 219
    const v0, 0x7f06008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/incallui/vt/VTSurfaceView;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    .line 220
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 221
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 223
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    .line 227
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    .line 229
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 230
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 233
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 235
    const v0, 0x7f060089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    .line 236
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 237
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    const v0, 0x7f06008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    .line 241
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 242
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    const v0, 0x7f060090

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    .line 246
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 247
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 250
    const v0, 0x7f060091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    .line 251
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 252
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    const v0, 0x7f06008b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceRecordContainer:Landroid/view/ViewGroup;

    .line 256
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceRecordContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 258
    const v0, 0x7f06008d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mRecHintTextView:Landroid/widget/TextView;

    .line 259
    const v0, 0x7f06008c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    .line 260
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 261
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 262
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200ec

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 281
    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTIdle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 285
    :cond_0
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/ext/ExtensionManager;->getVTCallExtension()Lcom/mediatek/incallui/ext/VTCallExtension;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallCommandClient;->getService()Lcom/android/services/telephony/common/ICallCommandService;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/mediatek/incallui/ext/VTCallExtension;->onViewCreated(Landroid/content/Context;Landroid/view/View;Landroid/view/View$OnTouchListener;Lcom/android/services/telephony/common/ICallCommandService;)V

    .line 287
    return-void
.end method

.method public openVTCallFragment()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1788
    const-string v0, "openVTInCallCanvas!"

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1791
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1793
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    if-eqz v0, :cond_0

    .line 1794
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1797
    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    if-eqz v0, :cond_1

    .line 1798
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1801
    :cond_1
    return-void
.end method

.method public setVTScreenMode(Lcom/mediatek/incallui/vt/Constants$VTScreenMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    .prologue
    .line 1810
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

    .line 1812
    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getVTScreenMode()Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    if-eq v0, p1, :cond_0

    .line 1814
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->openVTCallFragment()V

    .line 1815
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->acquireVtWakeLock()V

    .line 1818
    :cond_0
    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getVTScreenMode()Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    if-ne v0, p1, :cond_1

    .line 1820
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1821
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->releaseVtWakeLock()V

    .line 1823
    :cond_1
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTScreenMode:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    .line 1824
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1780
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 1781
    .local v0, "visible":I
    :goto_0
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTHighVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1782
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTLowVideo:Lcom/mediatek/incallui/vt/VTSurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 1783
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1784
    return-void

    .line 1780
    .end local v0    # "visible":I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public showReCallDialog(ILjava/lang/String;I)V
    .locals 1
    .param p1, "resid"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "slot"    # I

    .prologue
    .line 846
    const-string v0, "showReCallDialog... "

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 854
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/incallui/vt/VTCallFragment;->showReCallDialogEx(ILjava/lang/String;I)V

    .line 856
    return-void
.end method

.method public showRecord(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1873
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 1874
    if-eqz p1, :cond_1

    .line 1875
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->startRecord()V

    .line 1880
    :cond_0
    :goto_0
    return-void

    .line 1877
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->stopRecord()V

    goto :goto_0
.end method

.method public showStorageFullDialog(IZ)V
    .locals 9
    .param p1, "resid"    # I
    .param p2, "isSDCardExist"    # Z

    .prologue
    .line 1581
    const-string v6, "showStorageDialog... "

    invoke-direct {p0, v6}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 1584
    iget-object v6, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mStorageSpaceDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 1585
    iget-object v6, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mStorageSpaceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1641
    :goto_0
    return-void

    .line 1589
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1592
    .local v4, "msg":Ljava/lang/CharSequence;
    const/4 v5, 0x0

    .line 1593
    .local v5, "oKClickListener":Landroid/content/DialogInterface$OnClickListener;
    const/4 v1, 0x0

    .line 1594
    .local v1, "cancelClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/mediatek/incallui/vt/VTCallFragment$19;

    invoke-direct {v2, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$19;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    .line 1599
    .local v2, "cancelListener":Landroid/content/DialogInterface$OnCancelListener;
    if-eqz p2, :cond_1

    .line 1600
    new-instance v5, Lcom/mediatek/incallui/vt/VTCallFragment$20;

    .end local v5    # "oKClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v5, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$20;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    .line 1615
    .restart local v5    # "oKClickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_1
    new-instance v1, Lcom/mediatek/incallui/vt/VTCallFragment$21;

    .end local v1    # "cancelClickListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v1, p0}, Lcom/mediatek/incallui/vt/VTCallFragment$21;-><init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V

    .line 1626
    .restart local v1    # "cancelClickListener":Landroid/content/DialogInterface$OnClickListener;
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a02da

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1628
    .local v0, "cancelButtonText":Ljava/lang/CharSequence;
    :goto_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1080027

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0073

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 1633
    .local v3, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_2

    .line 1634
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a003a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1638
    :cond_2
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mStorageSpaceDialog:Landroid/app/AlertDialog;

    .line 1639
    iget-object v6, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mStorageSpaceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 1640
    iget-object v6, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mStorageSpaceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 1626
    .end local v0    # "cancelButtonText":Ljava/lang/CharSequence;
    .end local v3    # "dialogBuilder":Landroid/app/AlertDialog$Builder;
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0158

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 314
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    .line 315
    const-string v0, "surfaceChanged : HighVideo"

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_1

    .line 320
    const-string v0, "surfaceChanged : LowVideo"

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 321
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    .line 323
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 325
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-eqz v0, :cond_2

    .line 327
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->setVTVisible(Z)V

    .line 329
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->updateVTLocalPeerDisplay()V

    .line 331
    const-string v0, "surfaceChanged : CallCommandClient.getInstance().setVTVisible(true) start ..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCommandClient;->setVTVisible(Z)V

    .line 333
    const-string v0, "surfaceChanged : CallCommandClient.getInstance().setVTVisible(true) end ..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 334
    const-string v0, "- set CallCommandClient ready ! "

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->setVTReady()V

    .line 336
    const-string v0, "- finish set CallCommandClient ready ! "

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 352
    :cond_2
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceCreated : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceDestroyed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    .line 368
    const-string v0, "surfaceDestroyed : HighVideo, set mVTSurfaceChangedH = false"

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_1

    .line 376
    const-string v0, "surfaceDestroyed : LowVideo, set mVTSurfaceChangedL = false"

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 379
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    .line 382
    :cond_1
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-nez v0, :cond_2

    .line 385
    const-string v0, "surfaceDestroyed : CallCommandClient.getInstance().setVTVisible(false) start ..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 388
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallCommandClient;->setVTVisible(Z)V

    .line 390
    const-string v0, "surfaceDestroyed :CallCommandClient.getInstance().setVTVisible(false) end ..."

    invoke-direct {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->log(Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/android/incallui/CallCommandClient;->setDisplay(Landroid/view/Surface;Landroid/view/Surface;)V

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 396
    return-void
.end method

.method public updateRecord(Ljava/lang/String;)V
    .locals 2
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 1883
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mRecHintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1884
    iget-object v1, p0, Lcom/mediatek/incallui/vt/VTCallFragment;->mVTVoiceRecordContainer:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1885
    return-void

    .line 1884
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateVTScreen()V
    .locals 1

    .prologue
    .line 1403
    invoke-virtual {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->getVTScreenMode()Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->updateVTScreen(Lcom/mediatek/incallui/vt/Constants$VTScreenMode;)V

    .line 1404
    return-void
.end method

.method public updateVTScreen(Lcom/mediatek/incallui/vt/Constants$VTScreenMode;)V
    .locals 2
    .param p1, "mode"    # Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    .prologue
    .line 1827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVTScreen()... mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1828
    sget-object v0, Lcom/mediatek/incallui/vt/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/mediatek/incallui/vt/Constants$VTScreenMode;

    if-ne v0, p1, :cond_1

    .line 1838
    :cond_0
    :goto_0
    return-void

    .line 1831
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->updateLocalZoomOrBrightness()V

    .line 1833
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->isDMLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1834
    invoke-direct {p0}, Lcom/mediatek/incallui/vt/VTCallFragment;->hideLocalZoomOrBrightness()V

    goto :goto_0
.end method
