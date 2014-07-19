.class Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneCallRingWeakenService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneCallListener"
.end annotation


# instance fields
.field public mRinging:Z

.field final synthetic this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;


# direct methods
.method public constructor <init>(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)V
    .locals 1

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    .line 216
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->mRinging:Z

    .line 217
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;I)V
    .locals 1
    .param p2, "subscription"    # I

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->mRinging:Z

    .line 222
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

    .line 226
    const-string v0, "PhoneCallRingWeakenService"

    const-string v1, "onCallStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    packed-switch p1, :pswitch_data_0

    .line 276
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 277
    :goto_1
    return-void

    .line 229
    :pswitch_0
    const-string v0, "PhoneCallRingWeakenService"

    const-string v1, "CALL_STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$900(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$900(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    const-string v0, "PhoneCallRingWeakenService"

    const-string v1, "call state is not idle ,so return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 236
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->mRinging:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->handler:Landroid/os/Handler;

    const v1, 0x1010111

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 238
    iput-boolean v4, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->mRinging:Z

    goto :goto_0

    .line 243
    :pswitch_1
    const-string v0, "PhoneCallRingWeakenService"

    const-string v1, "CALL_STATE_OFFHOOK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->mRinging:Z

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mRun:Z
    invoke-static {v0, v4}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$002(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Z)Z

    .line 246
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1100(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1100(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iget-object v2, v2, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->lightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 250
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1100(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iget-object v2, v2, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->acceleSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 251
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1100(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1200(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 252
    const-string v0, "PhoneCallRingWeakenService"

    const-string v1, "close sensor listener----->"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v0, v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1202(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Landroid/hardware/SensorEventListener;)Landroid/hardware/SensorEventListener;

    .line 256
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iput-object v3, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->lightSensor:Landroid/hardware/Sensor;

    .line 257
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    iput-object v3, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->acceleSensor:Landroid/hardware/Sensor;

    .line 258
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0, v3}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1102(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;

    goto/16 :goto_0

    .line 265
    :pswitch_2
    const-string v0, "PhoneCallRingWeakenService"

    const-string v1, "CALL_STATE_RINGING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$PhoneCallListener;->mRinging:Z

    goto/16 :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
