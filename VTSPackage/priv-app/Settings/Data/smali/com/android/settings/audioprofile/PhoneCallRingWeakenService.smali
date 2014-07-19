.class public Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;
.super Landroid/app/Service;
.source "PhoneCallRingWeakenService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;,
        Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;
    }
.end annotation


# static fields
.field private static final IS_MTK_DUAL_CARD:Z = true

.field private static final IS_QM_DUAL_CARD:Z = false

.field private static final LIGHT_SENSOR_DELAY:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "PhoneCallRingWeakenService"


# instance fields
.field private final ACTION_RINGTONE_VOLUME_CHANGE:Ljava/lang/String;

.field private final EXTRA_RINGTONE_VOLUME_CHANGE_TYPE:Ljava/lang/String;

.field private final EXTRA_RINGTONE_VOLUME_CHANGE_VALUE:Ljava/lang/String;

.field private final MSG_WHAT_CLOSE:I

.field private final MSG_WHAT_VOLUME:I

.field private final TYPE_RINGTONE_VOLUME_DOWN:I

.field acceleSensor:Landroid/hardware/Sensor;

.field handler:Landroid/os/Handler;

.field lightSensor:Landroid/hardware/Sensor;

.field private mAudioMgr:Landroid/media/AudioManager;

.field private mFirstAdjust:Z

.field private mFirstX:F

.field private mFirstY:F

.field private mFirstZ:F

.field private mInitValue:I

.field private mIsLight:Ljava/lang/Boolean;

.field private mLightSensorPendingDark:Z

.field private mLightSensorPendingLight:Z

.field private mPhoneListener:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;

.field private mPhoneListener2:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;

.field private mRun:Z

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorMgr:Landroid/hardware/SensorManager;

.field private mService:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

.field private mStatus:Ljava/lang/String;

.field private mTelephonyMgr:Landroid/telephony/TelephonyManager;

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 43
    iput v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mX:F

    iput v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mY:F

    iput v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mZ:F

    .line 47
    iput v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstX:F

    iput v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstY:F

    iput v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstZ:F

    .line 49
    iput v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mInitValue:I

    .line 53
    const-string v0, "INIT"

    iput-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mStatus:Ljava/lang/String;

    .line 57
    const v0, 0x1010111

    iput v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->MSG_WHAT_CLOSE:I

    .line 59
    const v0, 0x1010112

    iput v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->MSG_WHAT_VOLUME:I

    .line 61
    const-string v0, "ringtone_volume_change_action"

    iput-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->ACTION_RINGTONE_VOLUME_CHANGE:Ljava/lang/String;

    .line 63
    const-string v0, "ringtone_volume_change_type"

    iput-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->EXTRA_RINGTONE_VOLUME_CHANGE_TYPE:Ljava/lang/String;

    .line 65
    const-string v0, "ringtone_volume_change_value"

    iput-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->EXTRA_RINGTONE_VOLUME_CHANGE_VALUE:Ljava/lang/String;

    .line 67
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->TYPE_RINGTONE_VOLUME_DOWN:I

    .line 73
    iput-boolean v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mLightSensorPendingDark:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mLightSensorPendingLight:Z

    .line 80
    iput-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->acceleSensor:Landroid/hardware/Sensor;

    .line 81
    iput-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->lightSensor:Landroid/hardware/Sensor;

    .line 177
    new-instance v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$2;

    invoke-direct {v0, p0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$2;-><init>(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)V

    iput-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->handler:Landroid/os/Handler;

    .line 280
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mRun:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mRun:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mAudioMgr:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mStatus:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorMgr:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;
    .param p1, "x1"    # Landroid/hardware/SensorManager;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorMgr:Landroid/hardware/SensorManager;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Landroid/hardware/SensorEventListener;)Landroid/hardware/SensorEventListener;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;
    .param p1, "x1"    # Landroid/hardware/SensorEventListener;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorListener:Landroid/hardware/SensorEventListener;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mLightSensorPendingDark:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mLightSensorPendingDark:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mLightSensorPendingLight:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mLightSensorPendingLight:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mPhoneListener:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mPhoneListener2:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstAdjust:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstAdjust:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstX:F

    return v0
.end method

.method static synthetic access$1902(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;
    .param p1, "x1"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstX:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mInitValue:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstY:F

    return v0
.end method

.method static synthetic access$2002(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;
    .param p1, "x1"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstY:F

    return p1
.end method

.method static synthetic access$202(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mInitValue:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstZ:F

    return v0
.end method

.method static synthetic access$2102(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;
    .param p1, "x1"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstZ:F

    return p1
.end method

.method static synthetic access$2200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;
    .param p1, "x1"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->saveData(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mIsLight:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mIsLight:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mX:F

    return v0
.end method

.method static synthetic access$402(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;
    .param p1, "x1"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mX:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mY:F

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;
    .param p1, "x1"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mY:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .prologue
    .line 24
    iget v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mZ:F

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;
    .param p1, "x1"    # F

    .prologue
    .line 24
    iput p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mZ:F

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->resetProfileVolume()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mService:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private getData()I
    .locals 3

    .prologue
    .line 521
    const-string v1, "silent3"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 523
    .local v0, "spPreferences":Landroid/content/SharedPreferences;
    const-string v1, "Volume_num_weaken"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private resetProfileVolume()V
    .locals 4

    .prologue
    .line 509
    const-string v1, "PhoneCallRingWeakenService"

    const-string v2, "ResetProfileVolume--weaken"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-direct {p0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->getData()I

    move-result v0

    .line 512
    .local v0, "data_volume":I
    const-string v1, "PhoneCallRingWeakenService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data_volume weaken"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    if-ltz v0, :cond_0

    .line 514
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mAudioMgr:Landroid/media/AudioManager;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 515
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->saveData(I)V

    .line 517
    :cond_0
    return-void
.end method

.method private saveData(I)V
    .locals 4
    .param p1, "data"    # I

    .prologue
    .line 500
    const-string v2, "silent3"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 502
    .local v1, "spPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 504
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "Volume_num_weaken"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 505
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 506
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 496
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 83
    const-string v1, "PhoneCallRingWeakenService"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iput-object p0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mService:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .line 88
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 89
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mAudioMgr:Landroid/media/AudioManager;

    .line 91
    new-instance v1, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;

    invoke-direct {v1, p0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;-><init>(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)V

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 93
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorMgr:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->acceleSensor:Landroid/hardware/Sensor;

    .line 94
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->acceleSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->acceleSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorMgr:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->lightSensor:Landroid/hardware/Sensor;

    .line 101
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->lightSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->lightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 106
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mRun:Z

    .line 107
    iput-boolean v4, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstAdjust:Z

    .line 109
    new-instance v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$1;

    invoke-direct {v0, p0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$1;-><init>(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)V

    .line 126
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 130
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    .line 132
    new-instance v1, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;

    invoke-direct {v1, p0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;-><init>(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)V

    iput-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mPhoneListener:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;

    .line 134
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mPhoneListener:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 152
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 157
    const-string v0, "PhoneCallRingWeakenService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mPhoneListener:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mPhoneListener2:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 166
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorMgr:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->acceleSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->acceleSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->lightSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->lightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 176
    :cond_2
    return-void
.end method
