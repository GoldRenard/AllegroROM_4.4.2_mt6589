.class Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;
.super Ljava/lang/Object;
.source "PhoneCallRingWeakenAndPocketService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorListener"
.end annotation


# instance fields
.field private mAutoBrightnessTask:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;


# direct methods
.method constructor <init>(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)V
    .locals 1

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    new-instance v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener$1;

    invoke-direct {v0, p0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener$1;-><init>(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;)V

    iput-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->mAutoBrightnessTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->setMaxVolumeInPocketMode()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->toSendMsgByGetLight()V

    return-void
.end method

.method private sendMsg2AppByDownVolume(I)V
    .locals 4
    .param p1, "volume"    # I

    .prologue
    const/4 v3, 0x0

    .line 557
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v2, v2, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->acceleSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 560
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v2, v2, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->lightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 561
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v2, v2, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 562
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 563
    const-string v0, "PhoneCallRingWeakenAndPocketService"

    const-string v1, "close sensor listener----->"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_0
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v0, v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1402(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Landroid/hardware/SensorEventListener;)Landroid/hardware/SensorEventListener;

    .line 567
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iput-object v3, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->lightSensor:Landroid/hardware/Sensor;

    .line 568
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iput-object v3, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->proximitySensor:Landroid/hardware/Sensor;

    .line 569
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iput-object v3, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->acceleSensor:Landroid/hardware/Sensor;

    .line 570
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0, v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1302(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;

    .line 571
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mCurrentVolume:I
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$2600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)I

    move-result v1

    # invokes: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->saveData(I)V
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$2700(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;I)V

    .line 572
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->handler:Landroid/os/Handler;

    const v1, 0x1010112

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 578
    return-void
.end method

.method private setMaxVolumeInPocketMode()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 493
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 494
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_4

    .line 495
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstPocketAdjust:Z
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$2400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 496
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsEnveloped:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_2

    .line 497
    :cond_0
    const-string v1, "PhoneCallRingWeakenAndPocketService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaxVolumeInPocketMode. Not ready! mIsEnveloped = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsEnveloped:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mIsLight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_1
    :goto_0
    return-void

    .line 500
    :cond_2
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsEnveloped:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 515
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mMaxVolume:I
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$2502(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;I)I

    .line 517
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mCurrentVolume:I
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$2600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)I

    move-result v2

    # invokes: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->saveData(I)V
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$2700(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;I)V

    .line 518
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mMaxVolume:I
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$2500(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)I

    move-result v2

    invoke-virtual {v1, v5, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 521
    const-string v1, "PhoneCallRingWeakenAndPocketService"

    const-string v2, "setMaxVolumeInPocketMode. OK!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstPocketAdjust:Z
    invoke-static {v1, v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$2402(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Z)Z

    goto :goto_0

    .line 524
    :cond_3
    const-string v1, "PhoneCallRingWeakenAndPocketService"

    const-string v2, "setMaxVolumeInPocketMode. Not in pocket mode!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstPocketAdjust:Z
    invoke-static {v1, v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$2402(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Z)Z

    goto :goto_0

    .line 529
    :cond_4
    const-string v1, "PhoneCallRingWeakenAndPocketService"

    const-string v2, "headerset is connection,pocket is not enable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private toProcessByAccelerometerSensor(Landroid/hardware/SensorEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x2

    const-wide/high16 v8, 0x4012000000000000L

    const-wide/high16 v6, -0x3fee000000000000L

    const/4 v5, 0x0

    .line 389
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mX:F
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$602(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;F)F

    .line 390
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mY:F
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$702(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;F)F

    .line 391
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mZ:F
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$802(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;F)F

    .line 394
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mPhoneListener:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1900(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->mRinging:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mPhoneListener2:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$2000(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mPhoneListener2:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$2000(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->mRinging:Z

    if-eqz v1, :cond_6

    :cond_0
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsSendMsgByGetLight:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$500(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    .line 397
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mInitValue:I
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)I

    move-result v1

    if-nez v1, :cond_1

    .line 398
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mInitValue:I
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$202(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;I)I

    .line 399
    const-string v1, "PhoneCallRingWeakenAndPocketService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(A)initValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mInitValue:I
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_1
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mX:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mX:F
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mY:F
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$700(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mY:F
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$700(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mZ:F
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$800(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mZ:F
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$800(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v3

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    .line 405
    .local v0, "g_square":F
    float-to-double v1, v0

    const-wide/high16 v3, 0x4042000000000000L

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_2

    float-to-double v1, v0

    const-wide v3, 0x4065200000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    .line 432
    .end local v0    # "g_square":F
    :cond_2
    :goto_0
    return-void

    .line 407
    .restart local v0    # "g_square":F
    :cond_3
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstX:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$2100(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v1

    cmpl-float v1, v1, v5

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstY:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$2200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v1

    cmpl-float v1, v1, v5

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstZ:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$2300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v1

    cmpl-float v1, v1, v5

    if-nez v1, :cond_4

    .line 408
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mX:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v6, v1

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mX:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v1, v8

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mY:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$700(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v6, v1

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mY:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$700(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v1, v1, v8

    if-gez v1, :cond_2

    const-wide/high16 v1, 0x4016000000000000L

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mZ:F
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$800(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v3

    float-to-double v3, v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mZ:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$800(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4026000000000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    .line 412
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mX:F
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v2

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstX:F
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$2102(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;F)F

    .line 413
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mY:F
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$700(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v2

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstY:F
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$2202(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;F)F

    .line 414
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mZ:F
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$800(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v2

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstZ:F
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$2302(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;F)F

    .line 415
    const-string v1, "PhoneCallRingWeakenAndPocketService"

    const-string v2, "The initial location is the location of the sound down, not treated."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const-string v1, "PhoneCallRingWeakenAndPocketService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFirstX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstX:F
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$2100(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mFirstY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstY:F
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$2200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mFirstZ = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstY:F
    invoke-static {v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$2200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 419
    :cond_4
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mX:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4014000000000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mY:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$700(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4018000000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mZ:F
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$800(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4020000000000000L

    cmpg-double v1, v1, v3

    if-gez v1, :cond_5

    .line 423
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mInitValue:I
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->sendMsg2AppByDownVolume(I)V

    .line 424
    const-string v1, "PhoneCallRingWeakenAndPocketService"

    const-string v2, "have send broadcast when it have moveing."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 427
    :cond_5
    const-string v1, "PhoneCallRingWeakenAndPocketService"

    const-string v2, "isMove return false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 430
    .end local v0    # "g_square":F
    :cond_6
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    const-string v2, "NONE: it havn\'t call ring."

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mStatus:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$102(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private toProcessByLightSensor(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 439
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    float-to-int v0, v1

    .line 440
    .local v0, "key":I
    const-string v1, "PhoneCallRingWeakenAndPocketService"

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

    .line 444
    monitor-enter p0

    .line 445
    const/16 v1, 0x14

    if-gt v0, v1, :cond_2

    .line 447
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mLightSensorPendingDark:Z
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1500(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v1, v1, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 451
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mLightSensorPendingDark:Z
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1502(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Z)Z

    .line 452
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mLightSensorPendingLight:Z
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1702(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Z)Z

    .line 454
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v1, v1, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->mAutoBrightnessTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 468
    :cond_1
    :goto_0
    monitor-exit p0

    .line 470
    return-void

    .line 456
    :cond_2
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 458
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mLightSensorPendingLight:Z
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1700(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 460
    :cond_3
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v1, v1, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 462
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mLightSensorPendingDark:Z
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1502(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Z)Z

    .line 463
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mLightSensorPendingLight:Z
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1702(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Z)Z

    .line 465
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v1, v1, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->mAutoBrightnessTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 468
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private toProcessByProximitySensor(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x0

    .line 478
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    float-to-int v0, v1

    .line 480
    .local v0, "value":I
    const-string v1, "PhoneCallRingWeakenAndPocketService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proximity sensor value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    if-nez v0, :cond_0

    .line 482
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsEnveloped:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$402(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 483
    invoke-direct {p0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->setMaxVolumeInPocketMode()V

    .line 487
    :goto_0
    return-void

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsEnveloped:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$402(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private toSendMsgByGetLight()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 538
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mInitValue:I
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstWeakenAdjust:Z
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$2800(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Z

    move-result v0

    if-ne v0, v3, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/media/AudioManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mInitValue:I
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$202(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;I)I

    .line 542
    const-string v0, "PhoneCallRingWeakenAndPocketService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(L)initValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mInitValue:I
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mInitValue:I
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->sendMsg2AppByDownVolume(I)V

    .line 545
    const-string v0, "PhoneCallRingWeakenAndPocketService"

    const-string v1, "have send broadcast when it will to change mIsLight frome false to true."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mFirstWeakenAdjust:Z
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$2802(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Z)Z

    .line 547
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsSendMsgByGetLight:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$502(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 550
    :cond_0
    return-void
.end method


# virtual methods
.method public isMove(FF)Z
    .locals 3
    .param p1, "first"    # F
    .param p2, "current"    # F

    .prologue
    .line 590
    sub-float v1, p1, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x40000000

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 591
    const/4 v0, 0x1

    .line 596
    .local v0, "result":Z
    :goto_0
    return v0

    .line 593
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
    .line 356
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 361
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 363
    .local v0, "type":I
    sparse-switch v0, :sswitch_data_0

    .line 383
    :goto_0
    return-void

    .line 366
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->toProcessByLightSensor(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 371
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->toProcessByAccelerometerSensor(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 376
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->toProcessByProximitySensor(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 363
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
        0x8 -> :sswitch_2
    .end sparse-switch
.end method
