.class Lcom/android/server/AkgService$2;
.super Ljava/lang/Object;
.source "AkgService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AkgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AkgService;


# direct methods
.method constructor <init>(Lcom/android/server/AkgService;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/server/AkgService$2;->this$0:Lcom/android/server/AkgService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 511
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 492
    const-wide/16 v0, 0x0

    .line 493
    .local v0, "temp":J
    iget-object v2, p0, Lcom/android/server/AkgService$2;->this$0:Lcom/android/server/AkgService;

    # invokes: Lcom/android/server/AkgService;->phoneIsInUse()Z
    invoke-static {v2}, Lcom/android/server/AkgService;->access$300(Lcom/android/server/AkgService;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 495
    const-string v2, "AkgService"

    const-string v3, "onSensorChanged ret when calling..."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/AkgService$2;->this$0:Lcom/android/server/AkgService;

    # getter for: Lcom/android/server/AkgService;->mSlpProcess:Z
    invoke-static {v3}, Lcom/android/server/AkgService;->access$400(Lcom/android/server/AkgService;)Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 505
    iget-object v2, p0, Lcom/android/server/AkgService$2;->this$0:Lcom/android/server/AkgService;

    # invokes: Lcom/android/server/AkgService;->processData(Landroid/hardware/SensorEvent;)V
    invoke-static {v2, p1}, Lcom/android/server/AkgService;->access$500(Lcom/android/server/AkgService;Landroid/hardware/SensorEvent;)V

    goto :goto_0
.end method
