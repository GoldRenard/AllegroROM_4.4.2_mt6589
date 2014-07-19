.class public Lcom/mediatek/gemini/SimManagement;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SimManagement.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/gemini/SimManagement$13;,
        Lcom/mediatek/gemini/SimManagement$GenSimSettingType;
    }
.end annotation


# static fields
.field private static final ACTION_DATA_USAGE_DISABLED_DIALOG_OK:Ljava/lang/String; = "com.mediatek.systemui.net.action.ACTION_DATA_USAGE_DISABLED_DIALOG_OK"

.field private static final ALL_RADIO_OFF:I = 0x0

.field private static final ALL_RADIO_ON:I = 0x3

.field private static final ATTACH_DATA_CONN_TIME_OUT:I = 0x1388

.field private static final CONFIRM_DIALOG_MSG_ID:Ljava/lang/String; = "confirm_dialog_msg_id"

.field private static final DATA_3G_SWITCH_TIME_OUT_MSG:I = 0x7d2

.field private static final DATA_SWITCH_TIME_OUT_MSG:I = 0x7d0

.field private static final DETACH_DATA_CONN_TIME_OUT:I = 0x1388

.field private static final DIALOG_3G_MODEM_SWITCH_CONFIRM:I = 0x3e9

.field private static final DIALOG_GPRS_SWITCH_CONFIRM:I = 0x3ea

.field private static final DIALOG_NOT_REMOVE_TIME_OUT:I = 0x3e8

.field private static final DIALOG_NOT_SHOW_SUCCESS_MSG:I = 0x7d1

.field private static final EVENT_DUAL_SIM_MODE_CHANGED_COMPLETE:I = 0x1

.field private static final GPRS_SELECTED_ID:Ljava/lang/String; = "gprs_selected_id"

.field private static final KEY_3G_SERVICE_SETTING:Ljava/lang/String; = "3g_service_settings"

.field private static final KEY_DEFAULT_SIM_SETTINGS_CATEGORY:Ljava/lang/String; = "default_sim"

.field private static final KEY_GENERAL_SETTINGS_CATEGORY:Ljava/lang/String; = "general_settings"

.field private static final KEY_GPRS_SIM_SETTING:Ljava/lang/String; = "gprs_sim_setting"

.field private static final KEY_SIM_CONTACTS_SETTINGS:Ljava/lang/String; = "contacts_sim"

.field private static final KEY_SIM_INFO_CATEGORY:Ljava/lang/String; = "sim_info"

.field private static final KEY_SMS_SIM_SETTING:Ljava/lang/String; = "sms_sim_setting"

.field private static final KEY_VIDEO_CALL_SIM_SETTING:Ljava/lang/String; = "video_call_sim_setting"

.field private static final KEY_VOICE_CALL_SIM_SETTING:Ljava/lang/String; = "voice_call_sim_setting"

.field private static final PROGRESS_DIALOG:I = 0x3e8

.field private static final PROGRESS_DIALOG_MSG_ID:Ljava/lang/String; = "progress_dialog_msg_id"

.field private static final SIM_SLOT_1_RADIO_ON:I = 0x1

.field private static final SIM_SLOT_2_RADIO_ON:I = 0x2

.field private static final SWITCH_3G_TIME_OUT:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "SimManagementSettings"

.field private static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field private static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"

.field private static final VIDEO_CALL_OFF:I = -0x1

.field private static final VT_SELECTED_ID:Ljava/lang/String; = "vt_selected_id"


# instance fields
.field private mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

.field private mConnService:Landroid/net/ConnectivityManager;

.field private mDataSwitchMsgIndex:I

.field private mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

.field private mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

.field private mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

.field private mHandler:Landroid/os/Handler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIs3GSwitchManualEnabled:Z

.field private mIs3gOff:Z

.field private mIsDataConnectActing:Z

.field private mIsManuAllowed:Z

.field private mIsManuSelected:Z

.field private mIsSIMRadioSwitching:Z

.field private mIsSlot1Insert:Z

.field private mIsSlot2Insert:Z

.field private mIsSmsCapable:Z

.field private mIsVoiceCapable:Z

.field private mIsVoipAvailable:Z

.field private mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mNoNeedRestoreProgDlg:Z

.field private mPhoneServiceListener:Landroid/telephony/PhoneStateListener;

.field private mProDlgMsgId:I

.field private mRemoveProgDlg:Z

.field private mSelectedGprsSimId:J

.field private mSelectedVideoSimId:J

.field private mSimAndContacts:Landroid/preference/PreferenceScreen;

.field private mSimInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSimInfoPreference:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/gemini/simui/SimCardInfoPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mSimNum:I

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

.field private mSwitchRadioStateMsg:Landroid/os/Messenger;

.field private mTelephony:Lcom/android/internal/telephony/ITelephony;

.field private mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

.field private mVTCallItemAvailable:Z

.field private mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

.field private mVoiceCallObserver:Landroid/database/ContentObserver;

