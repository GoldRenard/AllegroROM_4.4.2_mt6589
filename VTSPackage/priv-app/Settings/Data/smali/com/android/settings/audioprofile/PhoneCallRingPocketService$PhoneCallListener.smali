.class Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneCallRingPocketService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/PhoneCallRingPocketService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneCallListener"
.end annotation


# instance fields
.field private mRinging:Z

.field final synthetic this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;


# direct methods
.method public constructor <init>(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)V
    .locals 1

    .prologue
    .line 193
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    .line 194
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->mRinging:Z

    .line 195
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;I)V
    .locals 1
    .param p2, "subscription"    # I

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->mRinging:Z

    .line 200
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

    .line 204
    const-string v0, "PhoneCallRingPocketService"

    const-string v1, "onCallStateChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    packed-switch p1, :pswitch_data_0

    .line 257
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 258
    :goto_1
    return-void

    .line 207
    :pswitch_0
    const-string v0, "PhoneCallRingPocketService"

    const-string v1, "CALL_STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$700(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mTelephonyMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$700(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const-string v0, "PhoneCallRingPocketService"

    const-string v1, "call state is not idle ,so return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 214
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->mRinging:Z

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->handler:Landroid/os/Handler;

    const v1, 0x1010111

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 219
    iput-boolean v4, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->mRinging:Z

    goto :goto_0

    .line 224
    :pswitch_1
    const-string v0, "PhoneCallRingPocketService"

    const-string v1, "CALL_STATE_OFFHOOK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->mRinging:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mRun:Z
    invoke-static {v0, v4}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$002(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Z)Z

    .line 227
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$800(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$900(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$800(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$900(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    iget-object v2, v2, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->lightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 231
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$800(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$900(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    iget-object v2, v2, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$800(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$900(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 233
    const-string v0, "PhoneCallRingPocketService"

    const-string v1, "close sensor listener----->"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v0, v3}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$902(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Landroid/hardware/SensorEventListener;)Landroid/hardware/SensorEventListener;

    .line 237
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    iput-object v3, v0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->lightSensor:Landroid/hardware/Sensor;

    .line 238
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    iput-object v3, v0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->proximitySensor:Landroid/hardware/Sensor;

    .line 239
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mSensorMgr:Landroid/hardware/SensorManager;
    invoke-static {v0, v3}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$802(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;

    goto/16 :goto_0

    .line 246
    :pswitch_2
    const-string v0, "PhoneCallRingPocketService"

    const-string v1, "CALL_STATE_RINGING"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$PhoneCallListener;->mRinging:Z

    goto/16 :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
