.class public Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;
.super Lcom/android/server/lightadjust/DataGenerator/DataGenerator;
.source "LightSensorSample.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;,
        Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;
    }
.end annotation


# static fields
.field private static final BRIGHTENING_LIGHT_DEBOUNCE:J = 0x3e8L

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.1f

.field private static final BRIGHTNESS_RAMP_RATE_FAST:I = 0xc8

.field private static final BRIGHTNESS_RAMP_RATE_SLOW:I = 0x28

.field private static final DARKENING_LIGHT_DEBOUNCE:J = 0x7d0L

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static DEBUG:Z = false

.field private static final LIGHT_SENSOR_RATE_MILLIS:I = 0x64

.field private static final LONG_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x1f4L

.field private static final MSG_LIGHT_SENSOR_DEBOUNCED:I = 0x3

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_UPDATE_LIGHT_SENSOR_INTERVAL:I = 0x4

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final SHORT_TERM_AVERAGE_LIGHT_TIME_CONSTANT:J = 0x64L

.field private static final SYNTHETIC_LIGHT_SENSOR_RATE_MILLIS:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "LightSensorSample"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f


# instance fields
.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private mAntishakeIntervalDown:I

.field private mAntishakeIntervalUp:I

.field private mCallback:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

.field private mDebounceLuxDirection:I

.field private mDebounceLuxTime:J

.field private final mHandler:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mLightSensorWarmUpTimeConfig:I

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private mRecentLightSamples:I

.field private mRecentLongTermAverageLux:F

.field private mRecentShortTermAverageLux:F

.field private mReport_State:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;

.field private mSampleStepSize:I

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 170
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;-><init>(Landroid/content/Context;)V

    .line 104
    iput v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximity:I

    .line 107
    iput v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mPendingProximity:I

    .line 484
    new-instance v1, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$1;

    invoke-direct {v1, p0}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$1;-><init>(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;)V

    iput-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 503
    new-instance v1, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$2;

    invoke-direct {v1, p0}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$2;-><init>(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;)V

    iput-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 548
    sget-object v1, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_STATE_INVALID:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;

    iput-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mReport_State:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;

    .line 171
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "LightSensorSample"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mHandlerThread:Landroid/os/HandlerThread;

    .line 172
    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 173
    new-instance v1, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;

    iget-object v2, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;-><init>(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;

    .line 174
    iput-object p1, p0, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;->mContext:Landroid/content/Context;

    .line 175
    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mSensorManager:Landroid/hardware/SensorManager;

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 177
    .local v0, "resources":Landroid/content/res/Resources;
    const v1, 0x10e004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensorWarmUpTimeConfig:I

    .line 180
    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximitySensor:Landroid/hardware/Sensor;

    .line 181
    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v1

    const/high16 v2, 0x40a00000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximityThreshold:F

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensor:Landroid/hardware/Sensor;

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->debounceLightSensor()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;JF)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;
    .param p1, "x1"    # J
    .param p3, "x2"    # F

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->updateLightSensorInterval(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;

    .prologue
    .line 20
    iget v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;JZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;)Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mReport_State:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;)Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;
    .param p1, "x1"    # Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mReport_State:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;)Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mCallback:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    return-object v0
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 6
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 302
    iget v2, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentLightSamples:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentLightSamples:I

    .line 303
    iget v2, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentLightSamples:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 304
    iput p3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentShortTermAverageLux:F

    .line 305
    iput p3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentLongTermAverageLux:F

    .line 315
    :goto_0
    iput p3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLastObservedLux:F

    .line 316
    iput-wide p1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLastObservedLuxTime:J

    .line 317
    return-void

    .line 307
    :cond_0
    iget-wide v2, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLastObservedLuxTime:J

    sub-long v0, p1, v2

    .line 308
    .local v0, "timeDelta":J
    iget v2, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentShortTermAverageLux:F

    iget v3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentShortTermAverageLux:F

    sub-float v3, p3, v3

    long-to-float v4, v0

    mul-float/2addr v3, v4

    const-wide/16 v4, 0x64

    add-long/2addr v4, v0

    long-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentShortTermAverageLux:F

    .line 310
    iget v2, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentLongTermAverageLux:F

    iget v3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentLongTermAverageLux:F

    sub-float v3, p3, v3

    long-to-float v4, v0

    mul-float/2addr v3, v4

    const-wide/16 v4, 0x1f4

    add-long/2addr v4, v0

    long-to-float v4, v4

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentLongTermAverageLux:F

    goto :goto_0
.end method