.field private mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 90
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mVTCallItemAvailable:Z

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoipAvailable:Z

    .line 92
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    .line 103
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot1Insert:Z

    .line 104
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot2Insert:Z

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoPreference:Ljava/util/List;

    .line 149
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    .line 152
    iput v2, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    .line 154
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    .line 155
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSmsCapable:Z

    .line 156
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z

    .line 161
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    .line 162
    iput v2, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    .line 163
    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mNoNeedRestoreProgDlg:Z

    .line 174
    new-instance v0, Lcom/mediatek/gemini/SimManagement$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gemini/SimManagement$1;-><init>(Lcom/mediatek/gemini/SimManagement;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    .line 181
    new-instance v0, Lcom/mediatek/gemini/SimManagement$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/gemini/SimManagement$2;-><init>(Lcom/mediatek/gemini/SimManagement;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallObserver:Landroid/database/ContentObserver;

    .line 188
    new-instance v0, Lcom/mediatek/gemini/SimManagement$3;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimManagement$3;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mPhoneServiceListener:Landroid/telephony/PhoneStateListener;

    .line 199
    new-instance v0, Lcom/mediatek/gemini/SimManagement$4;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimManagement$4;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mHandler:Landroid/os/Handler;

    .line 223
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSwitchRadioStateMsg:Landroid/os/Messenger;

    .line 226
    new-instance v0, Lcom/mediatek/gemini/SimManagement$5;

    invoke-direct {v0, p0}, Lcom/mediatek/gemini/SimManagement$5;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimReceiver:Landroid/content/BroadcastReceiver;

    .line 1837
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateDataConnPrefe()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateVoiceCallPrefe()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->initPreferenceUI()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateSimInfoForPreference()V

    return-void
.end method

.method static synthetic access$1200(Lcom/mediatek/gemini/SimManagement;II)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->updatePrefIndicator(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->dealDlgOnAirplaneMode()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/gemini/simui/SimSelectDialogPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isGPRSEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/mediatek/gemini/SimManagement;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoPreference:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mediatek/gemini/SimManagement;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/SimManagement;->isRadioInOn(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/mediatek/gemini/SimManagement;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mediatek/gemini/SimManagement;I)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/SimManagement;->getSimIndicator(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mediatek/gemini/SimManagement;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/SimManagement;->handleRadioStatus(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/gemini/SimManagement;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/SimManagement;->handleTransaction(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mVTCallItemAvailable:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIs3GSwitchManualEnabled:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/gemini/simui/SimSelectDialogPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/mediatek/gemini/SimManagement;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p0, "x0"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/mediatek/gemini/SimManagement;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/mediatek/gemini/SimManagement;)Lcom/mediatek/settings/ext/ISimManagementExt;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/mediatek/gemini/SimManagement;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/mediatek/gemini/SimManagement;I)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/SimManagement;->switchGeminiPlusSimRadioState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->removeProgDlg()V

    return-void
.end method

.method static synthetic access$3000(Lcom/mediatek/gemini/SimManagement;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->switchSimRadioState(IZ)V

    return-void
.end method

.method static synthetic access$3100(Lcom/mediatek/gemini/SimManagement;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    return v0
.end method

.method static synthetic access$3200(Lcom/mediatek/gemini/SimManagement;)J
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedGprsSimId:J

    return-wide v0
.end method

.method static synthetic access$3300(Lcom/mediatek/gemini/SimManagement;J)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;
    .param p1, "x1"    # J

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->enableDataRoaming(J)V

    return-void
.end method

.method static synthetic access$3400(Lcom/mediatek/gemini/SimManagement;J)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;
    .param p1, "x1"    # J

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->switchGprsDefaultSIM(J)V

    return-void
.end method

.method static synthetic access$3500(Lcom/mediatek/gemini/SimManagement;)J
    .locals 2
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedVideoSimId:J

    return-wide v0
.end method

.method static synthetic access$3600(Lcom/mediatek/gemini/SimManagement;J)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;
    .param p1, "x1"    # J

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->switchVideoCallDefaultSIM(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/gemini/SimManagement;)Z
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mediatek/gemini/SimManagement;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->dealWithSwitchComplete()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/gemini/SimManagement;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/mediatek/gemini/SimManagement;->setStatusBarEnableStatus(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateVideoCallDefaultSIM()V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/gemini/SimManagement;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    return v0
.end method

.method static synthetic access$900(Lcom/mediatek/gemini/SimManagement;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/gemini/SimManagement;

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->getSimInfo()V

    return-void
.end method

.method private addSimInfoPreference()V
    .locals 7

    .prologue
    .line 829
    const-string v5, "SimManagementSettings"

    const-string v6, "addSimInfoPreference()"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    const-string v5, "sim_info"

    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 832
    .local v2, "simInfoListCategory":Landroid/preference/PreferenceGroup;
    if-eqz v2, :cond_1

    .line 834
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoPreference:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-eq v5, v6, :cond_1

    .line 835
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 836
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoPreference:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 837
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 838
    .local v4, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-direct {p0, v4}, Lcom/mediatek/gemini/SimManagement;->initSimInfoPreference(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    move-result-object v3

    .line 839
    .local v3, "simInfoPref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoPreference:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 843
    .end local v3    # "simInfoPref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .end local v4    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    iget v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-nez v5, :cond_1

    .line 844
    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 845
    .local v1, "pref":Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 846
    const v5, 0x7f090223

    invoke-virtual {v1, v5}, Landroid/preference/Preference;->setTitle(I)V

    .line 847
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 852
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "pref":Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method private current3GSlotId()I
    .locals 4

    .prologue
    .line 1000
    const/4 v1, -0x1

    .line 1002
    .local v1, "slot3G":I
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    if-eqz v2, :cond_0

    .line 1003
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    invoke-interface {v2}, Lcom/mediatek/common/telephony/ITelephonyEx;->get3GCapabilitySIM()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1008
    :cond_0
    :goto_0
    return v1

    .line 1005
    :catch_0
    move-exception v0

    .line 1006
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SimManagementSettings"

    const-string v3, "mTelephonyEx exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dataSwitchConfirmDlgMsg(J)I
    .locals 7
    .param p1, "simid"    # J

    .prologue
    const/4 v1, 0x1

    .line 1192
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->findSIMInfoBySimId(J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v2

    .line 1193
    .local v2, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v3

    .line 1194
    .local v3, "telephonyManagerEx":Lcom/mediatek/telephony/TelephonyManagerEx;
    iget v4, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v3, v4}, Lcom/mediatek/telephony/TelephonyManagerEx;->isNetworkRoaming(I)Z

    move-result v0

    .line 1195
    .local v0, "isInRoaming":Z
    iget v4, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDataRoaming:I

    if-ne v4, v1, :cond_0

    .line 1196
    .local v1, "isRoamingDataAllowed":Z
    :goto_0
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isInRoaming="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isRoamingDataAllowed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    if-eqz v0, :cond_1

    .line 1201
    if-nez v1, :cond_1

    .line 1217
    const v4, 0x7f09022e

    .line 1238
    :goto_1
    return v4

    .line 1195
    .end local v1    # "isRoamingDataAllowed":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1238
    .restart local v1    # "isRoamingDataAllowed":Z
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private dealDialogOnResume()V
    .locals 5

    .prologue
    const/16 v4, 0x3ea

    const/16 v3, 0x3e9

    .line 575
    const-string v0, "SimManagementSettings"

    const-string v1, "dealDialogOnResume"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    if-eqz v0, :cond_0

    .line 578
    const-string v0, "SimManagementSettings"

    const-string v1, "on resume to remove dialog"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    .line 582
    :cond_0
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRemoveProgDlg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 586
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 588
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 589
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 591
    :cond_2
    return-void
.end method

.method private dealDlgOnAirplaneMode()V
    .locals 4

    .prologue
    const/16 v3, 0x3ea

    const/16 v2, 0x3e9

    .line 593
    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    const-string v0, "SimManagementSettings"

    const-string v1, "dealDlgOnAirplaneMode"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 596
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 597
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateVideoCallDefaultSIM()V

    .line 603
    :cond_0
    :goto_0
    return-void

    .line 598
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 600
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateDataConnPrefe()V

    goto :goto_0
.end method

.method private dealWithSwitchComplete()V
    .locals 6

    .prologue
    .line 1512
    const-string v2, "SimManagementSettings"

    const-string v3, "dealWithSwitchComplete()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsSIMModeSwitching is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1537
    :goto_0
    return-void

    .line 1518
    :cond_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoPreference:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 1519
    .local v1, "pref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    const-string v2, "SimManagementSettings"

    const-string v3, "Since the dual sim mode changed, update switch state"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    invoke-virtual {v1}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/gemini/SimManagement;->isRadioInOn(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setChecked(Z)V

    goto :goto_1

    .line 1522
    .end local v1    # "pref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isGPRSEnable()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    .line 1523
    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    if-nez v2, :cond_2

    .line 1524
    const-string v2, "SimManagementSettings"

    const-string v3, "dual mode change by other not sim management"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :goto_2
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v3

    invoke-interface {v2, p0, v3}, Lcom/mediatek/settings/ext/ISimManagementExt;->showChangeDataConnDialog(Landroid/preference/PreferenceFragment;Z)V

    goto :goto_0

    .line 1526
    :cond_2
    const/16 v2, 0x3e8

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->isDialogShowing(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1527
    const-string v2, "SimManagementSettings"

    const-string v3, "Dialog is not show yet but dual sim modechange has sent msg"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    .line 1530
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->removeProgDlg()V

    .line 1531
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    goto :goto_2
.end method

.method private enableDataRoaming(J)V
    .locals 7
    .param p1, "value"    # J

    .prologue
    const/4 v6, 0x1

    .line 1676
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableDataRoaming with SimId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 1678
    .local v1, "simInfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    const/4 v2, -0x1

    .line 1679
    .local v2, "slotId":I
    if-eqz v1, :cond_1

    .line 1680
    iget v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 1687
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->isSimInsertedIn(J)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1689
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    if-eqz v3, :cond_0

    .line 1691
    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v2}, Lcom/mediatek/telephony/TelephonyManagerEx;->setDataRoamingEnabled(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1697
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v6, p1, p2}, Lcom/mediatek/telephony/SimInfoManager;->setDataRoaming(Landroid/content/Context;IJ)I

    .line 1701
    :goto_0
    return-void

    .line 1682
    :cond_1
    const-string v3, "SimManagementSettings"

    const-string v4, "SimInfoManager query failed"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1693
    :catch_0
    move-exception v0

    .line 1694
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SimManagementSettings"

    const-string v4, "mTelephony exception"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1699
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not inserted in phone do nothing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private findEachPreference()V
    .locals 1

    .prologue
    .line 432
    const-string v0, "voice_call_sim_setting"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    .line 433
    const-string v0, "video_call_sim_setting"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    .line 434
    const-string v0, "sms_sim_setting"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    .line 435
    const-string v0, "gprs_sim_setting"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    .line 436
    const-string v0, "contacts_sim"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    .line 438
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 439
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 440
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 441
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 444
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->setIconForDefaultSimPref()V

    .line 445
    return-void
.end method

.method private findSIMInfoBySimId(J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 4
    .param p1, "simid"    # J

    .prologue
    .line 1242
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 1243
    .local v1, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-wide v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 1248
    .end local v1    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    return-object v1

    .line 1247
    :cond_1
    const-string v2, "SimManagementSettings"

    const-string v3, "Error happend on findSIMInfoBySimId no siminfo find"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findSIMInofBySlotId(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 4
    .param p1, "mslot"    # I

    .prologue
    .line 1252
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 1253
    .local v1, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne v2, p1, :cond_0

    .line 1258
    .end local v1    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    return-object v1

    .line 1257
    :cond_1
    const-string v2, "SimManagementSettings"

    const-string v3, "Error happend on findSIMInofBySlotId no siminfo find"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDataValue(Ljava/lang/String;)J
    .locals 3
    .param p1, "dataString"    # Ljava/lang/String;

    .prologue
    .line 1760
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v1, -0x5

    invoke-static {v0, p1, v1, v2}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getEntryValues(Ljava/util/List;Lcom/mediatek/gemini/SimManagement$GenSimSettingType;)Ljava/util/List;
    .locals 6
    .param p2, "type"    # Lcom/mediatek/gemini/SimManagement$GenSimSettingType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/mediatek/gemini/SimManagement$GenSimSettingType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "origList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/4 v5, 0x1

    const-wide/16 v3, -0x1

    .line 966
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 967
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    sget-object v1, Lcom/mediatek/gemini/SimManagement$13;->$SwitchMap$com$mediatek$gemini$SimManagement$GenSimSettingType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 996
    :cond_0
    :goto_0
    return-object v0

    .line 969
    :pswitch_0
    iget-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoipAvailable:Z

    if-eqz v1, :cond_1

    .line 970
    const-string v1, "SimManagementSettings"

    const-string v2, "set internet call item"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const-wide/16 v1, -0x2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 972
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 974
    :cond_1
    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-le v1, v5, :cond_0

    .line 975
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 980
    :pswitch_1
    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-le v1, v5, :cond_2

    .line 981
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 983
    :cond_2
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v1, v0}, Lcom/mediatek/settings/ext/ISimManagementExt;->customizeSmsChoiceValueArray(Ljava/util/List;)V

    goto :goto_0

    .line 986
    :pswitch_2
    const-string v1, "SimManagementSettings"

    const-string v2, "only sim id no need add other items"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 989
    :pswitch_3
    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-lez v1, :cond_0

    .line 990
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 967
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getInverseNumber(I)I
    .locals 7
    .param p1, "num"    # I

    .prologue
    .line 1452
    const/4 v0, 0x4

    .line 1453
    .local v0, "constNum":I
    xor-int/lit8 v4, p1, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    .line 1454
    .local v2, "inverseStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1455
    .local v3, "str":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 1456
    .local v1, "inverseNum":I
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inverseNum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    return v1
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1572
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1573
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1574
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 1576
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private getNormalItem(Lcom/mediatek/gemini/SimManagement$GenSimSettingType;)Ljava/util/List;
    .locals 5
    .param p1, "type"    # Lcom/mediatek/gemini/SimManagement$GenSimSettingType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mediatek/gemini/SimManagement$GenSimSettingType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const v3, 0x7f09020f

    .line 931
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 932
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v1, Lcom/mediatek/gemini/SimManagement$13;->$SwitchMap$com$mediatek$gemini$SimManagement$GenSimSettingType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 959
    const-string v1, "SimManagementSettings"

    const-string v2, "pass wrong type"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    .line 934
    :pswitch_1
    iget-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoipAvailable:Z

    if-eqz v1, :cond_2

    .line 935
    const-string v1, "SimManagementSettings"

    const-string v2, "set internet call item"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    const v1, 0x7f090210

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoipAvailable:Z

    invoke-interface {v1, v0, v2}, Lcom/mediatek/settings/ext/ISimManagementExt;->customizeVoiceChoiceArray(Ljava/util/List;Z)V

    goto :goto_0

    .line 939
    :cond_2
    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-le v1, v4, :cond_1

    .line 940
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 946
    :pswitch_2
    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-le v1, v4, :cond_3

    .line 947
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 949
    :cond_3
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v1, v0}, Lcom/mediatek/settings/ext/ISimManagementExt;->customizeSmsChoiceArray(Ljava/util/List;)V

    goto :goto_0

    .line 954
    :pswitch_3
    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-lez v1, :cond_0

    .line 955
    const v1, 0x7f090211

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 932
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getSIMInfoById(Ljava/lang/Long;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 6
    .param p1, "simid"    # Ljava/lang/Long;

    .prologue
    .line 1182
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 1183
    .local v1, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-wide v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1188
    .end local v1    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    return-object v1

    .line 1187
    :cond_1
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error there is no correct siminfo found by simid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSimIndicator(I)I
    .locals 3
    .param p1, "slotId"    # I

    .prologue
    .line 1327
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimIndicator---slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1329
    const-string v0, "SimManagementSettings"

    const-string v1, "Force the state to be radio off as airplane mode or dual sim mode"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    const/4 v0, 0x1

    .line 1332
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-static {v0, v1}, Lcom/mediatek/gemini/GeminiUtils;->getSimIndicator(Landroid/content/ContentResolver;Lcom/android/internal/telephony/ITelephony;)I

    move-result v0

    goto :goto_0
.end method

.method private getSimInfo()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 638
    const-string v2, "SimManagementSettings"

    const-string v3, "getSimInfo()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    .line 640
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    .line 641
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total inserted sim card ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    new-instance v3, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;

    invoke-direct {v3}, Lcom/mediatek/gemini/GeminiUtils$SIMInfoComparable;-><init>()V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 645
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 646
    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mDisplayName = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-object v2, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mNumber = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-object v2, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v1, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    .line 649
    .local v1, "slot":I
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mSimSlotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    if-nez v1, :cond_1

    .line 651
    iput-boolean v7, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot1Insert:Z

    .line 655
    :cond_0
    :goto_1
    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mColor = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v2, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mDispalyNumberFormat = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget v2, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDispalyNumberFormat:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const-string v3, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo.mSimInfoId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v5, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 652
    :cond_1
    if-ne v1, v7, :cond_0

    .line 653
    iput-boolean v7, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot2Insert:Z

    goto :goto_1

    .line 660
    .end local v1    # "slot":I
    :cond_2
    return-void
.end method

.method private handleRadioStatus(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    .line 815
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsSIMRadioSwitching = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    if-eqz v2, :cond_0

    .line 817
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsSIMRadioSwitching:Z

    .line 819
    :cond_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoPreference:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 820
    .local v1, "pref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    invoke-virtual {v1}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/mediatek/gemini/SimManagement;->isRadioInOn(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setChecked(Z)V

    goto :goto_0

    .line 822
    .end local v1    # "pref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    :cond_1
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isGPRSEnable()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    .line 823
    return-void
.end method

.method private handleTransaction(Z)V
    .locals 3
    .param p1, "started"    # Z

    .prologue
    .line 424
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    .line 425
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v1}, Landroid/preference/DialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 426
    .local v0, "dlg":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 429
    :cond_0
    return-void

    .line 424
    .end local v0    # "dlg":Landroid/app/Dialog;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initIntentFilter()V
    .locals 2

    .prologue
    .line 485
    const-string v0, "SimManagementSettings"

    const-string v1, "initIntentFilter"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    .line 488
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 492
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.transaction.START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.mms.transaction.STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 496
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.mediatek.systemui.net.action.ACTION_DATA_USAGE_DISABLED_DIALOG_OK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 501
    return-void
.end method

.method private initPreferenceUI()V
    .locals 2

    .prologue
    .line 667
    const-string v0, "SimManagementSettings"

    const-string v1, "initPreferenceUI() and update UI"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 671
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->addSimInfoPreference()V

    .line 672
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->initSimSelectDialogPref()V

    .line 673
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->setPreferenceProperty()V

    .line 674
    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-nez v0, :cond_0

    .line 675
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->setNoSimInfoUi()V

    .line 677
    :cond_0
    return-void

    .line 670
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initSimInfoPreference(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .locals 9
    .param p1, "simInfo"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 768
    iget v6, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-direct {p0, v6}, Lcom/mediatek/gemini/SimManagement;->getSimIndicator(I)I

    move-result v3

    .line 770
    .local v3, "status":I
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_0

    move v0, v4

    .line 771
    .local v0, "isAirplaneModeOn":Z
    :goto_0
    new-instance v2, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    sget-object v6, Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;->Switch:Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v6, v7, v0}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;-><init>(Lcom/mediatek/gemini/simui/SimInfoViewUtil$WidgetType;Landroid/content/Context;Z)V

    .line 773
    .local v2, "simInfoPref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    invoke-virtual {v2, p1, v3}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setSimInfoProperty(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;I)V

    .line 776
    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    .line 777
    invoke-virtual {v2, v4}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setWidgetClickable(Z)V

    .line 778
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simid status is  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget v4, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-direct {p0, v4}, Lcom/mediatek/gemini/SimManagement;->isRadioInOn(I)Z

    move-result v1

    .line 780
    .local v1, "isRadioOn":Z
    invoke-virtual {v2, v1}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setChecked(Z)V

    .line 781
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim card "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " radio state is isRadioOn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    new-instance v4, Lcom/mediatek/gemini/SimManagement$6;

    invoke-direct {v4, p0, p1, v2}, Lcom/mediatek/gemini/SimManagement$6;-><init>(Lcom/mediatek/gemini/SimManagement;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Lcom/mediatek/gemini/simui/SimCardInfoPreference;)V

    invoke-virtual {v2, v4}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 811
    return-object v2

    .end local v0    # "isAirplaneModeOn":Z
    .end local v1    # "isRadioOn":Z
    .end local v2    # "simInfoPref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    :cond_0
    move v0, v5

    .line 770
    goto :goto_0
.end method

.method private initSimSelectDialogPref()V
    .locals 13

    .prologue
    .line 855
    const-string v10, "SimManagementSettings"

    const-string v11, "initSimSelecDialogPref()"

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 857
    .local v7, "simIdlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 858
    .local v8, "simIndicatorList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 859
    .local v2, "itemStatusList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 860
    .local v0, "entryValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 861
    .local v9, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-wide v10, v9, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    iget v10, v9, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/SimManagement;->getSimIndicator(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    iget-wide v10, v9, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 867
    .end local v9    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    sget-object v10, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->VOICE:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/SimManagement;->getNormalItem(Lcom/mediatek/gemini/SimManagement$GenSimSettingType;)Ljava/util/List;

    move-result-object v5

    .line 868
    .local v5, "normalListVoice":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "SimManagementSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "normalListVoice = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-object v11, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-virtual {v10, v11, v8, v5, v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEntriesData(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 870
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    sget-object v11, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->VOICE:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    invoke-direct {p0, v0, v11}, Lcom/mediatek/gemini/SimManagement;->getEntryValues(Ljava/util/List;Lcom/mediatek/gemini/SimManagement$GenSimSettingType;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEntryValues(Ljava/util/List;)V

    .line 873
    sget-object v10, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->SMS:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/SimManagement;->getNormalItem(Lcom/mediatek/gemini/SimManagement$GenSimSettingType;)Ljava/util/List;

    move-result-object v4

    .line 874
    .local v4, "normalListSms":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "SimManagementSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "normalListSms = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-object v11, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-virtual {v10, v11, v8, v4, v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEntriesData(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 876
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    sget-object v11, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->SMS:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    invoke-direct {p0, v0, v11}, Lcom/mediatek/gemini/SimManagement;->getEntryValues(Ljava/util/List;Lcom/mediatek/gemini/SimManagement$GenSimSettingType;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEntryValues(Ljava/util/List;)V

    .line 878
    iget-boolean v10, p0, Lcom/mediatek/gemini/SimManagement;->mVTCallItemAvailable:Z

    if-eqz v10, :cond_1

    .line 879
    sget-object v10, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->VIDEO:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/SimManagement;->getNormalItem(Lcom/mediatek/gemini/SimManagement$GenSimSettingType;)Ljava/util/List;

    move-result-object v6

    .line 880
    .local v6, "normalListVt":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "SimManagementSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "normalListVt = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-object v11, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-virtual {v10, v11, v8, v6, v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEntriesData(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 882
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    sget-object v11, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->VIDEO:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    invoke-direct {p0, v0, v11}, Lcom/mediatek/gemini/SimManagement;->getEntryValues(Ljava/util/List;Lcom/mediatek/gemini/SimManagement$GenSimSettingType;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEntryValues(Ljava/util/List;)V

    .line 885
    .end local v6    # "normalListVt":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    sget-object v10, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->DATA:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    invoke-direct {p0, v10}, Lcom/mediatek/gemini/SimManagement;->getNormalItem(Lcom/mediatek/gemini/SimManagement$GenSimSettingType;)Ljava/util/List;

    move-result-object v3

    .line 886
    .local v3, "normalListGprs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "SimManagementSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "normalListGprs = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-object v11, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-virtual {v10, v11, v8, v3, v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEntriesData(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 888
    iget-object v10, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    sget-object v11, Lcom/mediatek/gemini/SimManagement$GenSimSettingType;->DATA:Lcom/mediatek/gemini/SimManagement$GenSimSettingType;

    invoke-direct {p0, v0, v11}, Lcom/mediatek/gemini/SimManagement;->getEntryValues(Ljava/util/List;Lcom/mediatek/gemini/SimManagement$GenSimSettingType;)Ljava/util/List;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEntryValues(Ljava/util/List;)V

    .line 889
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->setSimSelectEnableState()V

    .line 890
    return-void
.end method

.method private isGPRSEnable()Z
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1771
    const/4 v1, 0x0

    .line 1773
    .local v1, "isMMSProcess":Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    if-nez v7, :cond_0

    .line 1790
    :goto_0
    return v5

    .line 1777
    :cond_0
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1778
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_2

    .line 1779
    const/4 v7, 0x2

    invoke-virtual {v0, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1780
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_2

    .line 1781
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 1782
    .local v4, "state":Landroid/net/NetworkInfo$State;
    const-string v7, "SimManagementSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mms state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v4, v7, :cond_1

    sget-object v7, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v7, :cond_3

    :cond_1
    move v1, v6

    .line 1787
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v4    # "state":Landroid/net/NetworkInfo$State;
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v2

    .line 1788
    .local v2, "isRadioOff":Z
    const-string v7, "SimManagementSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isMMSProcess="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " isRadioOff="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    :goto_2
    move v5, v6

    goto :goto_0

    .end local v2    # "isRadioOff":Z
    .restart local v3    # "networkInfo":Landroid/net/NetworkInfo;
    .restart local v4    # "state":Landroid/net/NetworkInfo$State;
    :cond_3
    move v1, v5

    .line 1783
    goto :goto_1

    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v4    # "state":Landroid/net/NetworkInfo$State;
    .restart local v2    # "isRadioOff":Z
    :cond_4
    move v6, v5

    .line 1790
    goto :goto_2
.end method

.method private isRadioInOn(I)Z
    .locals 5
    .param p1, "slotId"    # I

    .prologue
    .line 744
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRadioInOn with slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isRadioOff()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 746
    const/4 v1, 0x0

    .line 759
    :goto_0
    return v1

    .line 748
    :cond_0
    const/4 v1, 0x0

    .line 753
    .local v1, "isRadioInOn":Z
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 758
    :goto_1
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRadioInOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 755
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SimManagementSettings"

    const-string v3, "mTelephony exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isRadioOff()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 1797
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dual_sim_mode_setting"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-nez v1, :cond_1

    .line 1802
    .local v0, "isAllRadioOff":Z
    :cond_0
    :goto_0
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAllRadioOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1803
    return v0

    .line 1797
    .end local v0    # "isAllRadioOff":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSimInsertedIn(J)Z
    .locals 5
    .param p1, "simId"    # J

    .prologue
    .line 565
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 566
    .local v1, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget-wide v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 567
    const/4 v2, 0x1

    .line 571
    .end local v1    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :goto_0
    return v2

    .line 570
    :cond_1
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not inserted in phone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSupportVTCallSetting()Z
    .locals 1

    .prologue
    .line 1735
    const/4 v0, 0x0

    return v0
.end method

.method private isVoipAvailable()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1635
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_internet_call_value"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1638
    .local v0, "isInternetCallEnabled":I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private removeDefaultSettingsItem()V
    .locals 4

    .prologue
    .line 460
    const-string v2, "SimManagementSettings"

    const-string v3, "removeGeneralSettingsItem"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const-string v2, "default_sim"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 462
    .local v1, "pref":Landroid/preference/PreferenceGroup;
    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-nez v2, :cond_2

    .line 463
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 464
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 470
    :goto_0
    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsSmsCapable:Z

    if-nez v2, :cond_0

    .line 471
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 475
    :cond_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 476
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 477
    const-string v2, "general_settings"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 478
    .local v0, "generalSettings":Landroid/preference/PreferenceGroup;
    if-eqz v0, :cond_1

    .line 479
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 482
    :cond_1
    return-void

    .line 467
    .end local v0    # "generalSettings":Landroid/preference/PreferenceGroup;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private removeProgDlg()V
    .locals 2

    .prologue
    .line 1540
    const-string v0, "SimManagementSettings"

    const-string v1, "removeProgDlg()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1542
    const-string v0, "SimManagementSettings"

    const-string v1, "Progress Dialog removed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 1548
    :goto_0
    return-void

    .line 1545
    :cond_0
    const-string v0, "SimManagementSettings"

    const-string v1, "under onpause not enable to remove set flag as true"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mRemoveProgDlg:Z

    goto :goto_0
.end method

.method private removeUnusedPref()V
    .locals 5

    .prologue
    .line 605
    const-string v2, "SimManagementSettings"

    const-string v3, "removeUnusedPref()"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const-string v2, "general_settings"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 608
    .local v0, "GeneralSettingsCategory":Landroid/preference/PreferenceGroup;
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    .line 609
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 612
    :cond_0
    const-string v2, "default_sim"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 614
    .local v1, "pref":Landroid/preference/PreferenceGroup;
    if-nez v1, :cond_2

    .line 635
    :cond_1
    :goto_0
    return-void

    .line 619
    :cond_2
    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-nez v2, :cond_3

    .line 620
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 621
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 622
    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsSmsCapable:Z

    if-nez v2, :cond_3

    .line 623
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 626
    :cond_3
    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoipAvailable:Z

    if-nez v2, :cond_4

    .line 628
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 631
    :cond_4
    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mVTCallItemAvailable:Z

    if-nez v2, :cond_1

    .line 632
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video call is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/gemini/SimManagement;->mVTCallItemAvailable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " remove the pref"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private replaceIMString()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 410
    const-string v1, "sim_info"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 411
    .local v0, "simInfoListCategory":Landroid/preference/PreferenceGroup;
    if-eqz v0, :cond_0

    .line 412
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    const v2, 0x7f090201

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v4}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 415
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    const v3, 0x7f090200

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 417
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    if-eqz v1, :cond_1

    .line 418
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    const v3, 0x7f09020a

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 421
    :cond_1
    return-void
.end method

.method private setIconForDefaultSimPref()V
    .locals 2

    .prologue
    .line 449
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    const v1, 0x7f020071

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 450
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    const v1, 0x7f02006e

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 451
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 452
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 453
    return-void
.end method

.method private setNoSimInfoUi()V
    .locals 6

    .prologue
    const v5, 0x1110007

    .line 697
    const-string v2, "sim_info"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 698
    .local v1, "simInfoListCategory":Landroid/preference/PreferenceGroup;
    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/mediatek/settings/OobeUtils;->isOobeMode(Lcom/android/settings/SettingsPreferenceFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 702
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 703
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_2

    .line 705
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    const v3, 0x7f090223

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 707
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 709
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 712
    iget-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoipAvailable:Z

    if-eqz v2, :cond_3

    .line 713
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    goto :goto_0

    .line 717
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 718
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish() sim management for sim hot swap as mSimNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const-string v2, "tablet"

    const-string v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 720
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 722
    const-string v2, "SimManagementSettings"

    const-string v3, "[Tablet] It is single pane, so finish it!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 725
    :cond_4
    const-string v2, "SimManagementSettings"

    const-string v3, "[Tablet] It is multi pane, so do not finish it!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 728
    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 730
    const-string v2, "SimManagementSettings"

    const-string v3, "[Tablet] It is single pane, so finish it 2!"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_0
.end method

.method private setPreferenceProperty()V
    .locals 14

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1012
    const-string v9, "voice_call_sim_setting"

    invoke-direct {p0, v9}, Lcom/mediatek/gemini/SimManagement;->getDataValue(Ljava/lang/String;)J

    move-result-wide v7

    .line 1013
    .local v7, "voicecallID":J
    const-string v9, "sms_sim_setting"

    invoke-direct {p0, v9}, Lcom/mediatek/gemini/SimManagement;->getDataValue(Ljava/lang/String;)J

    move-result-wide v4

    .line 1019
    .local v4, "smsID":J
    iget v9, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-lez v9, :cond_4

    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v9}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v0, v9, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 1022
    .local v0, "dataconnectionID":J
    :goto_0
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->current3GSlotId()I

    move-result v6

    .line 1023
    .local v6, "videocallSlotID":I
    const-string v9, "SimManagementSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "voicecallID ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " smsID ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " dataconnectionID ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " videocallSlotID ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v9, v7, v8}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setValue(J)V

    .line 1027
    const-wide/16 v12, -0x5

    cmp-long v9, v7, v12

    if-nez v9, :cond_0

    .line 1028
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    const v12, 0x7f09075c

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(I)V

    .line 1030
    :cond_0
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v9, v4, v5}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setValue(J)V

    .line 1031
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v9, v0, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setValue(J)V

    .line 1032
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isGPRSEnable()Z

    move-result v12

    invoke-virtual {v9, v12}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    .line 1034
    iget-boolean v9, p0, Lcom/mediatek/gemini/SimManagement;->mVTCallItemAvailable:Z

    if-eqz v9, :cond_3

    .line 1035
    const/4 v9, -0x1

    if-eq v6, v9, :cond_1

    iget-boolean v9, p0, Lcom/mediatek/gemini/SimManagement;->mIsManuSelected:Z

    if-nez v9, :cond_5

    iget-boolean v9, p0, Lcom/mediatek/gemini/SimManagement;->mIsManuAllowed:Z

    if-nez v9, :cond_5

    .line 1036
    :cond_1
    iput-boolean v10, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    .line 1037
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    const v12, 0x7f090212

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(I)V

    .line 1045
    :cond_2
    :goto_1
    :try_start_0
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    if-eqz v9, :cond_3

    .line 1047
    iget-object v12, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-boolean v9, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    if-nez v9, :cond_6

    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    invoke-interface {v9}, Lcom/mediatek/common/telephony/ITelephonyEx;->is3GSwitchLocked()Z

    move-result v9

    if-nez v9, :cond_6

    iget v9, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-le v9, v10, :cond_6

    iget-boolean v9, p0, Lcom/mediatek/gemini/SimManagement;->mIs3GSwitchManualEnabled:Z

    if-eqz v9, :cond_6

    move v9, v10

    :goto_2
    invoke-virtual {v12, v9}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    .line 1049
    const-string v9, "SimManagementSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mIs3gOff="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/mediatek/gemini/SimManagement;->mIs3gOff:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    const-string v9, "SimManagementSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mTelephonyEx.is3GSwitchLocked() is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    invoke-interface {v11}, Lcom/mediatek/common/telephony/ITelephonyEx;->is3GSwitchLocked()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :cond_3
    :goto_3
    return-void

    .line 1019
    .end local v0    # "dataconnectionID":J
    .end local v6    # "videocallSlotID":I
    :cond_4
    const-wide/16 v0, 0x0

    goto/16 :goto_0

    .line 1039
    .restart local v0    # "dataconnectionID":J
    .restart local v6    # "videocallSlotID":I
    :cond_5
    invoke-direct {p0, v6}, Lcom/mediatek/gemini/SimManagement;->findSIMInofBySlotId(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v3

    .line 1040
    .local v3, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v3, :cond_2

    .line 1041
    iget-object v9, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-wide v12, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v9, v12, v13}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setValue(J)V

    goto :goto_1

    .end local v3    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_6
    move v9, v11

    .line 1047
    goto :goto_2

    .line 1053
    :catch_0
    move-exception v2

    .line 1054
    .local v2, "e":Landroid/os/RemoteException;
    const-string v9, "SimManagementSettings"

    const-string v10, "mTelephonyEx exception"

    invoke-static {v9, v10}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private setSimSelectEnableState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 897
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mVTCallItemAvailable:Z

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->getItemCount()I

    move-result v0

    if-gt v0, v1, :cond_3

    .line 899
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    .line 908
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    if-eqz v0, :cond_1

    .line 909
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->getItemCount()I

    move-result v0

    if-gt v0, v1, :cond_5

    .line 910
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    .line 915
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->getItemCount()I

    move-result v0

    if-gt v0, v1, :cond_6

    .line 916
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    .line 920
    :goto_2
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    .line 922
    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-ne v0, v1, :cond_7

    .line 923
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 929
    :cond_2
    :goto_3
    return-void

    .line 901
    :cond_3
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mIs3GSwitchManualEnabled:Z

    if-eqz v0, :cond_4

    .line 902
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    goto :goto_0

    .line 904
    :cond_4
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, v2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    goto :goto_0

    .line 912
    :cond_5
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    goto :goto_1

    .line 918
    :cond_6
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    goto :goto_2

    .line 924
    :cond_7
    iget v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimNum:I

    if-le v0, v1, :cond_2

    .line 926
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mSimAndContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3
.end method

.method private setStatusBarEnableStatus(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 1743
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStatusBarEnableStatus("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1746
    .local v0, "statusBarManager":Landroid/app/StatusBarManager;
    if-eqz v0, :cond_1

    .line 1747
    if-eqz p1, :cond_0

    .line 1748
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 1757
    :goto_0
    return-void

    .line 1750
    :cond_0
    const/high16 v1, 0x1210000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 1755
    :cond_1
    const-string v1, "SimManagementSettings"

    const-string v2, "Fail to get status bar instance"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showDataConnDialog(Z)V
    .locals 4
    .param p1, "isConnect"    # Z

    .prologue
    .line 1554
    const-wide/16 v0, 0x0

    .line 1555
    .local v0, "delaytime":J
    if-eqz p1, :cond_0

    .line 1556
    const-wide/16 v0, 0x1388

    .line 1560
    :goto_0
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1561
    const v2, 0x7f090225

    invoke-direct {p0, v2}, Lcom/mediatek/gemini/SimManagement;->showProgressDlg(I)V

    .line 1562
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/mediatek/gemini/SimManagement;->mIsDataConnectActing:Z

    .line 1563
    return-void

    .line 1558
    :cond_0
    const-wide/16 v0, 0x1388

    goto :goto_0
.end method

.method private showProgressDlg(I)V
    .locals 3
    .param p1, "dialogMsg"    # I

    .prologue
    .line 1566
    const-string v0, "SimManagementSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showProgressDlg() with dialogMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    iput p1, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    .line 1568
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V

    .line 1569
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->setCancelable(Z)V

    .line 1570
    return-void
.end method

.method private switchGeminiPlusSimRadioState(I)V
    .locals 8
    .param p1, "slot"    # I

    .prologue
    .line 1461
    const-string v5, "SimManagementSettings"

    const-string v6, "switchGeminiPlusSimRadioState"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dual_sim_mode_setting"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1464
    .local v0, "dualSimMode":I
    move v4, p1

    .line 1466
    .local v4, "modeSlot":I
    const/4 v3, 0x0

    .line 1467
    .local v3, "isRadioOn":Z
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The current dual sim mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "with slot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    packed-switch p1, :pswitch_data_0

    .line 1482
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error of the slot = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :goto_0
    and-int v5, v0, v4

    if-lez v5, :cond_0

    .line 1486
    invoke-direct {p0, v4}, Lcom/mediatek/gemini/SimManagement;->getInverseNumber(I)I

    move-result v5

    and-int v1, v0, v5

    .line 1487
    .local v1, "dualState":I
    const/4 v3, 0x0

    .line 1503
    :goto_1
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dualState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isRadioOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "dual_sim_mode_setting"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1506
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1507
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "mode"

    invoke-virtual {v2, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1508
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1509
    return-void

    .line 1470
    .end local v1    # "dualState":I
    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_0
    const/4 v4, 0x1

    .line 1471
    goto :goto_0

    .line 1473
    :pswitch_1
    const/4 v4, 0x2

    .line 1474
    goto :goto_0

    .line 1476
    :pswitch_2
    const/4 v4, 0x4

    .line 1477
    goto :goto_0

    .line 1479
    :pswitch_3
    const/16 v4, 0x8

    .line 1480
    goto :goto_0

    .line 1489
    :cond_0
    or-int v1, v0, v4

    .line 1490
    .restart local v1    # "dualState":I
    const/4 v3, 0x1

    goto :goto_1

    .line 1468
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private switchGprsDefaultSIM(J)V
    .locals 6
    .param p1, "simid"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 1649
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchGprsDefaultSIM() with simid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    cmp-long v1, p1, v4

    if-ltz v1, :cond_0

    cmp-long v1, p1, v4

    if-lez v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->isSimInsertedIn(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1651
    :cond_0
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not available anymore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :goto_0
    return-void

    .line 1654
    :cond_1
    cmp-long v1, p1, v4

    if-lez v1, :cond_2

    const/4 v0, 0x1

    .line 1671
    .local v0, "isConnect":Z
    :goto_1
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    goto :goto_0

    .line 1654
    .end local v0    # "isConnect":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private switchSimRadioState(IZ)V
    .locals 9
    .param p1, "slot"    # I
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 1339
    const-string v4, "SimManagementSettings"

    const-string v5, "switchSimRadioState"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dual_sim_mode_setting"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1342
    .local v0, "dualSimMode":I
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The current dual sim mode is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v4, v8}, Lcom/mediatek/settings/ext/ISimManagementExt;->setToClosedSimSlot(I)V

    .line 1346
    const/4 v1, 0x0

    .line 1347
    .local v1, "dualState":I
    const/4 v3, 0x0

    .line 1348
    .local v3, "isRadioOn":Z
    packed-switch v0, :pswitch_data_0

    .line 1429
    const-string v4, "SimManagementSettings"

    const-string v5, "Error not correct values"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :goto_0
    return-void

    .line 1350
    :pswitch_0
    if-nez p1, :cond_2

    .line 1351
    const/4 v1, 0x1

    .line 1355
    :cond_0
    :goto_1
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Turning on only sim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    const/4 v3, 0x1

    .line 1443
    :cond_1
    :goto_2
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dualState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isRadioOn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "dual_sim_mode_setting"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1446
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.DUAL_SIM_MODE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1447
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "mode"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1448
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1352
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_2
    if-ne p1, v7, :cond_0

    .line 1353
    const/4 v1, 0x2

    goto :goto_1

    .line 1359
    :pswitch_1
    if-nez p1, :cond_4

    .line 1360
    if-eqz p2, :cond_3

    .line 1361
    const-string v4, "SimManagementSettings"

    const-string v5, "try to turn on slot 1 again since it is already on"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1362
    move v1, v0

    .line 1363
    const/4 v3, 0x1

    .line 1368
    :goto_3
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Turning off sim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and all sim radio is off"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1365
    :cond_3
    const/4 v1, 0x0

    .line 1366
    const/4 v3, 0x0

    goto :goto_3

    .line 1370
    :cond_4
    if-ne p1, v7, :cond_1

    .line 1371
    iget-boolean v4, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot1Insert:Z

    if-eqz v4, :cond_5

    .line 1372
    const/4 v1, 0x3

    .line 1373
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim 0 was radio on and now turning on sim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :goto_4
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 1376
    :cond_5
    const/4 v1, 0x2

    .line 1377
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Turning on only sim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1383
    :pswitch_2
    if-ne p1, v7, :cond_7

    .line 1384
    if-eqz p2, :cond_6

    .line 1385
    const-string v4, "SimManagementSettings"

    const-string v5, "try to turn on slot 2 again since it is already on"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    move v1, v0

    .line 1387
    const/4 v3, 0x1

    .line 1392
    :goto_5
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Turning off sim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and all sim radio is off"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1389
    :cond_6
    const/4 v1, 0x0

    .line 1390
    const/4 v3, 0x0

    goto :goto_5

    .line 1394
    :cond_7
    if-nez p1, :cond_1

    .line 1395
    iget-boolean v4, p0, Lcom/mediatek/gemini/SimManagement;->mIsSlot2Insert:Z

    if-eqz v4, :cond_8

    .line 1396
    const/4 v1, 0x3

    .line 1397
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim 1 was radio on and now turning on sim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    :goto_6
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 1399
    :cond_8
    const/4 v1, 0x1

    .line 1400
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Turning on only sim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1406
    :pswitch_3
    if-nez p2, :cond_b

    .line 1407
    if-nez p1, :cond_a

    .line 1408
    const/4 v1, 0x2

    .line 1410
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/mediatek/settings/ext/ISimManagementExt;->setToClosedSimSlot(I)V

    .line 1411
    const-string v4, "SimManagementSettings"

    const-string v5, "setToClosedSimSlot(PhoneConstants.GEMINI_SIM_1)"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    :cond_9
    :goto_7
    const-string v4, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Turning off only sim "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1413
    :cond_a
    if-ne p1, v7, :cond_9

    .line 1414
    const/4 v1, 0x1

    .line 1416
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v4, v7}, Lcom/mediatek/settings/ext/ISimManagementExt;->setToClosedSimSlot(I)V

    .line 1417
    const-string v4, "SimManagementSettings"

    const-string v5, "setToClosedSimSlot(PhoneConstants.GEMINI_SIM_2)"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1423
    :cond_b
    const-string v4, "SimManagementSettings"

    const-string v5, "try to turn on but actually they are all on"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    move v1, v0

    .line 1425
    const/4 v3, 0x1

    .line 1427
    goto/16 :goto_2

    .line 1348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private switchVideoCallDefaultSIM(J)V
    .locals 6
    .param p1, "simid"    # J

    .prologue
    .line 1709
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchVideoCallDefaultSIM to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1710
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    if-eqz v2, :cond_0

    .line 1711
    invoke-direct {p0, p1, p2}, Lcom/mediatek/gemini/SimManagement;->findSIMInfoBySimId(J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 1712
    .local v1, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "siminfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1713
    if-nez v1, :cond_1

    .line 1714
    const-string v2, "SimManagementSettings"

    const-string v3, "Error no corrent siminfo found"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    .end local v1    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    :goto_0
    return-void

    .line 1718
    .restart local v1    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    :try_start_0
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set sim slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with 3G capability"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    iget v3, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-interface {v2, v3}, Lcom/mediatek/common/telephony/ITelephonyEx;->set3GCapabilitySIM(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1721
    const v2, 0x7f090226

    invoke-direct {p0, v2}, Lcom/mediatek/gemini/SimManagement;->showProgressDlg(I)V

    .line 1722
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7d2

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1726
    :catch_0
    move-exception v0

    .line 1727
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SimManagementSettings"

    const-string v3, "mTelephonyEx exception"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1724
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateVideoCallDefaultSIM()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private updateDataConnPrefe()V
    .locals 5

    .prologue
    .line 1585
    const-wide/16 v0, 0x0

    .line 1591
    .local v0, "simid":J
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mConnService:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1592
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    iget-wide v0, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    .line 1595
    :cond_0
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gprs connection SIM changed with simid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v2, v0, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setValue(J)V

    .line 1597
    return-void
.end method

.method private updateDefaultSIMSummary(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;Ljava/lang/Long;)V
    .locals 7
    .param p1, "pref"    # Lcom/mediatek/gemini/simui/SimSelectDialogPreference;
    .param p2, "simid"    # Ljava/lang/Long;

    .prologue
    const-wide/16 v5, 0x0

    .line 1158
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDefaultSIMSummary() with simid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-lez v1, :cond_1

    .line 1160
    invoke-direct {p0, p2}, Lcom/mediatek/gemini/SimManagement;->getSIMInfoById(Ljava/lang/Long;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 1161
    .local v0, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 1162
    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1173
    .end local v0    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_0
    :goto_0
    return-void

    .line 1164
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x2

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 1165
    const v1, 0x7f090210

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 1166
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 1167
    const v1, 0x7f09020f

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 1168
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-nez v1, :cond_4

    .line 1169
    const v1, 0x7f090211

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 1170
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 1171
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/settings/ext/ISimManagementExt;->updateDefaultSIMSummary(Landroid/preference/DialogPreference;Ljava/lang/Long;)V

    goto :goto_0
.end method

.method private updatePrefIndicator(II)V
    .locals 5
    .param p1, "slotId"    # I
    .param p2, "indicator"    # I

    .prologue
    .line 504
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePrefIndicator with slotId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " indicator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->updateSimIndicator(II)V

    .line 506
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->updateSimIndicator(II)V

    .line 507
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->updateSimIndicator(II)V

    .line 508
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v2, p1, p2}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->updateSimIndicator(II)V

    .line 509
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoPreference:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 510
    .local v1, "pref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    invoke-virtual {v1}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 511
    invoke-virtual {v1, p2}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setSimIndicator(I)V

    goto :goto_0

    .line 514
    .end local v1    # "pref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    :cond_1
    return-void
.end method

.method private updateSimInfoForPreference()V
    .locals 8

    .prologue
    .line 680
    const-string v4, "SimManagementSettings"

    const-string v5, "updateSimInfoForPreference"

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->updateSimInfoList(Ljava/util/List;)V

    .line 682
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->updateSimInfoList(Ljava/util/List;)V

    .line 683
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->updateSimInfoList(Ljava/util/List;)V

    .line 684
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isGPRSEnable()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setEnabled(Z)V

    .line 685
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mGprsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->updateSimInfoList(Ljava/util/List;)V

    .line 686
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoPreference:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 687
    .local v2, "pref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    iget-object v4, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 688
    .local v3, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-virtual {v2}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimInfoId()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 689
    invoke-virtual {v2, v3}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->setSimInfoRecord(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V

    goto :goto_0

    .line 693
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pref":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    .end local v3    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_2
    return-void
.end method

.method private updateVideoCallDefaultSIM()V
    .locals 6

    .prologue
    .line 1613
    const-string v3, "SimManagementSettings"

    const-string v4, "updateVideoCallDefaultSIM()"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    if-eqz v3, :cond_0

    .line 1616
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    invoke-interface {v3}, Lcom/mediatek/common/telephony/ITelephonyEx;->get3GCapabilitySIM()I

    move-result v2

    .line 1617
    .local v2, "slotId":I
    const-string v3, "SimManagementSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateVideoCallDefaultSIM()---slotId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    if-gez v2, :cond_1

    .line 1629
    .end local v2    # "slotId":I
    :cond_0
    :goto_0
    return-void

    .line 1621
    .restart local v2    # "slotId":I
    :cond_1
    invoke-direct {p0, v2}, Lcom/mediatek/gemini/SimManagement;->findSIMInofBySlotId(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v1

    .line 1622
    .local v1, "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v1, :cond_0

    .line 1623
    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mVideoCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    iget-wide v4, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    invoke-virtual {v3, v4, v5}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setValue(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1625
    .end local v1    # "siminfo":Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v2    # "slotId":I
    :catch_0
    move-exception v0

    .line 1626
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "SimManagementSettings"

    const-string v4, "mTelephonyEx exception"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateVoiceCallPrefe()V
    .locals 5

    .prologue
    .line 1603
    const-string v2, "voice_call_sim_setting"

    invoke-direct {p0, v2}, Lcom/mediatek/gemini/SimManagement;->getDataValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 1604
    .local v0, "voicecallID":J
    const-string v2, "SimManagementSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "voice call SIM changed with simid is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v2, v0, v1}, Lcom/mediatek/gemini/simui/SimSelectDialogPreference;->setValue(J)V

    .line 1606
    return-void
.end method

.method private updateVoipPreference()V
    .locals 4

    .prologue
    .line 554
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isVoipAvailable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoipAvailable:Z

    .line 555
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsVoipAvailable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoipAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoipAvailable:Z

    if-nez v1, :cond_0

    .line 557
    const-string v1, "default_sim"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 558
    .local v0, "pref":Landroid/preference/PreferenceGroup;
    if-eqz v0, :cond_0

    .line 559
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 562
    .end local v0    # "pref":Landroid/preference/PreferenceGroup;
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 326
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 327
    const-string v1, "SimManagementSettings"

    const-string v2, "onCreate Sim Management"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const v1, 0x7f060047

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 330
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephony:Lcom/android/internal/telephony/ITelephony;

    .line 331
    const-string v1, "phoneEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/common/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/common/telephony/ITelephonyEx;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyEx:Lcom/mediatek/common/telephony/ITelephonyEx;

    .line 332
    invoke-static {}, Lcom/mediatek/telephony/TelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/TelephonyManagerEx;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyManagerEx:Lcom/mediatek/telephony/TelephonyManagerEx;

    .line 350
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mConnService:Landroid/net/ConnectivityManager;

    .line 351
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 352
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    .line 353
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/mediatek/gemini/SimManagement;->mIsSmsCapable:Z

    .line 356
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mPhoneServiceListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 358
    new-instance v1, Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-direct {v1}, Lcom/mediatek/CellConnService/CellConnMgr;-><init>()V

    iput-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    .line 359
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/CellConnService/CellConnMgr;->register(Landroid/content/Context;)V

    .line 360
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getSimManagmentExtPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    .line 361
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 362
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->isSupportVTCallSetting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 363
    iput-boolean v5, p0, Lcom/mediatek/gemini/SimManagement;->mVTCallItemAvailable:Z

    .line 365
    :cond_0
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsVoiceCapable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/gemini/SimManagement;->mIsVoiceCapable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsSmsCapable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/gemini/SimManagement;->mIsSmsCapable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mVTCallItemAvailable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/gemini/SimManagement;->mVTCallItemAvailable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v1, "general_settings"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 372
    .local v0, "parent":Landroid/preference/PreferenceGroup;
    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v1, v0}, Lcom/mediatek/settings/ext/ISimManagementExt;->updateSimManagementPref(Landroid/preference/PreferenceGroup;)V

    .line 374
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->initIntentFilter()V

    .line 375
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->findEachPreference()V

    .line 377
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->removeDefaultSettingsItem()V

    .line 379
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->getSimInfo()V

    .line 381
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mSimReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/gemini/SimManagement;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 384
    if-eqz p1, :cond_2

    .line 385
    const-string v1, "confirm_dialog_msg_id"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    .line 386
    const-string v1, "progress_dialog_msg_id"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    .line 388
    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    if-eq v1, v4, :cond_1

    .line 390
    const-string v1, "SimManagementSettings"

    const-string v2, "mProDlgMsgId != -1 to remove dialog"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iput-boolean v5, p0, Lcom/mediatek/gemini/SimManagement;->mNoNeedRestoreProgDlg:Z

    .line 393
    :cond_1
    const-string v1, "vt_selected_id"

    invoke-virtual {p1, v1, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedVideoSimId:J

    .line 394
    const-string v1, "gprs_selected_id"

    invoke-virtual {p1, v1, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedGprsSimId:J

    .line 395
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onrestore the dailog msg id with mDataSwitchMsgIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mProDlgMsgId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v1, "SimManagementSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onrestore mSelectedVideoSimId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedVideoSimId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mSelectedGprsSimId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedGprsSimId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->replaceIMString()V

    .line 403
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mediatek/settings/OobeUtils;->setSimView(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/Intent;)V

    .line 404
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 12
    .param p1, "id"    # I

    .prologue
    const v11, 0x1080027

    const v10, 0x1040014

    const v9, 0x1040013

    const v8, 0x1040009

    .line 1263
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateDialog() with id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1266
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 1322
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1268
    :pswitch_0
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1269
    .local v2, "dialog":Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1270
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1271
    iget v5, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    const v6, 0x7f090226

    if-ne v5, v6, :cond_0

    .line 1272
    const-string v5, "SimManagementSettings"

    const-string v6, "3G switch to dispatch home key"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 1274
    .local v4, "win":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 1275
    .local v3, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1276
    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1277
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/mediatek/gemini/SimManagement;->setStatusBarEnableStatus(Z)V

    .end local v3    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "win":Landroid/view/Window;
    :cond_0
    move-object v0, v2

    .line 1279
    goto :goto_0

    .line 1281
    .end local v2    # "dialog":Landroid/app/ProgressDialog;
    :pswitch_1
    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1282
    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1283
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1284
    new-instance v5, Lcom/mediatek/gemini/SimManagement$9;

    invoke-direct {v5, p0}, Lcom/mediatek/gemini/SimManagement$9;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {v1, v9, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1294
    new-instance v5, Lcom/mediatek/gemini/SimManagement$10;

    invoke-direct {v5, p0}, Lcom/mediatek/gemini/SimManagement$10;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {v1, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1300
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1301
    .local v0, "alertDlg":Landroid/app/AlertDialog;
    goto :goto_0

    .line 1303
    .end local v0    # "alertDlg":Landroid/app/AlertDialog;
    :pswitch_2
    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1304
    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1305
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090227

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1307
    new-instance v5, Lcom/mediatek/gemini/SimManagement$11;

    invoke-direct {v5, p0}, Lcom/mediatek/gemini/SimManagement$11;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {v1, v9, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1313
    new-instance v5, Lcom/mediatek/gemini/SimManagement$12;

    invoke-direct {v5, p0}, Lcom/mediatek/gemini/SimManagement$12;-><init>(Lcom/mediatek/gemini/SimManagement;)V

    invoke-virtual {v1, v8, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1319
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1320
    .restart local v0    # "alertDlg":Landroid/app/AlertDialog;
    goto/16 :goto_0

    .line 1266
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 1134
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 1135
    const-string v0, "SimManagementSettings"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1138
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mPhoneServiceListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1150
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/CellConnService/CellConnMgr;->unregister()V

    .line 1151
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1152
    const-string v0, "tablet"

    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/gemini/SimManagement;->setStatusBarEnableStatus(Z)V

    .line 1155
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1126
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 1127
    const-string v0, "SimManagementSettings"

    const-string v1, "OnPause()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1129
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1130
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x1

    const/4 v8, -0x1

    .line 1061
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1062
    .local v1, "key":Ljava/lang/String;
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enter onPreferenceChange function with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    const-string v5, "voice_call_sim_setting"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1064
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voice_call_sim_setting"

    move-object v5, p2

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1066
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VOICE_CALL_DEFAULT_SIM"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1068
    .local v0, "intent":Landroid/content/Intent;
    const-string v6, "simid"

    move-object v5, p2

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1069
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1070
    const-string v6, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send broadcast voice call change with simid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v5, p2

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    check-cast p2, Ljava/lang/Long;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-direct {p0, v5, p2}, Lcom/mediatek/gemini/SimManagement;->updateDefaultSIMSummary(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;Ljava/lang/Long;)V

    .line 1121
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v10

    .line 1073
    .restart local p2    # "arg1":Ljava/lang/Object;
    :cond_1
    const-string v5, "video_call_sim_setting"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1083
    const-string v5, "sms_sim_setting"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1084
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sms_sim_setting"

    move-object v5, p2

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 1086
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.SMS_DEFAULT_SIM"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1087
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v6, "simid"

    move-object v5, p2

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1088
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1089
    const-string v6, "SimManagementSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "send broadcast sms change with simid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v5, p2

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSmsSimSetting:Lcom/mediatek/gemini/simui/SimSelectDialogPreference;

    check-cast p2, Ljava/lang/Long;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-direct {p0, v5, p2}, Lcom/mediatek/gemini/SimManagement;->updateDefaultSIMSummary(Lcom/mediatek/gemini/simui/SimSelectDialogPreference;Ljava/lang/Long;)V

    goto :goto_0

    .line 1091
    .end local v0    # "intent":Landroid/content/Intent;
    .restart local p2    # "arg1":Ljava/lang/Object;
    :cond_2
    const-string v5, "gprs_sim_setting"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1092
    check-cast p2, Ljava/lang/Long;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1093
    .local v2, "simid":J
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "value="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mSimInfoList:Ljava/util/List;

    invoke-static {v2, v3, v5}, Lcom/mediatek/gemini/GeminiUtils;->getSimSlotIdBySimInfoId(JLjava/util/List;)I

    move-result v4

    .line 1095
    .local v4, "slotId":I
    if-eq v4, v8, :cond_3

    invoke-direct {p0, v4}, Lcom/mediatek/gemini/SimManagement;->getSimIndicator(I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 1096
    iget-object v5, p0, Lcom/mediatek/gemini/SimManagement;->mCellConnMgr:Lcom/mediatek/CellConnService/CellConnMgr;

    const/16 v6, 0x12e

    invoke-virtual {v5, v4, v6}, Lcom/mediatek/CellConnService/CellConnMgr;->handleCellConn(II)I

    goto/16 :goto_0

    .line 1109
    :cond_3
    iget v5, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    if-eq v5, v8, :cond_4

    .line 1110
    :cond_4
    invoke-direct {p0, v2, v3}, Lcom/mediatek/gemini/SimManagement;->switchGprsDefaultSIM(J)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 1808
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "preference: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/preference/Preference;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 1810
    .local v1, "key":Ljava/lang/String;
    instance-of v5, p2, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    if-eqz v5, :cond_0

    .line 1811
    const-string v5, "SimManagementSettings"

    const-string v6, "onPreferenceTreeClick"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, p2

    .line 1812
    check-cast v4, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    .line 1813
    .local v4, "simPreference":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    invoke-virtual {v4}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimInfoId()J

    move-result-wide v2

    .line 1814
    .local v2, "simId":J
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1815
    .local v0, "extras":Landroid/os/Bundle;
    const-string v5, "simid"

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1816
    const-string v5, "SimManagementSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sim id is  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    invoke-static {p0, v0}, Lcom/mediatek/settings/OobeUtils;->startSimEditor(Lcom/android/settings/SettingsPreferenceFragment;Landroid/os/Bundle;)V

    .line 1822
    const/4 v5, 0x1

    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v2    # "simId":J
    .end local v4    # "simPreference":Lcom/mediatek/gemini/simui/SimCardInfoPreference;
    :goto_0
    return v5

    .line 1820
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 518
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 519
    const-string v0, "SimManagementSettings"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-boolean v0, p0, Lcom/mediatek/gemini/SimManagement;->mNoNeedRestoreProgDlg:Z

    if-eqz v0, :cond_0

    const-string v0, "tablet"

    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 522
    const-string v0, "SimManagementSettings"

    const-string v1, "Unexpected is killed so restore the state but for progess dialog no need as the state has lost"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 525
    iput-boolean v3, p0, Lcom/mediatek/gemini/SimManagement;->mNoNeedRestoreProgDlg:Z

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->updateVoipPreference()V

    .line 532
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->initPreferenceUI()V

    .line 539
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mGprsDefaultSIMObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 543
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_call_sim_setting"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gemini/SimManagement;->mVoiceCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 547
    invoke-direct {p0}, Lcom/mediatek/gemini/SimManagement;->dealDialogOnResume()V

    .line 549
    iget-object v0, p0, Lcom/mediatek/gemini/SimManagement;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/mediatek/settings/ext/ISimManagementExt;->dealWithDataConnChanged(Landroid/content/Intent;Z)V

    .line 551
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1827
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1828
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1829
    const-string v0, "progress_dialog_msg_id"

    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mProDlgMsgId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1833
    :cond_0
    :goto_0
    const-string v0, "vt_selected_id"

    iget-wide v1, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedVideoSimId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1834
    const-string v0, "gprs_selected_id"

    iget-wide v1, p0, Lcom/mediatek/gemini/SimManagement;->mSelectedGprsSimId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1835
    return-void

    .line 1830
    :cond_1
    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->isDialogShowing(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1831
    const-string v0, "confirm_dialog_msg_id"

    iget v1, p0, Lcom/mediatek/gemini/SimManagement;->mDataSwitchMsgIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method
