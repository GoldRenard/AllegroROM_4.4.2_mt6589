.class public Lcom/android/settings/audioprofile/PhoneCallRingPocketService;
.super Landroid/app/Service;
.source "PhoneCallRingPocketService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;,
        Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;
    }
.end annotation


# static fields
.field private static final IS_MTK_DUAL_CARD:Z = true

.field private static final IS_QM_DUAL_CARD:Z = false

.field private static final LIGHT_SENSOR_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "PhoneCallRingPocketService"


# instance fields
.field private final MSG_WHAT_CLOSE:I

.field private final TYPE_RINGTONE_VOLUME_TOP:I

.field handler:Landroid/os/Handler;

.field lightSensor:Landroid/hardware/Sensor;

.field private mAudioMgr:Landroid/media/AudioManager;

.field private mCurrentVolume:I

.field private mFirstAdjust:Z

.field private mInitValue:I

.field private mIsEnveloped:Ljava/lang/Boolean;

.field private mIsLight:Ljava/lang/Boolean;

.field private mLightSensorPendingDark:Z

.field private mLightSensorPendingLight:Z

.field private mMaxVolume:I

.field private mPhoneListener:Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;

.field private mPhoneListener2:Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;

.field private mRun:Z

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorMgr:Landroid/hardware/SensorManager;

.field private mService:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

.field private mStatus:Ljava/lang/String;

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field proximitySensor:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mFirstAdjust:Z

    .line 48
    iput v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mInitValue:I

    .line 52
    const-string v0, "INIT"

    iput-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mStatus:Ljava/lang/String;

    .line 56
    const v0, 0x1010111

    iput v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->MSG_WHAT_CLOSE:I

    .line 58
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->TYPE_RINGTONE_VOLUME_TOP:I

    .line 60
    iput v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mCurrentVolume:I

    .line 62
    iput v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mMaxVolume:I

    .line 68
    iput-boolean v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mLightSensorPendingDark:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mLightSensorPendingLight:Z

    .line 75
    iput-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->lightSensor:Landroid/hardware/Sensor;

    .line 76
    iput-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->proximitySensor:Landroid/hardware/Sensor;

    .line 176
    new-instance v0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$2;-><init>(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)V

    iput-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->handler:Landroid/os/Handler;

    .line 261
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mRun:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mRun:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mLightSensorPendingDark:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mLightSensorPendingDark:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mLightSensorPendingLight:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mLightSensorPendingLight:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mFirstAdjust:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;
    .param p1, "x1"    # Z

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mFirstAdjust:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    .prologue
    .line 25
    iget v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mMaxVolume:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mMaxVolume:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mAudioMgr:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    .prologue
    .line 25
    iget v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mCurrentVolume:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mCurrentVolume:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;
    .param p1, "x1"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->saveData(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    .prologue
    .line 25
    iget v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mInitValue:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mInitValue:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mIsLight:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mIsLight:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mIsEnveloped:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mIsEnveloped:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->resetProfileVolume()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Lcom/android/settings/audioprofile/PhoneCallRingPocketService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mService:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;
    .param p1, "x1"    # Landroid/hardware/SensorManager;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Landroid/hardware/SensorEventListener;)Landroid/hardware/SensorEventListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService;
    .param p1, "x1"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;

    return-object p1
.end method

.method private getData()I
    .locals 3

    .prologue
    .line 443
    const-string v1, "silent3"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 445
    .local v0, "spPreferences":Landroid/content/SharedPreferences;
    const-string v1, "Volume_num"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private resetProfileVolume()V
    .locals 4

    .prologue
    .line 421
    const-string v1, "PhoneCallRingPocketService"

    const-string v2, "ResetProfileVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-direct {p0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->getData()I

    move-result v0

    .line 424
    .local v0, "data_volume":I
    const-string v1, "PhoneCallRingPocketService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data_volume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    if-ltz v0, :cond_0

    .line 426
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mAudioMgr:Landroid/media/AudioManager;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 427
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->saveData(I)V

    .line 429
    :cond_0
    return-void
.end method

.method private saveData(I)V
    .locals 4
    .param p1, "data"    # I

    .prologue
    .line 433
    const-string v2, "silent3"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 435
    .local v1, "spPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 437
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "Volume_num"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 438
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 439
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 450
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 79
    const-string v1, "PhoneCallRingPocketService"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iput-object p0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mService:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    .line 84
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 85
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mAudioMgr:Landroid/media/AudioManager;

    .line 87
    new-instance v1, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;

    invoke-direct {v1, p0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;-><init>(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)V

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 89
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->lightSensor:Landroid/hardware/Sensor;

    .line 91
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->lightSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->lightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->proximitySensor:Landroid/hardware/Sensor;

    .line 98
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->proximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 103
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mRun:Z

    .line 105
    new-instance v0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$1;-><init>(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)V

    .line 121
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 125
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 127
    new-instance v1, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;

    invoke-direct {v1, p0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;-><init>(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)V

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mPhoneListener:Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;

    .line 129
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mPhoneListener:Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 148
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 155
    const-string v0, "PhoneCallRingPocketService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mPhoneListener:Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mPhoneListener2:Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 165
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 166
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->proximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->lightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->lightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 175
    :cond_2
    return-void
.end method
