.class public Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;
.super Ljava/lang/Object;
.source "LocalConfigManager.java"


# instance fields
.field private appConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;

.field private final context:Landroid/content/Context;

.field private deviceConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;

.field private sdkConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;

.field private userConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/UserConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->context:Landroid/content/Context;

    .line 23
    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getApplicationToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->appConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->getApplicationToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAssignedDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->deviceConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->getAssignedDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->appConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->getChannel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfigUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->sdkConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->getConfigUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->deviceConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomReaperServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->sdkConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->getCustomReaperServer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->deviceConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->deviceConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->getDeviceIdType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->deviceConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDidSyncUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->sdkConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->getDidSyncUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->deviceConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->getImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->deviceConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->deviceConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getManufacture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->deviceConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->getManufacture()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->sdkConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->getMessageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->deviceConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->getOsVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->deviceConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReaperServerPort()I
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->sdkConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->getReaperServerPort()I

    move-result v0

    return v0
.end method

.method public getReaperServerhost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->sdkConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->getReaperServerhost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReportUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->sdkConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->getReportUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReportWithCompressUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->sdkConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->getReportWithCompressUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReportWithJointUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->sdkConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->getReportWithJointUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->deviceConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->getResolution()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->sdkConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->userConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/UserConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/UserConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserIdClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->userConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/UserConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/UserConfig;->getUserIdClass()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->appConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->getVersionCode()I

    move-result v0

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->appConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasPermissionForExternalStorage()Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->deviceConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->hasPermissionForExternalStorage()Z

    move-result v0

    return v0
.end method

.method public hasPermissionForSaveAssignedDeviceId()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->deviceConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->hasPermissionForSaveAssignedDeviceId()Z

    move-result v0

    return v0
.end method

.method public initReportAndConfigurationUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "reaperServerUrl"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->sdkConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->initReportAndConfigurationUrl(Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public initialize()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->appConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;

    .line 27
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->deviceConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;

    .line 28
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->sdkConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;

    .line 29
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/localconfig/UserConfig;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/UserConfig;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->userConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/UserConfig;

    .line 30
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->appConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->init(Landroid/content/Context;)V

    .line 31
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->deviceConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->init(Landroid/content/Context;)V

    .line 32
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->sdkConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;

    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->init(Landroid/content/Context;)V

    .line 33
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->userConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/UserConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/UserConfig;->init()V

    .line 34
    return-void
.end method

.method public isCustomDispatch()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->sdkConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->isCustomDispatch()Z

    move-result v0

    return v0
.end method

.method public isServerInfoExpried()Z
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->sdkConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;

    invoke-virtual {v0}, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->isServerInfoExpried()Z

    move-result v0

    return v0
.end method

.method public saveAssignedDeviceId(Ljava/lang/String;)V
    .locals 1
    .param p1, "assignedDeviceId"    # Ljava/lang/String;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->deviceConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->saveAssignedDeviceId(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public saveServerInfo(Ljava/lang/String;J)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "ttl"    # J

    .prologue
    .line 189
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->sdkConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->saveServerInfo(Ljava/lang/String;J)V

    .line 190
    return-void
.end method

.method public setAppChannel(Ljava/lang/String;)V
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->appConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->setChannel(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public setAppToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "appToken"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->appConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->setAppToken(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public setAppVersionCode(I)V
    .locals 1
    .param p1, "versionCode"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->appConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->setVersionCode(I)V

    .line 78
    return-void
.end method

.method public setAppVersionName(Ljava/lang/String;)V
    .locals 1
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->appConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;

    invoke-virtual {v0, p1}, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->setVersionName(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public setUserId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userIdClass"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->userConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/UserConfig;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/localconfig/UserConfig;->setUserId(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public synAssignedDeviceId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "customDeviceIdFromSystemSettings"    # Ljava/lang/String;
    .param p2, "customDeviceIdFromStorage"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/LocalConfigManager;->deviceConfig:Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/localconfig/DeviceConfig;->synAssignedDeviceId(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-void
.end method
