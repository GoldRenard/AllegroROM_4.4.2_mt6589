.class public final Lcom/lenovo/lps/reaper/sdk/task/ReadAssignedDeviceIdTask;
.super Ljava/lang/Object;
.source "ReadAssignedDeviceIdTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "ReadAssignedDeviceIdTask"


# instance fields
.field private final localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;


# direct methods
.method public constructor <init>(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V
    .locals 0
    .param p1, "configuration"    # Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/task/ReadAssignedDeviceIdTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    .line 23
    return-void
.end method

.method private readAssignedDeviceIdFromStorage()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 53
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/task/ReadAssignedDeviceIdTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v2}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->hasPermissionForExternalStorage()Z

    move-result v2

    if-nez v2, :cond_1

    .line 54
    const-string v2, "ReadAssignedDeviceIdTask"

    const-string v3, "have no external storage permission."

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    :goto_0
    return-object v1

    .line 57
    :cond_1
    const-string v2, "/LenovoReaper/did"

    invoke-static {v2}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->readSDCardFileContent(Ljava/lang/String;)[B

    move-result-object v0

    .line 58
    .local v0, "content":[B
    if-eqz v0, :cond_0

    .line 61
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 62
    .local v1, "str":Ljava/lang/String;
    const-string v2, "ReadAssignedDeviceIdTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read device id from sd card: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private readAssignedDeviceIdFromSystemSettings()Ljava/lang/String;
    .locals 4

    .prologue
    .line 46
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/task/ReadAssignedDeviceIdTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v1}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ReaperAssignedDeviceId"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "str":Ljava/lang/String;
    const-string v1, "ReadAssignedDeviceIdTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "read device id from system settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-object v0
.end method

.method private readCustomDeviceId()Z
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/task/ReadAssignedDeviceIdTask;->readAssignedDeviceIdFromSystemSettings()Ljava/lang/String;

    move-result-object v1

    .line 37
    .local v1, "customDeviceIdFromSystemSettings":Ljava/lang/String;
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/task/ReadAssignedDeviceIdTask;->readAssignedDeviceIdFromStorage()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "customDeviceIdFromStorage":Ljava/lang/String;
    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 39
    const/4 v2, 0x0

    .line 42
    :goto_0
    return v2

    .line 41
    :cond_0
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/task/ReadAssignedDeviceIdTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v2, v1, v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->synAssignedDeviceId(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/task/ReadAssignedDeviceIdTask;->readCustomDeviceId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/PlusUtil$NetworkStatus;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/task/ReadAssignedDeviceIdTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->hasPermissionForSaveAssignedDeviceId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->getInstance()Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;

    move-result-object v0

    const/4 v1, 0x2

    new-instance v2, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/task/ReadAssignedDeviceIdTask;->localConfigManager:Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;

    invoke-direct {v2, v3}, Lcom/lenovo/lps/reaper/sdk/task/DeviceIdSyncWithServerTask;-><init>(Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/task/TaskHandler;->addTask(ILjava/lang/Runnable;)V

    .line 33
    :cond_0
    return-void
.end method
