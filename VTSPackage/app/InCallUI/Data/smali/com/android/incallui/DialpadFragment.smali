.class public Lcom/android/incallui/DialpadFragment;
.super Lcom/android/incallui/BaseFragment;
.source "DialpadFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnHoverListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/incallui/DialpadPresenter$DialpadUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/DialpadFragment$1;,
        Lcom/android/incallui/DialpadFragment$DTMFKeyListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/DialpadPresenter;",
        "Lcom/android/incallui/DialpadPresenter$DialpadUi;",
        ">;",
        "Lcom/android/incallui/DialpadPresenter$DialpadUi;",
        "Landroid/view/View$OnTouchListener;",
        "Landroid/view/View$OnKeyListener;",
        "Landroid/view/View$OnHoverListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/PopupMenu$OnMenuItemClickListener;",
        "Landroid/widget/PopupMenu$OnDismissListener;"
    }
.end annotation


# static fields
.field public static final SU_THEMES_23_DTMF_DIAL_NUM_1:Ljava/lang/String; = "dial_num_1_no_vm"

.field public static final SU_THEMES_24_DTMF_DIAL_NUM_2:Ljava/lang/String; = "dial_num_2"

.field public static final SU_THEMES_25_DTMF_DIAL_NUM_3:Ljava/lang/String; = "dial_num_3"

.field public static final SU_THEMES_26_DTMF_DIAL_NUM_4:Ljava/lang/String; = "dial_num_4"

.field public static final SU_THEMES_27_DTMF_DIAL_NUM_5:Ljava/lang/String; = "dial_num_5"

.field public static final SU_THEMES_28_DTMF_DIAL_NUM_6:Ljava/lang/String; = "dial_num_6"

.field public static final SU_THEMES_29_DTMF_DIAL_NUM_7:Ljava/lang/String; = "dial_num_7"

.field public static final SU_THEMES_30_DTMF_DIAL_NUM_8:Ljava/lang/String; = "dial_num_8"

.field public static final SU_THEMES_31_DTMF_DIAL_NUM_9:Ljava/lang/String; = "dial_num_9"

.field public static final SU_THEMES_32_DTMF_DIAL_NUM_POUND:Ljava/lang/String; = "dial_num_pound"

.field public static final SU_THEMES_33_DTMF_DIAL_NUM_STAR:Ljava/lang/String; = "dial_num_star"

.field public static final SU_THEMES_34_DTMF_DIAL_BACKGROUND:Ljava/lang/String; = "dialpad_button_background"

.field public static final SU_THEMES_35_DTMF_DIAL_NUM_0:Ljava/lang/String; = "dial_num_0_no_plus"

.field public static final SU_THEMES_36_DTMF_HIDEPAD:Ljava/lang/String; = "ic_dtmf_hidepad"

.field public static final SU_THEMES_37_DTMF_HIDEPAD_BACKGROUND:Ljava/lang/String; = "hidepad_background"

.field private static final mDisplayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAudioButton:Landroid/widget/ToggleButton;

.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

.field private mDtmfDialerField:Landroid/widget/EditText;

.field private mDtmfEndCall:Landroid/widget/ImageButton;

.field private mEightButton:Landroid/widget/ImageButton;

.field private mEndDialpadContainer:Landroid/view/ViewGroup;

.field private mFiveButton:Landroid/widget/ImageButton;

.field private mFourButton:Landroid/widget/ImageButton;

.field private mHideDialpad:Landroid/widget/ImageButton;

.field private mNineButton:Landroid/widget/ImageButton;

.field private mOneButton:Landroid/widget/ImageButton;

.field private mPoundButton:Landroid/widget/ImageButton;

.field private mSevenButton:Landroid/widget/ImageButton;

.field private mSixButton:Landroid/widget/ImageButton;

.field private mStarButton:Landroid/widget/ImageButton;

.field private mThreeButton:Landroid/widget/ImageButton;

.field private mTwoButton:Landroid/widget/ImageButton;

.field private mZeroButton:Landroid/widget/ImageButton;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    .line 59
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f060037

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x31

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f060038

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f060039

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f06003a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f06003b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f06003c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f06003d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f06003e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f06003f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f060041

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f060042

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f060040

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x2a

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 124
    return-void