.method private callBackToClient(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 658
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mCallback:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mCallback:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    invoke-interface {v0, p1}, Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;->UpdateData(I)V

    .line 661
    :cond_0
    return-void
.end method

.method private debounceLightSensor()V
    .locals 6

    .prologue
    .line 449
    iget-boolean v2, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensorEnabled:Z

    if-eqz v2, :cond_2

    .line 450
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 451
    .local v0, "time":J
    iget-wide v2, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLastObservedLuxTime:J

    const-wide/16 v4, 0xc8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 452
    sget-boolean v2, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 453
    const-string v2, "LightSensorSample"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "debounceLightSensor: Synthesizing light sensor measurement after "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLastObservedLuxTime:J

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    iget v2, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLastObservedLux:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->applyLightSensorMeasurement(JF)V

    .line 458
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->updateAmbientLux(J)V

    .line 460
    .end local v0    # "time":J
    :cond_2
    return-void
.end method

.method private debounceProximitySensor()V
    .locals 6

    .prologue
    .line 239
    iget v3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mPendingProximity:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 240
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 241
    .local v1, "now":J
    iget-wide v3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mPendingProximityDebounceTime:J

    cmp-long v3, v3, v1

    if-gtz v3, :cond_1

    .line 243
    iget v3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mPendingProximity:I

    iput v3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximity:I

    .line 250
    .end local v1    # "now":J
    :cond_0
    :goto_0
    return-void

    .line 246
    .restart local v1    # "now":J
    :cond_1
    iget-object v3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 247
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mPendingProximityDebounceTime:J

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private handleLightSensorEvent(JF)V
    .locals 2
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 296
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->applyLightSensorMeasurement(JF)V

    .line 297
    invoke-direct {p0, p1, p2}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->updateAmbientLux(J)V

    .line 298
    return-void
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 215
    iget v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mPendingProximity:I

    if-nez v0, :cond_1

    if-nez p3, :cond_1

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mPendingProximity:I

    if-ne v0, v2, :cond_2

    if-nez p3, :cond_0

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 225
    if-eqz p3, :cond_4

    .line 226
    iput v2, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mPendingProximity:I

    .line 227
    add-long v0, p1, v3

    iput-wide v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mPendingProximityDebounceTime:J

    .line 232
    :goto_1
    sget-boolean v0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 233
    const-string v0, "LightSensorSample"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPendingProximity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mPendingProximity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_3
    invoke-direct {p0}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->debounceProximitySensor()V

    goto :goto_0

    .line 229
    :cond_4
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mPendingProximity:I

    .line 230
    add-long v0, p1, v3

    iput-wide v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mPendingProximityDebounceTime:J

    goto :goto_1
.end method

.method private setLightSensorEnabled(ZZ)V
    .locals 7
    .param p1, "enable"    # Z
    .param p2, "updateAutoBrightness"    # Z

    .prologue
    const/4 v6, 0x0

    .line 253
    const-string v1, "LightSensorSample"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LightSensor enable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", updateAutoBrightness:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--mLightSensorEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensorEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    if-eqz p1, :cond_3

    .line 255
    iget-boolean v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensorEnabled:Z

    if-nez v1, :cond_1

    .line 256
    const/4 p2, 0x1

    .line 257
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensorEnabled:Z

    .line 258
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensorEnableTime:J

    .line 260
    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/lightadjust/AppConfig;->getSampleRate(Landroid/content/Context;)I

    move-result v0

    .line 261
    .local v0, "samplerates":I
    if-gtz v0, :cond_0

    .line 262
    const/16 v0, 0x64

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensor:Landroid/hardware/Sensor;

    mul-int/lit16 v4, v0, 0x3e8

    iget-object v5, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 266
    const-string v1, "LightSensorSample"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLightSensorListener reg  mLightSensorEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensorEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v0    # "samplerates":I
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 279
    invoke-direct {p0, v6}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->updateAutoBrightness(Z)V

    .line 281
    :cond_2
    return-void

    .line 269
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensorEnabled:Z

    if-eqz v1, :cond_1

    .line 270
    iput-boolean v6, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensorEnabled:Z

    .line 271
    iput-boolean v6, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mAmbientLuxValid:Z

    .line 272
    iput v6, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentLightSamples:I

    .line 273
    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 274
    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 275
    const-string v1, "LightSensorSample"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLightSensorListener unreg  mLightSensorEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensorEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, -0x1

    .line 194
    const-string v0, "LightSensorSample"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Psensor enable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--mProximitySensorEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximitySensorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-eqz p1, :cond_1

    .line 196
    iget-boolean v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximitySensorEnabled:Z

    .line 198
    iput v3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mPendingProximity:I

    .line 199
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 201
    const-string v0, "LightSensorSample"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Psensor reg -- mProximitySensorEnabled ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximitySensorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_0

    .line 205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximitySensorEnabled:Z

    .line 206
    iput v3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximity:I

    .line 207
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 208
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 209
    const-string v0, "LightSensorSample"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Psensor unreg -- mProximitySensorEnabled ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximitySensorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateAmbientLux(J)V
    .locals 13
    .param p1, "time"    # J

    .prologue
    const-wide/16 v11, 0xc8

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 322
    iget-boolean v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mAmbientLuxValid:Z

    if-eqz v4, :cond_0

    iget-wide v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensorEnableTime:J

    sub-long v4, p1, v4

    iget v6, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensorWarmUpTimeConfig:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_3

    .line 324
    :cond_0
    iget v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentShortTermAverageLux:F

    iput v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mAmbientLux:F

    .line 325
    iput-boolean v8, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mAmbientLuxValid:Z

    .line 326
    iput v10, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mDebounceLuxDirection:I

    .line 327
    iput-wide p1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mDebounceLuxTime:J

    .line 328
    sget-boolean v4, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 329
    const-string v4, "LightSensorSample"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Initializing: , mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_1
    invoke-direct {p0, v8}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->updateAutoBrightness(Z)V

    .line 446
    :cond_2
    :goto_0
    return-void

    .line 339
    :cond_3
    iget v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mAmbientLux:F

    const v5, 0x3f8ccccd

    mul-float v0, v4, v5

    .line 340
    .local v0, "brighteningLuxThreshold":F
    iget v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentShortTermAverageLux:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_7

    iget v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentLongTermAverageLux:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_7

    .line 342
    iget v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mDebounceLuxDirection:I

    if-gtz v4, :cond_4

    .line 343
    iput v8, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mDebounceLuxDirection:I

    .line 344
    iput-wide p1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mDebounceLuxTime:J

    .line 345
    sget-boolean v4, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->DEBUG:Z

    if-eqz v4, :cond_4

    .line 346
    const-string v4, "LightSensorSample"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Possibly brightened, waiting for 1000 ms: brighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_4
    iget-wide v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mDebounceLuxTime:J

    const-wide/16 v6, 0x3e8

    add-long v2, v4, v6

    .line 356
    .local v2, "debounceTime":J
    invoke-direct {p0, v10}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->setProximitySensorEnabled(Z)V

    .line 357
    cmp-long v4, p1, v2

    if-ltz v4, :cond_6

    .line 358
    iget v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentShortTermAverageLux:F

    iput v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mAmbientLux:F

    .line 359
    sget-boolean v4, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 360
    const-string v4, "LightSensorSample"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Brightened: brighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_5
    invoke-direct {p0, v8}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->updateAutoBrightness(Z)V

    .line 368
    iget v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLastObservedLux:F

    cmpl-float v4, v4, v0

    if-lez v4, :cond_2

    .line 369
    iget-object v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;

    add-long v5, p1, v11

    invoke-virtual {v4, v9, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 373
    :cond_6
    iget-object v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;

    invoke-virtual {v4, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 379
    .end local v2    # "debounceTime":J
    :cond_7
    iget v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mAmbientLux:F

    const v5, 0x3f4ccccd

    mul-float v1, v4, v5

    .line 380
    .local v1, "darkeningLuxThreshold":F
    iget v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentShortTermAverageLux:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_c

    iget v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentLongTermAverageLux:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_c

    .line 382
    iget v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mDebounceLuxDirection:I

    if-ltz v4, :cond_8

    .line 383
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mDebounceLuxDirection:I

    .line 384
    iput-wide p1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mDebounceLuxTime:J

    .line 385
    sget-boolean v4, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->DEBUG:Z

    if-eqz v4, :cond_8

    .line 386
    const-string v4, "LightSensorSample"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Possibly darkened, waiting for 2000 ms: darkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_8
    iget-wide v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mDebounceLuxTime:J

    const-wide/16 v6, 0x7d0

    add-long v2, v4, v6

    .line 396
    .restart local v2    # "debounceTime":J
    iget v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mAmbientLux:F

    const/high16 v5, 0x41f00000

    cmpg-float v4, v4, v5

    if-gez v4, :cond_9

    .line 397
    invoke-direct {p0, v8}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->setProximitySensorEnabled(Z)V

    .line 399
    :cond_9
    cmp-long v4, p1, v2

    if-ltz v4, :cond_b

    .line 402
    iget v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentShortTermAverageLux:F

    iget v5, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentLongTermAverageLux:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mAmbientLux:F

    .line 403
    sget-boolean v4, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->DEBUG:Z

    if-eqz v4, :cond_a

    .line 404
    const-string v4, "LightSensorSample"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Darkened: darkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_a
    invoke-direct {p0, v8}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->updateAutoBrightness(Z)V

    .line 412
    iget v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLastObservedLux:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_2

    .line 413
    iget-object v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;

    add-long v5, p1, v11

    invoke-virtual {v4, v9, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 417
    :cond_b
    iget-object v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;

    invoke-virtual {v4, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 423
    .end local v2    # "debounceTime":J
    :cond_c
    iget v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mDebounceLuxDirection:I

    if-eqz v4, :cond_d

    .line 424
    iput v10, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mDebounceLuxDirection:I

    .line 425
    iput-wide p1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mDebounceLuxTime:J

    .line 426
    sget-boolean v4, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->DEBUG:Z

    if-eqz v4, :cond_d

    .line 427
    const-string v4, "LightSensorSample"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAmbientLux: Canceled debounce: brighteningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", darkeningLuxThreshold="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentShortTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentShortTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mRecentLongTermAverageLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mRecentLongTermAverageLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAmbientLux="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mAmbientLux:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    :cond_d
    iget v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLastObservedLux:F

    cmpl-float v4, v4, v0

    if-gtz v4, :cond_e

    iget v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLastObservedLux:F

    cmpg-float v4, v4, v1

    if-gez v4, :cond_2

    .line 443
    :cond_e
    iget-object v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;

    add-long v5, p1, v11

    invoke-virtual {v4, v9, v5, v6}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0
.end method

.method private updateAutoBrightness(Z)V
    .locals 4
    .param p1, "sendUpdate"    # Z

    .prologue
    .line 566
    iget-boolean v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mAmbientLuxValid:Z

    if-nez v1, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    const-string v1, "LightSensorSample"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update lux value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mAmbientLux:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mReport_State:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;

    sget-object v2, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_FIRST_DATA:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;

    if-ne v1, v2, :cond_2

    .line 572
    iget v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mAmbientLux:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v0

    .line 573
    .local v0, "lux":I
    sget-object v1, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_NORMAL_DATA:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;

    iput-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mReport_State:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;

    .line 574
    const-string v1, "AUTOADJUST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2-RAW update first lux value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mCallback:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    invoke-interface {v1, v0}, Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;->UpdateFirstData(I)V

    goto :goto_0

    .line 576
    .end local v0    # "lux":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mReport_State:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;

    sget-object v2, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_NORMAL_DATA:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mProximity:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 577
    iget v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mAmbientLux:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->callBackToClient(I)V

    goto :goto_0
.end method

.method private updateLightSensorInterval(I)V
    .locals 5
    .param p1, "interval"    # I

    .prologue
    .line 284
    iget-boolean v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensorEnabled:Z

    if-nez v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 288
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensor:Landroid/hardware/Sensor;

    mul-int/lit16 v3, p1, 0x3e8

    iget-object v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0
.end method


# virtual methods
.method public NoReportDataRightNow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 557
    sget-object v0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_SHUTDOWN:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;

    iput-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mReport_State:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;

    .line 559
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->setLightSensorEnabled(ZZ)V

    .line 560
    invoke-direct {p0, v1}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->setProximitySensorEnabled(Z)V

    .line 561
    return-void
.end method

.method public ReportFirstDataRightNow()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 551
    sget-object v0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_FIRST_DATA:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;

    iput-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mReport_State:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;

    .line 552
    invoke-direct {p0, v1, v1}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->setLightSensorEnabled(ZZ)V

    .line 553
    return-void
.end method

.method public TerminateAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 636
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mCallback:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    if-eqz v0, :cond_0

    .line 637
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mCallback:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    .line 638
    :cond_0
    invoke-direct {p0, v1, v1}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->setLightSensorEnabled(ZZ)V

    .line 639
    invoke-direct {p0, v1}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->setProximitySensorEnabled(Z)V

    .line 640
    return-void
.end method

.method public setAntishake_interval_down(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 622
    iput p1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mAntishakeIntervalDown:I

    .line 623
    return-void
.end method

.method public setAntishake_interval_up(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 612
    iput p1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mAntishakeIntervalUp:I

    .line 613
    return-void
.end method

.method public setSampleRate(I)V
    .locals 4
    .param p1, "milliSeconds"    # I

    .prologue
    const/4 v3, 0x4

    .line 586
    if-gtz p1, :cond_0

    .line 592
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 590
    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 591
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mHandler:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setSampleStepSize(I)V
    .locals 0
    .param p1, "step"    # I

    .prologue
    .line 602
    iput p1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mSampleStepSize:I

    .line 603
    return-void
.end method

.method public startGenerate(Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    .prologue
    const/4 v1, 0x1

    .line 627
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mCallback:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    if-eq v0, p1, :cond_0

    .line 628
    iput-object p1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mCallback:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    .line 629
    sget-object v0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_NORMAL_DATA:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;

    iput-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mReport_State:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;

    .line 630
    invoke-direct {p0, v1, v1}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->setLightSensorEnabled(ZZ)V

    .line 632
    :cond_0
    return-void
.end method
