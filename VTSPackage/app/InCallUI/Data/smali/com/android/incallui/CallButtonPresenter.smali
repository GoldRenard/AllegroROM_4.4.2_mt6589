.class public Lcom/android/incallui/CallButtonPresenter;
.super Lcom/android/incallui/Presenter;
.source "CallButtonPresenter.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;
.implements Lcom/mediatek/incallui/VoiceCommandUIUtils$PhoneDetectListener;
.implements Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/CallButtonPresenter$CallButtonUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/mediatek/incallui/VoiceCommandUIUtils$PhoneDetectListener;",
        "Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;",
        "Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;",
        "Landroid/hardware/SensorEventListener;"
    }
.end annotation


# static fields
.field private static final PREFS_NAME:Ljava/lang/String; = "com.lenovo.phone_preferences"

.field private static final SMART_SWITCH_KEY:Ljava/lang/String; = "smart_switch_key"

.field private static final TELE_SERVICE_PACKAGE:Ljava/lang/String; = "com.android.phone"


# instance fields
.field private mBackgroundCall:Lcom/android/services/telephony/common/Call;

.field private mCall:Lcom/android/services/telephony/common/Call;

.field private mContext:Landroid/content/Context;

.field private mGSensor:Landroid/hardware/Sensor;

.field private mIsAutoPopupDialpad:Z

.field private mPSensor:Landroid/hardware/Sensor;

.field private mPreviousCallState:I

.field private mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private mSensorMgr:Landroid/hardware/SensorManager;

.field private mShowGenericMerge:Z

.field private mShowManageConference:Z

.field private mSmartSwitchEnabled:Z

.field private mbPickUp:Z

.field private mbRaise:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 84
    iput-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mShowGenericMerge:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mShowManageConference:Z

    .line 87
    iput-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 88
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousCallState:I

    .line 90
    iput-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    .line 91
    iput-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 92
    iput-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mPSensor:Landroid/hardware/Sensor;

    .line 93
    iput-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mGSensor:Landroid/hardware/Sensor;

    .line 94
    iput-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mbPickUp:Z

    .line 95
    iput-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mbRaise:Z

    .line 96
    iput-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mSmartSwitchEnabled:Z

    .line 97
    iput-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mIsAutoPopupDialpad:Z

    .line 105
    return-void
.end method

.method private disableSmartSwitch()V
    .locals 1

    .prologue
    .line 333
    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getSmartSwitchStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mSmartSwitchEnabled:Z

    if-eqz v0, :cond_0

    .line 335
    const-string v0, "disableSmartSwitch()"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mSmartSwitchEnabled:Z

    .line 337
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mSensorMgr:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 338
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mSensorMgr:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 341
    :cond_0
    return-void
.end method

