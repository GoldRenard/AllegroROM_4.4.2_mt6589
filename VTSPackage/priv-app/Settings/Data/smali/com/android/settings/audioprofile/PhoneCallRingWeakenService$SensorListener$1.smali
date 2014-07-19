.class Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener$1;
.super Ljava/lang/Object;
.source "PhoneCallRingWeakenService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;


# direct methods
.method constructor <init>(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 285
    monitor-enter p0

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mLightSensorPendingDark:Z
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1300(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    const-string v0, "PhoneCallRingWeakenService"

    const-string v1, "mAutoBrightnessTask: dark state confirmed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mLightSensorPendingDark:Z
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1302(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Z)Z

    .line 291
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$302(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    # getter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mLightSensorPendingLight:Z
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1400(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    const-string v0, "PhoneCallRingWeakenService"

    const-string v1, "mAutoBrightnessTask: light state confirmed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mLightSensorPendingLight:Z
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$1402(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Z)Z

    .line 300
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;

    # invokes: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->toSendMsgByGetLight()V
    invoke-static {v0}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->access$1500(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;)V

    .line 302
    iget-object v0, p0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener$1;->this$1:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;

    iget-object v0, v0, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService$SensorListener;->this$0:Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->mIsLight:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;->access$302(Lcom/android/settings/audioprofile/PhoneCallRingWeakenService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 304
    :cond_1
    monitor-exit p0

    .line 305
    return-void

    .line 304
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
