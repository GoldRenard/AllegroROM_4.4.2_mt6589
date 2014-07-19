.class public Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;
.super Lcom/android/server/lightadjust/DataGenerator/DataGenerator;
.source "LightSensorRawDataSample.java"


# instance fields
.field private final mLightSensor:Landroid/hardware/Sensor;

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private mListener:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

.field private final mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample$1;

    invoke-direct {v0, p0}, Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample$1;-><init>(Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;)V

    iput-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 22
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;->mSensorManager:Landroid/hardware/SensorManager;

    .line 23
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;->mLightSensor:Landroid/hardware/Sensor;

    .line 25
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;)Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;->mListener:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    return-object v0
.end method


# virtual methods
.method public NoReportDataRightNow()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public ReportFirstDataRightNow()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public TerminateAll()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 60
    return-void
.end method

.method public setAntishake_interval_down(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 46
    return-void
.end method

.method public setAntishake_interval_up(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 41
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0
    .param p1, "milliSeconds"    # I

    .prologue
    .line 31
    return-void
.end method

.method public setSampleStepSize(I)V
    .locals 0
    .param p1, "step"    # I

    .prologue
    .line 36
    return-void
.end method

.method public startGenerate(Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    .prologue
    .line 50
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;->mListener:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    if-eq v0, p1, :cond_0

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;->mListener:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;->mListener:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    .line 55
    return-void
.end method
