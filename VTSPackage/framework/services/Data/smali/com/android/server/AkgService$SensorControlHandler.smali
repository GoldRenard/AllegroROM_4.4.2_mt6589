.class final Lcom/android/server/AkgService$SensorControlHandler;
.super Landroid/os/Handler;
.source "AkgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AkgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SensorControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AkgService;


# direct methods
.method public constructor <init>(Lcom/android/server/AkgService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/server/AkgService$SensorControlHandler;->this$0:Lcom/android/server/AkgService;

    .line 516
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 517
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 521
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 536
    :goto_0
    return-void

    .line 523
    :pswitch_0
    const-string v0, "AkgService"

    const-string v1, "registerListener for G-sensor..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/android/server/AkgService$SensorControlHandler;->this$0:Lcom/android/server/AkgService;

    # getter for: Lcom/android/server/AkgService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/AkgService;->access$800(Lcom/android/server/AkgService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AkgService$SensorControlHandler;->this$0:Lcom/android/server/AkgService;

    # getter for: Lcom/android/server/AkgService;->mAccSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/server/AkgService;->access$600(Lcom/android/server/AkgService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AkgService$SensorControlHandler;->this$0:Lcom/android/server/AkgService;

    # getter for: Lcom/android/server/AkgService;->mAccSensor:Landroid/hardware/Sensor;
    invoke-static {v2}, Lcom/android/server/AkgService;->access$700(Lcom/android/server/AkgService;)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    .line 528
    :pswitch_1
    const-string v0, "AkgService"

    const-string v1, "unregisterListener for G-sensor..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, Lcom/android/server/AkgService$SensorControlHandler;->this$0:Lcom/android/server/AkgService;

    # getter for: Lcom/android/server/AkgService;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v0}, Lcom/android/server/AkgService;->access$800(Lcom/android/server/AkgService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AkgService$SensorControlHandler;->this$0:Lcom/android/server/AkgService;

    # getter for: Lcom/android/server/AkgService;->mAccSensorListener:Landroid/hardware/SensorEventListener;
    invoke-static {v1}, Lcom/android/server/AkgService;->access$600(Lcom/android/server/AkgService;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 533
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/AkgService$SensorControlHandler;->this$0:Lcom/android/server/AkgService;

    # getter for: Lcom/android/server/AkgService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/server/AkgService;->access$900(Lcom/android/server/AkgService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    goto :goto_0

    .line 521
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
