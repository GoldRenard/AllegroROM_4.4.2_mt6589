.class public Lcom/android/server/AkgService;
.super Landroid/os/IAkgService$Stub;
.source "AkgService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AkgService$ScreenReceiver;,
        Lcom/android/server/AkgService$SensorControlHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final DTAPEN_FILE:Ljava/lang/String; = "/sys/bus/platform/drivers/gsensor/lvenable"

.field private static final MSG_DISABLE_ACC_SENSOR:I = 0x2

.field private static final MSG_ENABLE_ACC_SENSOR:I = 0x1

.field private static final MSG_SEND_SLEEP_REQ:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AkgService"

.field private static mCheckCount:I

.field private static mCheckDuration:J

.field private static final mPhoneIsInUseLock:Ljava/lang/Object;

.field private static mShakeDuration:J

.field private static mStillDuration:J

.field private static mThresholdH:D

.field private static mThresholdL:D


# instance fields
.field private mAccSensor:Landroid/hardware/Sensor;

.field private mAccSensorEnabled:Z

.field private final mAccSensorListener:Landroid/hardware/SensorEventListener;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/AkgService$SensorControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPhoneIsInUse:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingObserver:Landroid/database/ContentObserver;

.field private mShakeCount:I

.field private mSlpProcess:Z

.field private mTimestamp0:J

.field private mTimestamp1:J

.field private mTimestampS:J

