.class public Lcom/android/incallui/CallButtonFragment;
.super Lcom/android/incallui/BaseFragment;
.source "CallButtonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/incallui/CallButtonPresenter$CallButtonUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallButtonFragment$InCallMenuState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/BaseFragment",
        "<",
        "Lcom/android/incallui/CallButtonPresenter;",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;",
        ">;",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;",
        "Landroid/widget/PopupMenu$OnMenuItemClickListener;",
        "Landroid/widget/PopupMenu$OnDismissListener;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;"
    }
.end annotation


# static fields
.field public static final SU_THEMES_05_INCALL_TOUCH_ADD_BUTTONS:Ljava/lang/String; = "btn_add"

.field public static final SU_THEMES_06_INCALL_TOUCH_AUDIO_BUTTONS:Ljava/lang/String; = "btn_compound_audio"

.field public static final SU_THEMES_07_INCALL_TOUCH_HOLD_BUTTONS:Ljava/lang/String; = "btn_compound_hold"

.field public static final SU_THEMES_08_INCALL_TOUCH_MUTE_BUTTONS:Ljava/lang/String; = "btn_compound_mute"

.field public static final SU_THEMES_09_INCALL_TOUCH_RECORD_BUTTONS:Ljava/lang/String; = "btn_compound_record"

.field public static final SU_THEMES_10_INCALL_TOUCH_DIALPAD_BUTTONS:Ljava/lang/String; = "btn_dialpad"

.field public static final SU_THEMES_11_INCALL_TOUCH_MERGE_BUTTONS:Ljava/lang/String; = "btn_merge"

.field public static final SU_THEMES_12_INCALL_TOUCH_SWITCH_BUTTONS:Ljava/lang/String; = "btn_switch"

.field public static final SU_THEMES_13_INCALL_ENDCALL_BACKGROUND:Ljava/lang/String; = "endcall_background"

.field public static final SU_THEMES_14_INCALL_END_CALL_BG:Ljava/lang/String; = "end_call_bg"

.field public static final SU_THEMES_15_INCALL_END_CALL_SRC:Ljava/lang/String; = "ic_end_call"

.field public static final SU_THEMES_16_INCALL_BTN_BACKGROUND:Ljava/lang/String; = "incall_btn_background"

.field public static final SU_THEMES_17_INCALL_BTN_CONFERENCE_BACKGROUND:Ljava/lang/String; = "incall_btn_conference_background"

.field public static final SU_THEMES_18_INCALL_BLUETOOTH_ITEM:Ljava/lang/String; = "bluetoothItem"

.field public static final SU_THEMES_18_INCALL_GROUP_HOLO_DARK:Ljava/lang/String; = "ic_groups_holo_dark"

.field public static final SU_THEMES_18_INCALL_HANDSET_ITEM:Ljava/lang/String; = "handsetItem"

.field public static final SU_THEMES_18_INCALL_IC_BAR_BACKGROUND:Ljava/lang/String; = "ic_bar_ground"

.field public static final SU_THEMES_18_INCALL_SOUND_DISABLE_ITEM:Ljava/lang/String; = "soundDisableItem"

.field public static final SU_THEMES_18_INCALL_SPEAKER_PHONE_OFF_ITEM:Ljava/lang/String; = "speakerphoneOffItem"

.field public static final SU_THEMES_18_INCALL_SPEAKER_PHONE_ON_ITEM:Ljava/lang/String; = "speakerphoneOnItem"

.field public static final SU_THEMES_38_VT_AUDIO_BTN:Ljava/lang/String; = "btn_compound_audio_vt"

.field public static final SU_THEMES_39_VT_MUTE_BTN:Ljava/lang/String; = "btn_compound_mute_vt"

.field public static final SU_THEMES_40_VT_DIALPAD_BTN:Ljava/lang/String; = "btn_dialpad_vt"

.field public static final SU_THEMES_41_VT_MENU_BTN:Ljava/lang/String; = "ic_menu_overflow"

.field private static sVtButtonHeight:I

.field private static sVtButtonMarginBottom:I

.field private static sVtButtonMarginLeft:I

.field private static sVtButtonMarginTop:I


# instance fields
.field private mAddButton:Landroid/widget/CompoundButton;

.field private mAudioButton:Landroid/widget/ToggleButton;

.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mConferenceBkg:Landroid/graphics/drawable/Drawable;

.field private mConferenceImg:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mDialpadButton:Landroid/widget/CompoundButton;

.field private mEndCallButton:Landroid/widget/ImageButton;

.field private mEndCallContrainer:Landroid/widget/RelativeLayout;

.field private mExtraRowButton:Landroid/view/View;

.field private mGenericMergeButton:Landroid/view/View;

.field private mHoldButton:Landroid/widget/CompoundButton;

.field public mIsVTButtonVisible:Z

.field private mManageConferenceButton:Landroid/view/View;

.field private mManageConferenceButtonImage:Landroid/widget/ImageButton;

.field private mMergeButton:Landroid/widget/CompoundButton;

.field private mMuteButton:Landroid/widget/CompoundButton;

.field private mParentView:Landroid/view/View;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mRecordButton:Landroid/widget/CompoundButton;

.field private mSwapButton:Landroid/widget/CompoundButton;

.field private mVTAudio:Landroid/widget/ToggleButton;

.field private mVTButtonContainer:Landroid/view/View;

.field private mVTDialpad:Landroid/widget/ToggleButton;

.field private mVTHangUp:Landroid/widget/ImageButton;

.field private mVTMute:Landroid/widget/CompoundButton;

.field private mVTOverflowMenu:Landroid/widget/CompoundButton;

.field private mVTPopupMenu:Landroid/widget/PopupMenu;

.field private mVTSwapVideo:Landroid/widget/CompoundButton;

.field private mVoiceButtonContainer:Landroid/view/View;

.field private mVtEndCallContrainer:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/incallui/BaseFragment;-><init>()V

    .line 1254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->mIsVTButtonVisible:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/CallButtonFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/CallButtonFragment;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->onAudioButtonClicked()V

    return-void
.end method

