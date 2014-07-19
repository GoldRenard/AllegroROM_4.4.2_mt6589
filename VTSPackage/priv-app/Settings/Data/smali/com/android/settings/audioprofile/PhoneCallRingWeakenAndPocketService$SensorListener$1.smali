.class Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener$1;
.super Ljava/lang/Object;
.source "PhoneCallRingWeakenAndPocketService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;


# direct methods
.method constructor <init>(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 327
    monitor-enter p0

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mLightSensorPendingDark:Z
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1500(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const-string v0, "PhoneCallRingWeakenAndPocketService"

    const-string v1, "mAutoBrightnessTask: dark state confirmed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mLightSensorPendingDark:Z
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1502(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Z)Z

    .line 334
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$302(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 335
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;

    # invokes: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->setMaxVolumeInPocketMode()V
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->access$1600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;)V

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mLightSensorPendingLight:Z
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1700(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    const-string v0, "PhoneCallRingWeakenAndPocketService"

    const-string v1, "mAutoBrightnessTask: light state confirmed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mLightSensorPendingLight:Z
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$1702(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Z)Z

    .line 344
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;

    # invokes: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->toSendMsgByGetLight()V
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->access$1800(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;->access$302(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 347
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;

    # invokes: Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->setMaxVolumeInPocketMode()V
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;->access$1600(Lcom/android/settings/audioprofile/PhoneCallRingWeakenAndPocketService$SensorListener;)V

    .line 349
    :cond_1
    monitor-exit p0

    .line 350
    return-void

    .line 349
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
