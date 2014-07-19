.class public Lcom/android/settings/deviceinfo/UsbSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UsbSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static final AUTO_CLOSE_TIME:J = 0x2710L

.field private static final DEFAULT_WRITE_CATEGORY_KEY:Ljava/lang/String; = "usb_select"

.field private static final DLG_CONFIRM_KILL_STORAGE_USERS:I = 0x1

.field private static final DLG_ERROR_SHARING:I = 0x2

.field private static final ENABLE_ADB:Ljava/lang/String; = "enable_adb"

.field private static final ENABLE_USBTETHER:Ljava/lang/String; = "usb_tether_settings"

.field private static final HELP_CATEGORY_KEY:Ljava/lang/String; = "usb_help"

.field private static final INVALID:I = -0x1

.field private static final KEY_AUTOPOP:Ljava/lang/String; = "usb_auto_popup"

.field private static final KEY_BICR:Ljava/lang/String; = "usb_bicr"

.field private static final KEY_CHARGE:Ljava/lang/String; = "usb_charge"

.field private static final KEY_MTP:Ljava/lang/String; = "usb_mtp"

.field private static final KEY_PTP:Ljava/lang/String; = "usb_ptp"

.field private static final KEY_UMS:Ljava/lang/String; = "usb_ums"

.field private static final PROVISION_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UsbSettings"

.field private static final USBTETHER_CATEGORY:Ljava/lang/String; = "key_usb_tether"

.field private static final USB_CHARGING_PHLUGIN:I = 0x2

.field private static final USB_TETHERING:I = 0x1

.field static final localLOGV:Z


# instance fields
.field private bIsMassStorageUsed:Z

.field private mAsyncStorageHandler:Landroid/os/Handler;

.field private mAutoCloseTimer:Ljava/util/Timer;

.field private mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

.field private mBicrExist:Z

.field private mCanUpdateToggle:Z

.field private mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

.field private mChargeExist:Z

.field private mCheckBoxAdded:Z

.field private mCurrentToggles:Ljava/lang/String;

.field private mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

.field private mDestroyed:Z

.field private mEnableAdb:Landroid/preference/CheckBoxPreference;

.field private mEnablePop:Landroid/widget/CheckBox;

.field private mHelpCategory:Landroid/preference/PreferenceCategory;

.field private mHelpPreference:Lcom/android/settings/deviceinfo/HelperPreference;

.field private mIsHwUsbConnected:Z

.field private mIsPcKnowMe:Z

.field private mMassStorageActive:Z

.field private mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

.field private mOkClicked:Z

.field private mOkDialog:Landroid/app/Dialog;