.method private constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 3
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 1029
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1030
    .local v1, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 1031
    .local v0, "menu":Landroid/view/Menu;
    const v2, 0x7f0d0003

    invoke-virtual {v1, v2}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 1032
    invoke-virtual {v1, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1033
    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/mediatek/incallui/InCallUtils;->setAllMenuVisible(Landroid/view/Menu;Z)V

    .line 1034
    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->setupVoiceMenuItems(Landroid/view/Menu;)V

    .line 1035
    return-object v1
.end method

.method private constructVTPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 2
    .param p1, "anchorView"    # Landroid/view/View;

    .prologue
    .line 1342
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-nez v0, :cond_0

    .line 1343
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTPopupMenu:Landroid/widget/PopupMenu;

    .line 1344
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTPopupMenu:Landroid/widget/PopupMenu;

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 1345
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1347
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/incallui/InCallUtils;->setAllMenuVisible(Landroid/view/Menu;Z)V

    .line 1348
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonFragment;->setupVTMenuItems(Landroid/view/Menu;)V

    .line 1349
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTPopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method private handleVTMenuClick(Landroid/view/MenuItem;)V
    .locals 1
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    .line 1473
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 1474
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->handleVTMenuClick(Landroid/view/MenuItem;)V

    .line 1476
    :cond_0
    return-void
.end method

.method private inCarMode()Z
    .locals 1

    .prologue
    .line 1654
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1655
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->inCarMode()Z

    move-result v0

    .line 1657
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initVTCallButton(Landroid/view/View;)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 1189
    const v0, 0x7f060010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVoiceButtonContainer:Landroid/view/View;

    .line 1190
    const v0, 0x7f060073

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTButtonContainer:Landroid/view/View;

    .line 1192
    const v0, 0x7f060078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTDialpad:Landroid/widget/ToggleButton;

    .line 1195
    const v0, 0x7f060075

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTAudio:Landroid/widget/ToggleButton;

    .line 1197
    const v0, 0x7f06001c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTHangUp:Landroid/widget/ImageButton;

    .line 1199
    const v0, 0x7f06001b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVtEndCallContrainer:Landroid/widget/RelativeLayout;

    .line 1201
    const v0, 0x7f060076

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTMute:Landroid/widget/CompoundButton;

    .line 1202
    const v0, 0x7f060079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTSwapVideo:Landroid/widget/CompoundButton;

    .line 1205
    const v0, 0x7f06007a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTOverflowMenu:Landroid/widget/CompoundButton;

    .line 1208
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTDialpad:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1209
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTAudio:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1210
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1211
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1212
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1213
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTOverflowMenu:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1222
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTSwapVideo:Landroid/widget/CompoundButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1223
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTOverflowMenu:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1225
    iput-object p1, p0, Lcom/android/incallui/CallButtonFragment;->mParentView:Landroid/view/View;

    .line 1235
    sget v0, Lcom/android/incallui/CallButtonFragment;->sVtButtonHeight:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/incallui/CallButtonFragment;->sVtButtonMarginLeft:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/incallui/CallButtonFragment;->sVtButtonMarginBottom:I

    if-eqz v0, :cond_0

    sget v0, Lcom/android/incallui/CallButtonFragment;->sVtButtonMarginTop:I

    if-eqz v0, :cond_0

    .line 1236
    sget v0, Lcom/android/incallui/CallButtonFragment;->sVtButtonMarginLeft:I

    sget v1, Lcom/android/incallui/CallButtonFragment;->sVtButtonMarginBottom:I

    sget v2, Lcom/android/incallui/CallButtonFragment;->sVtButtonHeight:I

    sget v3, Lcom/android/incallui/CallButtonFragment;->sVtButtonMarginTop:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/incallui/CallButtonFragment;->setVtButtonSize(IIII)V

    .line 1240
    :cond_0
    return-void
.end method

.method private initializeOverflowMenu(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1022
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 1023
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1024
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 1026
    :cond_1
    return-void
.end method

.method private isAudio(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 892
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

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
    .line 888
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

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

.method private onAudioButtonClicked()V
    .locals 2

    .prologue
    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioButtonClicked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-static {v0}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    sget v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->showAudioModePopup()V

    .line 492
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->toggleSpeakerphone()V

    goto :goto_0
.end method

.method private onClickMTK(Landroid/view/View;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1299
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1300
    .local v0, "id":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClickMTK(View "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", id "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ")..."

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1302
    sparse-switch v0, :sswitch_data_0

    .line 1338
    :goto_0
    return v3

    .line 1311
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    iget-object v3, p0, Lcom/android/incallui/CallButtonFragment;->mVTDialpad:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    :cond_0
    :goto_1
    move v3, v4

    .line 1338
    goto :goto_0

    .line 1314
    :sswitch_1
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->onAudioButtonClicked()V

    goto :goto_1

    .line 1317
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallButtonPresenter;->onVTEndCallClick()V

    goto :goto_1

    .line 1321
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v2, v3}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto :goto_1

    .line 1324
    :sswitch_4
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->onVTSwapVideoClick()V

    goto :goto_1

    .line 1327
    :sswitch_5
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v2, :cond_2

    .line 1328
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1330
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mVTOverflowMenu:Landroid/widget/CompoundButton;

    invoke-direct {p0, v2}, Lcom/android/incallui/CallButtonFragment;->constructVTPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v1

    .line 1331
    .local v1, "popup":Landroid/widget/PopupMenu;
    if-eqz v1, :cond_0

    .line 1332
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto :goto_1

    .line 1302
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f06001c -> :sswitch_2
        0x7f060075 -> :sswitch_1
        0x7f060076 -> :sswitch_3
        0x7f060078 -> :sswitch_0
        0x7f060079 -> :sswitch_4
        0x7f06007a -> :sswitch_5
    .end sparse-switch
.end method

.method private onCreateViewMtk(Landroid/view/View;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 970
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/incallui/InCallUtils;->hasPermanentMenuKey(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    :goto_0
    return-void

    .line 984
    :cond_0
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private onVTSwapVideoClick()V
    .locals 1

    .prologue
    .line 1468
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 1469
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->onVTSwapVideoClick()V

    .line 1471
    :cond_0
    return-void
.end method

.method private onVoiceRecordClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1587
    const-string v0, "onVoiceRecordClick"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1588
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->isExternalStorageMounted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1589
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1611
    :cond_0
    :goto_0
    return-void

    .line 1594
    :cond_1
    const-wide/32 v0, 0x200000

    invoke-static {v0, v1}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->diskSpaceAvailable(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1596
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/incallui/InCallPresenter;->handleStorageFull(Z)V

    goto :goto_0

    .line 1600
    :cond_2
    invoke-static {}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getRecorderState()I

    move-result v0

    if-nez v0, :cond_3

    .line 1601
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->voiceRecordClicked()V

    .line 1602
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 1603
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->startRecord()V

    goto :goto_0

    .line 1606
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->stopRecordClicked()V

    .line 1607
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 1608
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->stopRecord()V

    goto :goto_0
.end method

.method private onVoiceRecordClick(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 1103
    const-string v1, "onVoiceRecordClick"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1104
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1105
    .local v0, "title":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1126
    :cond_0
    :goto_0
    return-void

    .line 1108
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->isExternalStorageMounted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1109
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1114
    :cond_2
    const-wide/32 v1, 0x200000

    invoke-static {v1, v2}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->diskSpaceAvailable(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1116
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/incallui/InCallPresenter;->handleStorageFull(Z)V

    goto :goto_0

    .line 1120
    :cond_3
    const v1, 0x7f0a0006

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1121
    const-string v1, "want to startRecord"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1122
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->voiceRecordClicked()V

    goto :goto_0

    .line 1123
    :cond_4
    const v1, 0x7f0a0007

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1124
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->stopRecordClicked()V

    goto :goto_0
.end method

.method private setEnableForVT(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTDialpad:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1244
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTAudio:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1245
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1246
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTOverflowMenu:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1247
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1248
    if-eqz p1, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1251
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1252
    return-void

    .line 1251
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setVtButtonSize(IIII)V
    .locals 2
    .param p1, "marginLeft"    # I
    .param p2, "marginBottom"    # I
    .param p3, "height"    # I
    .param p4, "marginTop"    # I

    .prologue
    .line 1541
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mVTButtonContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1545
    .local v0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 1546
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1547
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1549
    return-void
.end method

.method private setupVoiceMenuItems(Landroid/view/Menu;)V
    .locals 14
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1039
    const-string v12, "setupVoiceMenuItems()..."

    invoke-static {p0, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1040
    const v12, 0x7f0600cc

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1041
    .local v0, "addMenu":Landroid/view/MenuItem;
    const v12, 0x7f0600cd

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 1042
    .local v9, "mergeMenu":Landroid/view/MenuItem;
    const v12, 0x7f0600d2

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 1043
    .local v10, "recordMenu":Landroid/view/MenuItem;
    const v12, 0x7f0600cb

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 1045
    .local v11, "voiceAnswerMenu":Landroid/view/MenuItem;
    const v12, 0x7f0600d5

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 1046
    .local v6, "hangupAllMenu":Landroid/view/MenuItem;
    const v12, 0x7f0600d6

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 1047
    .local v7, "hangupHoldingMenu":Landroid/view/MenuItem;
    const v12, 0x7f0600d7

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1048
    .local v5, "hangupActiveAndAnswerWaitingMenu":Landroid/view/MenuItem;
    const v12, 0x7f0600d8

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1050
    .local v4, "ectMenu":Landroid/view/MenuItem;
    const v12, 0x7f0600ca

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 1052
    .local v8, "holdMenu":Landroid/view/MenuItem;
    const v12, 0x7f0600d9

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1053
    .local v3, "contact":Landroid/view/MenuItem;
    const v12, 0x7f0600da

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1054
    .local v2, "auto_popup_on":Landroid/view/MenuItem;
    const v12, 0x7f0600db

    invoke-interface {p1, v12}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1057
    .local v1, "auto_popup_off":Landroid/view/MenuItem;
    const/4 v12, 0x0

    invoke-interface {v8, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1058
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->isDMLocked()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1100
    :cond_0
    :goto_0
    return-void

    .line 1079
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v12

    check-cast v12, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v12}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v12

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/incallui/InCallUtils;->updateScreenPopupMenuState(Lcom/android/services/telephony/common/Call;Landroid/content/Context;)V

    .line 1080
    sget-boolean v12, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanShowContact:Z

    invoke-interface {v3, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1081
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v12

    check-cast v12, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v12}, Lcom/android/incallui/CallButtonPresenter;->isConferenceCall()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1082
    const/4 v12, 0x0

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1083
    const/4 v12, 0x0

    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1091
    :goto_1
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->isDMLocked()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1095
    sget-boolean v12, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanRecording:Z

    invoke-interface {v10, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1096
    const/4 v12, 0x1

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1097
    sget-boolean v12, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sDisableAdd:Z

    if-eqz v12, :cond_0

    .line 1098
    const/4 v12, 0x0

    invoke-interface {v0, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1085
    :cond_2
    sget-boolean v12, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanAutomaticPopupOn:Z

    invoke-interface {v2, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1086
    sget-boolean v12, Lcom/android/incallui/CallButtonFragment$InCallMenuState;->sCanAutomaticPopupOff:Z

    invoke-interface {v1, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method private showAudioModePopup()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 840
    const-string v6, "showAudioPopup()..."

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 842
    new-instance v6, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ToggleButton;

    invoke-direct {v6, v9, v10}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 843
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v6}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    const/high16 v9, 0x7f0d0000

    iget-object v10, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v10}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 845
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v6, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 846
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v6, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 848
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v6}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 855
    .local v2, "menu":Landroid/view/Menu;
    const v6, 0x7f0600c6

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 856
    .local v3, "speakerItem":Landroid/view/MenuItem;
    sget v6, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-direct {p0, v6}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v6

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 862
    const v6, 0x7f0600c7

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 863
    .local v1, "earpieceItem":Landroid/view/MenuItem;
    const v6, 0x7f0600c8

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 865
    .local v5, "wiredHeadsetItem":Landroid/view/MenuItem;
    sget v6, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    invoke-direct {p0, v6}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v4

    .line 866
    .local v4, "usingHeadset":Z
    if-nez v4, :cond_1

    move v6, v7

    :goto_0
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 867
    if-nez v4, :cond_0

    move v8, v7

    :cond_0
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 868
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 869
    invoke-interface {v5, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 874
    const v6, 0x7f0600c9

    invoke-interface {v2, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 875
    .local v0, "bluetoothItem":Landroid/view/MenuItem;
    sget v6, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-direct {p0, v6}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v6

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 879
    iget-object v6, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v6}, Landroid/widget/PopupMenu;->show()V

    .line 884
    iput-boolean v7, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopupVisible:Z

    .line 885
    return-void

    .end local v0    # "bluetoothItem":Landroid/view/MenuItem;
    :cond_1
    move v6, v8

    .line 866
    goto :goto_0
.end method

.method private updateAudioButtons(I)V
    .locals 21
    .param p1, "supportedModes"    # I

    .prologue
    .line 522
    sget v18, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v7

    .line 523
    .local v7, "bluetoothSupported":Z
    sget v18, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v17

    .line 525
    .local v17, "speakerSupported":Z
    const/4 v5, 0x0

    .line 526
    .local v5, "audioButtonEnabled":Z
    const/4 v4, 0x0

    .line 527
    .local v4, "audioButtonChecked":Z
    const/4 v13, 0x0

    .line 529
    .local v13, "showMoreIndicator":Z
    const/4 v11, 0x0

    .line 530
    .local v11, "showBluetoothIcon":Z
    const/4 v15, 0x0

    .line 531
    .local v15, "showSpeakerphoneOnIcon":Z
    const/4 v14, 0x0

    .line 532
    .local v14, "showSpeakerphoneOffIcon":Z
    const/4 v12, 0x0

    .line 534
    .local v12, "showHandsetIcon":Z
    const/16 v16, 0x0

    .line 536
    .local v16, "showToggleIndicator":Z
    if-eqz v7, :cond_21

    .line 537
    const-string v18, "updateAudioButtons - popup menu mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    const/4 v5, 0x1

    .line 540
    const/4 v13, 0x1

    .line 546
    sget v18, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v18

    if-eqz v18, :cond_1f

    .line 547
    const/4 v11, 0x1

    .line 592
    :cond_0
    :goto_0
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "audioButtonEnabled: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "audioButtonChecked: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "showMoreIndicator: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "showBluetoothIcon: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "showSpeakerphoneOnIcon: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "showSpeakerphoneOffIcon: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "showHandsetIcon: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    const/4 v2, 0x0

    .line 602
    .local v2, "HIDDEN":I
    const/16 v3, 0xff

    .line 604
    .local v3, "VISIBLE":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ToggleButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mVTAudio:Landroid/widget/ToggleButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ToggleButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mVTAudio:Landroid/widget/ToggleButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 612
    const v18, 0x7f0a0370

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 613
    .local v6, "audioText":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 614
    if-eqz v11, :cond_24

    .line 615
    const v18, 0x7f0a036f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 627
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ToggleButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mVTAudio:Landroid/widget/ToggleButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallButtonFragment;->inCarMode()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ToggleButton;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 634
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ToggleButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 635
    .local v9, "drawables":[Landroid/graphics/drawable/Drawable;
    const/16 v18, 0x1

    aget-object v10, v9, v18

    check-cast v10, Landroid/graphics/drawable/LayerDrawable;

    .line 636
    .local v10, "layers":Landroid/graphics/drawable/LayerDrawable;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\'layers\' drawable: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/InCallPresenter;->inCarMode()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ToggleButton;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    const-string v19, "bluetoothItem"

    const v20, 0x7f0600bf

    invoke-virtual/range {v18 .. v20}, Lcom/android/incallui/InCallPresenter;->getThemeResourceId(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 665
    .local v8, "d":Landroid/graphics/drawable/Drawable;
    if-nez v8, :cond_4

    .line 666
    const v18, 0x7f0600bf

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 668
    :cond_4
    if-eqz v8, :cond_5

    .line 669
    if-eqz v11, :cond_27

    const/16 v18, 0xff

    :goto_2
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 672
    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    const-string v19, "handsetItem"

    const v20, 0x7f0600c0

    invoke-virtual/range {v18 .. v20}, Lcom/android/incallui/InCallPresenter;->getThemeResourceId(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 675
    if-nez v8, :cond_6

    .line 676
    const v18, 0x7f0600c0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 678
    :cond_6
    if-eqz v8, :cond_7

    .line 679
    if-eqz v12, :cond_28

    const/16 v18, 0xff

    :goto_3
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 682
    :cond_7
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    const-string v19, "speakerphoneOnItem"

    const v20, 0x7f0600c1

    invoke-virtual/range {v18 .. v20}, Lcom/android/incallui/InCallPresenter;->getThemeResourceId(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 685
    if-nez v8, :cond_8

    .line 686
    const v18, 0x7f0600c1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 688
    :cond_8
    if-eqz v8, :cond_9

    .line 689
    if-eqz v15, :cond_29

    const/16 v18, 0xff

    :goto_4
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 692
    :cond_9
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    const-string v19, "speakerphoneOffItem"

    const v20, 0x7f0600c2

    invoke-virtual/range {v18 .. v20}, Lcom/android/incallui/InCallPresenter;->getThemeResourceId(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 695
    if-nez v8, :cond_a

    .line 696
    const v18, 0x7f0600c2

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 698
    :cond_a
    if-eqz v8, :cond_b

    .line 699
    if-eqz v14, :cond_2a

    const/16 v18, 0xff

    :goto_5
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 702
    :cond_b
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    const-string v19, "soundDisableItem"

    const v20, 0x7f0600c3

    invoke-virtual/range {v18 .. v20}, Lcom/android/incallui/InCallPresenter;->getThemeResourceId(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 705
    if-nez v8, :cond_c

    .line 706
    const v18, 0x7f0600c3

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 708
    :cond_c
    if-eqz v8, :cond_d

    .line 709
    if-nez v5, :cond_2b

    const/16 v18, 0xff

    :goto_6
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 712
    :cond_d
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/InCallPresenter;->inCarMode()Z

    move-result v18

    if-eqz v18, :cond_19

    .line 713
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    const-string v19, "bluetoothItem"

    const v20, 0x7f0600bf

    invoke-virtual/range {v18 .. v20}, Lcom/android/incallui/InCallPresenter;->getThemeResourceId(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 716
    if-nez v8, :cond_e

    .line 717
    const v18, 0x7f0600bf

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 719
    :cond_e
    if-eqz v8, :cond_f

    .line 720
    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 723
    :cond_f
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    const-string v19, "handsetItem"

    const v20, 0x7f0600c0

    invoke-virtual/range {v18 .. v20}, Lcom/android/incallui/InCallPresenter;->getThemeResourceId(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 726
    if-nez v8, :cond_10

    .line 727
    const v18, 0x7f0600c0

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 729
    :cond_10
    if-eqz v8, :cond_11

    .line 730
    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 733
    :cond_11
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    const-string v19, "speakerphoneOnItem"

    const v20, 0x7f0600c1

    invoke-virtual/range {v18 .. v20}, Lcom/android/incallui/InCallPresenter;->getThemeResourceId(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 736
    if-nez v8, :cond_12

    .line 737
    const v18, 0x7f0600c1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 739
    :cond_12
    if-eqz v8, :cond_13

    .line 740
    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 743
    :cond_13
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    const-string v19, "speakerphoneOffItem"

    const v20, 0x7f0600c2

    invoke-virtual/range {v18 .. v20}, Lcom/android/incallui/InCallPresenter;->getThemeResourceId(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 746
    if-nez v8, :cond_14

    .line 747
    const v18, 0x7f0600c2

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 749
    :cond_14
    if-eqz v8, :cond_15

    .line 750
    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 753
    :cond_15
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    const-string v19, "soundDisableItem"

    const v20, 0x7f0600c3

    invoke-virtual/range {v18 .. v20}, Lcom/android/incallui/InCallPresenter;->getThemeResourceId(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 756
    if-nez v8, :cond_16

    .line 757
    const v18, 0x7f0600c3

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 759
    :cond_16
    if-eqz v8, :cond_17

    .line 760
    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 763
    :cond_17
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    const-string v19, "speakerphoneOnItem"

    const v20, 0x7f0600c1

    invoke-virtual/range {v18 .. v20}, Lcom/android/incallui/InCallPresenter;->getThemeResourceId(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 766
    if-nez v8, :cond_18

    .line 767
    const v18, 0x7f0600c1

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 769
    :cond_18
    if-eqz v8, :cond_19

    .line 770
    const/16 v18, 0x1

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 797
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mVTAudio:Landroid/widget/ToggleButton;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 798
    const/16 v18, 0x1

    aget-object v10, v9, v18

    .end local v10    # "layers":Landroid/graphics/drawable/LayerDrawable;
    check-cast v10, Landroid/graphics/drawable/LayerDrawable;

    .line 799
    .restart local v10    # "layers":Landroid/graphics/drawable/LayerDrawable;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\'vtLayers\' drawable: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 801
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    const-string v19, "bluetoothItem"

    const v20, 0x7f0600bf

    invoke-virtual/range {v18 .. v20}, Lcom/android/incallui/InCallPresenter;->getThemeResourceId(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 804
    if-eqz v8, :cond_1a

    .line 805
    if-eqz v11, :cond_2c

    const/16 v18, 0xff

    :goto_7
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 808
    :cond_1a
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    const-string v19, "handsetItem"

    const v20, 0x7f0600c0

    invoke-virtual/range {v18 .. v20}, Lcom/android/incallui/InCallPresenter;->getThemeResourceId(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 811
    if-eqz v8, :cond_1b

    .line 812
    if-eqz v12, :cond_2d

    const/16 v18, 0xff

    :goto_8
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 815
    :cond_1b
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    const-string v19, "speakerphoneOnItem"

    const v20, 0x7f0600c1

    invoke-virtual/range {v18 .. v20}, Lcom/android/incallui/InCallPresenter;->getThemeResourceId(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 818
    if-eqz v8, :cond_1c

    .line 819
    if-eqz v15, :cond_2e

    const/16 v18, 0xff

    :goto_9
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 822
    :cond_1c
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    const-string v19, "speakerphoneOffItem"

    const v20, 0x7f0600c2

    invoke-virtual/range {v18 .. v20}, Lcom/android/incallui/InCallPresenter;->getThemeResourceId(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 825
    if-eqz v8, :cond_1d

    .line 826
    if-eqz v14, :cond_2f

    const/16 v18, 0xff

    :goto_a
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 829
    :cond_1d
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v18

    const-string v19, "soundDisableItem"

    const v20, 0x7f0600c3

    invoke-virtual/range {v18 .. v20}, Lcom/android/incallui/InCallPresenter;->getThemeResourceId(Ljava/lang/String;I)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 832
    if-eqz v8, :cond_1e

    .line 833
    if-nez v5, :cond_30

    const/16 v18, 0xff

    :goto_b
    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 837
    :cond_1e
    return-void

    .line 548
    .end local v2    # "HIDDEN":I
    .end local v3    # "VISIBLE":I
    .end local v6    # "audioText":Ljava/lang/String;
    .end local v8    # "d":Landroid/graphics/drawable/Drawable;
    .end local v9    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v10    # "layers":Landroid/graphics/drawable/LayerDrawable;
    :cond_1f
    sget v18, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v18

    if-eqz v18, :cond_20

    .line 549
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 551
    :cond_20
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 557
    :cond_21
    if-eqz v17, :cond_23

    .line 558
    const-string v18, "updateAudioButtons - speaker toggle mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 560
    const/4 v5, 0x1

    .line 564
    sget v18, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v4

    .line 567
    const/16 v16, 0x1

    .line 569
    sget v18, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v15

    .line 570
    if-nez v15, :cond_22

    const/4 v14, 0x1

    .line 572
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallButtonFragment;->inCarMode()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 573
    const/4 v15, 0x1

    .line 574
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 570
    :cond_22
    const/4 v14, 0x0

    goto :goto_c

    .line 578
    :cond_23
    const-string v18, "updateAudioButtons - disabled..."

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 582
    const/4 v5, 0x0

    .line 583
    const/4 v4, 0x0

    .line 586
    const/16 v16, 0x1

    .line 587
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 616
    .restart local v2    # "HIDDEN":I
    .restart local v3    # "VISIBLE":I
    .restart local v6    # "audioText":Ljava/lang/String;
    :cond_24
    if-eqz v12, :cond_26

    .line 617
    sget v18, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/incallui/CallButtonFragment;->isAudio(I)Z

    move-result v18

    if-eqz v18, :cond_25

    .line 618
    const v18, 0x7f0a015b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 620
    :cond_25
    const v18, 0x7f0a015a

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 622
    :cond_26
    if-nez v14, :cond_1

    .line 623
    const v18, 0x7f0a0370

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 669
    .restart local v8    # "d":Landroid/graphics/drawable/Drawable;
    .restart local v9    # "drawables":[Landroid/graphics/drawable/Drawable;
    .restart local v10    # "layers":Landroid/graphics/drawable/LayerDrawable;
    :cond_27
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 679
    :cond_28
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 689
    :cond_29
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 699
    :cond_2a
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 709
    :cond_2b
    const/16 v18, 0x0

    goto/16 :goto_6

    .line 805
    :cond_2c
    const/16 v18, 0x0

    goto/16 :goto_7

    .line 812
    :cond_2d
    const/16 v18, 0x0

    goto/16 :goto_8

    .line 819
    :cond_2e
    const/16 v18, 0x0

    goto/16 :goto_9

    .line 826
    :cond_2f
    const/16 v18, 0x0

    goto/16 :goto_a

    .line 833
    :cond_30
    const/16 v18, 0x0

    goto/16 :goto_b
.end method


# virtual methods
.method public amendCallButtonLayout(IIII)V
    .locals 1
    .param p1, "marginLeft"    # I
    .param p2, "marginBottom"    # I
    .param p3, "height"    # I
    .param p4, "marginTop"    # I

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    sget v0, Lcom/android/incallui/CallButtonFragment;->sVtButtonHeight:I

    if-ne v0, p3, :cond_0

    sget v0, Lcom/android/incallui/CallButtonFragment;->sVtButtonMarginLeft:I

    if-ne v0, p1, :cond_0

    sget v0, Lcom/android/incallui/CallButtonFragment;->sVtButtonMarginBottom:I

    if-ne v0, p2, :cond_0

    sget v0, Lcom/android/incallui/CallButtonFragment;->sVtButtonMarginTop:I

    if-eq v0, p4, :cond_1

    .line 1532
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/incallui/CallButtonFragment;->setVtButtonSize(IIII)V

    .line 1533
    sput p3, Lcom/android/incallui/CallButtonFragment;->sVtButtonHeight:I

    .line 1534
    sput p1, Lcom/android/incallui/CallButtonFragment;->sVtButtonMarginLeft:I

    .line 1535
    sput p2, Lcom/android/incallui/CallButtonFragment;->sVtButtonMarginBottom:I

    .line 1536
    sput p4, Lcom/android/incallui/CallButtonFragment;->sVtButtonMarginTop:I

    .line 1538
    :cond_1
    return-void
.end method

.method public applyPhoneTheme()V
    .locals 36

    .prologue
    .line 1664
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v17

    .line 1665
    .local v17, "incallpresenter":Lcom/android/incallui/InCallPresenter;
    const-string v32, "incall_btn_background"

    const v33, 0x7f0200a0

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 1667
    .local v23, "recBtnBkg":Landroid/graphics/drawable/Drawable;
    const-string v32, "incall_btn_background"

    const v33, 0x7f0200a0

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1669
    .local v9, "dialpadBtnBkg":Landroid/graphics/drawable/Drawable;
    const-string v32, "incall_btn_background"

    const v33, 0x7f0200a0

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1671
    .local v7, "audioBtnBkg":Landroid/graphics/drawable/Drawable;
    const-string v32, "incall_btn_background"

    const v33, 0x7f0200a0

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1673
    .local v5, "addBtnBkg":Landroid/graphics/drawable/Drawable;
    const-string v32, "incall_btn_background"

    const v33, 0x7f0200a0

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 1675
    .local v19, "mergeBtnBkg":Landroid/graphics/drawable/Drawable;
    const-string v32, "incall_btn_background"

    const v33, 0x7f0200a0

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 1677
    .local v21, "muteBtnBkg":Landroid/graphics/drawable/Drawable;
    const-string v32, "incall_btn_background"

    const v33, 0x7f0200a0

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 1679
    .local v14, "holdBtnBkg":Landroid/graphics/drawable/Drawable;
    const-string v32, "incall_btn_background"

    const v33, 0x7f0200a0

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v25

    .line 1682
    .local v25, "swapBtnBkg":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/CompoundButton;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/CompoundButton;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ToggleButton;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v7}, Landroid/widget/ToggleButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mAddButton:Landroid/widget/CompoundButton;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/CompoundButton;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v14}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/CompoundButton;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1691
    const-string v32, "btn_add"

    const v33, 0x7f02000b

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1693
    .local v6, "addDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mAddButton:Landroid/widget/CompoundButton;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v6, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1695
    const-string v32, "btn_compound_audio"

    const v33, 0x7f02000c

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 1697
    .local v8, "audioDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ToggleButton;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1699
    const-string v32, "btn_compound_hold"

    const v33, 0x7f020010

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 1701
    .local v15, "holdDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1703
    const-string v32, "btn_compound_mute"

    const v33, 0x7f020011

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .line 1705
    .local v22, "muteDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v22

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1707
    const-string v32, "btn_compound_record"

    const v33, 0x7f020013

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v24

    .line 1709
    .local v24, "recordDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/CompoundButton;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1711
    const-string v32, "btn_dialpad"

    const v33, 0x7f020017

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1713
    .local v10, "dialpadDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/CompoundButton;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1715
    const-string v32, "btn_merge"

    const v33, 0x7f02001c

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 1717
    .local v20, "mergeDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/CompoundButton;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v20

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1719
    const-string v32, "btn_switch"

    const v33, 0x7f02001d

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v26

    .line 1721
    .local v26, "switchDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/CompoundButton;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v26

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1724
    const-string v32, "end_call_bg"

    const v33, 0x7f020048

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1726
    .local v12, "endCallBgDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mEndCallContrainer:Landroid/widget/RelativeLayout;

    move-object/from16 v32, v0

    if-eqz v32, :cond_0

    .line 1727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mEndCallContrainer:Landroid/widget/RelativeLayout;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1730
    :cond_0
    const-string v32, "endcall_background"

    const v33, 0x7f020049

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 1732
    .local v11, "endCallBackground":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v11}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1734
    const-string v32, "ic_end_call"

    const v33, 0x7f020065

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 1736
    .local v13, "endCallSrc":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1738
    const-string v32, "incall_btn_conference_background"

    const v33, 0x7f0200a1

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/CallButtonFragment;->mConferenceBkg:Landroid/graphics/drawable/Drawable;

    .line 1741
    const-string v32, "ic_groups_holo_dark"

    const v33, 0x7f020066

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/incallui/CallButtonFragment;->mConferenceImg:Landroid/graphics/drawable/Drawable;

    .line 1745
    const-string v32, "ic_bar_ground"

    const v33, 0x7f020057

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 1747
    .local v16, "icBarDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mVoiceButtonContainer:Landroid/view/View;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1

    .line 1748
    invoke-direct/range {p0 .. p0}, Lcom/android/incallui/CallButtonFragment;->inCarMode()Z

    move-result v32

    if-eqz v32, :cond_2

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mVoiceButtonContainer:Landroid/view/View;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    invoke-virtual/range {v32 .. v33}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1757
    :cond_1
    :goto_0
    const-string v32, "btn_compound_audio_vt"

    const v33, 0x7f02000d

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    .line 1759
    .local v27, "vtAudioDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mVTAudio:Landroid/widget/ToggleButton;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v27

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1762
    const-string v32, "btn_compound_mute_vt"

    const v33, 0x7f020012

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v31

    .line 1764
    .local v31, "vtMuteDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mVTMute:Landroid/widget/CompoundButton;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v31

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1767
    const-string v32, "btn_dialpad_vt"

    const v33, 0x7f020018

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 1769
    .local v28, "vtDialpadDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mVTDialpad:Landroid/widget/ToggleButton;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v28

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1772
    const-string v32, "ic_menu_overflow"

    const v33, 0x7f020080

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 1774
    .local v18, "menuDrawable":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mVTOverflowMenu:Landroid/widget/CompoundButton;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object/from16 v2, v18

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1777
    const-string v32, "endcall_background"

    const v33, 0x7f020049

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 1779
    .local v29, "vtEndCallBackground":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mVTHangUp:Landroid/widget/ImageButton;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1781
    const-string v32, "ic_end_call"

    const v33, 0x7f020065

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallPresenter;->getLenovoThemeResTypeDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v30

    .line 1783
    .local v30, "vtEndCallSrc":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mVTHangUp:Landroid/widget/ImageButton;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1785
    return-void

    .line 1751
    .end local v18    # "menuDrawable":Landroid/graphics/drawable/Drawable;
    .end local v27    # "vtAudioDrawable":Landroid/graphics/drawable/Drawable;
    .end local v28    # "vtDialpadDrawable":Landroid/graphics/drawable/Drawable;
    .end local v29    # "vtEndCallBackground":Landroid/graphics/drawable/Drawable;
    .end local v30    # "vtEndCallSrc":Landroid/graphics/drawable/Drawable;
    .end local v31    # "vtMuteDrawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallButtonFragment;->mVoiceButtonContainer:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public availableForRecord()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1631
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1641
    :cond_0
    :goto_0
    return v0

    .line 1634
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->isExternalStorageMounted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1637
    const-wide/32 v1, 0x200000

    invoke-static {v1, v2}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->diskSpaceAvailable(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1641
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public createPresenter()Lcom/android/incallui/CallButtonPresenter;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-direct {v0}, Lcom/android/incallui/CallButtonPresenter;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createPresenter()Lcom/android/incallui/Presenter;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->createPresenter()Lcom/android/incallui/CallButtonPresenter;

    move-result-object v0

    return-object v0
.end method

.method public dismissPopupMenu()V
    .locals 1

    .prologue
    .line 1508
    const-string v0, "dismissPopUpMenu~~"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1510
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 1511
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1514
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1

    .line 1515
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1518
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_2

    .line 1519
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1521
    :cond_2
    return-void
.end method

.method public displayDialpad(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 897
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

    .line 898
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 899
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTDialpad:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 900
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 901
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->displayDialpad(Z)V

    .line 903
    :cond_0
    return-void
.end method

.method public displayManageConferencePanel(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 926
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 927
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->displayManageConferencePanel(Z)V

    .line 929
    :cond_0
    return-void
.end method

.method public enableAddCall(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAddButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 415
    return-void
.end method

.method public enableEnd(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1789
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1790
    return-void
.end method

.method public enableHold(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 389
    return-void
.end method

.method public enableMute(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 367
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 368
    return-void
.end method

.method public enableRecord(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableRecord("

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

    .line 1616
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1617
    return-void
.end method

.method public enableSwap(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1792
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1793
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getShowDialpadButton()Landroid/widget/CompoundButton;
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method public getUi()Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    .locals 0

    .prologue
    .line 139
    return-object p0
.end method

.method public bridge synthetic getUi()Lcom/android/incallui/Ui;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getUi()Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    move-result-object v0

    return-object v0
.end method

.method public handleMenuItemClickMTK(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- onMenuItemClick: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  title: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1413
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1461
    const-string v0, "This is not MTK menu item."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    .line 1464
    :goto_0
    return v0

    .line 1415
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallButtonPresenter;->holdClicked(Z)V

    :goto_1
    :pswitch_1
    move v0, v2

    .line 1464
    goto :goto_0

    .line 1418
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->addCallClicked()V

    goto :goto_1

    .line 1421
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->mergeClicked()V

    goto :goto_1

    .line 1424
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->onVoiceRecordClick(Landroid/view/MenuItem;)V

    goto :goto_1

    .line 1430
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->hangupAllCalls()V

    goto :goto_1

    .line 1433
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->hangupHoldingCall()V

    goto :goto_1

    .line 1436
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->hangupActiveAndAnswerWaiting()V

    goto :goto_1

    .line 1439
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->explicitCallTransfer()V

    goto :goto_1

    .line 1443
    :pswitch_9
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->onContactClicked()V

    goto :goto_1

    .line 1446
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0, v2}, Lcom/android/incallui/CallButtonPresenter;->enableAutomaticPopup(Z)V

    goto :goto_1

    .line 1449
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonPresenter;->enableAutomaticPopup(Z)V

    goto :goto_1

    .line 1458
    :pswitch_c
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->handleVTMenuClick(Landroid/view/MenuItem;)V

    goto :goto_1

    .line 1413
    nop

    :pswitch_data_0
    .packed-switch 0x7f0600ca
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_4
        :pswitch_c
        :pswitch_c
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public hideExtraRow()V
    .locals 2

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mExtraRowButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 954
    return-void
.end method

.method public isDialpadVisible()Z
    .locals 1

    .prologue
    .line 907
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 908
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    .line 910
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVTButtonVisible()Z
    .locals 1

    .prologue
    .line 1295
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->mIsVTButtonVisible:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 253
    invoke-super {p0, p1}, Lcom/android/incallui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    .line 263
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mContext:Landroid/content/Context;

    .line 265
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 287
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 292
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

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->onClickMTK(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    :goto_0
    return-void

    .line 300
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 319
    :pswitch_0
    const-string v1, "onClick: unexpected"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->addCallClicked()V

    goto :goto_0

    .line 305
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->mergeClicked()V

    goto :goto_0

    .line 308
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->swapClicked()V

    goto :goto_0

    .line 311
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    iget-object v2, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    goto :goto_0

    .line 315
    :pswitch_5
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->onVoiceRecordClick()V

    goto :goto_0

    .line 300
    :pswitch_data_0
    .packed-switch 0x7f060011
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onContactClicked()V
    .locals 4

    .prologue
    .line 1645
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.action.LIST_CONTACTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1646
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1648
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1652
    :goto_0
    return-void

    .line 1649
    :catch_0
    move-exception v0

    .line 1650
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 145
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 150
    const v1, 0x7f030001

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 152
    .local v0, "parent":Landroid/view/View;
    const v1, 0x7f06000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mExtraRowButton:Landroid/view/View;

    .line 154
    const v1, 0x7f060047

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mManageConferenceButton:Landroid/view/View;

    .line 155
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mManageConferenceButton:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/CallButtonFragment$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$1;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v1, 0x7f060048

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    .line 164
    const v1, 0x7f06004a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mGenericMergeButton:Landroid/view/View;

    .line 165
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mGenericMergeButton:Landroid/view/View;

    new-instance v2, Lcom/android/incallui/CallButtonFragment$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$2;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    const v1, 0x7f06001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    .line 175
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/incallui/CallButtonFragment$3;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$3;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const v1, 0x7f060019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallContrainer:Landroid/widget/RelativeLayout;

    .line 189
    const v1, 0x7f060016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    .line 190
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    new-instance v2, Lcom/android/incallui/CallButtonFragment$4;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$4;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v1, 0x7f060013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ToggleButton;

    .line 202
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/android/incallui/CallButtonFragment$5;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$5;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v1, 0x7f060017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    .line 211
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    new-instance v2, Lcom/android/incallui/CallButtonFragment$6;

    invoke-direct {v2, p0}, Lcom/android/incallui/CallButtonFragment$6;-><init>(Lcom/android/incallui/CallButtonFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    const v1, 0x7f060012

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/CompoundButton;

    .line 222
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    const v1, 0x7f060014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddButton:Landroid/widget/CompoundButton;

    .line 226
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    const v1, 0x7f060015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/CompoundButton;

    .line 228
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    const v1, 0x7f060018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/CompoundButton;

    .line 232
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    const v1, 0x7f060011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CompoundButton;

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/CompoundButton;

    .line 235
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mConferenceBkg:Landroid/graphics/drawable/Drawable;

    .line 238
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mConferenceImg:Landroid/graphics/drawable/Drawable;

    .line 241
    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->onCreateViewMtk(Landroid/view/View;)V

    .line 245
    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->initVTCallButton(Landroid/view/View;)V

    .line 248
    return-object v0
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 475
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

    .line 476
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopupVisible:Z

    .line 477
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 431
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

    .line 432
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

    .line 433
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

    .line 436
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInCallUIExtension()Lcom/mediatek/incallui/ext/InCallUIExtension;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mediatek/incallui/ext/InCallUIExtension;->handleMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 466
    :cond_0
    :goto_0
    return v3

    .line 438
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonFragment;->handleMenuItemClickMTK(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    .line 445
    .local v0, "mode":I
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 459
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

    .line 464
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_0

    .line 447
    :pswitch_0
    sget v0, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    .line 448
    goto :goto_1

    .line 453
    :pswitch_1
    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    .line 454
    goto :goto_1

    .line 456
    :pswitch_2
    sget v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    .line 457
    goto :goto_1

    .line 445
    :pswitch_data_0
    .packed-switch 0x7f0600c6
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1164
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonFragment;->handleMenuItemClickMTK(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 281
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 282
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    .line 283
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1495
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/ext/ExtensionManager;->getCallButtonExtension()Lcom/mediatek/incallui/ext/CallButtonExtension;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/mediatek/incallui/ext/CallButtonExtension;->onViewCreated(Landroid/content/Context;Landroid/view/View;)V

    .line 1496
    return-void
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 510
    sget v0, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->showAudioModePopup()V

    .line 515
    :cond_0
    return-void
.end method

.method public setAudio(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    .line 420
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->refreshAudioModePopup()V

    .line 421
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->isNoCallExist()Z

    move-result v1

    if-nez v1, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->isVTCall()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/CallButtonFragment;->updateCallButton(Z)V

    .line 331
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 332
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 333
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 336
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 339
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 340
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAudioButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 341
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 342
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 345
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 346
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 349
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 351
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->setEnableForVT(Z)V

    .line 353
    return-void
.end method

.method public setHold(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 373
    return-void
.end method

.method public setMute(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 360
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 362
    return-void
.end method

.method public setRecord(Z)V
    .locals 1
    .param p1, "check"    # Z

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1622
    if-nez p1, :cond_0

    .line 1623
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 1624
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->stopRecord()V

    .line 1627
    :cond_0
    return-void
.end method

.method public setSupportedAudio(I)V
    .locals 0
    .param p1, "modeMask"    # I

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    .line 426
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->refreshAudioModePopup()V

    .line 427
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 1565
    if-eqz p1, :cond_0

    .line 1566
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1571
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->isDialpadVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1572
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->isDialpadVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonPresenter;->updateAutoPopupDialog(Z)V

    .line 1575
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTDialpad:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->isDialpadVisible()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1577
    return-void

    .line 1568
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setupMenuItems(Landroid/view/Menu;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1479
    const-string v0, "setupMenuItems()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1480
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->isNoCallExist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1481
    const-string v0, "There is no call exist any more, just return"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1490
    :goto_0
    return-void

    .line 1484
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->isVTCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1485
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonFragment;->setupVTMenuItems(Landroid/view/Menu;)V

    goto :goto_0

    .line 1487
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonFragment;->setupVoiceMenuItems(Landroid/view/Menu;)V

    .line 1488
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInCallUIExtension()Lcom/mediatek/incallui/ext/InCallUIExtension;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/mediatek/incallui/ext/InCallUIExtension;->setupMenuItems(Landroid/view/Menu;Lcom/android/services/telephony/common/Call;)V

    goto :goto_0
.end method

.method public setupVTMenuItems(Landroid/view/Menu;)V
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v7, 0x1

    .line 1359
    const-string v6, "setupVTMenuItems()..."

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1360
    const v6, 0x7f0600ce

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1361
    .local v2, "switchCameraMenu":Landroid/view/MenuItem;
    const v6, 0x7f0600cf

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 1362
    .local v3, "takePeerPhotoMenu":Landroid/view/MenuItem;
    const v6, 0x7f0600d1

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1363
    .local v0, "hideLocalVideoMenu":Landroid/view/MenuItem;
    const v6, 0x7f0600d0

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1364
    .local v1, "swapVideosMenu":Landroid/view/MenuItem;
    const v6, 0x7f0600d3

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 1365
    .local v4, "videoRecordMenu":Landroid/view/MenuItem;
    const v6, 0x7f0600d4

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1369
    .local v5, "videoSettingMenu":Landroid/view/MenuItem;
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1371
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v6

    iget-boolean v6, v6, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1373
    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1374
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1375
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v6

    iget-boolean v6, v6, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-eqz v6, :cond_0

    .line 1376
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0a0043

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 1380
    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v6}, Lcom/android/incallui/CallButtonPresenter;->shouldSwitchCameraVisible()Z

    move-result v6

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1381
    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1382
    invoke-static {}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getRecorderState()I

    move-result v6

    if-nez v6, :cond_1

    .line 1383
    const v6, 0x7f0a006d

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1388
    :goto_1
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->isDMLocked()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1389
    const-string v6, "setupVTMenuItems()... DM lock, just return"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1407
    :goto_2
    return-void

    .line 1378
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v8, 0x7f0a0042

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1385
    :cond_1
    const v6, 0x7f0a006e

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 1393
    :cond_2
    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1394
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v6

    iget-boolean v6, v6, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1396
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v6

    iget-boolean v6, v6, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonFragment;->getUi()Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->isDialpadVisible()Z

    move-result v6

    if-nez v6, :cond_3

    move v6, v7

    :goto_3
    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1399
    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1401
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v6}, Lcom/android/incallui/CallButtonPresenter;->shouldSwitchCameraEnable()Z

    move-result v6

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1403
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v6}, Lcom/android/incallui/CallButtonPresenter;->shouldVTRecordEnable()Z

    move-result v6

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1404
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v6

    check-cast v6, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v6}, Lcom/android/incallui/CallButtonPresenter;->shouldVideoSettingEnable()Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1406
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/incallui/ext/ExtensionManager;->getVTCallExtension()Lcom/mediatek/incallui/ext/VTCallExtension;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/mediatek/incallui/ext/VTCallExtension;->onPrepareOptionMenu(Landroid/view/Menu;)Z

    goto :goto_2

    .line 1396
    :cond_3
    const/4 v6, 0x0

    goto :goto_3
.end method

.method public showAddCall(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    const/16 v0, 0x8

    .line 404
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->inCarMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 405
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 410
    :goto_0
    return-void

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mAddButton:Landroid/widget/CompoundButton;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showGenericMergeButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 946
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mExtraRowButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 947
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mManageConferenceButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 948
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mGenericMergeButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 949
    return-void
.end method

.method public showHold(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    const/16 v0, 0x8

    .line 378
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->inCarMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 384
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mHoldButton:Landroid/widget/CompoundButton;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showManageConferenceCallButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 934
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mExtraRowButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 935
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mManageConferenceButton:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 936
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mGenericMergeButton:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 939
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mManageConferenceButton:Landroid/view/View;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mConferenceBkg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 940
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mConferenceImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 942
    return-void
.end method

.method public showMerge(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 393
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mMergeButton:Landroid/widget/CompoundButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 394
    return-void

    .line 393
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public showSwap(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 398
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mSwapButton:Landroid/widget/CompoundButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 399
    return-void

    .line 398
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateCallButton(Z)V
    .locals 4
    .param p1, "isVT"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVTButtonVisible()... isVT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1258
    if-eqz p1, :cond_1

    .line 1261
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallContrainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1262
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVtEndCallContrainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1264
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVoiceButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1265
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1267
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1270
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    .line 1271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonFragment;->mIsVTButtonVisible:Z

    .line 1292
    :goto_0
    return-void

    .line 1276
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mEndCallContrainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1277
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVtEndCallContrainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1279
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVoiceButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1280
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1281
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1288
    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/BaseFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonFragment;->updateAudioButtons(I)V

    .line 1290
    iput-boolean v2, p0, Lcom/android/incallui/CallButtonFragment;->mIsVTButtonVisible:Z

    goto :goto_0
.end method

.method public updateRecordBtnTitle(Ljava/lang/String;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1581
    invoke-direct {p0}, Lcom/android/incallui/CallButtonFragment;->inCarMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1582
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mRecordButton:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1584
    :cond_0
    return-void
.end method

.method public updateVTCallButton()V
    .locals 2

    .prologue
    .line 1555
    const-string v0, "updateVTCallButton()..."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1556
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTUtils;->isVTIdle()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1557
    iget-object v0, p0, Lcom/android/incallui/CallButtonFragment;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1559
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/CallButtonFragment;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1560
    return-void

    .line 1559
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
