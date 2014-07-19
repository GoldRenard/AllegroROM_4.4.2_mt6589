.class Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$2;
.super Ljava/lang/Object;
.source "LightSensorSample.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;


# direct methods
.method constructor <init>(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;)V
    .locals 0

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$2;->this$0:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 523
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 506
    iget-object v3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$2;->this$0:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;

    # getter for: Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mLightSensorEnabled:Z
    invoke-static {v3}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->access$700(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 507
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 508
    .local v1, "time":J
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v3, v4

    .line 509
    .local v0, "lux":F
    const-string v3, "AUTOADJUST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RAW lux value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$2;->this$0:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;

    # getter for: Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mReport_State:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;
    invoke-static {v3}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->access$800(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;)Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;

    move-result-object v3

    sget-object v4, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_FIRST_DATA:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;

    if-ne v3, v4, :cond_0

    .line 512
    iget-object v3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$2;->this$0:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;

    sget-object v4, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;->REPORT_NORMAL_DATA:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;

    # setter for: Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mReport_State:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;
    invoke-static {v3, v4}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->access$802(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;)Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$REPORT_STATE;

    .line 513
    const-string v3, "AUTOADJUST"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RAW update first lux value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-object v3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$2;->this$0:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;

    # getter for: Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->mCallback:Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;
    invoke-static {v3}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->access$900(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;)Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;

    move-result-object v3

    float-to-int v4, v0

    invoke-interface {v3, v4}, Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;->UpdateFirstData(I)V

    .line 516
    :cond_0
    iget-object v3, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$2;->this$0:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;

    # invokes: Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->handleLightSensorEvent(JF)V
    invoke-static {v3, v1, v2, v0}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->access$1000(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;JF)V

    .line 518
    .end local v0    # "lux":F
    .end local v1    # "time":J
    :cond_1
    return-void
.end method