.end method

.method private clearDigits()V
    .locals 2

    .prologue
    .line 868
    const-string v0, "clearDigits()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    :cond_0
    return-void
.end method

.method private isAudio(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 817
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadPresenter;->getAudioMode()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSupported(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadPresenter;->getSupportedAudio()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupKeypad(Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 545
    sget-object v3, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 547
    .local v2, "viewId":I
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 549
    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 550
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 551
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 552
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 553
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 555
    .end local v0    # "button":Landroid/view/View;
    .end local v2    # "viewId":I
    :cond_0
    return-void
.end method

.method private showAudioModePopup()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 765
    const-string v6, "showAudioPopup()..."

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    new-instance v6, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/incallui/DialpadFragment;->mAudioButton:Landroid/widget/ToggleButton;

    invoke-direct {v6, v9, v10}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v6, p0, Lcom/android/incallui/DialpadFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 768
    iget-object v6, p0, Lcom/android/incallui/DialpadFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v6}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    const/high16 v9, 0x7f0d0000

    iget-object v10, p0, Lcom/android/incallui/DialpadFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v10}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 770
    iget-object v6, p0, Lcom/android/incallui/DialpadFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v6, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 771
    iget-object v6, p0, Lcom/android/incallui/DialpadFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v6, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 773
    iget-object v6, p0, Lcom/android/incallui/DialpadFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v6}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 780
    .local v2, "menu":Landroid/view/Menu;
    const v6, 0x7f0600c6

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 781
    .local v3, "speakerItem":Landroid/view/MenuItem;
    sget v6, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-direct {p0, v6}, Lcom/android/incallui/DialpadFragment;->isSupported(I)Z

    move-result v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 787
    const v6, 0x7f0600c7

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 788
    .local v1, "earpieceItem":Landroid/view/MenuItem;
    const v6, 0x7f0600c8

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 790
    .local v5, "wiredHeadsetItem":Landroid/view/MenuItem;
    sget v6, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    invoke-direct {p0, v6}, Lcom/android/incallui/DialpadFragment;->isSupported(I)Z

    move-result v4

    .line 791
    .local v4, "usingHeadset":Z
    if-nez v4, :cond_1

    move v6, v7

    :goto_0
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 792
    if-nez v4, :cond_0

    move v8, v7

    :cond_0
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 793
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 794
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 799
    const v6, 0x7f0600c9

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 800
    .local v0, "bluetoothItem":Landroid/view/MenuItem;
    sget v6, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-direct {p0, v6}, Lcom/android/incallui/DialpadFragment;->isSupported(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 804
    iget-object v6, p0, Lcom/android/incallui/DialpadFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v6}, Landroid/widget/PopupMenu;->show()V

    .line 809
    iput-boolean v7, p0, Lcom/android/incallui/DialpadFragment;->mAudioModePopupVisible:Z

    .line 810
    return-void

    .end local v0    # "bluetoothItem":Landroid/view/MenuItem;
    :cond_1
    move v6, v8

    .line 791
    goto :goto_0
.end method

