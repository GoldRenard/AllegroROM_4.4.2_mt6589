.class public Lcom/android/incallui/ProximitySensor;
.super Ljava/lang/Object;
.source "ProximitySensor.java"

# interfaces
.implements Lcom/android/incallui/AccelerometerListener$OrientationListener;
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ProximitySensor$SmartBookBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

.field private final mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

.field mContext:Landroid/content/Context;

.field private mDialpadVisible:Z

.field mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mIsHardKeyboardOpen:Z

.field private mIsPhoneOffhook:Z

.field private mOrientation:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSmartBookReceiver:Landroid/content/BroadcastReceiver;

.field private mUiShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/ProximitySensor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/incallui/AudioModeProvider;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "audioModeProvider"    # Lcom/android/incallui/AudioModeProvider;

    .prologue
    const/16 v2, 0x20

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v0, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    .line 54
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    .line 63
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    .line 65
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->isWakeLockLevelSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    sget-object v1, Lcom/android/incallui/ProximitySensor;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 71
    :goto_0
    const-string v0, "onCreate: mProximityWakeLock: "

    iget-object v1, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    new-instance v0, Lcom/android/incallui/AccelerometerListener;

    invoke-direct {v0, p1, p0}, Lcom/android/incallui/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/android/incallui/AccelerometerListener$OrientationListener;)V

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    .line 74
    iput-object p2, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    .line 75
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/android/incallui/ProximitySensor;->setupForSmartBook(Landroid/content/Context;)V

    .line 81
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method private checkScreenOnForSmartBook(Z)Z
    .locals 5
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 359
    move v1, p1

    .line 360
    .local v1, "screenOnImmediately":Z
    iget-object v4, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v4}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    .line 361
    .local v0, "audioMode":I
    invoke-virtual {p0}, Lcom/android/incallui/ProximitySensor;->isSmartBookPlugged()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 362
    sget v4, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    if-eq v4, v0, :cond_0

    sget v4, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-eq v4, v0, :cond_0

    sget v4, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-ne v4, v0, :cond_3

    :cond_0
    move v1, v3

    .line 365
    :goto_0
    if-nez v1, :cond_1

    iget-boolean v4, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    if-nez v4, :cond_4

    :cond_1
    move v1, v3

    .line 367
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkScreenOnForSmartBook(); screenOnImmediately: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 368
    return v1

    :cond_3
    move v1, v2

    .line 362
    goto :goto_0

    :cond_4
    move v1, v2

    .line 365
    goto :goto_1
.end method

