.class Landroid/hardware/SystemSensorManager$SensorEventQueue$2;
.super Ljava/lang/Object;
.source "SystemSensorManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/SystemSensorManager$SensorEventQueue;->showtoast(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/SystemSensorManager$SensorEventQueue;


# direct methods
.method constructor <init>(Landroid/hardware/SystemSensorManager$SensorEventQueue;)V
    .locals 0

    .prologue
    .line 540
    iput-object p1, p0, Landroid/hardware/SystemSensorManager$SensorEventQueue$2;->this$0:Landroid/hardware/SystemSensorManager$SensorEventQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 542
    const-string v0, "SensorManager"

    const-string v1, "Toast function would appear orientation!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    # getter for: Landroid/hardware/SystemSensorManager;->mAppContextImpl:Landroid/content/Context;
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$400()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    # invokes: Landroid/hardware/SystemSensorManager;->needToast()Z
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 546
    const-string v0, "SensorManager"

    const-string/jumbo v1, "show toast orientation!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    # getter for: Landroid/hardware/SystemSensorManager;->mAppContextImpl:Landroid/content/Context;
    invoke-static {}, Landroid/hardware/SystemSensorManager;->access$400()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x20500f3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 557
    :goto_0
    return-void

    .line 555
    :cond_0
    const-string v0, "SensorManager"

    const-string v1, "Error: Sensor toast mAppContextImpl is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