.method private updateAudioButtons(I)V
    .locals 20
    .param p1, "supportedModes"    # I

    .prologue
    .line 603
    sget v17, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/incallui/DialpadFragment;->isSupported(I)Z

    move-result v6

    .line 604
    .local v6, "bluetoothSupported":Z
    sget v17, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/incallui/DialpadFragment;->isSupported(I)Z

    move-result v16

    .line 606
    .local v16, "speakerSupported":Z
    const/4 v5, 0x0

    .line 607
    .local v5, "audioButtonEnabled":Z
    const/4 v4, 0x0

    .line 608
    .local v4, "audioButtonChecked":Z
    const/4 v12, 0x0

    .line 610
    .local v12, "showMoreIndicator":Z
    const/4 v10, 0x0

    .line 611
    .local v10, "showBluetoothIcon":Z
    const/4 v14, 0x0

    .line 612
    .local v14, "showSpeakerphoneOnIcon":Z
    const/4 v13, 0x0

    .line 613
    .local v13, "showSpeakerphoneOffIcon":Z
    const/4 v11, 0x0

    .line 615
    .local v11, "showHandsetIcon":Z
    const/4 v15, 0x0

    .line 617
    .local v15, "showToggleIndicator":Z
    if-eqz v6, :cond_3

    .line 618
    const-string v17, "updateAudioButtons - popup menu mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 620
    const/4 v5, 0x1

    .line 621
    const/4 v12, 0x1

    .line 627
    sget v17, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/incallui/DialpadFragment;->isAudio(I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 628
    const/4 v10, 0x1

    .line 667
    :goto_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "audioButtonEnabled: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 668
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "audioButtonChecked: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 669
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "showMoreIndicator: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 670
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "showBluetoothIcon: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 671
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "showSpeakerphoneOnIcon: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "showSpeakerphoneOffIcon: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 673
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "showHandsetIcon: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 676
    const/4 v2, 0x0

    .line 677
    .local v2, "HIDDEN":I
    const/16 v3, 0xff

    .line 679
    .local v3, "VISIBLE":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mAudioButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mAudioButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mAudioButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 684
    .local v8, "drawables":[Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x1

    aget-object v9, v8, v17

    check-cast v9, Landroid/graphics/drawable/LayerDrawable;

    .line 685
    .local v9, "layers":Landroid/graphics/drawable/LayerDrawable;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "\'layers\' drawable: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mAudioButton:Landroid/widget/ToggleButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 708
    if-nez v9, :cond_6

    .line 763
    :cond_0
    :goto_1
    return-void

    .line 629
    .end local v2    # "HIDDEN":I
    .end local v3    # "VISIBLE":I
    .end local v8    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v9    # "layers":Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    sget v17, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/incallui/DialpadFragment;->isAudio(I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 630
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 632
    :cond_2
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 638
    :cond_3
    if-eqz v16, :cond_5

    .line 639
    const-string v17, "updateAudioButtons - speaker toggle mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    const/4 v5, 0x1

    .line 645
    sget v17, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/incallui/DialpadFragment;->isAudio(I)Z

    move-result v4

    .line 648
    const/4 v15, 0x1

    .line 650
    sget v17, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/incallui/DialpadFragment;->isAudio(I)Z

    move-result v14

    .line 651
    if-nez v14, :cond_4

    const/4 v13, 0x1

    :goto_2
    goto/16 :goto_0

    :cond_4
    const/4 v13, 0x0

    goto :goto_2

    .line 653
    :cond_5
    const-string v17, "updateAudioButtons - disabled..."

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 657
    const/4 v5, 0x0

    .line 658
    const/4 v4, 0x0

    .line 661
    const/4 v15, 0x1

    .line 662
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 712
    .restart local v2    # "HIDDEN":I
    .restart local v3    # "VISIBLE":I
    .restart local v8    # "drawables":[Landroid/graphics/drawable/Drawable;
    .restart local v9    # "layers":Landroid/graphics/drawable/LayerDrawable;
    :cond_6
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v17

    const-string v18, "bluetoothItem"

    const v19, 0x7f0600bf

    invoke-virtual/range {v17 .. v19}, Lcom/android/incallui/InCallPresenter;->getThemeResourceId(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 715
    .local v7, "d":Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_7

    .line 716
    const v17, 0x7f0600bf

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 718
    :cond_7
    if-eqz v7, :cond_8

    .line 719
    if-eqz v10, :cond_10

    const/16 v17, 0xff

    :goto_3
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 722
    :cond_8
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v17

    const-string v18, "handsetItem"

    const v19, 0x7f0600c0

    invoke-virtual/range {v17 .. v19}, Lcom/android/incallui/InCallPresenter;->getThemeResourceId(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 725
    if-nez v7, :cond_9

    .line 726
    const v17, 0x7f0600c0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 728
    :cond_9
    if-eqz v7, :cond_a

    .line 729
    if-eqz v11, :cond_11

    const/16 v17, 0xff

    :goto_4
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 732
    :cond_a
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v17

    const-string v18, "speakerphoneOnItem"

    const v19, 0x7f0600c1

    invoke-virtual/range {v17 .. v19}, Lcom/android/incallui/InCallPresenter;->getThemeResourceId(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 735
    if-nez v7, :cond_b

    .line 736
    const v17, 0x7f0600c1

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 738
    :cond_b
    if-eqz v7, :cond_c

    .line 739
    if-eqz v14, :cond_12

    const/16 v17, 0xff

    :goto_5
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 742
    :cond_c
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v17

    const-string v18, "speakerphoneOffItem"

    const v19, 0x7f0600c2

    invoke-virtual/range {v17 .. v19}, Lcom/android/incallui/InCallPresenter;->getThemeResourceId(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 745
    if-nez v7, :cond_d

    .line 746
    const v17, 0x7f0600c2

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 748
    :cond_d
    if-eqz v7, :cond_e

    .line 749
    if-eqz v13, :cond_13

    const/16 v17, 0xff

    :goto_6
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 752
    :cond_e
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v17

    const-string v18, "soundDisableItem"

    const v19, 0x7f0600c3

    invoke-virtual/range {v17 .. v19}, Lcom/android/incallui/InCallPresenter;->getThemeResourceId(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 755
    if-nez v7, :cond_f

    .line 756
    const v17, 0x7f0600c3

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 758
    :cond_f
    if-eqz v7, :cond_0

    .line 759
    if-nez v5, :cond_14

    const/16 v17, 0xff

    :goto_7
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/16 :goto_1

    .line 719
    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 729
    :cond_11
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 739
    :cond_12
    const/16 v17, 0x0

    goto :goto_5

    .line 749
    :cond_13
    const/16 v17, 0x0

    goto :goto_6

    .line 759
    :cond_14
    const/16 v17, 0x0

    goto :goto_7
.end method


# virtual methods
.method public appendDigitsToField(C)V
    .locals 1
    .param p1, "digit"    # C

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 513
    :cond_0
    return-void
.end method

.method public applyPhoneTheme()V
    .locals 40

    .prologue
    .line 881
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v26

    .line 882
    .local v26, "incallpresenter":Lcom/android/incallui/InCallPresenter;
    const-string v36, "dialpad_button_background"

    const v37, 0x7f02003e

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 884
    .local v28, "oneBkg":Landroid/graphics/drawable/Drawable;
    const-string v36, "dialpad_button_background"

    const v37, 0x7f02003e

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v34

    .line 886
    .local v34, "twoBkg":Landroid/graphics/drawable/Drawable;
    const-string v36, "dialpad_button_background"

    const v37, 0x7f02003e

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    .line 888
    .local v33, "threeBkg":Landroid/graphics/drawable/Drawable;
    const-string v36, "dialpad_button_background"

    const v37, 0x7f02003e

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    .line 890
    .local v25, "fourBkg":Landroid/graphics/drawable/Drawable;
    const-string v36, "dialpad_button_background"

    const v37, 0x7f02003e

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 892
    .local v24, "fiveBkg":Landroid/graphics/drawable/Drawable;
    const-string v36, "dialpad_button_background"

    const v37, 0x7f02003e

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    .line 894
    .local v31, "sixBkg":Landroid/graphics/drawable/Drawable;
    const-string v36, "dialpad_button_background"

    const v37, 0x7f02003e

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    .line 896
    .local v30, "sevenBkg":Landroid/graphics/drawable/Drawable;
    const-string v36, "dialpad_button_background"

    const v37, 0x7f02003e

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 898
    .local v23, "eightBkg":Landroid/graphics/drawable/Drawable;
    const-string v36, "dialpad_button_background"

    const v37, 0x7f02003e

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    .line 900
    .local v27, "nineBkg":Landroid/graphics/drawable/Drawable;
    const-string v36, "dialpad_button_background"

    const v37, 0x7f02003e

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    .line 902
    .local v35, "zeroBkg":Landroid/graphics/drawable/Drawable;
    const-string v36, "dialpad_button_background"

    const v37, 0x7f02003e

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    .line 904
    .local v32, "starBkg":Landroid/graphics/drawable/Drawable;
    const-string v36, "dialpad_button_background"

    const v37, 0x7f02003e

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 907
    .local v29, "poundBkg":Landroid/graphics/drawable/Drawable;
    const-string v36, "dial_num_1_no_vm"

    const v37, 0x7f020026

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 910
    .local v14, "OneDrawable":Landroid/graphics/drawable/Drawable;
    const-string v36, "dial_num_2"

    const v37, 0x7f020029

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 913
    .local v20, "TwoDrawable":Landroid/graphics/drawable/Drawable;
    const-string v36, "dial_num_3"

    const v37, 0x7f02002b

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 916
    .local v19, "ThreeDrawable":Landroid/graphics/drawable/Drawable;
    const-string v36, "dial_num_4"

    const v37, 0x7f02002d

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 919
    .local v10, "FourDrawable":Landroid/graphics/drawable/Drawable;
    const-string v36, "dial_num_5"

    const v37, 0x7f02002f

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 922
    .local v9, "FiveDrawable":Landroid/graphics/drawable/Drawable;
    const-string v36, "dial_num_6"

    const v37, 0x7f020031

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 925
    .local v17, "SixDrawable":Landroid/graphics/drawable/Drawable;
    const-string v36, "dial_num_7"

    const v37, 0x7f020033

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 928
    .local v16, "SevenDrawable":Landroid/graphics/drawable/Drawable;
    const-string v36, "dial_num_8"

    const v37, 0x7f020035

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 931
    .local v5, "EightDrawable":Landroid/graphics/drawable/Drawable;
    const-string v36, "dial_num_9"

    const v37, 0x7f020037

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 934
    .local v13, "NineDrawable":Landroid/graphics/drawable/Drawable;
    const-string v36, "dial_num_pound"

    const v37, 0x7f020039

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 937
    .local v15, "PoundDrawable":Landroid/graphics/drawable/Drawable;
    const-string v36, "dial_num_star"

    const v37, 0x7f02003b

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 940
    .local v18, "StarDrawable":Landroid/graphics/drawable/Drawable;
    const-string v36, "dial_num_0_no_plus"

    const v37, 0x7f020023

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 943
    .local v21, "ZeroDrawable":Landroid/graphics/drawable/Drawable;
    const-string v36, "end_call_bg"

    const v37, 0x7f020048

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 947
    .local v7, "EndCallBg":Landroid/graphics/drawable/Drawable;
    const-string v36, "endcall_background"

    const v37, 0x7f020049

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 950
    .local v6, "EndCallBackground":Landroid/graphics/drawable/Drawable;
    const-string v36, "ic_end_call"

    const v37, 0x7f020065

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 954
    .local v8, "EndCallSrc":Landroid/graphics/drawable/Drawable;
    const-string v36, "hidepad_background"

    const v37, 0x7f020052

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 957
    .local v11, "HideDialpadBackground":Landroid/graphics/drawable/Drawable;
    const-string v36, "ic_dtmf_hidepad"

    const v37, 0x7f020064

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 960
    .local v12, "HideDialpadSrc":Landroid/graphics/drawable/Drawable;
    const-string v36, "btn_compound_audio_vt"

    const v37, 0x7f02000d

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .line 965
    .local v22, "audioDialpadSrc":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mOneButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mTwoButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mThreeButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mFourButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 969
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mFiveButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mSixButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mSevenButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mEightButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mNineButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mStarButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mZeroButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mPoundButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mOneButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mTwoButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mThreeButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mFourButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mFiveButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mSixButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mSevenButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mEightButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mNineButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mPoundButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mStarButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mZeroButton:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mEndDialpadContainer:Landroid/view/ViewGroup;

    move-object/from16 v36, v0

    if-eqz v36, :cond_0

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mEndDialpadContainer:Landroid/view/ViewGroup;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 994
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mDtmfEndCall:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mDtmfEndCall:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mHideDialpad:Landroid/widget/ImageButton;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/DialpadFragment;->mAudioButton:Landroid/widget/ToggleButton;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v22

    move-object/from16 v3, v38

    move-object/from16 v4, v39

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 999
    return-void
.end method

.method public createPresenter()Lcom/android/incallui/DialpadPresenter;
    .locals 1

    .prologue
    .line 422
    new-instance v0, Lcom/android/incallui/DialpadPresenter;

    invoke-direct {v0}, Lcom/android/incallui/DialpadPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->createPresenter()Lcom/android/incallui/DialpadPresenter;

    move-result-object v0

    return-object v0
.end method

.method public displayDialpad(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 559
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

    .line 560
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->displayDialpad(Z)V

    .line 563
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 876
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/DialpadPresenter$DialpadUi;
    .locals 0

    .prologue
    .line 428
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->getUi()Lcom/android/incallui/DialpadPresenter$DialpadUi;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 821
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 823
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/DialpadFragment;->updateAudioButtons(I)V

    .line 824
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 305
    const-string v2, "onClick"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 310
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 313
    .local v1, "id":I
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/DialpadPresenter;

    sget-object v3, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/incallui/DialpadPresenter;->processDtmf(CZ)V

    .line 318
    .end local v1    # "id":I
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/DialpadFragment;->mDtmfEndCall:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/DialpadPresenter;->endCallClicked()V

    .line 321
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/DialpadFragment;->mHideDialpad:Landroid/widget/ImageButton;

    if-ne p1, v2, :cond_2

    .line 322
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/DialpadPresenter;->hideDialpadClicked()V

    .line 324
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/DialpadFragment;->mAudioButton:Landroid/widget/ToggleButton;

    if-ne p1, v2, :cond_3

    .line 326
    sget v2, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-direct {p0, v2}, Lcom/android/incallui/DialpadFragment;->isSupported(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 327
    invoke-direct {p0}, Lcom/android/incallui/DialpadFragment;->showAudioModePopup()V

    .line 333
    :cond_3
    :goto_0
    return-void

    .line 329
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/DialpadPresenter;->toggleSpeakerphone()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 433
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 434
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 439
    const v1, 0x7f030005

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 441
    .local v0, "parent":Landroid/view/View;
    const v1, 0x7f060035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    .line 442
    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 443
    new-instance v1, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;-><init>(Lcom/android/incallui/DialpadFragment;Lcom/android/incallui/DialpadFragment$1;)V

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    .line 444
    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 447
    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfDialerField:Landroid/widget/EditText;

    invoke-virtual {v1, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 449
    invoke-direct {p0, v0}, Lcom/android/incallui/DialpadFragment;->setupKeypad(Landroid/view/View;)V

    .line 452
    :cond_0
    const v1, 0x7f060045

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfEndCall:Landroid/widget/ImageButton;

    .line 453
    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfEndCall:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    .line 454
    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mDtmfEndCall:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    :cond_1
    const v1, 0x7f060046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mHideDialpad:Landroid/widget/ImageButton;

    .line 457
    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mHideDialpad:Landroid/widget/ImageButton;

    if-eqz v1, :cond_2

    .line 458
    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mHideDialpad:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 460
    :cond_2
    const v1, 0x7f060044

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mAudioButton:Landroid/widget/ToggleButton;

    .line 461
    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mAudioButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_3

    .line 462
    iget-object v1, p0, Lcom/android/incallui/DialpadFragment;->mAudioButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 466
    :cond_3
    const v1, 0x7f060043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mEndDialpadContainer:Landroid/view/ViewGroup;

    .line 467
    const v1, 0x7f060037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mOneButton:Landroid/widget/ImageButton;

    .line 468
    const v1, 0x7f060038

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mTwoButton:Landroid/widget/ImageButton;

    .line 469
    const v1, 0x7f060039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mThreeButton:Landroid/widget/ImageButton;

    .line 470
    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mFourButton:Landroid/widget/ImageButton;

    .line 471
    const v1, 0x7f06003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mFiveButton:Landroid/widget/ImageButton;

    .line 472
    const v1, 0x7f06003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mSixButton:Landroid/widget/ImageButton;

    .line 473
    const v1, 0x7f06003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mSevenButton:Landroid/widget/ImageButton;

    .line 474
    const v1, 0x7f06003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mEightButton:Landroid/widget/ImageButton;

    .line 475
    const v1, 0x7f06003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mNineButton:Landroid/widget/ImageButton;

    .line 476
    const v1, 0x7f060040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mStarButton:Landroid/widget/ImageButton;

    .line 477
    const v1, 0x7f060041

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mZeroButton:Landroid/widget/ImageButton;

    .line 478
    const v1, 0x7f060042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/DialpadFragment;->mPoundButton:Landroid/widget/ImageButton;

    .line 480
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    .line 486
    invoke-super {p0}, Lcom/android/incallui/BaseFragment;->onDestroyView()V

    .line 487
    return-void
.end method

.method onDialerKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 519
    const-string v0, "Notifying dtmf key down."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 523
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDialerKeyUp(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 531
    const-string v0, "Notifying dtmf key up."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mDialerKeyListener:Lcom/android/incallui/DialpadFragment$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/incallui/DialpadFragment$DTMFKeyListener;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 535
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onDismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 864
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/DialpadFragment;->mAudioModePopupVisible:Z

    .line 865
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    .line 339
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "accessibility"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 342
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 345
    .local v2, "left":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v8

    sub-int v3, v7, v8

    .line 346
    .local v3, "right":I
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    .line 347
    .local v4, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v8

    sub-int v1, v7, v8

    .line 349
    .local v1, "bottom":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 365
    .end local v1    # "bottom":I
    .end local v2    # "left":I
    .end local v3    # "right":I
    .end local v4    # "top":I
    :cond_0
    :goto_0
    return v9

    .line 352
    .restart local v1    # "bottom":I
    .restart local v2    # "left":I
    .restart local v3    # "right":I
    .restart local v4    # "top":I
    :pswitch_0
    invoke-virtual {p1, v9}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 355
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 356
    .local v5, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 357
    .local v6, "y":I
    if-le v5, v2, :cond_1

    if-ge v5, v3, :cond_1

    if-le v6, v4, :cond_1

    if-ge v6, v1, :cond_1

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 360
    :cond_1
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 349
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKey:  keyCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", view "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    const/16 v1, 0x17

    if-ne p2, v1, :cond_0

    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 374
    .local v0, "viewId":I
    sget-object v1, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 375
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 389
    .end local v0    # "viewId":I
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 377
    .restart local v0    # "viewId":I
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    goto :goto_0

    .line 382
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadPresenter;->stopTone()V

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 827
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onMenuItemClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 829
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  title: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 831
    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    .line 833
    .local v0, "mode":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick:  unexpected View ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (MenuItem = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v1, v0}, Lcom/android/incallui/DialpadPresenter;->setAudioMode(I)V

    .line 854
    const/4 v1, 0x1

    return v1

    .line 835
    :pswitch_0
    sget v0, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    .line 836
    goto :goto_0

    .line 841
    :pswitch_1
    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    .line 842
    goto :goto_0

    .line 844
    :pswitch_2
    sget v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    .line 845
    goto :goto_0

    .line 833
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600c6
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 394
    const-string v1, "onTouch"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 398
    .local v0, "viewId":I
    sget-object v1, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 414
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 403
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    sget-object v2, Lcom/android/incallui/DialpadFragment;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    goto :goto_0

    .line 408
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadPresenter;->stopTone()V

    goto :goto_0

    .line 399
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/DialpadFragment;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/android/incallui/DialpadFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 591
    sget v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-direct {p0, v0}, Lcom/android/incallui/DialpadFragment;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/android/incallui/DialpadFragment;->showAudioModePopup()V

    .line 596
    :cond_0
    return-void
.end method

.method public setAudio(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 566
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/DialpadPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/DialpadFragment;->updateAudioButtons(I)V

    .line 567
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->refreshAudioModePopup()V

    .line 568
    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0
    .param p1, "modeMask"    # I

    .prologue
    .line 572
    invoke-direct {p0, p1}, Lcom/android/incallui/DialpadFragment;->updateAudioButtons(I)V

    .line 573
    invoke-virtual {p0}, Lcom/android/incallui/DialpadFragment;->refreshAudioModePopup()V

    .line 574
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 491
    if-eqz p1, :cond_0

    .line 492
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 496
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/DialpadFragment;->clearDigits()V

    .line 497
    return-void

    .line 494
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