.method private enableSmartSwitch(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 305
    if-nez p1, :cond_1

    .line 306
    const-string v1, "enableSmartSwitch: called with null context"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getSmartSwitchStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mSmartSwitchEnabled:Z

    if-nez v1, :cond_0

    .line 312
    const-string v1, "enableSmartSwitch()"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    iput-boolean v4, p0, Lcom/android/incallui/CallButtonPresenter;->mSmartSwitchEnabled:Z

    .line 316
    :try_start_0
    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 317
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mSensorMgr:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mPSensor:Landroid/hardware/Sensor;

    .line 318
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mSensorMgr:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mGSensor:Landroid/hardware/Sensor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mPSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v1, p0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 326
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mGSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "enableSmartSwitch found exception"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSmartSwitchStatus()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 286
    :try_start_0
    iget-object v5, p0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    const-string v6, "com.android.phone"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 287
    .local v3, "teleservice":Landroid/content/Context;
    const-string v5, "com.lenovo.phone_preferences"

    const/4 v6, 0x4

    invoke-virtual {v3, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 288
    .local v0, "callSetSP":Landroid/content/SharedPreferences;
    if-nez v0, :cond_0

    .line 289
    const-string v5, "getSmartSwitchStatus: com.lenovo.phone_preferencesnot found!"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    .end local v0    # "callSetSP":Landroid/content/SharedPreferences;
    .end local v3    # "teleservice":Landroid/content/Context;
    :goto_0
    return v4

    .line 292
    .restart local v0    # "callSetSP":Landroid/content/SharedPreferences;
    .restart local v3    # "teleservice":Landroid/content/Context;
    :cond_0
    const-string v5, "smart_switch_key"

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 293
    .local v2, "status":Ljava/lang/Boolean;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSmartSwitchStatus: smart_switch_key is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    goto :goto_0

    .line 296
    .end local v0    # "callSetSP":Landroid/content/SharedPreferences;
    .end local v2    # "status":Ljava/lang/Boolean;
    .end local v3    # "teleservice":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private isConferenceCall(Lcom/android/services/telephony/common/Call;)Z
    .locals 1
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 947
    if-eqz p1, :cond_0

    .line 948
    invoke-virtual {p1}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    .line 950
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isSpeakerOn(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 280
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 281
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v1

    return v1
.end method

.method private updateExtraButtonRow()V
    .locals 3

    .prologue
    .line 638
    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mShowGenericMerge:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mShowManageConference:Z

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->isDialpadVisible()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 641
    .local v0, "showExtraButtonRow":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGeneric: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/CallButtonPresenter;->mShowGenericMerge:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowManageConference : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/CallButtonPresenter;->mShowManageConference:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowGenericMerge: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/CallButtonPresenter;->mShowGenericMerge:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    if-eqz v0, :cond_4

    .line 645
    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mShowGenericMerge:Z

    if-eqz v1, :cond_3

    .line 646
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showGenericMergeButton()V

    .line 653
    :cond_1
    :goto_1
    return-void

    .line 638
    .end local v0    # "showExtraButtonRow":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 647
    .restart local v0    # "showExtraButtonRow":Z
    :cond_3
    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mShowManageConference:Z

    if-eqz v1, :cond_1

    .line 648
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showManageConferenceCallButton()V

    goto :goto_1

    .line 651
    :cond_4
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->hideExtraRow()V

    goto :goto_1
.end method

.method private updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V
    .locals 15
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 460
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->isDMLocked()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 461
    move-object/from16 v0, p2

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->updateInCallControlsDuringDMLocked(Lcom/android/services/telephony/common/Call;)V

    .line 635
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v10

    check-cast v10, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .line 466
    .local v10, "ui":Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    if-eqz v10, :cond_0

    .line 470
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v11

    if-nez v11, :cond_e

    if-eqz p2, :cond_e

    const/4 v6, 0x1

    .line 473
    .local v6, "isEnabled":Z
    :goto_1
    invoke-interface {v10, v6}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setEnabled(Z)V

    .line 476
    const/4 v5, 0x1

    .line 477
    .local v5, "currentCallState":I
    if-eqz p2, :cond_2

    .line 478
    iget-object v11, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v11}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v5

    .line 481
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallPresenter;->inCarMode()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 482
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "aaaa currentCallState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mPreviousCallState = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousCallState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    const/4 v11, 0x5

    if-eq v5, v11, :cond_3

    iget v11, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousCallState:I

    const/4 v12, 0x3

    if-ne v11, v12, :cond_4

    const/4 v11, 0x2

    if-ne v5, v11, :cond_4

    .line 485
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v11

    sget v12, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-eq v11, v12, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v11

    sget v12, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    if-eq v11, v12, :cond_4

    .line 486
    sget v11, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-virtual {p0, v11}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    .line 487
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v11

    check-cast v11, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    sget v12, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    invoke-interface {v11, v12}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setAudio(I)V

    .line 492
    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallPresenter;->inCarMode()Z

    move-result v11

    if-nez v11, :cond_8

    .line 493
    iget v11, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousCallState:I

    const/4 v12, 0x5

    if-ne v11, v12, :cond_5

    const/4 v11, 0x2

    if-ne v5, v11, :cond_5

    .line 494
    if-eqz p2, :cond_5

    .line 495
    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    invoke-static {v11, v12}, Lcom/mediatek/incallui/InCallUtils;->isAutoAnswerCallNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v11

    iput-boolean v11, p0, Lcom/android/incallui/CallButtonPresenter;->mIsAutoPopupDialpad:Z

    .line 498
    :cond_5
    if-eqz p2, :cond_6

    const/16 v11, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 499
    iget-boolean v11, p0, Lcom/android/incallui/CallButtonPresenter;->mIsAutoPopupDialpad:Z

    if-eqz v11, :cond_6

    .line 500
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/incallui/CallButtonPresenter;->mIsAutoPopupDialpad:Z

    .line 503
    :cond_6
    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->isConferenceCall(Lcom/android/services/telephony/common/Call;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 504
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/incallui/CallButtonPresenter;->mIsAutoPopupDialpad:Z

    .line 506
    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v11

    check-cast v11, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    iget-boolean v12, p0, Lcom/android/incallui/CallButtonPresenter;->mIsAutoPopupDialpad:Z

    invoke-interface {v11, v12}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(Z)V

    .line 508
    :cond_8
    iput v5, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousCallState:I

    .line 511
    if-eqz p2, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/common/Call;->isIncoming()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/common/Call;->getConnectTime()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_a

    .line 513
    :cond_9
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setVisible(Z)V

    .line 515
    :cond_a
    const-string v11, "state: "

    move-object/from16 v0, p1

    invoke-static {p0, v11, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 516
    const/4 v11, 0x2

    if-ne v5, v11, :cond_f

    const/4 v11, 0x1

    :goto_2
    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableRecord(Z)V

    .line 517
    invoke-interface {v10}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->availableForRecord()Z

    move-result v11

    if-nez v11, :cond_b

    .line 518
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setRecord(Z)V

    .line 519
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableRecord(Z)V

    .line 521
    :cond_b
    if-eqz p2, :cond_c

    iget-object v11, p0, Lcom/android/incallui/CallButtonPresenter;->mBackgroundCall:Lcom/android/services/telephony/common/Call;

    if-nez v11, :cond_c

    .line 522
    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v11

    invoke-static {v11}, Lcom/android/services/telephony/common/Call$State;->isConnected(I)Z

    move-result v11

    if-nez v11, :cond_c

    invoke-static {}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getRecorderState()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_c

    .line 523
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setRecord(Z)V

    .line 524
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableRecord(Z)V

    .line 525
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->updateRecorderState(I)V

    .line 531
    :cond_c
    invoke-interface {v10}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/mediatek/incallui/InCallUtils;->updateScreenPopupMenuState(Lcom/android/services/telephony/common/Call;Landroid/content/Context;)V

    .line 534
    const-string v11, "Updating call UI for call: "

    move-object/from16 v0, p2

    invoke-static {p0, v11, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 536
    if-eqz p2, :cond_0

    .line 537
    const-string v11, "Show hold "

    const/4 v12, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 538
    const-string v11, "Enable hold"

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 539
    const-string v11, "Show merge "

    const/4 v12, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 540
    const-string v11, "Show swap "

    const/16 v12, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 541
    const-string v11, "Show add call "

    const/16 v12, 0x10

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 542
    const-string v11, "Show mute "

    const/16 v12, 0x40

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v12

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 544
    const/4 v11, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v3

    .line 545
    .local v3, "canMerge":Z
    const/16 v11, 0x10

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v1

    .line 546
    .local v1, "canAdd":Z
    const/16 v11, 0x80

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v7

    .line 549
    .local v7, "isGenericConference":Z
    if-nez v7, :cond_10

    if-eqz v3, :cond_10

    const/4 v8, 0x1

    .line 552
    .local v8, "showMerge":Z
    :goto_3
    if-eqz v8, :cond_11

    .line 553
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMerge(Z)V

    .line 554
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showAddCall(Z)V

    .line 566
    :goto_4
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v2

    .line 567
    .local v2, "canHold":Z
    const/16 v11, 0x8

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v4

    .line 568
    .local v4, "canSwap":Z
    const/4 v11, 0x2

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v9

    .line 570
    .local v9, "supportHold":Z
    if-eqz v2, :cond_13

    .line 571
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHold(Z)V

    .line 572
    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_12

    const/4 v11, 0x1

    :goto_5
    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setHold(Z)V

    .line 573
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableHold(Z)V

    .line 574
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwap(Z)V

    .line 607
    :goto_6
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/incallui/InCallPresenter;->inCarMode()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 608
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMerge(Z)V

    .line 609
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwap(Z)V

    .line 613
    :cond_d
    const/16 v11, 0x40

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v11

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableMute(Z)V

    .line 624
    if-eqz v7, :cond_18

    if-eqz v3, :cond_18

    const/4 v11, 0x1

    :goto_7
    iput-boolean v11, p0, Lcom/android/incallui/CallButtonPresenter;->mShowGenericMerge:Z

    .line 625
    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v11

    if-eqz v11, :cond_19

    if-nez v7, :cond_19

    const/4 v11, 0x1

    :goto_8
    iput-boolean v11, p0, Lcom/android/incallui/CallButtonPresenter;->mShowManageConference:Z

    .line 630
    iget-boolean v11, p0, Lcom/android/incallui/CallButtonPresenter;->mShowManageConference:Z

    if-eqz v11, :cond_1a

    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v11

    const/4 v12, 0x7

    if-eq v11, v12, :cond_1a

    const/4 v11, 0x1

    :goto_9
    iput-boolean v11, p0, Lcom/android/incallui/CallButtonPresenter;->mShowManageConference:Z

    .line 633
    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->updateExtraButtonRow()V

    goto/16 :goto_0

    .line 470
    .end local v1    # "canAdd":Z
    .end local v2    # "canHold":Z
    .end local v3    # "canMerge":Z
    .end local v4    # "canSwap":Z
    .end local v5    # "currentCallState":I
    .end local v6    # "isEnabled":Z
    .end local v7    # "isGenericConference":Z
    .end local v8    # "showMerge":Z
    .end local v9    # "supportHold":Z
    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 516
    .restart local v5    # "currentCallState":I
    .restart local v6    # "isEnabled":Z
    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 549
    .restart local v1    # "canAdd":Z
    .restart local v3    # "canMerge":Z
    .restart local v7    # "isGenericConference":Z
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 556
    .restart local v8    # "showMerge":Z
    :cond_11
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMerge(Z)V

    .line 557
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showAddCall(Z)V

    .line 558
    invoke-interface {v10, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableAddCall(Z)V

    goto/16 :goto_4

    .line 572
    .restart local v2    # "canHold":Z
    .restart local v4    # "canSwap":Z
    .restart local v9    # "supportHold":Z
    :cond_12
    const/4 v11, 0x0

    goto :goto_5

    .line 575
    :cond_13
    if-eqz v4, :cond_14

    .line 576
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHold(Z)V

    .line 577
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwap(Z)V

    goto :goto_6

    .line 590
    :cond_14
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportDualTalk()Z

    move-result v11

    if-eqz v11, :cond_15

    const/16 v11, 0x4000

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v11

    if-eqz v11, :cond_15

    if-nez v4, :cond_15

    .line 592
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHold(Z)V

    .line 593
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwap(Z)V

    goto :goto_6

    .line 595
    :cond_15
    if-eqz v9, :cond_17

    .line 597
    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHold(Z)V

    .line 598
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableHold(Z)V

    .line 599
    invoke-virtual/range {p2 .. p2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v11

    const/4 v12, 0x7

    if-ne v11, v12, :cond_16

    const/4 v11, 0x1

    :goto_a
    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setHold(Z)V

    .line 600
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwap(Z)V

    goto/16 :goto_6

    .line 599
    :cond_16
    const/4 v11, 0x0

    goto :goto_a

    .line 602
    :cond_17
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHold(Z)V

    .line 603
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwap(Z)V

    goto/16 :goto_6

    .line 624
    :cond_18
    const/4 v11, 0x0

    goto/16 :goto_7

    .line 625
    :cond_19
    const/4 v11, 0x0

    goto :goto_8

    .line 630
    :cond_1a
    const/4 v11, 0x0

    goto :goto_9
.end method

.method private updateVoiceCallRecordState(I)V
    .locals 8
    .param p1, "state"    # I

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateVoiceCallRecordState... state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 880
    const/4 v0, 0x0

    .line 881
    .local v0, "ringCall":Lcom/android/services/telephony/common/Call;
    const/4 v1, -0x1

    .line 882
    .local v1, "ringCallState":I
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    .line 883
    if-eqz v0, :cond_0

    .line 884
    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v1

    .line 886
    :cond_0
    if-ne v5, p1, :cond_2

    if-eq v1, v6, :cond_2

    if-eq v1, v7, :cond_2

    .line 888
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v2, v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableRecord(Z)V

    .line 889
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v2, v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setRecord(Z)V

    .line 902
    :cond_1
    :goto_0
    return-void

    .line 890
    :cond_2
    if-nez p1, :cond_4

    .line 891
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->availableForRecord()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 892
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v2, v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableRecord(Z)V

    .line 896
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v2, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setRecord(Z)V

    goto :goto_0

    .line 894
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v2, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableRecord(Z)V

    goto :goto_1

    .line 897
    :cond_4
    if-eq v1, v6, :cond_5

    if-ne v1, v7, :cond_1

    .line 899
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v2, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableRecord(Z)V

    .line 900
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v2, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setRecord(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addCallClicked()V
    .locals 1

    .prologue
    .line 440
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->addCall()V

    .line 441
    return-void
.end method

.method public answerVTCallPre()V
    .locals 0

    .prologue
    .line 812
    return-void
.end method

.method public dialVTCallSuccess()V
    .locals 0

    .prologue
    .line 817
    return-void
.end method

.method public enableAutomaticPopup(Z)V
    .locals 7
    .param p1, "on"    # Z

    .prologue
    .line 905
    iget-object v5, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-nez v5, :cond_1

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    .line 909
    .local v2, "number":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 912
    if-eqz p1, :cond_2

    .line 914
    :try_start_0
    const-string v5, "content://com.lenovo.ideafriend.ideafriendprovider/common_num/number"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 916
    .local v3, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 917
    .local v4, "values":Landroid/content/ContentValues;
    const-string v5, "number"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    const-string v5, "type"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 919
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 935
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "values":Landroid/content/ContentValues;
    :goto_1
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v5, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(Z)V

    goto :goto_0

    .line 920
    :catch_0
    move-exception v1

    .line 921
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 926
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    const-string v5, "content://com.lenovo.ideafriend.ideafriendprovider/common_num/number"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 928
    .restart local v3    # "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 929
    .restart local v4    # "values":Landroid/content/ContentValues;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number = \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, "deleteStr":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v0, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 931
    .end local v0    # "deleteStr":Ljava/lang/String;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v1

    .line 932
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public endCallClicked()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-nez v0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 390
    :cond_0
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->disconnectCall(I)V

    goto :goto_0
.end method

.method public explicitCallTransfer()V
    .locals 1

    .prologue
    .line 755
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->explicitCallTransfer()V

    .line 756
    return-void
.end method

.method public getAudioMode()I
    .locals 1

    .prologue
    .line 345
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method public getCall()Lcom/android/services/telephony/common/Call;
    .locals 2

    .prologue
    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCall()... mCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 842
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    return-object v0
.end method

.method public getSupportedAudio()I
    .locals 1

    .prologue
    .line 349
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getSupportedModes()I

    move-result v0

    return v0
.end method

.method public hangupActiveAndAnswerWaiting()V
    .locals 1

    .prologue
    .line 751
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->hangupActiveAndAnswerWaiting()V

    .line 752
    return-void
.end method

.method public hangupAllCalls()V
    .locals 1

    .prologue
    .line 743
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->hangupAllCalls()V

    .line 744
    return-void
.end method

.method public hangupHoldingCall()V
    .locals 1

    .prologue
    .line 747
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->hangupHoldingCall()V

    .line 748
    return-void
.end method

.method public holdClicked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-nez v0, :cond_0

    .line 411
    :goto_0
    return-void

    .line 408
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "holding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/CallCommandClient;->hold(IZ)V

    goto :goto_0
.end method

.method public isConferenceCall()Z
    .locals 1

    .prologue
    .line 940
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 941
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v0

    .line 943
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNoCallExist()Z
    .locals 1

    .prologue
    .line 771
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVTCall()Z
    .locals 3

    .prologue
    .line 762
    const/4 v0, 0x0

    .line 763
    .local v0, "isVT":Z
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v1, :cond_0

    .line 764
    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->isVideoCall()Z

    move-result v0

    .line 766
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isVTCall()... mCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 767
    return v0
.end method

.method public manageConferenceButtonClicked()V
    .locals 2

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayManageConferencePanel(Z)V

    .line 395
    return-void
.end method

.method public mergeClicked()V
    .locals 1

    .prologue
    .line 414
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->merge()V

    .line 415
    return-void
.end method

.method public muteClicked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turning on mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCommandClient;->mute(Z)V

    .line 401
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .prologue
    .line 229
    return-void
.end method

.method public onAudioMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioMode() mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setAudio(I)V

    .line 210
    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V
    .locals 1
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->dismissPopupMenu()V

    .line 201
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/CallButtonPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 202
    return-void
.end method

.method public onMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setMute(Z)V

    .line 224
    :cond_0
    return-void
.end method

.method public onPhoneRaised()V
    .locals 0

    .prologue
    .line 838
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "arg0"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 234
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mPSensor:Landroid/hardware/Sensor;

    if-ne v1, v2, :cond_3

    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pSensor values[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mbPickUp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/CallButtonPresenter;->mbPickUp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mbRaise = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/CallButtonPresenter;->mbRaise:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v3

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 239
    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mbPickUp:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mbRaise:Z

    if-eqz v1, :cond_2

    .line 240
    const-string v1, "pick and raise and near READY"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->phoneIsInUse()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/incallui/CallButtonPresenter;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->getSmartSwitchStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    sget v0, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    .line 245
    .local v0, "newMode":I
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v1

    sget v2, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-ne v1, v2, :cond_0

    .line 246
    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    .line 248
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    .line 251
    .end local v0    # "newMode":I
    :cond_1
    iput-boolean v3, p0, Lcom/android/incallui/CallButtonPresenter;->mbPickUp:Z

    .line 252
    iput-boolean v3, p0, Lcom/android/incallui/CallButtonPresenter;->mbRaise:Z

    .line 268
    :cond_2
    :goto_0
    return-void

    .line 256
    :cond_3
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v2, p0, Lcom/android/incallui/CallButtonPresenter;->mGSensor:Landroid/hardware/Sensor;

    if-ne v1, v2, :cond_2

    .line 258
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    const/high16 v2, 0x41200000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 259
    iput-boolean v4, p0, Lcom/android/incallui/CallButtonPresenter;->mbPickUp:Z

    .line 261
    :cond_4
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    const/high16 v2, 0x40a00000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 262
    iget-boolean v1, p0, Lcom/android/incallui/CallButtonPresenter;->mbPickUp:Z

    if-eqz v1, :cond_2

    .line 263
    iput-boolean v4, p0, Lcom/android/incallui/CallButtonPresenter;->mbRaise:Z

    goto :goto_0
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChange()... state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_2

    .line 149
    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    .line 179
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mBackgroundCall:Lcom/android/services/telephony/common/Call;

    .line 180
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-direct {p0, p1, v0}, Lcom/android/incallui/CallButtonPresenter;->updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/services/telephony/common/Call;)V

    .line 182
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_5

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->enableSmartSwitch(Landroid/content/Context;)V

    .line 189
    :goto_1
    invoke-static {}, Lcom/mediatek/incallui/ext/ExtensionManager;->getInstance()Lcom/mediatek/incallui/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/ext/ExtensionManager;->getCallButtonExtension()Lcom/mediatek/incallui/ext/CallButtonExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getCallMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/incallui/ext/CallButtonExtension;->onStateChange(Lcom/android/services/telephony/common/Call;Ljava/util/HashMap;)V

    .line 192
    iput-object p1, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 193
    return-void

    .line 150
    :cond_2
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_3

    .line 156
    invoke-static {p2, v3, v2}, Lcom/android/incallui/CallCardPresenter;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/services/telephony/common/Call;Z)Lcom/android/services/telephony/common/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    .line 162
    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mPreviousState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v0}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getSlotId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mediatek/incallui/InCallUtils;->isVoiceMailNumber(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(Z)V

    goto :goto_0

    .line 172
    :cond_3
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v0, :cond_4

    .line 173
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(Z)V

    .line 174
    invoke-virtual {p2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    goto :goto_0

    .line 176
    :cond_4
    iput-object v3, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    .line 177
    iput-boolean v2, p0, Lcom/android/incallui/CallButtonPresenter;->mIsAutoPopupDialpad:Z

    goto :goto_0

    .line 185
    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->disableSmartSwitch()V

    goto :goto_1
.end method

.method public onSupportedAudioMode(I)V
    .locals 1
    .param p1, "mask"    # I

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setSupportedAudio(I)V

    .line 217
    :cond_0
    return-void
.end method

.method public onUiReady(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V
    .locals 2
    .param p1, "ui"    # Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 111
    instance-of v1, p1, Landroid/app/Fragment;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 112
    check-cast v0, Landroid/app/Fragment;

    .line 113
    .local v0, "callbuttonfragment":Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    .line 116
    .end local v0    # "callbuttonfragment":Landroid/app/Fragment;
    :cond_0
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 119
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 120
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 121
    invoke-static {}, Lcom/mediatek/incallui/VoiceCommandUIUtils;->getInstance()Lcom/mediatek/incallui/VoiceCommandUIUtils;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mediatek/incallui/VoiceCommandUIUtils;->setPhoneDetectListener(Lcom/mediatek/incallui/VoiceCommandUIUtils$PhoneDetectListener;)V

    .line 122
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->addVTListener(Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;)V

    .line 124
    invoke-static {}, Lcom/mediatek/incallui/recorder/PhoneRecorderUtils;->getRecorderState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/incallui/CallButtonPresenter;->updateVoiceCallRecordState(I)V

    .line 125
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallPresenter;->addPhoneRecorderListener(Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;)V

    .line 127
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/Ui;

    .prologue
    .line 66
    check-cast p1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .end local p1    # "x0":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->onUiReady(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/CallButtonPresenter;->mContext:Landroid/content/Context;

    .line 135
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 136
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 137
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 138
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->removeVTListener(Lcom/mediatek/incallui/vt/VTManagerLocal$VTListener;)V

    .line 140
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removePhoneRecorderListener(Lcom/android/incallui/InCallPresenter$PhoneRecorderListener;)V

    .line 142
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/Ui;

    .prologue
    .line 66
    check-cast p1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .end local p1    # "x0":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->onUiUnready(Lcom/android/incallui/CallButtonPresenter$CallButtonUi;)V

    return-void
.end method

.method public onUpdateRecordState(II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "customValue"    # I

    .prologue
    .line 875
    invoke-direct {p0, p1}, Lcom/android/incallui/CallButtonPresenter;->updateVoiceCallRecordState(I)V

    .line 876
    return-void
.end method

.method public onVTEndCallClick()V
    .locals 0

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    .line 801
    return-void
.end method

.method public onVTStateChanged(I)V
    .locals 0
    .param p1, "msgVT"    # I

    .prologue
    .line 807
    return-void
.end method

.method public phoneIsInUse()Z
    .locals 4

    .prologue
    .line 270
    const/4 v2, 0x0

    .line 272
    .local v2, "phoneInUse":Z
    :try_start_0
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 273
    .local v1, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 277
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v2

    .line 273
    .restart local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 274
    .end local v1    # "phone":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 275
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "phoneIsInUse() failed"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAudioMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending new Audio Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallCommandClient;->setAudioMode(I)V

    .line 360
    return-void
.end method

.method public shouldSwitchCameraEnable()Z
    .locals 2

    .prologue
    .line 780
    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTEnableBackCamera:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/incallui/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/incallui/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 782
    .local v0, "shouldEnable":Z
    :goto_0
    return v0

    .line 780
    .end local v0    # "shouldEnable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldSwitchCameraVisible()Z
    .locals 3

    .prologue
    .line 775
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getCameraSensorCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 776
    .local v0, "shouldVisible":Z
    :goto_0
    return v0

    .line 775
    .end local v0    # "shouldVisible":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldVTRecordEnable()Z
    .locals 2

    .prologue
    .line 791
    invoke-static {}, Lcom/mediatek/incallui/wrapper/FeatureOptionWrapper;->isSupportPhoneVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-ne v0, v1, :cond_0

    .line 793
    const/4 v0, 0x1

    .line 796
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldVideoSettingEnable()Z
    .locals 3

    .prologue
    .line 786
    invoke-static {}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getInstance()Lcom/mediatek/incallui/vt/VTManagerLocal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/incallui/vt/VTManagerLocal;->getState()Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    move-result-object v1

    sget-object v2, Lcom/mediatek/incallui/vt/VTManagerLocal$State;->CONNECTED:Lcom/mediatek/incallui/vt/VTManagerLocal$State;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 787
    .local v0, "shouldEnable":Z
    :goto_0
    return v0

    .line 786
    .end local v0    # "shouldEnable":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showDialpadClicked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show dialpad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v0, p1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(Z)V

    .line 450
    invoke-direct {p0}, Lcom/android/incallui/CallButtonPresenter;->updateExtraButtonRow()V

    .line 452
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mIsAutoPopupDialpad:Z

    if-eqz v0, :cond_0

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mIsAutoPopupDialpad:Z

    .line 456
    :cond_0
    return-void
.end method

.method public stopRecordClicked()V
    .locals 1

    .prologue
    .line 739
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->stopRecording()V

    .line 740
    return-void
.end method

.method public swapClicked()V
    .locals 1

    .prologue
    .line 444
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCommandClient;->swap()V

    .line 445
    return-void
.end method

.method public toggleSpeakerphone()V
    .locals 3

    .prologue
    .line 367
    sget v1, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 370
    const-string v1, "toggling speakerphone not allowed when bluetooth supported."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getSupportedAudio()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setSupportedAudio(I)V

    .line 383
    :goto_0
    return-void

    .line 375
    :cond_0
    sget v0, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    .line 378
    .local v0, "newMode":I
    invoke-virtual {p0}, Lcom/android/incallui/CallButtonPresenter;->getAudioMode()I

    move-result v1

    sget v2, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-ne v1, v2, :cond_1

    .line 379
    sget v0, Lcom/android/services/telephony/common/AudioMode;->WIRED_OR_EARPIECE:I

    .line 382
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/incallui/CallButtonPresenter;->setAudioMode(I)V

    goto :goto_0
.end method

.method public updateAutoPopupDialog(Z)V
    .locals 1
    .param p1, "showDialpad"    # Z

    .prologue
    .line 954
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mIsAutoPopupDialpad:Z

    if-eqz v0, :cond_0

    .line 955
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallButtonPresenter;->mIsAutoPopupDialpad:Z

    .line 957
    :cond_0
    return-void
.end method

.method updateInCallControlsDuringDMLocked(Lcom/android/services/telephony/common/Call;)V
    .locals 6
    .param p1, "call"    # Lcom/android/services/telephony/common/Call;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 846
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .line 847
    .local v3, "ui":Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    if-nez v3, :cond_0

    .line 848
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "just return ui:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 870
    :goto_0
    return-void

    .line 851
    :cond_0
    invoke-interface {v3}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 852
    .local v2, "context":Landroid/content/Context;
    if-nez v2, :cond_1

    .line 853
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "just return context:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 856
    :cond_1
    if-nez p1, :cond_2

    .line 857
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "just return call:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 860
    :cond_2
    invoke-interface {v3, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->setEnabled(Z)V

    .line 861
    invoke-interface {v3, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showMerge(Z)V

    .line 862
    invoke-interface {v3, v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showAddCall(Z)V

    .line 863
    invoke-interface {v3, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableAddCall(Z)V

    .line 864
    invoke-virtual {p1, v5}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v0

    .line 865
    .local v0, "canHold":Z
    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v1

    .line 866
    .local v1, "canSwap":Z
    invoke-interface {v3, v5}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->enableEnd(Z)V

    .line 867
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    invoke-interface {v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->isDialpadVisible()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->displayDialpad(Z)V

    .line 868
    invoke-interface {v3, v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showHold(Z)V

    .line 869
    invoke-interface {v3, v1}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->showSwap(Z)V

    goto :goto_0
.end method

.method public updateVTCallButton()V
    .locals 1

    .prologue
    .line 826
    invoke-virtual {p0}, Lcom/android/incallui/Presenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;

    .line 827
    .local v0, "ui":Lcom/android/incallui/CallButtonPresenter$CallButtonUi;
    if-eqz v0, :cond_0

    .line 828
    invoke-interface {v0}, Lcom/android/incallui/CallButtonPresenter$CallButtonUi;->updateVTCallButton()V

    .line 830
    :cond_0
    return-void
.end method

.method public updateVTCallFragment()V
    .locals 0

    .prologue
    .line 822
    return-void
.end method

.method public voiceRecordClicked()V
    .locals 2

    .prologue
    .line 735
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallButtonPresenter;->mCall:Lcom/android/services/telephony/common/Call;

    invoke-virtual {v1}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/CallCommandClient;->startVoiceRecording(Ljava/lang/String;)V

    .line 736
    return-void
.end method