.field private screenOff:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/AkgService;->mPhoneIsInUseLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 95
    invoke-direct {p0}, Landroid/os/IAkgService$Stub;-><init>()V

    .line 148
    iput-boolean v3, p0, Lcom/android/server/AkgService;->mPhoneIsInUse:Z

    .line 151
    new-instance v0, Lcom/android/server/AkgService$1;

    invoke-direct {v0, p0}, Lcom/android/server/AkgService$1;-><init>(Lcom/android/server/AkgService;)V

    iput-object v0, p0, Lcom/android/server/AkgService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 488
    new-instance v0, Lcom/android/server/AkgService$2;

    invoke-direct {v0, p0}, Lcom/android/server/AkgService$2;-><init>(Lcom/android/server/AkgService;)V

    iput-object v0, p0, Lcom/android/server/AkgService;->mAccSensorListener:Landroid/hardware/SensorEventListener;

    .line 589
    new-instance v0, Lcom/android/server/AkgService$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/AkgService$3;-><init>(Lcom/android/server/AkgService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/AkgService;->mSettingObserver:Landroid/database/ContentObserver;

    .line 97
    iput-object p1, p0, Lcom/android/server/AkgService;->mContext:Landroid/content/Context;

    .line 98
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AkgService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AkgService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 99
    iget-object v0, p0, Lcom/android/server/AkgService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 100
    new-instance v0, Lcom/android/server/AkgService$SensorControlHandler;

    iget-object v1, p0, Lcom/android/server/AkgService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/AkgService$SensorControlHandler;-><init>(Lcom/android/server/AkgService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/AkgService;->mHandler:Lcom/android/server/AkgService$SensorControlHandler;

    .line 101
    iput-boolean v3, p0, Lcom/android/server/AkgService;->mAccSensorEnabled:Z

    .line 103
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/AkgService;->mPowerManager:Landroid/os/PowerManager;

    .line 105
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/AkgService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 106
    iget-object v0, p0, Lcom/android/server/AkgService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AkgService;->mAccSensor:Landroid/hardware/Sensor;

    .line 107
    new-instance v0, Lcom/android/server/AkgService$ScreenReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/AkgService$ScreenReceiver;-><init>(Lcom/android/server/AkgService;Lcom/android/server/AkgService$1;)V

    iput-object v0, p0, Lcom/android/server/AkgService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    const-wide/high16 v0, 0x4039000000000000L

    invoke-virtual {p0, v0, v1}, Lcom/android/server/AkgService;->setThreshold(D)V

    .line 110
    const-wide/16 v0, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/server/AkgService;->setShakeDuration(J)V

    .line 111
    invoke-virtual {p0, v2}, Lcom/android/server/AkgService;->setCheckCount(I)V

    .line 114
    iput-boolean v3, p0, Lcom/android/server/AkgService;->mSlpProcess:Z

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "swing_lock_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AkgService;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 120
    iget-object v0, p0, Lcom/android/server/AkgService;->mSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 124
    iget-object v0, p0, Lcom/android/server/AkgService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/AkgService;->addPhoneStateListener(Landroid/content/Context;)V

    .line 127
    const-string v0, "AkgService"

    const-string v1, "start now..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/server/AkgService;->mPhoneIsInUseLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/AkgService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AkgService;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/server/AkgService;->screenOff:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/AkgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AkgService;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/server/AkgService;->mAccSensorEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/AkgService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AkgService;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/AkgService;->sendSensorControl(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/AkgService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AkgService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/AkgService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/AkgService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AkgService;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/server/AkgService;->mPhoneIsInUse:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/AkgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AkgService;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/server/AkgService;->phoneIsInUse()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/AkgService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AkgService;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/server/AkgService;->mSlpProcess:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/AkgService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AkgService;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/server/AkgService;->mSlpProcess:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/AkgService;Landroid/hardware/SensorEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/AkgService;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/AkgService;->processData(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/AkgService;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AkgService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/AkgService;->mAccSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/AkgService;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AkgService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/AkgService;->mAccSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/AkgService;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AkgService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/AkgService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/AkgService;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/AkgService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/AkgService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method private addPhoneStateListener(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 187
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 189
    .local v0, "tmgr":Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/server/AkgService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 205
    return-void
.end method

.method private checkWavePeak(FJ)Z
    .locals 5
    .param p1, "vec"    # F
    .param p2, "time"    # J

    .prologue
    .line 313
    float-to-double v1, p1

    sget-wide v3, Lcom/android/server/AkgService;->mThresholdH:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 315
    const-wide/16 v1, 0x0

    iget-wide v3, p0, Lcom/android/server/AkgService;->mTimestamp1:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 317
    iput-wide p2, p0, Lcom/android/server/AkgService;->mTimestamp1:J

    .line 318
    iget v1, p0, Lcom/android/server/AkgService;->mShakeCount:I

    if-nez v1, :cond_0

    .line 320
    iput-wide p2, p0, Lcom/android/server/AkgService;->mTimestampS:J

    .line 323
    :cond_0
    const/4 v0, 0x1

    .line 330
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 327
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private checkWaveTrough(FJ)Z
    .locals 7
    .param p1, "vec"    # F
    .param p2, "time"    # J

    .prologue
    const-wide/16 v5, 0x0

    .line 336
    float-to-double v1, p1

    sget-wide v3, Lcom/android/server/AkgService;->mThresholdL:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 339
    iget-wide v1, p0, Lcom/android/server/AkgService;->mTimestamp1:J

    cmp-long v1, v5, v1

    if-eqz v1, :cond_0

    .line 341
    iget-wide v1, p0, Lcom/android/server/AkgService;->mTimestamp0:J

    cmp-long v1, v5, v1

    if-nez v1, :cond_0

    .line 343
    iput-wide p2, p0, Lcom/android/server/AkgService;->mTimestamp0:J

    .line 347
    :cond_0
    const/4 v0, 0x1

    .line 355
    .local v0, "ret":Z
    :goto_0
    return v0

    .line 351
    .end local v0    # "ret":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method

.method private getAccVector(Landroid/hardware/SensorEvent;)F
    .locals 9
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 434
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v6

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v7

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v8

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v8

    mul-float/2addr v5, v6

    add-float v2, v4, v5

    .line 437
    .local v2, "x":F
    const/high16 v4, 0x3f000000

    mul-float v0, v4, v2

    .line 438
    .local v0, "halfx":F
    move v3, v2

    .line 439
    .local v3, "y":F
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 440
    .local v1, "i":I
    const v4, 0x5f3759df

    shr-int/lit8 v5, v1, 0x1

    sub-int v1, v4, v5

    .line 441
    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    .line 442
    const/high16 v4, 0x3fc00000

    mul-float v5, v0, v3

    mul-float/2addr v5, v3

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    .line 443
    mul-float/2addr v3, v2

    .line 444
    return v3
.end method

.method private getPeakDuration()J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 361
    iget-wide v2, p0, Lcom/android/server/AkgService;->mTimestamp0:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/AkgService;->mTimestamp1:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-wide v0

    .line 364
    :cond_1
    iget-wide v2, p0, Lcom/android/server/AkgService;->mTimestamp0:J

    iget-wide v4, p0, Lcom/android/server/AkgService;->mTimestamp1:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 366
    iget-wide v2, p0, Lcom/android/server/AkgService;->mTimestamp0:J

    iget-wide v4, p0, Lcom/android/server/AkgService;->mTimestamp1:J

    sub-long v0, v2, v4

    .line 373
    .local v0, "temp":J
    :goto_1
    const-string v2, "AkgService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "case 1 shake durtion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/32 v4, 0xf4240

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 370
    .end local v0    # "temp":J
    :cond_2
    const-wide v2, 0x7fffffffffffffffL

    iget-wide v4, p0, Lcom/android/server/AkgService;->mTimestamp1:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/AkgService;->mTimestamp0:J

    add-long v0, v2, v4

    .restart local v0    # "temp":J
    goto :goto_1
.end method

.method private getTroughDuration(J)J
    .locals 6
    .param p1, "time"    # J

    .prologue
    .line 381
    iget-wide v2, p0, Lcom/android/server/AkgService;->mTimestamp0:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 383
    iget-wide v2, p0, Lcom/android/server/AkgService;->mTimestamp0:J

    sub-long v0, p1, v2

    .line 390
    .local v0, "temp":J
    :goto_0
    return-wide v0

    .line 387
    .end local v0    # "temp":J
    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    iget-wide v4, p0, Lcom/android/server/AkgService;->mTimestamp0:J

    sub-long/2addr v2, v4

    add-long v0, v2, p1

    .restart local v0    # "temp":J
    goto :goto_0
.end method

.method private getWaveDuration(J)J
    .locals 6
    .param p1, "time"    # J

    .prologue
    .line 396
    iget-wide v2, p0, Lcom/android/server/AkgService;->mTimestampS:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_0

    .line 398
    iget-wide v2, p0, Lcom/android/server/AkgService;->mTimestampS:J

    sub-long v0, p1, v2

    .line 405
    .local v0, "temp":J
    :goto_0
    return-wide v0

    .line 402
    .end local v0    # "temp":J
    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    iget-wide v4, p0, Lcom/android/server/AkgService;->mTimestampS:J

    sub-long/2addr v2, v4

    add-long v0, v2, p1

    .restart local v0    # "temp":J
    goto :goto_0
.end method

.method private isPrefShake(J)Z
    .locals 9
    .param p1, "time"    # J

    .prologue
    const-wide/32 v7, 0xf4240

    .line 409
    const/4 v0, 0x0

    .line 410
    .local v0, "ret":Z
    invoke-direct {p0, p1, p2}, Lcom/android/server/AkgService;->getTroughDuration(J)J

    move-result-wide v1

    .line 412
    .local v1, "temp":J
    sget-wide v3, Lcom/android/server/AkgService;->mStillDuration:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 414
    iget v3, p0, Lcom/android/server/AkgService;->mShakeCount:I

    if-eqz v3, :cond_0

    .line 416
    invoke-direct {p0, p1, p2}, Lcom/android/server/AkgService;->getWaveDuration(J)J

    move-result-wide v1

    .line 417
    const-string v3, "AkgService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "case 2 shake "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/AkgService;->mShakeCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " times in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-long v5, v1, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms VS limit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v5, Lcom/android/server/AkgService;->mCheckDuration:J

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget v3, p0, Lcom/android/server/AkgService;->mShakeCount:I

    sget v4, Lcom/android/server/AkgService;->mCheckCount:I

    if-ne v3, v4, :cond_1

    sget-wide v3, Lcom/android/server/AkgService;->mCheckDuration:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    .line 420
    const/4 v0, 0x1

    .line 426
    :goto_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/AkgService;->mShakeCount:I

    .line 430
    :cond_0
    return v0

    .line 424
    :cond_1
    const-string v3, "AkgService"

    const-string v4, "now rock & roll"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private phoneIsInUse()Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/AkgService;->mPhoneIsInUse:Z

    return v0
.end method

.method private processData(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const-wide/16 v6, 0x0

    .line 448
    const/4 v0, 0x0

    .line 449
    .local v0, "isTrouch":Z
    invoke-direct {p0, p1}, Lcom/android/server/AkgService;->getAccVector(Landroid/hardware/SensorEvent;)F

    move-result v3

    .line 450
    .local v3, "vec":F
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/AkgService;->checkWavePeak(FJ)Z

    move-result v4

    if-nez v4, :cond_2

    .line 452
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/AkgService;->checkWaveTrough(FJ)Z

    move-result v0

    .line 459
    :goto_0
    if-eqz v0, :cond_1

    .line 461
    invoke-direct {p0}, Lcom/android/server/AkgService;->getPeakDuration()J

    move-result-wide v1

    .line 463
    .local v1, "temp":J
    sget-wide v4, Lcom/android/server/AkgService;->mShakeDuration:J

    cmp-long v4, v1, v4

    if-lez v4, :cond_0

    .line 465
    iget v4, p0, Lcom/android/server/AkgService;->mShakeCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/AkgService;->mShakeCount:I

    .line 467
    :cond_0
    iput-wide v6, p0, Lcom/android/server/AkgService;->mTimestamp1:J

    .line 469
    iget-wide v4, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v4, v5}, Lcom/android/server/AkgService;->isPrefShake(J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 472
    iget-boolean v4, p0, Lcom/android/server/AkgService;->mSlpProcess:Z

    if-nez v4, :cond_3

    .line 474
    const-string v4, "AkgService"

    const-string v5, "now go to sleep... "

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/AkgService;->mSlpProcess:Z

    .line 476
    invoke-direct {p0}, Lcom/android/server/AkgService;->sendSleepReq()V

    .line 486
    .end local v1    # "temp":J
    :cond_1
    :goto_1
    return-void

    .line 456
    :cond_2
    iput-wide v6, p0, Lcom/android/server/AkgService;->mTimestamp0:J

    goto :goto_0

    .line 480
    .restart local v1    # "temp":J
    :cond_3
    const-string v4, "AkgService"

    const-string v5, "goToSleeping..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private sendSensorControl(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x1

    .line 542
    if-eqz p1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/android/server/AkgService;->mHandler:Lcom/android/server/AkgService$SensorControlHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 550
    .local v0, "msg":Landroid/os/Message;
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 551
    const-string v1, "AkgService"

    const-string v2, "send sensor control Message."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v1, p0, Lcom/android/server/AkgService;->mHandler:Lcom/android/server/AkgService$SensorControlHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 553
    return-void

    .line 548
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcom/android/server/AkgService;->mHandler:Lcom/android/server/AkgService$SensorControlHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .restart local v0    # "msg":Landroid/os/Message;
    goto :goto_0
.end method

.method private sendSleepReq()V
    .locals 3

    .prologue
    .line 558
    iget-object v1, p0, Lcom/android/server/AkgService;->mHandler:Lcom/android/server/AkgService$SensorControlHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 559
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 560
    const-string v1, "AkgService"

    const-string v2, "send sleep Message."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    iget-object v1, p0, Lcom/android/server/AkgService;->mHandler:Lcom/android/server/AkgService$SensorControlHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 562
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 307
    invoke-super {p0}, Landroid/os/Binder;->finalize()V

    .line 308
    return-void
.end method

.method public getCheckCount()I
    .locals 1

    .prologue
    .line 280
    sget v0, Lcom/android/server/AkgService;->mCheckCount:I

    return v0
.end method

.method public getDoubleTapEnabled()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 285
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v4, "/sys/bus/platform/drivers/gsensor/lvenable"

    invoke-direct {v1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 286
    .local v1, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->read()I

    move-result v2

    .line 287
    .local v2, "result":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    const/16 v4, 0x30

    if-eq v2, v4, :cond_0

    const/4 v3, 0x1

    .line 290
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local v2    # "result":I
    :cond_0
    :goto_0
    return v3

    .line 289
    :catch_0
    move-exception v0

    .line 290
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getEnabled()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/android/server/AkgService;->mAccSensorEnabled:Z

    return v0
.end method

.method public getShakeDuration()J
    .locals 2

    .prologue
    .line 267
    sget-wide v0, Lcom/android/server/AkgService;->mShakeDuration:J

    return-wide v0
.end method

.method public getThreshold()D
    .locals 2

    .prologue
    .line 254
    sget-wide v0, Lcom/android/server/AkgService;->mThresholdH:D

    return-wide v0
.end method

.method public setCheckCount(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 271
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 273
    const/4 p1, 0x1

    .line 275
    :cond_0
    sput p1, Lcom/android/server/AkgService;->mCheckCount:I

    .line 276
    sget v0, Lcom/android/server/AkgService;->mCheckCount:I

    mul-int/lit8 v0, v0, 0x6

    int-to-long v0, v0

    sget-wide v2, Lcom/android/server/AkgService;->mShakeDuration:J

    mul-long/2addr v0, v2

    sget-wide v2, Lcom/android/server/AkgService;->mStillDuration:J

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/AkgService;->mCheckDuration:J

    .line 277
    return-void
.end method

.method public setDoubleTapEnabled(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    .line 296
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/sys/bus/platform/drivers/gsensor/lvenable"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 297
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 298
    .local v0, "bytes":[B
    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/16 v2, 0x31

    :goto_0
    int-to-byte v2, v2

    aput-byte v2, v0, v3

    .line 299
    const/4 v2, 0x1

    const/16 v3, 0xa

    aput-byte v3, v0, v2

    .line 300
    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 301
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v0    # "bytes":[B
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_1
    return-void

    .line 298
    .restart local v0    # "bytes":[B
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    const/16 v2, 0x30

    goto :goto_0

    .line 302
    .end local v0    # "bytes":[B
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public setEnabled(Z)Z
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 210
    const-string v1, "AkgService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEnabled en="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mThresholdH="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/android/server/AkgService;->mThresholdH:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mThresholdL="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/android/server/AkgService;->mThresholdL:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mShakeDuration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/android/server/AkgService;->mShakeDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mStillDuration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/android/server/AkgService;->mStillDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCheckDuration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/android/server/AkgService;->mCheckDuration:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mCheckCount="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/server/AkgService;->mCheckCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-eqz p1, :cond_1

    .line 215
    iget-boolean v1, p0, Lcom/android/server/AkgService;->mAccSensorEnabled:Z

    if-nez v1, :cond_0

    .line 217
    iput-boolean v5, p0, Lcom/android/server/AkgService;->mAccSensorEnabled:Z

    .line 218
    invoke-direct {p0, v5}, Lcom/android/server/AkgService;->sendSensorControl(Z)V

    .line 221
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/android/server/AkgService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/AkgService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 237
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return v5

    .line 229
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/AkgService;->mAccSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 231
    iput-boolean v6, p0, Lcom/android/server/AkgService;->mAccSensorEnabled:Z

    .line 232
    iget-object v1, p0, Lcom/android/server/AkgService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/AkgService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 233
    invoke-direct {p0, v6}, Lcom/android/server/AkgService;->sendSensorControl(Z)V

    goto :goto_0
.end method

.method public setShakeDuration(J)V
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 258
    const-wide/16 v0, 0x32

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 260
    const-wide/16 p1, 0x32

    .line 262
    :cond_0
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    sput-wide v0, Lcom/android/server/AkgService;->mShakeDuration:J

    .line 263
    const-wide/32 v0, 0x1e8480

    mul-long/2addr v0, p1

    sput-wide v0, Lcom/android/server/AkgService;->mStillDuration:J

    .line 264
    return-void
.end method

.method public setThreshold(D)V
    .locals 6
    .param p1, "value"    # D

    .prologue
    const-wide/high16 v4, 0x4024000000000000L

    .line 245
    const-wide/high16 v0, 0x402e000000000000L

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 247
    const-wide/high16 p1, 0x402e000000000000L

    .line 249
    :cond_0
    sput-wide p1, Lcom/android/server/AkgService;->mThresholdH:D

    .line 250
    sub-double v0, p1, v4

    const-wide/high16 v2, 0x4010000000000000L

    div-double/2addr v0, v2

    add-double/2addr v0, v4

    sput-wide v0, Lcom/android/server/AkgService;->mThresholdL:D

    .line 251
    return-void
.end method
