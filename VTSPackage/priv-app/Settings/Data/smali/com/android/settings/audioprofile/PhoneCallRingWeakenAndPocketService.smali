.class public Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
.super Landroid/app/Service;
.source "PhoneCallRingWeakenAndPocketService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;,
        Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;
    }
.end annotation


# static fields
.field private static final IS_MTK_DUAL_CARD:Z = true

.field private static final IS_QM_DUAL_CARD:Z = false

.field private static final LIGHT_SENSOR_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "PhoneCallRingWeakenAndPocketService"


# instance fields
.field private final ACTION_RINGTONE_VOLUME_CHANGE:Ljava/lang/String;

.field private final EXTRA_RINGTONE_VOLUME_CHANGE_TYPE:Ljava/lang/String;

.field private final EXTRA_RINGTONE_VOLUME_CHANGE_VALUE:Ljava/lang/String;

.field private final MSG_WHAT_CLOSE:I

.field private final MSG_WHAT_VOLUME:I

.field private final TYPE_RINGTONE_VOLUME_DOWN:I

.field private final TYPE_RINGTONE_VOLUME_TOP:I

.field acceleSensor:Landroid/hardware/Sensor;

.field handler:Landroid/os/Handler;

.field lightSensor:Landroid/hardware/Sensor;

.field private mAudioMgr:Landroid/media/AudioManager;

.field private mCurrentVolume:I

.field private mFirstPocketAdjust:Z

.field private mFirstWeakenAdjust:Z

.field private mFirstX:F

.field private mFirstY:F

.field private mFirstZ:F

.field private mInitValue:I

.field private mIsEnveloped:Ljava/lang/Boolean;

.field private mIsLight:Ljava/lang/Boolean;

.field private mIsSendMsgByGetLight:Ljava/lang/Boolean;

.field private mLightSensorPendingDark:Z

.field private mLightSensorPendingLight:Z

.field private mMaxVolume:I

.field private mPhoneListener:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;

.field private mPhoneListener2:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;

.field private mRun:Z

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorMgr:Landroid/hardware/SensorManager;

.field private mService:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

.field private mStatus:Ljava/lang/String;

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private mX:F

.field private mY:F

.field private mZ:F

.field private mbLightChange:Z

.field proximitySensor:Landroid/hardware/Sensor;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    iput v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mX:F

    iput v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mY:F

    iput v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mZ:F

    .line 54
    iput-boolean v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstPocketAdjust:Z

    .line 56
    iput v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstX:F

    iput v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstY:F

    iput v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstZ:F

    .line 58
    iput v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mInitValue:I

    .line 62
    const-string v0, "INIT"

    iput-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mStatus:Ljava/lang/String;

    .line 66
    const v0, 0x1010111

    iput v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->MSG_WHAT_CLOSE:I

    .line 68
    const v0, 0x1010112

    iput v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->MSG_WHAT_VOLUME:I

    .line 70
    const-string v0, "ringtone_volume_change_action"

    iput-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->ACTION_RINGTONE_VOLUME_CHANGE:Ljava/lang/String;

    .line 72
    const-string v0, "ringtone_volume_change_type"

    iput-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->EXTRA_RINGTONE_VOLUME_CHANGE_TYPE:Ljava/lang/String;

    .line 74
    const-string v0, "ringtone_volume_change_value"

    iput-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->EXTRA_RINGTONE_VOLUME_CHANGE_VALUE:Ljava/lang/String;

    .line 76
    iput v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->TYPE_RINGTONE_VOLUME_DOWN:I

    .line 78
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->TYPE_RINGTONE_VOLUME_TOP:I

    .line 80
    iput v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mCurrentVolume:I

    .line 82
    iput v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mMaxVolume:I

    .line 84
    iput-boolean v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mbLightChange:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mLightSensorPendingDark:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mLightSensorPendingLight:Z

    .line 98
    iput-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->acceleSensor:Landroid/hardware/Sensor;

    .line 99
    iput-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->lightSensor:Landroid/hardware/Sensor;

    .line 100
    iput-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->proximitySensor:Landroid/hardware/Sensor;

    .line 213
    new-instance v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$2;-><init>(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)V

    iput-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->handler:Landroid/os/Handler;

    .line 322
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mRun:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mRun:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mService:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mAudioMgr:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
    .param p1, "x1"    # Landroid/hardware/SensorManager;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Landroid/hardware/SensorEventListener;)Landroid/hardware/SensorEventListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
    .param p1, "x1"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mLightSensorPendingDark:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mLightSensorPendingDark:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mLightSensorPendingLight:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mLightSensorPendingLight:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mPhoneListener:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mInitValue:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mPhoneListener2:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mInitValue:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstX:F

    return v0
