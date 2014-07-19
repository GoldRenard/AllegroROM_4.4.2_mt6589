.class Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;
.super Ljava/lang/Object;
.source "PhoneCallRingWeakenService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorListener"
.end annotation


# instance fields
.field private mAutoBrightnessTask:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;


# direct methods
.method constructor <init>(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)V
    .locals 1

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    new-instance v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener$1;

    invoke-direct {v0, p0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener$1;-><init>(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;)V

    iput-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->mAutoBrightnessTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->toSendMsgByGetLight()V

    return-void
.end method

.method private sendMsg2AppByDownVolume(I)V
    .locals 4
    .param p1, "volume"    # I

    .prologue
    const/4 v3, 0x0

    .line 451
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1100(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1100(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iget-object v2, v2, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->lightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 455
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1100(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iget-object v2, v2, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->acceleSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 456
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1100(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 457
    const-string v0, "PhoneCallRingWeakenService"

    const-string v1, "close sensor listener----->"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v0, v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1202(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Landroid/hardware/SensorEventListener;)Landroid/hardware/SensorEventListener;

    .line 461
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iput-object v3, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->lightSensor:Landroid/hardware/Sensor;

    .line 462
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iput-object v3, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->acceleSensor:Landroid/hardware/Sensor;

    .line 463
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0, v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1102(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;

    .line 464
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mInitValue:I
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)I

    move-result v1

    # invokes: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->saveData(I)V
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$2200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;I)V

    .line 465
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->handler:Landroid/os/Handler;

    const v1, 0x1010112

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 471
    return-void
.end method

.method private toProcessByAccelerometerSensor(Landroid/hardware/SensorEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v10, 0x0

    const-wide/high16 v8, 0x4012000000000000L

    const-wide/high16 v6, -0x3fee000000000000L

    const/4 v5, 0x0

    .line 339
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v10

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mX:F
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$402(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;F)F

    .line 340
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mY:F
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$502(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;F)F

    .line 341
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mZ:F
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$602(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;F)F

    .line 344
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mPhoneListener:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->mRinging:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mPhoneListener2:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1700(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mPhoneListener2:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1700(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->mRinging:Z

    if-eqz v1, :cond_7

    :cond_0
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 347
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mInitValue:I
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)I

    move-result v1

    if-nez v1, :cond_1

    .line 348
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1000(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mInitValue:I
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$202(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;I)I

    .line 349
    const-string v1, "PhoneCallRingWeakenService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(A)initValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mInitValue:I
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_1
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstAdjust:Z
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1800(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 354
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mX:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mX:F
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mY:F
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$500(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mY:F
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$500(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mZ:F
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mZ:F
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 356
    .local v0, "g_square":F
    float-to-double v1, v0

    const-wide/high16 v3, 0x4042000000000000L

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_2

    float-to-double v1, v0

    const-wide v3, 0x4065200000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    .line 388
    .end local v0    # "g_square":F
    :cond_2
    :goto_0
    return-void

    .line 358
    .restart local v0    # "g_square":F
    :cond_3
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstX:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1900(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v1

    cmpl-float v1, v1, v5

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstY:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$2000(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v1

    cmpl-float v1, v1, v5

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstZ:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$2100(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v1

    cmpl-float v1, v1, v5

    if-nez v1, :cond_4

    .line 359
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mX:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v6, v1

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mX:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v1, v8

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mY:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$500(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v6, v1

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mY:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$500(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v1, v8

    if-gez v1, :cond_2

    const-wide/high16 v1, 0x4016000000000000L

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mZ:F
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v3

    float-to-double v3, v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mZ:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4026000000000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    .line 363
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mX:F
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v2

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstX:F
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1902(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;F)F

    .line 364
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mY:F
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$500(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v2

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstY:F
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$2002(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;F)F

    .line 365
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mZ:F
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v2

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstZ:F
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$2102(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;F)F

    .line 366
    const-string v1, "PhoneCallRingWeakenService"

    const-string v2, "The initial location is the location of the sound down, not treated."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    const-string v1, "PhoneCallRingWeakenService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFirstX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstX:F
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1900(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mFirstY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstY:F
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$2000(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mFirstZ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstY:F
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$2000(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 370
    :cond_4
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mX:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4014000000000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mY:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$500(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4018000000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mZ:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4020000000000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_5

    .line 373
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstAdjust:Z
    invoke-static {v1, v10}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1802(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Z)Z

    .line 376
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mInitValue:I
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->sendMsg2AppByDownVolume(I)V

    .line 377
    const-string v1, "PhoneCallRingWeakenService"

    const-string v2, "have send broadcast when it have moveing."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 380
    :cond_5
    const-string v1, "PhoneCallRingWeakenService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMove return false-->x:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mX:F
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---->y:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mY:F
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$500(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--->z:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mZ:F
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 383
    .end local v0    # "g_square":F
    :cond_6
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    const-string v2, "NORMAL: Not take it up when it have ringing."

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mStatus:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$102(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 386
    :cond_7
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    const-string v2, "NONE: it havn\'t call ring."

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mStatus:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$102(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private toProcessByLightSensor(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 396
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    float-to-int v0, v1

    .line 397
    .local v0, "key":I
    const-string v1, "PhoneCallRingWeakenService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "light sensor value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    monitor-enter p0

    .line 401
    const/16 v1, 0x14

    if-gt v0, v1, :cond_2

    .line 403
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mLightSensorPendingDark:Z
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iget-object v1, v1, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 407
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mLightSensorPendingDark:Z
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1302(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Z)Z

    .line 408
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mLightSensorPendingLight:Z
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1402(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Z)Z

    .line 410
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iget-object v1, v1, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->mAutoBrightnessTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 424
    :cond_1
    :goto_0
    monitor-exit p0

    .line 426
    return-void

    .line 412
    :cond_2
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mLightSensorPendingLight:Z
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 416
    :cond_3
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iget-object v1, v1, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 418
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mLightSensorPendingDark:Z
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1302(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Z)Z

    .line 419
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mLightSensorPendingLight:Z
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1402(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Z)Z

    .line 421
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iget-object v1, v1, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->mAutoBrightnessTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 424
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private toSendMsgByGetLight()V
    .locals 3

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mInitValue:I
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)I

    move-result v0

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1000(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mInitValue:I
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$202(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;I)I

    .line 436
    const-string v0, "PhoneCallRingWeakenService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(L)initValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mInitValue:I
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mInitValue:I
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->sendMsg2AppByDownVolume(I)V

    .line 440
    const-string v0, "PhoneCallRingWeakenService"

    const-string v1, "have send broadcast when it will to change mIsLight frome false to true."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mFirstAdjust:Z
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1802(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Z)Z

    .line 445
    :cond_0
    return-void
.end method


# virtual methods
.method public isMove(FF)Z
    .locals 3
    .param p1, "first"    # F
    .param p2, "current"    # F

    .prologue
    .line 483
    sub-float v1, p1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 484
    const/4 v0, 0x1

    .line 489
    .local v0, "result":Z
    :goto_0
    return v0

    .line 486
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Z
    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 311
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 316
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 318
    .local v0, "type":I
    sparse-switch v0, :sswitch_data_0

    .line 333
    :goto_0
    return-void

    .line 321
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->toProcessByLightSensor(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 326
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->toProcessByAccelerometerSensor(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 318
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method
