.class Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder$1;
.super Landroid/content/BroadcastReceiver;
.source "AnalyticsTrackerBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->internalInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;


# direct methods
.method constructor <init>(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder$1;->this$0:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    const-string v0, "AnalyticsTrackerBuilder"

    const-string v1, "network listener onReceive."

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->setNetworkStatus(Landroid/content/Context;)V

    .line 102
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder$1;->this$0:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    # getter for: Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;
    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->access$000(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;)Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getAssignedDeviceId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder$1;->this$0:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    # getter for: Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;
    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->access$000(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;)Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->hasPermissionForSaveAssignedDeviceId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder$1;->this$0:Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;

    # getter for: Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->localConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;
    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;->access$000(Lcom/lenovo/lps/reaper/sdk/AnalyticsTrackerBuilder;)Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;-><init>(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->addTask(ILjava/lang/Runnable;)V

    .line 108
    :cond_0
    return-void
.end method
