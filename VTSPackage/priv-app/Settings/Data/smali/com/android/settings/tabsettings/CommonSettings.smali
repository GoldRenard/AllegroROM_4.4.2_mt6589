.class public Lcom/android/settings/tabsettings/CommonSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CommonSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ATTACH_TIME_OUT_LENGTH:I = 0x1388

.field private static final BLUETOOTH_SETTINGS_KEY:Ljava/lang/String; = "bluetooth_settings"

.field private static final DATA_CONNECT_KEY:Ljava/lang/String; = "data_connect_settings"

.field private static final DETACH_TIME_OUT_LENGTH:I = 0x1388

.field private static final EVENT_ATTACH_TIME_OUT:I = 0x7d1

.field private static final EVENT_DATA_CONNECTION_RESULT:I = 0x7da

.field private static final EVENT_DETACH_TIME_OUT:I = 0x7d0

.field public static final KEY_NO_SIM_BINDING_SMS_NOTIFI:Ljava/lang/String; = "no_sim_binding_sms_notifi_tone"

.field public static final KEY_SIM_BINDING_NOTIFITONE:Ljava/lang/String; = "sim_binding_sms_notifitone"

.field public static final KEY_SIM_BINDING_NOTIFITONE_2:Ljava/lang/String; = "sim_binding_sms_notifitone_2"

.field public static final KEY_SIM_BINDING_RINGTONE:Ljava/lang/String; = "sim_binding_phone_ringtone"

.field public static final KEY_SIM_BINDING_RINGTONE_2:Ljava/lang/String; = "sim_binding_phone_ringtone_2"

.field private static final TAG:Ljava/lang/String; = "CommonSettings"

.field private static final TRANSACTION_START:Ljava/lang/String; = "com.android.mms.transaction.START"

.field private static final TRANSACTION_STOP:Ljava/lang/String; = "com.android.mms.transaction.STOP"

.field private static final WIFI_KEY:Ljava/lang/String; = "wifi_settings"


# instance fields
.field private bluetoothPreference:Lcom/android/settings/tabsettings/BluetoothPreference;

.field private dataPreference:Lcom/android/settings/tabsettings/DataPreference;

.field protected isRowProduct:Z

.field private mActivity:Landroid/app/Activity;

.field private mAudioProfileListenr:Lcom/mediatek/common/audioprofile/AudioProfileListener;

.field private mDataTimerHandler:Landroid/os/Handler;

.field private mGprsTargSim:Z

.field mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mNoSimBindingSmsNotifiTone:Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;

.field private mRingerVolumePreferenceLenovo:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

.field protected mSimBindingNotifitone:Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

.field protected mSimBindingNotifitone_2:Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

.field protected mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

.field protected mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

.field private mSwitchDialog:Landroid/app/AlertDialog;

.field private mSwitchListview:Lcom/android/settings/tabsettings/SimIconsListView;

.field private mWaitingDialog:Landroid/app/ProgressDialog;

.field private wifiPreference:Lcom/android/settings/tabsettings/WifiPreference;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 79
    const-string v0, "ro.lenovo.region"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "ro.lenovo.region"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "row"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->isRowProduct:Z

    .line 94
    iput-boolean v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mGprsTargSim:Z

    .line 110
    new-instance v0, Lcom/android/settings/tabsettings/CommonSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tabsettings/CommonSettings$1;-><init>(Lcom/android/settings/tabsettings/CommonSettings;)V

    iput-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->mDataTimerHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/android/settings/tabsettings/CommonSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/tabsettings/CommonSettings$2;-><init>(Lcom/android/settings/tabsettings/CommonSettings;)V

    iput-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 347
    new-instance v0, Lcom/android/settings/tabsettings/CommonSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/tabsettings/CommonSettings$5;-><init>(Lcom/android/settings/tabsettings/CommonSettings;)V

    iput-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->mAudioProfileListenr:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    return-void

    :cond_0
    move v0, v1

    .line 79
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/tabsettings/CommonSettings;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tabsettings/CommonSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->mWaitingDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/tabsettings/CommonSettings;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tabsettings/CommonSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSwitchDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/tabsettings/CommonSettings;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tabsettings/CommonSettings;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/tabsettings/CommonSettings;->hasProperThemeCenter()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/tabsettings/CommonSettings;)Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tabsettings/CommonSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->mRingerVolumePreferenceLenovo:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/tabsettings/CommonSettings;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/tabsettings/CommonSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/tabsettings/CommonSettings;Lcom/android/settings/tabsettings/SimIconsListView$SimItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/tabsettings/CommonSettings;
    .param p1, "x1"    # Lcom/android/settings/tabsettings/SimIconsListView$SimItem;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/tabsettings/CommonSettings;->switchDataConnectionMode(Lcom/android/settings/tabsettings/SimIconsListView$SimItem;)V

    return-void