.field private mPlugType:I

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProvisionApp:[Ljava/lang/String;

.field private mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSettingUMS:Z

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private mStorageListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mUIHandler:Landroid/os/Handler;

.field private mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

.field private mUmsExist:Z

.field private mUsbAccessoryMode:Z

.field private mUsbConfigured:Z

.field private mUsbConnected:Z

.field private mUsbHwDisconnected:Z

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/CheckBoxPreference;

.field private mUsbTetherCheckEnable:Z

.field private mUsbTetherDone:Z

.field private mUsbTetherFail:Z

.field private mUsbTethering:Z

.field private mUsbUnTetherDone:Z

.field private usbSetButtonListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 96
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCheckBoxAdded:Z

    .line 103
    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    .line 105
    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    .line 106
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkClicked:Z

    .line 109
    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAutoCloseTimer:Ljava/util/Timer;

    .line 114
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    .line 115
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    .line 130
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTethering:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherCheckEnable:Z

    .line 134
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbUnTetherDone:Z

    .line 135
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherDone:Z

    .line 136
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherFail:Z

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mTetherChoice:I

    .line 147
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicrExist:Z

    .line 148
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z

    .line 149
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsPcKnowMe:Z

    .line 150
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPlugType:I

    .line 151
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    .line 152
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;

    .line 161
    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 166
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->bIsMassStorageUsed:Z

    .line 167
    iput-boolean v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mSettingUMS:Z

    .line 175
    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 177
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$1;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 226
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$2;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    .line 303
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$3;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mRunnable:Ljava/lang/Runnable;

    .line 919
    new-instance v0, Lcom/android/settings/deviceinfo/UsbSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/UsbSettings$6;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->usbSetButtonListener:Landroid/view/View$OnClickListener;

    .line 1257
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mSettingUMS:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mSettingUMS:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/storage/StorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/deviceinfo/UsbSettings;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/deviceinfo/UsbSettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    iget v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPlugType:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/settings/deviceinfo/UsbSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPlugType:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnablePop:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->cancelAutoCloseTimer()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/deviceinfo/UsbSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->switchUsbMassStorage(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->bIsMassStorageUsed:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/deviceinfo/UsbSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->switchDisplayAsync(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->bIsMassStorageUsed:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbUnTetherDone:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbUnTetherDone:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherDone:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherDone:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherFail:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherFail:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/settings/deviceinfo/UsbSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/UsbSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/settings/deviceinfo/UsbSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->updateState()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbConnected:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbConfigured:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbConfigured:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbHwDisconnected:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbHwDisconnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/UsbSettings;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings;->switchDisplay(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/UsbSettings;)Landroid/preference/PreferenceCategory;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/UsbSettings;)Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/UsbSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->getCurrentFunction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsHwUsbConnected:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/deviceinfo/UsbSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsPcKnowMe:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/deviceinfo/UsbSettings;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/UsbSettings;
    .param p1, "x1"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mIsPcKnowMe:Z

    return p1
.end method

.method private cancelAutoCloseTimer()V
    .locals 1

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAutoCloseTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAutoCloseTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1071
    :cond_0
    return-void
.end method

.method private closeActivity()V
    .locals 1

    .prologue
    .line 1064
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1065
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 12

    .prologue
    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v9, 0x0

    .line 327
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 328
    .local v5, "root":Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_0

    .line 329
    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 331
    :cond_0
    const v7, 0x7f060053

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 332
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 343
    const-string v7, "usb_charge"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/deviceinfo/UsbPreference;

    iput-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    .line 344
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v7, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 346
    const-string v7, "usb_bicr"

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/deviceinfo/UsbPreference;

    iput-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    .line 347
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v7, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 350
    const-string v7, "enable_adb"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    .line 351
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_1

    .line 352
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 354
    .local v4, "cr":Landroid/content/ContentResolver;
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v7}, Landroid/app/Dialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 355
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 362
    .end local v4    # "cr":Landroid/content/ContentResolver;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->initCheckBoxView()V

    .line 364
    const-string v7, "key_usb_tether"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 365
    .local v6, "usbTetherCategory":Landroid/preference/PreferenceCategory;
    const-string v7, "usb_tether_settings"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    .line 366
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 368
    const-string v7, "usb_select"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    .line 369
    const-string v7, "usb_help"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHelpCategory:Landroid/preference/PreferenceCategory;

    .line 370
    new-instance v7, Lcom/android/settings/deviceinfo/HelperPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settings/deviceinfo/HelperPreference;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHelpPreference:Lcom/android/settings/deviceinfo/HelperPreference;

    .line 371
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHelpPreference:Lcom/android/settings/deviceinfo/HelperPreference;

    const v8, 0x7f090be1

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 372
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHelpCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHelpPreference:Lcom/android/settings/deviceinfo/HelperPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 373
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mHelpCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 376
    new-instance v7, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    .line 378
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    const-string v8, "usb_mtp"

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 380
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    const v8, 0x7f090752

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 381
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    const v8, 0x7f090753

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 382
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v7, v9, v11, v11}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setSwitch(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 387
    new-instance v7, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    .line 389
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    const-string v8, "usb_ptp"

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 391
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    const v8, 0x7f090754

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 392
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    const v8, 0x7f090755

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 393
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v7, v9, v11, v11}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setSwitch(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 395
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 398
    new-instance v7, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    .line 400
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    const-string v8, "usb_ums"

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 401
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v7, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 405
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090198

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0904fb

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setTitle(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    const v8, 0x7f090199

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setSummary(I)V

    .line 413
    iget-boolean v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->bIsMassStorageUsed:Z

    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/UsbSettings;->switchDisplay(Z)V

    .line 414
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 418
    const-string v7, "ro.sys.usb.storage.type"

    const-string v8, "mtp"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 421
    .local v3, "config":Ljava/lang/String;
    const-string v7, "mtp,mass_storage"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->hasExternalStorage()Z

    move-result v7

    if-nez v7, :cond_3

    .line 424
    :cond_2
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mDefaultWriteCategory:Landroid/preference/PreferenceCategory;

    iget-object v8, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 425
    iput-boolean v9, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    .line 428
    :cond_3
    const-string v7, "ro.sys.usb.charging.only"

    const-string v8, "no"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 430
    .local v2, "chargeConfig":Ljava/lang/String;
    const-string v7, "UsbSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ro.sys.usb.charging.only: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    const-string v7, "UsbSettings"

    const-string v8, "Usb Charge does not exist!"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 436
    iput-boolean v9, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    .line 439
    const-string v7, "ro.sys.usb.bicr"

    const-string v8, "no"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "bicrConfig":Ljava/lang/String;
    const-string v7, "UsbSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ro.sys.usb.bicr: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    const-string v7, "usb_connect_as_cdrom_category"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 446
    .local v1, "cdromCategory":Landroid/preference/PreferenceCategory;
    iget-object v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 447
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 449
    iput-boolean v9, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicrExist:Z

    .line 452
    return-object v5

    .line 357
    .end local v0    # "bicrConfig":Ljava/lang/String;
    .end local v1    # "cdromCategory":Landroid/preference/PreferenceCategory;
    .end local v2    # "chargeConfig":Ljava/lang/String;
    .end local v3    # "config":Ljava/lang/String;
    .end local v6    # "usbTetherCategory":Landroid/preference/PreferenceCategory;
    .restart local v4    # "cr":Landroid/content/ContentResolver;
    :cond_4
    iget-object v10, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const-string v7, "adb_enabled"

    invoke-static {v4, v7, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_5

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    :cond_5
    move v7, v9

    goto :goto_1
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1041
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    .line 1043
    :cond_0
    return-void
.end method

.method private getCurrentFunction()Ljava/lang/String;
    .locals 5

    .prologue
    .line 315
    const-string v2, "sys.usb.config"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    .local v1, "functions":Ljava/lang/String;
    const-string v2, "UsbSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current function: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 319
    .local v0, "commandIndex":I
    if-lez v0, :cond_0

    .line 320
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 322
    .end local v1    # "functions":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private hasExternalStorage()Z
    .locals 4

    .prologue
    .line 1342
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    const-string v2, "/storage/sdcarad1"

    invoke-virtual {v1, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1343
    .local v0, "state":Ljava/lang/String;
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "External Storage state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    if-eqz v0, :cond_0

    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initCheckBoxView()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 485
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCheckBoxAdded:Z

    if-nez v3, :cond_0

    .line 486
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v6, "layout_inflater"

    invoke-virtual {v3, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 487
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f040050

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v1, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 488
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 489
    const v3, 0x7f0b012a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnablePop:Landroid/widget/CheckBox;

    .line 490
    iput-boolean v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCheckBoxAdded:Z

    .line 492
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    .end local v2    # "v":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnablePop:Landroid/widget/CheckBox;

    if-eqz v3, :cond_1

    .line 493
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 494
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnablePop:Landroid/widget/CheckBox;

    const-string v3, "usb_auto_popup"

    invoke-static {v0, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 496
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnablePop:Landroid/widget/CheckBox;

    new-instance v4, Lcom/android/settings/deviceinfo/UsbSettings$4;

    invoke-direct {v4, p0}, Lcom/android/settings/deviceinfo/UsbSettings$4;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 555
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_1
    return-void

    .restart local v0    # "cr":Landroid/content/ContentResolver;
    :cond_2
    move v3, v5

    .line 494
    goto :goto_0
.end method

.method private setUsbTethering(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1247
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1249
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1250
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1251
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0907a7

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 1255
    :goto_0
    return-void

    .line 1254
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .param p1, "choice"    # I

    .prologue
    const/4 v4, 0x0

    .line 1218
    iput p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mTetherChoice:I

    .line 1219
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1220
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1221
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1222
    invoke-virtual {p0, v0, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1226
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 1224
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 1

    .prologue
    .line 1236
    iget v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mTetherChoice:I

    packed-switch v0, :pswitch_data_0

    .line 1244
    :goto_0
    return-void

    .line 1238
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 1236
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private switchDisplay(Z)V
    .locals 2
    .param p1, "usbStorageInUse"    # Z

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/deviceinfo/UsbSettings$8;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings$8;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 980
    return-void
.end method

.method private switchDisplayAsync(Z)V
    .locals 5
    .param p1, "usbStorageInUse"    # Z

    .prologue
    .line 984
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchDisplayAsync - usbStorageInUse: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 987
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "mass_storage"

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 989
    :cond_0
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchDisplayAsync , return !! mUms =:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mUsbManager =:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",activity= :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-eqz v1, :cond_1

    .line 992
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchDisplayAsync - mUsbManager.getDefaultFunction()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbManager;->getDefaultFunction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :cond_1
    :goto_0
    return-void

    .line 996
    :cond_2
    const-string v1, "UsbSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchDisplayAsync - usbStorageInUse 2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    if-eqz p1, :cond_3

    .line 998
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->isChecked()Z

    move-result v2

    const v3, 0x7f090be3

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->usbSetButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setSwitch(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 1012
    :goto_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setProgressBar(Z)V

    goto :goto_0

    .line 1002
    :cond_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->isChecked()Z

    move-result v2

    const v3, 0x7f090be2

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/deviceinfo/UsbSettings;->usbSetButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setSwitch(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method private switchUsbMassStorage(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 944
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAsyncStorageHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/deviceinfo/UsbSettings$7;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/deviceinfo/UsbSettings$7;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 971
    return-void
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 1304
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1307
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 1308
    .local v0, "available":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 1309
    .local v3, "tethered":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 1310
    .local v2, "errored":[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings/deviceinfo/UsbSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1311
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 1316
    const-string v0, "UsbSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=======> updateState - mUsbConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbConfigured:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbConfigured:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbHwDisconnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbHwDisconnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", checked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbUnTetherDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbUnTetherDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mUsbTetherDone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", tetherfail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherFail:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1325
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbConnected:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbConfigured:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbHwDisconnected:Z

    if-nez v0, :cond_1

    .line 1326
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherFail:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherDone:Z

    if-eqz v0, :cond_1

    .line 1327
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherCheckEnable:Z

    .line 1337
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/deviceinfo/UsbSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 1338
    return-void

    .line 1331
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbConnected:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbConfigured:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbHwDisconnected:Z

    if-nez v0, :cond_1

    .line 1332
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbUnTetherDone:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherFail:Z

    if-eqz v0, :cond_1

    .line 1333
    :cond_3
    iput-boolean v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherCheckEnable:Z

    goto :goto_0
.end method

.method private updateToggles(Ljava/lang/String;)V
    .locals 6
    .param p1, "function"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 663
    const-string v0, "UsbSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UsbSettings updateToggles function "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const-string v0, "mtp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 666
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v5}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 667
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 668
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 672
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3, v4, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setSwitch(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 676
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_2

    .line 677
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 679
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_3

    .line 680
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 767
    :cond_3
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbAccessoryMode:Z

    if-nez v0, :cond_1a

    .line 769
    const-string v0, "UsbSettings"

    const-string v1, "USB Normal Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 771
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 772
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_4

    .line 773
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 776
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->bIsMassStorageUsed:Z

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->switchDisplay(Z)V

    .line 778
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_5

    .line 779
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 781
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_6

    .line 782
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 804
    :cond_6
    :goto_1
    iput-object p1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCurrentToggles:Ljava/lang/String;

    .line 805
    return-void

    .line 682
    :cond_7
    const-string v0, "ptp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 683
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 684
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v5}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 685
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_8

    .line 686
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 689
    :cond_8
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_9

    .line 690
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3, v4, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setSwitch(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 693
    :cond_9
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_a

    .line 694
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 696
    :cond_a
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_3

    .line 697
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto :goto_0

    .line 699
    :cond_b
    const-string v0, "mass_storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 700
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 701
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 702
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_c

    .line 703
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v5}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 706
    :cond_c
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->bIsMassStorageUsed:Z

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->switchDisplay(Z)V

    .line 708
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_d

    .line 709
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 711
    :cond_d
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_3

    .line 712
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 714
    :cond_e
    const-string v0, "charging"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 715
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 716
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 717
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_f

    .line 718
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 721
    :cond_f
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_10

    .line 722
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3, v4, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setSwitch(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 725
    :cond_10
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_11

    .line 726
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v5}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 728
    :cond_11
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_3

    .line 729
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 731
    :cond_12
    const-string v0, "bicr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 732
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 733
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 734
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_13

    .line 735
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 738
    :cond_13
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_14

    .line 739
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3, v4, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setSwitch(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 742
    :cond_14
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_15

    .line 743
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 745
    :cond_15
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_3

    .line 746
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v5}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 749
    :cond_16
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 750
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 751
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_17

    .line 752
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setChecked(Z)Z

    .line 755
    :cond_17
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_18

    .line 756
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3, v4, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setSwitch(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 759
    :cond_18
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_19

    .line 760
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    .line 762
    :cond_19
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_3

    .line 763
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Lcom/android/settings/deviceinfo/UsbPreference;->setChecked(Z)Z

    goto/16 :goto_0

    .line 785
    :cond_1a
    const-string v0, "UsbSettings"

    const-string v1, "USB Accessory Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 787
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 788
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_1b

    .line 789
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 792
    :cond_1b
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUmsExist:Z

    if-eqz v0, :cond_1c

    .line 793
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v3, v4, v4}, Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;->setSwitch(ZLjava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 796
    :cond_1c
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mChargeExist:Z

    if-eqz v0, :cond_1d

    .line 797
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 799
    :cond_1d
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicrExist:Z

    if-eqz v0, :cond_6

    .line 800
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 21
    .param p1, "available"    # [Ljava/lang/String;
    .param p2, "tethered"    # [Ljava/lang/String;
    .param p3, "errored"    # [Ljava/lang/String;

    .prologue
    .line 1077
    const-string v18, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 1079
    .local v4, "cm":Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbConnected:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mMassStorageActive:Z

    move/from16 v18, v0

    if-nez v18, :cond_2

    const/4 v12, 0x1

    .line 1081
    .local v12, "usbAvailable":Z
    :goto_0
    const/4 v13, 0x0

    .line 1086
    .local v13, "usbError":I
    const/4 v14, 0x0

    .line 1087
    .local v14, "usbErrorIpv4":I
    const/16 v15, 0x10

    .line 1090
    .local v15, "usbErrorIpv6":I
    move-object/from16 v2, p1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v7, v2

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v6, v5

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .local v6, "i$":I
    :goto_1
    if-ge v6, v7, :cond_4

    aget-object v10, v2, v6

    .line 1091
    .local v10, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v3, "arr$":[Ljava/lang/String;
    array-length v8, v3

    .local v8, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_2
    if-ge v5, v8, :cond_3

    aget-object v9, v3, v5

    .line 1092
    .local v9, "regex":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    if-eqz v4, :cond_1

    .line 1095
    if-nez v14, :cond_0

    .line 1096
    invoke-virtual {v4, v10}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v18

    and-int/lit8 v14, v18, 0xf

    .line 1098
    :cond_0
    const/16 v18, 0x10

    move/from16 v0, v18

    if-ne v15, v0, :cond_1

    .line 1099
    invoke-virtual {v4, v10}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v15, v0, 0xf0

    .line 1091
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1079
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "regex":Ljava/lang/String;
    .end local v10    # "s":Ljava/lang/String;
    .end local v12    # "usbAvailable":Z
    .end local v13    # "usbError":I
    .end local v14    # "usbErrorIpv4":I
    .end local v15    # "usbErrorIpv6":I
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 1090
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v8    # "len$":I
    .restart local v10    # "s":Ljava/lang/String;
    .restart local v12    # "usbAvailable":Z
    .restart local v13    # "usbError":I
    .restart local v14    # "usbErrorIpv4":I
    .restart local v15    # "usbErrorIpv6":I
    :cond_3
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_1

    .line 1111
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v8    # "len$":I
    .end local v10    # "s":Ljava/lang/String;
    :cond_4
    const/16 v17, 0x0

    .line 1112
    .local v17, "usbTethered":Z
    move-object/from16 v2, p2

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    move v6, v5

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .restart local v6    # "i$":I
    :goto_3
    if-ge v6, v7, :cond_7

    aget-object v10, v2, v6

    .line 1113
    .restart local v10    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v8, v3

    .restart local v8    # "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_4
    if-ge v5, v8, :cond_6

    aget-object v9, v3, v5

    .line 1114
    .restart local v9    # "regex":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1115
    const/16 v17, 0x1

    .line 1117
    if-eqz v4, :cond_5

    .line 1118
    const/16 v18, 0x10

    move/from16 v0, v18

    if-ne v15, v0, :cond_5

    .line 1119
    invoke-virtual {v4, v10}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    and-int/lit16 v15, v0, 0xf0

    .line 1113
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1112
    .end local v9    # "regex":Ljava/lang/String;
    :cond_6
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_3

    .line 1127
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v8    # "len$":I
    .end local v10    # "s":Ljava/lang/String;
    :cond_7
    const/16 v16, 0x0

    .line 1128
    .local v16, "usbErrored":Z
    move-object/from16 v2, p3

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v7, v2

    .restart local v7    # "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    move v6, v5

    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v7    # "len$":I
    .restart local v6    # "i$":I
    :goto_5
    if-ge v6, v7, :cond_a

    aget-object v10, v2, v6

    .line 1129
    .restart local v10    # "s":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v3    # "arr$":[Ljava/lang/String;
    array-length v8, v3

    .restart local v8    # "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_6
    if-ge v5, v8, :cond_9

    aget-object v9, v3, v5

    .line 1130
    .restart local v9    # "regex":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1131
    const/16 v16, 0x1

    .line 1129
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1128
    .end local v9    # "regex":Ljava/lang/String;
    :cond_9
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_5

    .line 1136
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v8    # "len$":I
    .end local v10    # "s":Ljava/lang/String;
    :cond_a
    const-string v18, "UsbSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateUsbState - usbTethered : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " usbErrored: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " usbAvailable: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    if-eqz v17, :cond_b

    .line 1140
    const-string v18, "UsbSettings"

    const-string v19, "updateUsbState: usbTethered ! mUsbTether checkbox setEnabled & checked "

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1144
    const v18, 0x7f0907a4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1147
    .local v11, "summary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1151
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTethering:Z

    .line 1152
    const-string v18, "UsbSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateUsbState - usbTethered - mUsbTetherCheckEnable: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherCheckEnable:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    .line 1215
    .end local v11    # "summary":Ljava/lang/String;
    :goto_7
    return-void

    .line 1157
    :cond_b
    if-eqz v12, :cond_f

    .line 1160
    if-eqz v14, :cond_c

    const/16 v18, 0x10

    move/from16 v0, v18

    if-ne v14, v0, :cond_e

    .line 1162
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0907a3

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    .line 1174
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherCheckEnable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 1175
    const-string v18, "UsbSettings"

    const-string v19, "updateUsbState - mUsbTetherCheckEnable, mUsbTether checkbox setEnabled, and set unchecked "

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1180
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTethering:Z

    .line 1182
    :cond_d
    const-string v18, "UsbSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateUsbState - usbAvailable - mUsbConfigured:  "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbConfigured:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mUsbTethering: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTethering:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mUsbTetherCheckEnable: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherCheckEnable:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1164
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0907a7

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_8

    .line 1185
    :cond_f
    if-eqz v16, :cond_10

    .line 1186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0907a7

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1190
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTethering:Z

    goto/16 :goto_7

    .line 1191
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mMassStorageActive:Z

    move/from16 v18, v0

    if-eqz v18, :cond_11

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0907a5

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1196
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTethering:Z

    goto/16 :goto_7

    .line 1198
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbHwDisconnected:Z

    move/from16 v18, v0

    if-nez v18, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbHwDisconnected:Z

    move/from16 v18, v0

    if-nez v18, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbConnected:Z

    move/from16 v18, v0

    if-nez v18, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbConfigured:Z

    move/from16 v18, v0

    if-nez v18, :cond_13

    .line 1199
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0907a6

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1202
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTethering:Z

    .line 1213
    :goto_9
    const-string v18, "UsbSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updateUsbState- usbAvailable- mUsbHwDisconnected:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbHwDisconnected:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1205
    :cond_13
    const-string v18, "UsbSettings"

    const-string v19, "updateUsbState - else, mUsbTether checkbox setEnabled, and set unchecked "

    invoke-static/range {v18 .. v19}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const v19, 0x7f0907a3

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setSummary(I)V

    .line 1208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1210
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTethering:Z

    goto :goto_9
.end method


# virtual methods
.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1229
    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    .line 1046
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1047
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkClicked:Z

    .line 1048
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1054
    :goto_0
    return-void

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 457
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 458
    const-string v2, "usb"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbManager;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 460
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v2, :cond_0

    .line 461
    const-string v2, "storage"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 462
    iget-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v2, :cond_0

    .line 463
    const-string v2, "UsbSettings"

    const-string v3, "Failed to get StorageManager"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUIHandler:Landroid/os/Handler;

    .line 469
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "UsbSettings"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 470
    .local v1, "thr":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 471
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAsyncStorageHandler:Landroid/os/Handler;

    .line 474
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 476
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 477
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mProvisionApp:[Ljava/lang/String;

    .line 480
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 652
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 653
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAsyncStorageHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 654
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 657
    :cond_0
    const-string v0, "UsbSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1058
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1061
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 560
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 562
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->cancelAutoCloseTimer()V

    .line 564
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 566
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    if-eqz v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    .line 569
    :cond_0
    const-string v0, "UsbSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 573
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 577
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1018
    const-string v0, "UsbSettings"

    const-string v1, "UsbSettings onPreferenceChange "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCharge:Lcom/android/settings/deviceinfo/UsbPreference;

    if-ne p1, v0, :cond_1

    .line 1020
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "charging"

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1022
    const-string v0, "charging"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 1034
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    .line 1035
    return v3

    .line 1023
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mBicr:Lcom/android/settings/deviceinfo/UsbPreference;

    if-ne p1, v0, :cond_2

    .line 1024
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "bicr"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1025
    const-string v0, "bicr"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0

    .line 1026
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    if-ne p1, v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v1, "mass_storage"

    invoke-virtual {v0, v1, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 1029
    iget-object v0, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1030
    const-string v0, "mass_storage"

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 813
    const-string v3, "UsbSettings"

    const-string v4, "onPreferenceChange"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 915
    :cond_0
    :goto_0
    return v7

    .line 822
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->cancelAutoCloseTimer()V

    .line 827
    instance-of v3, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_8

    .line 829
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_4

    .line 830
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mEnableAdb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 831
    iput-boolean v6, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkClicked:Z

    .line 832
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_2

    .line 833
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->dismissDialog()V

    .line 835
    :cond_2
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090907

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090906

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f020097

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040009

    invoke-virtual {v3, v4, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    .line 843
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v3, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0

    .line 845
    :cond_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 852
    :cond_4
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_5

    .line 853
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 855
    .local v1, "cm":Landroid/net/ConnectivityManager;
    iget-boolean v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTethering:Z

    if-nez v3, :cond_0

    .line 856
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    .line 858
    .local v2, "newState":Z
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 859
    iput-boolean v7, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTethering:Z

    .line 860
    iput-boolean v6, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherCheckEnable:Z

    .line 861
    if-eqz v2, :cond_6

    .line 862
    iput-boolean v6, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherDone:Z

    .line 866
    :goto_1
    iput-boolean v6, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTetherFail:Z

    .line 867
    const-string v3, "UsbSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreferenceTreeClick - setusbTethering("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") mUsbTethering:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTethering:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    if-eqz v2, :cond_7

    .line 872
    invoke-direct {p0, v7}, Lcom/android/settings/deviceinfo/UsbSettings;->startProvisioningIfNecessary(I)V

    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "newState":Z
    :cond_5
    :goto_2
    move-object v0, p2

    .line 880
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 881
    .local v0, "checkBox":Landroid/preference/CheckBoxPreference;
    const-string v3, "UsbSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_8

    .line 883
    invoke-virtual {v0, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_0

    .line 864
    .end local v0    # "checkBox":Landroid/preference/CheckBoxPreference;
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v2    # "newState":Z
    :cond_6
    iput-boolean v6, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbUnTetherDone:Z

    goto :goto_1

    .line 874
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/UsbSettings;->setUsbTethering(Z)V

    goto :goto_2

    .line 887
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "newState":Z
    :cond_8
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    if-ne p2, v3, :cond_a

    .line 888
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v4, "mtp"

    invoke-virtual {v3, v4, v7}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 889
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 890
    const-string v3, "mtp"

    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    .line 914
    :cond_9
    :goto_3
    iput-boolean v6, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mCanUpdateToggle:Z

    goto/16 :goto_0

    .line 891
    :cond_a
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mPtp:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    if-ne p2, v3, :cond_9

    .line 892
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbManager:Landroid/hardware/usb/UsbManager;

    const-string v4, "ptp"

    invoke-virtual {v3, v4, v7}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;Z)V

    .line 893
    iget-object v3, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUms:Lcom/android/settings/deviceinfo/CheckButtonPreferenceEx;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 894
    const-string v3, "ptp"

    invoke-direct {p0, v3}, Lcom/android/settings/deviceinfo/UsbSettings;->updateToggles(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 581
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 598
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/UsbSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 599
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v5, v5

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    .line 600
    .local v4, "usbAvailable":Z
    :goto_0
    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 601
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 605
    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 607
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 608
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 612
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v5, v6}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 615
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mAsyncStorageHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/settings/deviceinfo/UsbSettings$5;

    invoke-direct {v6, p0}, Lcom/android/settings/deviceinfo/UsbSettings$5;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    :goto_1
    const-string v5, "UsbSettings"

    const-string v6, "onResume"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 629
    .local v0, "activity":Landroid/app/Activity;
    const-string v5, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mMassStorageActive:Z

    .line 630
    new-instance v5, Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/settings/deviceinfo/UsbSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/deviceinfo/UsbSettings;Lcom/android/settings/deviceinfo/UsbSettings$1;)V

    iput-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 631
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    const-string v5, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 632
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 634
    .local v3, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 635
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v5, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 636
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 638
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 639
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 640
    const-string v5, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    const-string v5, "file"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 642
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v5, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 645
    if-eqz v3, :cond_2

    .line 646
    iget-object v5, p0, Lcom/android/settings/deviceinfo/UsbSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 649
    :cond_2
    return-void

    .line 599
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "usbAvailable":Z
    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 622
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    .restart local v4    # "usbAvailable":Z
    :catch_0
    move-exception v1

    .line 623
    .local v1, "ex":Ljava/lang/Exception;
    const-string v5, "UsbSettings"

    const-string v6, "Failed to read UMS enable state"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
