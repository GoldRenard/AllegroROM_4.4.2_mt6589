.class Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;
.super Ljava/lang/Object;
.source "PhoneCallRingPocketService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/PhoneCallRingPocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorListener"
.end annotation


# instance fields
.field private mAutoBrightnessTask:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;


# direct methods
.method constructor <init>(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)V
    .locals 1

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    new-instance v0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener$1;

    invoke-direct {v0, p0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener$1;-><init>(Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;)V

    iput-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->mAutoBrightnessTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->setMaxVolumeInPocketMode()V

    return-void
.end method

.method private setMaxVolumeInPocketMode()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 383
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mFirstAdjust:Z
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$1300(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    .line 384
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mIsEnveloped:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$400(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_2

    .line 385
    :cond_0
    const-string v0, "PhoneCallRingPocketService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMaxVolumeInPocketMode. Not ready! mIsEnveloped = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mIsEnveloped:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$400(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mIsLight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v2}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_1
    :goto_0
    return-void

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mIsEnveloped:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$400(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    .line 389
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$800(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 391
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$900(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 392
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$800(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$900(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    iget-object v2, v2, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->lightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 393
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$800(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$900(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    iget-object v2, v2, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 394
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$800(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$900(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 395
    const-string v0, "PhoneCallRingPocketService"

    const-string v1, "close sensor listener----->"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_3
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v0, v3}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$902(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Landroid/hardware/SensorEventListener;)Landroid/hardware/SensorEventListener;

    .line 399
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    iput-object v3, v0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->lightSensor:Landroid/hardware/Sensor;

    .line 400
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    iput-object v3, v0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->proximitySensor:Landroid/hardware/Sensor;

    .line 401
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0, v3}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$802(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;

    .line 402
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$1500(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mMaxVolume:I
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$1402(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;I)I

    .line 404
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$1500(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mCurrentVolume:I
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$1602(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;I)I

    .line 406
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mCurrentVolume:I
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$1600(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)I

    move-result v1

    # invokes: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->saveData(I)V
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$1700(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;I)V

    .line 407
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mAudioMgr:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$1500(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mMaxVolume:I
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$1400(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)I

    move-result v1

    invoke-virtual {v0, v5, v1, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 410
    const-string v0, "PhoneCallRingPocketService"

    const-string v1, "setMaxVolumeInPocketMode. OK!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mFirstAdjust:Z
    invoke-static {v0, v4}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$1302(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Z)Z

    goto/16 :goto_0

    .line 413
    :cond_4
    const-string v0, "PhoneCallRingPocketService"

    const-string v1, "setMaxVolumeInPocketMode. Not in pocket mode!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mFirstAdjust:Z
    invoke-static {v0, v4}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$1302(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Z)Z

    goto/16 :goto_0
.end method

.method private toProcessByLightSensor(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 324
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    float-to-int v0, v1

    .line 326
    .local v0, "key":I
    const-string v1, "PhoneCallRingPocketService"

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

    .line 330
    monitor-enter p0

    .line 331
    const/16 v1, 0x14

    if-gt v0, v1, :cond_2

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mLightSensorPendingDark:Z
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$1000(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v4, :cond_1

    .line 335
    :cond_0
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    iget-object v1, v1, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 337
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mLightSensorPendingDark:Z
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$1002(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Z)Z

    .line 338
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mLightSensorPendingLight:Z
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$1202(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Z)Z

    .line 340
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    iget-object v1, v1, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->mAutoBrightnessTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 354
    :cond_1
    :goto_0
    monitor-exit p0

    .line 356
    return-void

    .line 342
    :cond_2
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mLightSensorPendingLight:Z
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$1200(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$300(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    :cond_3
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    iget-object v1, v1, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->mAutoBrightnessTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 348
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    const/4 v2, 0x0

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mLightSensorPendingDark:Z
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$1002(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Z)Z

    .line 349
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    const/4 v2, 0x1

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mLightSensorPendingLight:Z
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$1202(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Z)Z

    .line 351
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    iget-object v1, v1, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->mAutoBrightnessTask:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 354
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

    .line 364
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    float-to-int v0, v1

    .line 366
    .local v0, "value":I
    const-string v1, "PhoneCallRingPocketService"

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

    .line 367
    if-nez v0, :cond_0

    .line 368
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mIsEnveloped:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$402(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 369
    invoke-direct {p0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->setMaxVolumeInPocketMode()V

    .line 377
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mIsEnveloped:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$402(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 292
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 299
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 301
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 316
    :goto_0
    :pswitch_0
    return-void

    .line 304
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->toProcessByLightSensor(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 309
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->toProcessByProximitySensor(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 301
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
