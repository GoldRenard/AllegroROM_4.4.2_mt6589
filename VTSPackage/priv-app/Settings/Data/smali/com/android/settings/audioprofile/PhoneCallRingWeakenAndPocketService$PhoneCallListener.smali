.class Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneCallRingWeakenAndPocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneCallListener"
.end annotation


# instance fields
.field public mRinging:Z

.field final synthetic this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;


# direct methods
.method public constructor <init>(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)V
    .locals 1

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    .line 252
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->mRinging:Z

    .line 253
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;I)V
    .locals 1
    .param p2, "subscription"    # I

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->mRinging:Z

    .line 258
    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 262
    const-string v0, "PhoneCallRingWeakenAndPocketService"

    const-string v1, "onCallStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    packed-switch p1, :pswitch_data_0

    .line 318
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 319
    :goto_1
    return-void

    .line 265
    :pswitch_0
    const-string v0, "PhoneCallRingWeakenAndPocketService"

    const-string v1, "CALL_STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1100(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1100(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    const-string v0, "PhoneCallRingWeakenAndPocketService"

    const-string v1, "call state is not idle ,so return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 272
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->mRinging:Z

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->handler:Landroid/os/Handler;

    const v1, 0x1010111

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 276
    iput-boolean v4, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->mRinging:Z

    goto :goto_0

    .line 282
    :pswitch_1
    const-string v0, "PhoneCallRingWeakenAndPocketService"

    const-string v1, "CALL_STATE_OFFHOOK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->mRinging:Z

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mRun:Z
    invoke-static {v0, v4}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$002(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Z)Z

    .line 285
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 287
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v2, v2, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->acceleSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 288
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v2, v2, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->lightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 289
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iget-object v2, v2, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 290
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 291
    const-string v0, "PhoneCallRingWeakenAndPocketService"

    const-string v1, "close sensor listener----->"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v0, v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1402(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Landroid/hardware/SensorEventListener;)Landroid/hardware/SensorEventListener;

    .line 295
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iput-object v3, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->lightSensor:Landroid/hardware/Sensor;

    .line 296
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iput-object v3, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->proximitySensor:Landroid/hardware/Sensor;

    .line 297
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    iput-object v3, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->acceleSensor:Landroid/hardware/Sensor;

    .line 298
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0, v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1302(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;

    goto/16 :goto_0

    .line 306
    :pswitch_2
    const-string v0, "PhoneCallRingWeakenAndPocketService"

    const-string v1, "CALL_STATE_RINGING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$PhoneCallListener;->mRinging:Z

    goto/16 :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
