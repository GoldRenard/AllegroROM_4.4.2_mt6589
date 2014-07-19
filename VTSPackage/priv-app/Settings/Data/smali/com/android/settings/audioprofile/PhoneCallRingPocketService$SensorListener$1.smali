.class Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener$1;
.super Ljava/lang/Object;
.source "PhoneCallRingPocketService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;


# direct methods
.method constructor <init>(Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 265
    monitor-enter p0

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mLightSensorPendingDark:Z
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$1000(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const-string v0, "PhoneCallRingPocketService"

    const-string v1, "mAutoBrightnessTask: dark state confirmed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mLightSensorPendingDark:Z
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$1002(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Z)Z

    .line 272
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$302(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 273
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;

    # invokes: Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->setMaxVolumeInPocketMode()V
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->access$1100(Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mLightSensorPendingLight:Z
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$1200(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    const-string v0, "PhoneCallRingPocketService"

    const-string v1, "mAutoBrightnessTask: light state confirmed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mLightSensorPendingLight:Z
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$1202(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Z)Z

    .line 282
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingPocketService;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService;->access$302(Lcom/android/settings/audioprofile/PhoneCallRingPocketService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 283
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;

    # invokes: Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->setMaxVolumeInPocketMode()V
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;->access$1100(Lcom/android/settings/audioprofile/PhoneCallRingPocketService$SensorListener;)V

    .line 285
    :cond_1
    monitor-exit p0

    .line 286
    return-void

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