.end method

.method static synthetic access$2102(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
    .param p1, "x1"    # F

    .prologue
    .line 27
    iput p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstX:F

    return p1
.end method

.method static synthetic access$2200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstY:F

    return v0
.end method

.method static synthetic access$2202(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
    .param p1, "x1"    # F

    .prologue
    .line 27
    iput p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstY:F

    return p1
.end method

.method static synthetic access$2300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstZ:F

    return v0
.end method

.method static synthetic access$2302(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
    .param p1, "x1"    # F

    .prologue
    .line 27
    iput p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstZ:F

    return p1
.end method

.method static synthetic access$2400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstPocketAdjust:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstPocketAdjust:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mMaxVolume:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
    .param p1, "x1"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mMaxVolume:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mCurrentVolume:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->saveData(I)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstWeakenAdjust:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstWeakenAdjust:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsLight:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsLight:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsEnveloped:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsEnveloped:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsSendMsgByGetLight:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsSendMsgByGetLight:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mX:F

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
    .param p1, "x1"    # F

    .prologue
    .line 27
    iput p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mX:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mY:F

    return v0
.end method

.method static synthetic access$702(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
    .param p1, "x1"    # F

    .prologue
    .line 27
    iput p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mY:F

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    iget v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mZ:F

    return v0
.end method

.method static synthetic access$802(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
    .param p1, "x1"    # F

    .prologue
    .line 27
    iput p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mZ:F

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->resetProfileVolume()V

    return-void
.end method

.method private getData()I
    .locals 3

    .prologue
    .line 624
    const-string v1, "silent3"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 626
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
    .line 602
    const-string v1, "PhoneCallRingWeakenAndPocketService"

    const-string v2, "ResetProfileVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-direct {p0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->getData()I

    move-result v0

    .line 605
    .local v0, "data_volume":I
    const-string v1, "PhoneCallRingWeakenAndPocketService"

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

    .line 606
    if-ltz v0, :cond_0

    .line 607
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mAudioMgr:Landroid/media/AudioManager;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 608
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->saveData(I)V

    .line 610
    :cond_0
    return-void
.end method

.method private saveData(I)V
    .locals 4
    .param p1, "data"    # I

    .prologue
    .line 614
    const-string v2, "silent3"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 616
    .local v1, "spPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 618
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "Volume_num"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 619
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 620
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 631
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 104
    const-string v1, "PhoneCallRingWeakenAndPocketService"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput-object p0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mService:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .line 111
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 112
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mAudioMgr:Landroid/media/AudioManager;

    .line 113
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mAudioMgr:Landroid/media/AudioManager;

    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mCurrentVolume:I

    .line 115
    new-instance v1, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;

    invoke-direct {v1, p0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;-><init>(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)V

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 117
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->acceleSensor:Landroid/hardware/Sensor;

    .line 118
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->acceleSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->acceleSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->lightSensor:Landroid/hardware/Sensor;

    .line 125
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->lightSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->lightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->proximitySensor:Landroid/hardware/Sensor;

    .line 132
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->proximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 137
    :cond_2
    iput-boolean v5, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mRun:Z

    .line 138
    iput-boolean v5, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstWeakenAdjust:Z

    .line 139
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsSendMsgByGetLight:Ljava/lang/Boolean;

    .line 141
    new-instance v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$1;-><init>(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)V

    .line 159
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 163
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 165
    new-instance v1, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;

    invoke-direct {v1, p0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;-><init>(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)V

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mPhoneListener:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;

    .line 167
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mPhoneListener:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 185
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 190
    const-string v0, "PhoneCallRingWeakenAndPocketService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mPhoneListener:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mPhoneListener2:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_3

    .line 201
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->acceleSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->acceleSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->lightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->lightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->proximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 212
    :cond_3
    return-void
.end method
