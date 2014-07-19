.class Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample$1;
.super Ljava/lang/Object;
.source "LightSensorRawDataSample.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;


# direct methods
.method constructor <init>(Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample$1;->this$0:Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 93
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 79
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 80
    .local v2, "time":J
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v0, v4, v5

    .line 81
    .local v0, "lux":F
    float-to-int v1, v0

    .line 82
    .local v1, "result1":I
    const-string v4, "AUTOADJUST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--RAW raw data="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample$1;->this$0:Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;

    # getter for: Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;->mListener:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;
    invoke-static {v4}, Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;->access$000(Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;)Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 84
    const-string v4, "AUTOADJUST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--RAW update data="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v4, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample$1;->this$0:Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;

    # getter for: Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;->mListener:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;
    invoke-static {v4}, Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;->access$000(Lcom/android/server/lightadjust/DataGenerator/LightSensorRawDataSample;)Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;->UpdateData(I)V

    .line 88
    :cond_0
    return-void
.end method