.end method

.method private createDialog(Landroid/view/View;I)Landroid/app/AlertDialog;
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "resId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 395
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 396
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 397
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, v2

    .line 398
    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;IIII)Landroid/app/AlertDialog$Builder;

    .line 399
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 400
    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/settings/tabsettings/CommonSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/tabsettings/CommonSettings$6;-><init>(Lcom/android/settings/tabsettings/CommonSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 408
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 409
    .local v6, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7e1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 410
    return-object v6
.end method

.method private static getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 437
    const-string v1, "state"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 439
    const-class v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1, v0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 441
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0
.end method

.method private handleDataPreferenceClick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 494
    const-string v1, "CommonSettings"

    const-string v2, "onHeaderClick(dataconnection_settings)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMCount(Landroid/content/Context;)I

    move-result v1

    if-gt v1, v4, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSwitchDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSwitchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 503
    :cond_2
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 508
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->dataPreference:Lcom/android/settings/tabsettings/DataPreference;

    iget-object v1, v1, Lcom/android/settings/tabsettings/DataPreference;->mDataEnabler:Lcom/android/settings/dataconnection/DataEnabler;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->dataPreference:Lcom/android/settings/tabsettings/DataPreference;

    iget-object v1, v1, Lcom/android/settings/tabsettings/DataPreference;->mDataEnabler:Lcom/android/settings/dataconnection/DataEnabler;

    iget-object v2, p0, Lcom/android/settings/tabsettings/CommonSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Lcom/android/settings/dataconnection/DataEnabler;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    :cond_3
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSwitchListview:Lcom/android/settings/tabsettings/SimIconsListView;

    if-nez v1, :cond_4

    .line 515
    new-instance v1, Lcom/android/settings/tabsettings/SimIconsListView;

    iget-object v2, p0, Lcom/android/settings/tabsettings/CommonSettings;->mActivity:Landroid/app/Activity;

    const-string v3, "gprs_connection_sim_setting"

    invoke-direct {v1, v2, v3}, Lcom/android/settings/tabsettings/SimIconsListView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSwitchListview:Lcom/android/settings/tabsettings/SimIconsListView;

    .line 517
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSwitchListview:Lcom/android/settings/tabsettings/SimIconsListView;

    new-instance v2, Lcom/android/settings/tabsettings/CommonSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/tabsettings/CommonSettings$7;-><init>(Lcom/android/settings/tabsettings/CommonSettings;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 545
    :cond_4
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSwitchListview:Lcom/android/settings/tabsettings/SimIconsListView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 546
    .local v0, "parents":Landroid/view/ViewGroup;
    if-eqz v0, :cond_5

    .line 547
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSwitchListview:Lcom/android/settings/tabsettings/SimIconsListView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 549
    :cond_5
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSwitchListview:Lcom/android/settings/tabsettings/SimIconsListView;

    const v2, 0x7f090bab

    invoke-direct {p0, v1, v2}, Lcom/android/settings/tabsettings/CommonSettings;->createDialog(Landroid/view/View;I)Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSwitchDialog:Landroid/app/AlertDialog;

    .line 550
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSwitchListview:Lcom/android/settings/tabsettings/SimIconsListView;

    invoke-virtual {v1}, Lcom/android/settings/tabsettings/SimIconsListView;->initSimList()V

    .line 551
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSwitchListview:Lcom/android/settings/tabsettings/SimIconsListView;

    invoke-virtual {v1}, Lcom/android/settings/tabsettings/SimIconsListView;->notifyDataChange()V

    .line 552
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSwitchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private hasProperThemeCenter()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 336
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.lenovo.themecenter"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 337
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 338
    .local v2, "ver":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/16 v5, 0x31

    if-lt v4, v5, :cond_0

    const/4 v3, 0x1

    .line 342
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "ver":Ljava/lang/String;
    :cond_0
    :goto_0
    return v3

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private switchDataConnectionMode(Lcom/android/settings/tabsettings/SimIconsListView$SimItem;)V
    .locals 7
    .param p1, "simItem"    # Lcom/android/settings/tabsettings/SimIconsListView$SimItem;

    .prologue
    const-wide/16 v5, 0x1388

    const/4 v4, 0x1

    .line 413
    iget-boolean v1, p1, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mIsSim:Z

    if-eqz v1, :cond_1

    .line 414
    iput-boolean v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mGprsTargSim:Z

    .line 415
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mDataTimerHandler:Landroid/os/Handler;

    const/16 v2, 0x7d1

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 421
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 422
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "simid"

    iget-wide v2, p1, Lcom/android/settings/tabsettings/SimIconsListView$SimItem;->mSimID:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 423
    const-string v1, "android.intent.action.DATA_DEFAULT_SIM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 424
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 426
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSwitchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 428
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mWaitingDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    .line 429
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/android/settings/tabsettings/CommonSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mWaitingDialog:Landroid/app/ProgressDialog;

    .line 430
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090225

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 432
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 434
    :cond_0
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mWaitingDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 435
    return-void

    .line 417
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mGprsTargSim:Z

    .line 418
    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mDataTimerHandler:Landroid/os/Handler;

    const/16 v2, 0x7d0

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateState()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 453
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/provider/Telephony$SIMInfo;->getInsertedSIMCount(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->dataPreference:Lcom/android/settings/tabsettings/DataPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 464
    :goto_0
    return-void

    .line 457
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 459
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->dataPreference:Lcom/android/settings/tabsettings/DataPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 462
    :cond_1
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->dataPreference:Lcom/android/settings/tabsettings/DataPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 381
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 382
    iput-object p1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mActivity:Landroid/app/Activity;

    .line 383
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 359
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 360
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x7f090116

    const v8, 0x7f09010d

    const/16 v6, 0x20

    const/4 v7, 0x1

    .line 202
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 203
    const v4, 0x7f060010

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 204
    const-string v4, "wifi_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/tabsettings/WifiPreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->wifiPreference:Lcom/android/settings/tabsettings/WifiPreference;

    .line 205
    const-string v4, "data_connect_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/tabsettings/DataPreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->dataPreference:Lcom/android/settings/tabsettings/DataPreference;

    .line 206
    const-string v4, "bluetooth_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/tabsettings/BluetoothPreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->bluetoothPreference:Lcom/android/settings/tabsettings/BluetoothPreference;

    .line 209
    const-string v4, "sim_binding_phone_ringtone"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    .line 210
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    if-eqz v4, :cond_0

    .line 211
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    invoke-virtual {v4, v7}, Lcom/android/settings/audioprofile/SimBindingRingtonePreference;->setRingtoneType(I)V

    .line 214
    :cond_0
    const-string v4, "sim_binding_phone_ringtone_2"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    .line 215
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    if-eqz v4, :cond_1

    .line 216
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Lcom/android/settings/audioprofile/SimBindingRingtonePreference;->setRingtoneType(I)V

    .line 219
    :cond_1
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    if-eqz v4, :cond_2

    .line 221
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    invoke-virtual {v4}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_9

    .line 223
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setTitle(I)V

    .line 236
    :cond_2
    :goto_0
    const-string v4, "no_sim_binding_sms_notifi_tone"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mNoSimBindingSmsNotifiTone:Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;

    .line 237
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mNoSimBindingSmsNotifiTone:Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;

    if-eqz v4, :cond_3

    .line 238
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mNoSimBindingSmsNotifiTone:Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;

    invoke-virtual {v4, v6}, Landroid/preference/RingtonePreference;->setRingtoneType(I)V

    .line 241
    :cond_3
    const-string v4, "sim_binding_sms_notifitone"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingNotifitone:Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

    .line 242
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingNotifitone:Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

    if-eqz v4, :cond_4

    .line 243
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingNotifitone:Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

    invoke-virtual {v4, v6}, Lcom/android/settings/audioprofile/SimBindingNotifiPreference;->setRingtoneType(I)V

    .line 245
    :cond_4
    const-string v4, "sim_binding_sms_notifitone_2"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingNotifitone_2:Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

    .line 246
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingNotifitone_2:Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

    if-eqz v4, :cond_5

    .line 247
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingNotifitone_2:Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Lcom/android/settings/audioprofile/SimBindingNotifiPreference;->setRingtoneType(I)V

    .line 250
    :cond_5
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mNoSimBindingSmsNotifiTone:Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingNotifitone:Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingNotifitone_2:Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

    if-eqz v4, :cond_6

    .line 251
    iget-boolean v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->isRowProduct:Z

    if-eqz v4, :cond_b

    .line 252
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/tabsettings/CommonSettings;->mNoSimBindingSmsNotifiTone:Lcom/android/settings/audioprofile/NoSimBindingRingtonePreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 254
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingNotifitone_2:Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

    invoke-virtual {v4}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_a

    .line 256
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingNotifitone_2:Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 257
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingNotifitone:Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 271
    :cond_6
    :goto_1
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    iput-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 272
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 273
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "com.android.mms.transaction.START"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "com.android.mms.transaction.STOP"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/settings/tabsettings/CommonSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/settings/tabsettings/CommonSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 283
    const-string v4, "sound_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    iput-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mRingerVolumePreferenceLenovo:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    .line 284
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mRingerVolumePreferenceLenovo:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    if-eqz v4, :cond_7

    .line 285
    const-string v4, "audioprofile"

    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/audioprofile/AudioProfileManager;

    .line 286
    .local v0, "mProfile":Lcom/mediatek/audioprofile/AudioProfileManager;
    invoke-virtual {v0}, Lcom/mediatek/audioprofile/AudioProfileManager;->getActiveProfileKey()Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "profile":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mRingerVolumePreferenceLenovo:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    invoke-virtual {v4, v3}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->setProfile(Ljava/lang/String;)V

    .line 289
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mAudioProfileListenr:Lcom/mediatek/common/audioprofile/AudioProfileListener;

    invoke-virtual {v0, v4, v7}, Lcom/mediatek/audioprofile/AudioProfileManager;->listenAudioProfie(Lcom/mediatek/common/audioprofile/AudioProfileListener;I)V

    .line 294
    .end local v0    # "mProfile":Lcom/mediatek/audioprofile/AudioProfileManager;
    .end local v3    # "profile":Ljava/lang/String;
    :cond_7
    const-string v4, "theme"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 295
    .local v1, "mTheme":Landroid/preference/Preference;
    new-instance v4, Lcom/android/settings/tabsettings/CommonSettings$3;

    invoke-direct {v4, p0}, Lcom/android/settings/tabsettings/CommonSettings$3;-><init>(Lcom/android/settings/tabsettings/CommonSettings;)V

    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 315
    const-string v4, "wallpaper"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 316
    .local v2, "mWallpaper":Landroid/preference/Preference;
    if-eqz v2, :cond_8

    new-instance v4, Lcom/android/settings/tabsettings/CommonSettings$4;

    invoke-direct {v4, p0}, Lcom/android/settings/tabsettings/CommonSettings$4;-><init>(Lcom/android/settings/tabsettings/CommonSettings;)V

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 330
    :cond_8
    return-void

    .line 227
    .end local v1    # "mTheme":Landroid/preference/Preference;
    .end local v2    # "mWallpaper":Landroid/preference/Preference;
    :cond_9
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    invoke-virtual {v4}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 229
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingRingtone:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 231
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingRingtone_2:Lcom/android/settings/audioprofile/SimBindingRingtonePreference;

    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_0

    .line 258
    :cond_a
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingNotifitone:Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

    invoke-virtual {v4}, Landroid/preference/Preference;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_6

    .line 260
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingNotifitone:Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 261
    iget-object v4, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingNotifitone_2:Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

    invoke-virtual {v4, v9}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_1

    .line 264
    :cond_b
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingNotifitone:Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/tabsettings/CommonSettings;->mSimBindingNotifitone_2:Lcom/android/settings/audioprofile/SimBindingNotifiPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 387
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 389
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/tabsettings/CommonSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 392
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 468
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 469
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->wifiPreference:Lcom/android/settings/tabsettings/WifiPreference;

    invoke-virtual {v0}, Lcom/android/settings/tabsettings/WifiPreference;->pause()V

    .line 470
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->dataPreference:Lcom/android/settings/tabsettings/DataPreference;

    invoke-virtual {v0}, Lcom/android/settings/tabsettings/DataPreference;->pause()V

    .line 471
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->bluetoothPreference:Lcom/android/settings/tabsettings/BluetoothPreference;

    invoke-virtual {v0}, Lcom/android/settings/tabsettings/BluetoothPreference;->pause()V

    .line 474
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->mRingerVolumePreferenceLenovo:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->mRingerVolumePreferenceLenovo:Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;

    invoke-virtual {v0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->stopPlayWhenOnPause()V

    .line 482
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 486
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->dataPreference:Lcom/android/settings/tabsettings/DataPreference;

    if-ne v0, p2, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/android/settings/tabsettings/CommonSettings;->handleDataPreferenceClick()V

    .line 488
    const/4 v0, 0x1

    .line 490
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 369
    const-string v0, "CommonSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 371
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->wifiPreference:Lcom/android/settings/tabsettings/WifiPreference;

    invoke-virtual {v0}, Lcom/android/settings/tabsettings/WifiPreference;->resume()V

    .line 372
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->dataPreference:Lcom/android/settings/tabsettings/DataPreference;

    invoke-virtual {v0}, Lcom/android/settings/tabsettings/DataPreference;->resume()V

    .line 373
    iget-object v0, p0, Lcom/android/settings/tabsettings/CommonSettings;->bluetoothPreference:Lcom/android/settings/tabsettings/BluetoothPreference;

    invoke-virtual {v0}, Lcom/android/settings/tabsettings/BluetoothPreference;->resume()V

    .line 374
    invoke-direct {p0}, Lcom/android/settings/tabsettings/CommonSettings;->updateState()V

    .line 375
    return-void
.end method