.method private proximitySensorModeEnabled()Z
    .locals 1

    .prologue
    .line 190
    const-string v0, "proximitySensorModeEnabled enter"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximateWakeLockSettingStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerSmartBookReceiver(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 378
    return-void
.end method

.method private setupForSmartBook(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    return-void
.end method

.method private shouldSkipAcquireProximityLock()Z
    .locals 3

    .prologue
    .line 407
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    .line 408
    .local v0, "callList":Lcom/android/incallui/CallList;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 409
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v1

    if-nez v1, :cond_0

    .line 411
    const-string v1, "no active call when INCALL state, skip Acquire Proximity Lock~~"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    const/4 v1, 0x1

    .line 415
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private tearDownForSmartBook()V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method private updateProximitySensorMode()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 216
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->proximitySensorModeEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 217
    iget-object v8, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v8

    .line 219
    :try_start_0
    iget-object v7, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v7}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    .line 224
    .local v0, "audioMode":I
    sget v7, Lcom/android/services/telephony/common/AudioMode;->WIRED_HEADSET:I

    if-eq v7, v0, :cond_0

    sget v7, Lcom/android/services/telephony/common/AudioMode;->SPEAKER:I

    if-eq v7, v0, :cond_0

    sget v7, Lcom/android/services/telephony/common/AudioMode;->BLUETOOTH:I

    if-eq v7, v0, :cond_0

    iget-boolean v7, p0, Lcom/android/incallui/ProximitySensor;->mIsHardKeyboardOpen:Z

    if-eqz v7, :cond_2

    :cond_0
    move v4, v5

    .line 232
    .local v4, "screenOnImmediately":Z
    :goto_0
    invoke-direct {p0, v4}, Lcom/android/incallui/ProximitySensor;->checkScreenOnForSmartBook(Z)Z

    move-result v4

    .line 237
    invoke-static {}, Lcom/mediatek/incallui/InCallUtils;->checkScreenOnForVT()Z

    move-result v7

    or-int/2addr v4, v7

    .line 243
    iget v7, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    const/4 v9, 0x2

    if-ne v7, v9, :cond_3

    move v2, v5

    .line 245
    .local v2, "horizontal":Z
    :goto_1
    iget-boolean v7, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    if-nez v7, :cond_4

    if-eqz v2, :cond_4

    move v7, v5

    :goto_2
    or-int/2addr v4, v7

    .line 251
    iget-boolean v7, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    if-eqz v7, :cond_5

    if-eqz v2, :cond_5

    move v7, v5

    :goto_3
    or-int/2addr v4, v7

    .line 253
    const-string v7, "screenonImmediately: "

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {p0, v7, v9}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 255
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v9

    const-string v10, "keybrd"

    iget-boolean v7, p0, Lcom/android/incallui/ProximitySensor;->mIsHardKeyboardOpen:Z

    if-eqz v7, :cond_6

    move v7, v5

    :goto_4
    invoke-virtual {v9, v10, v7}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v9

    const-string v10, "dpad"

    iget-boolean v7, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    if-eqz v7, :cond_7

    move v7, v5

    :goto_5
    invoke-virtual {v9, v10, v7}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v9

    const-string v10, "offhook"

    iget-boolean v7, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eqz v7, :cond_8

    move v7, v5

    :goto_6
    invoke-virtual {v9, v10, v7}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v9

    const-string v10, "hor"

    if-eqz v2, :cond_9

    move v7, v5

    :goto_7
    invoke-virtual {v9, v10, v7}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v7

    const-string v9, "ui"

    iget-boolean v10, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    if-eqz v10, :cond_a

    :goto_8
    invoke-virtual {v7, v9, v5}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v5

    const-string v6, "aud"

    invoke-static {v0}, Lcom/android/services/telephony/common/AudioMode;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    iget-boolean v5, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eqz v5, :cond_d

    if-nez v4, :cond_d

    .line 264
    const-string v3, "turning on proximity sensor: "

    .line 274
    .local v3, "logStr":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->shouldSkipAcquireProximityLock()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 275
    const-string v5, "turning on proximity sensor: skip"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    :goto_9
    monitor-exit v8

    .line 306
    .end local v0    # "audioMode":I
    .end local v2    # "horizontal":Z
    .end local v3    # "logStr":Ljava/lang/String;
    .end local v4    # "screenOnImmediately":Z
    :cond_1
    return-void

    .restart local v0    # "audioMode":I
    :cond_2
    move v4, v6

    .line 224
    goto/16 :goto_0

    .restart local v4    # "screenOnImmediately":Z
    :cond_3
    move v2, v6

    .line 243
    goto :goto_1

    .restart local v2    # "horizontal":Z
    :cond_4
    move v7, v6

    .line 245
    goto :goto_2

    :cond_5
    move v7, v6

    .line 251
    goto :goto_3

    :cond_6
    move v7, v6

    .line 255
    goto :goto_4

    :cond_7
    move v7, v6

    goto :goto_5

    :cond_8
    move v7, v6

    goto :goto_6

    :cond_9
    move v7, v6

    goto :goto_7

    :cond_a
    move v5, v6

    goto :goto_8

    .line 276
    .restart local v3    # "logStr":Ljava/lang/String;
    :cond_b
    iget-object v5, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_c

    .line 278
    const-string v5, "turning on proximity sensor: acquiring"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    iget-object v5, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_9

    .line 304
    .end local v0    # "audioMode":I
    .end local v2    # "horizontal":Z
    .end local v3    # "logStr":Ljava/lang/String;
    .end local v4    # "screenOnImmediately":Z
    :catchall_0
    move-exception v5

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 281
    .restart local v0    # "audioMode":I
    .restart local v2    # "horizontal":Z
    .restart local v3    # "logStr":Ljava/lang/String;
    .restart local v4    # "screenOnImmediately":Z
    :cond_c
    :try_start_1
    const-string v5, "turning on proximity sensor: already acquired"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    .line 284
    .end local v3    # "logStr":Ljava/lang/String;
    :cond_d
    const-string v3, "turning off proximity sensor: "

    .line 287
    .restart local v3    # "logStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 288
    const-string v5, "turning off proximity sensor: releasing"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    const/4 v1, 0x0

    .line 299
    .local v1, "flags":I
    iget-object v5, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v1}, Landroid/os/PowerManager$WakeLock;->release(I)V

    goto :goto_9

    .line 301
    .end local v1    # "flags":I
    :cond_e
    const-string v5, "turning off proximity sensor: already released"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9
.end method


# virtual methods
.method public isScreenReallyOff()Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSmartBookPlugged()Z
    .locals 3

    .prologue
    .line 334
    const/4 v0, 0x0

    .line 338
    .local v0, "isSmartBookPlugged":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSmartBookPlugged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    return v0
.end method

.method public lightOnScreenForSmartBook()V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public onAudioMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    .line 140
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v0, 0x1

    .line 151
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsHardKeyboardOpen:Z

    .line 154
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    .line 155
    return-void

    .line 151
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDialpadVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 143
    iput-boolean p1, p0, Lcom/android/incallui/ProximitySensor;->mDialpadVisible:Z

    .line 144
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    .line 145
    return-void
.end method

.method public onInCallShowing(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 161
    if-eqz p1, :cond_1

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    .line 169
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    .line 170
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mUiShowing:Z

    goto :goto_0
.end method

.method public onMute(Z)V
    .locals 0
    .param p1, "muted"    # Z

    .prologue
    .line 132
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 3
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v1, 0x0

    .line 113
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v2, p1, :cond_0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 116
    .local v0, "isOffhook":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    if-eq v0, v2, :cond_1

    .line 117
    iput-boolean v0, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    .line 119
    iput v1, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    .line 120
    iget-object v1, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    iget-boolean v2, p0, Lcom/android/incallui/ProximitySensor;->mIsPhoneOffhook:Z

    invoke-virtual {v1, v2}, Lcom/android/incallui/AccelerometerListener;->enable(Z)V

    .line 122
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    .line 124
    :cond_1
    return-void

    .end local v0    # "isOffhook":Z
    :cond_2
    move v0, v1

    .line 113
    goto :goto_0
.end method

.method public onSupportedAudioMode(I)V
    .locals 0
    .param p1, "modeMask"    # I

    .prologue
    .line 128
    return-void
.end method

.method public orientationChanged(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/android/incallui/ProximitySensor;->mOrientation:I

    .line 103
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->updateProximitySensorMode()V

    .line 104
    return-void
.end method

.method public screenOffForSmartBook()V
    .locals 0

    .prologue
    .line 348
    return-void
.end method

.method public tearDown()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mAccelerometerListener:Lcom/android/incallui/AccelerometerListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/AccelerometerListener;->enable(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/incallui/ProximitySensor;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 93
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/ProximitySensor;->tearDownForSmartBook()V

    .line 95
    return-void
.end method
