.class Lcom/android/server/AlarmManagerService$2;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 708
    const-string v0, "AlarmManagerService"

    const-string v1, "Connected alarm manager service2"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {p2}, Landroid/service/batterymanage/ILenovoAlarmManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/batterymanage/ILenovoAlarmManagerService;

    move-result-object v1

    # setter for: Lcom/android/server/AlarmManagerService;->mAlarmMonitorService:Landroid/service/batterymanage/ILenovoAlarmManagerService;
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$1102(Lcom/android/server/AlarmManagerService;Landroid/service/batterymanage/ILenovoAlarmManagerService;)Landroid/service/batterymanage/ILenovoAlarmManagerService;

    .line 710
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mIsBound:Z
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$1202(Lcom/android/server/AlarmManagerService;Z)Z

    .line 711
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 718
    const-string v0, "AlarmManagerService"

    const-string v1, "Disconnected alarm manager service"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mAlarmMonitorService:Landroid/service/batterymanage/ILenovoAlarmManagerService;
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$1102(Lcom/android/server/AlarmManagerService;Landroid/service/batterymanage/ILenovoAlarmManagerService;)Landroid/service/batterymanage/ILenovoAlarmManagerService;

    .line 720
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$2;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/AlarmManagerService;->mIsBound:Z
    invoke-static {v0, v1}, Lcom/android/server/AlarmManagerService;->access$1202(Lcom/android/server/AlarmManagerService;Z)Z

    .line 721
    return-void
.end method
