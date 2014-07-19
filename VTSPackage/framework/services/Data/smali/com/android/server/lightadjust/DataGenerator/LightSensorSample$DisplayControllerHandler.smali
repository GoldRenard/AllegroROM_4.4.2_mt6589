.class final Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;
.super Landroid/os/Handler;
.source "LightSensorSample.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;


# direct methods
.method public constructor <init>(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;->this$0:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;

    .line 465
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 466
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 470
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 481
    :goto_0
    return-void

    .line 472
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;->this$0:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;

    # invokes: Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->debounceProximitySensor()V
    invoke-static {v0}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->access$000(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;)V

    goto :goto_0

    .line 475
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;->this$0:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;

    # invokes: Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->debounceLightSensor()V
    invoke-static {v0}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->access$100(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;)V

    goto :goto_0

    .line 478
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample$DisplayControllerHandler;->this$0:Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->updateLightSensorInterval(I)V
    invoke-static {v0, v1}, Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;->access$200(Lcom/android/server/lightadjust/DataGenerator/LightSensorSample;I)V

    goto :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
