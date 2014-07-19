.class Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;
.super Ljava/lang/Object;
.source "SDKConfig.java"


# static fields
.field private static final REAPER_SERVER_CONTEXT_CONFIGURATION:Ljava/lang/String; = "/reaper/server/config2"

.field private static final REAPER_SERVER_CONTEXT_DEVICEID_SYNC:Ljava/lang/String; = "/reaper/server/didsync"

.field private static final REAPER_SERVER_CONTEXT_JOINT:Ljava/lang/String; = "/reaper/server/joint2"

.field private static final REAPER_SERVER_CONTEXT_MESSAGE:Ljava/lang/String; = "/reaper/server/message2"

.field private static final REAPER_SERVER_CONTEXT_POST:Ljava/lang/String; = "/reaper/server/post2"

.field private static final REAPER_SERVER_CONTEXT_REPORT:Ljava/lang/String; = "/reaper/server/report2"

.field private static final TAG:Ljava/lang/String; = "SDKConfig"


# instance fields
.field private configUrl:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field protected customReaperServer:Ljava/lang/String;

.field private didSyncUrl:Ljava/lang/String;

.field private isCustomDispatch:Z

.field private isForceUpdate:Z

.field private isTestMode:Z

.field private messageUrl:Ljava/lang/String;

.field private reaperServerPort:I

.field private reaperServerhost:Ljava/lang/String;

.field private reportUrl:Ljava/lang/String;

.field private reportWithCompressUrl:Ljava/lang/String;

.field private reportWithJointUrl:Ljava/lang/String;

.field private sdkVersion:Ljava/lang/String;

.field private serverInfoUpdateTimestampMills:J

.field private serverTTL:J

.field private serverURL:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfigUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->configUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://fsr.lenovomm.com"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/reaper/server/config2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->configUrl:Ljava/lang/String;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->configUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomReaperServer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->customReaperServer:Ljava/lang/String;

    return-object v0
.end method

.method public getDidSyncUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->didSyncUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://fsr.lenovomm.com"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/reaper/server/didsync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->didSyncUrl:Ljava/lang/String;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->didSyncUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->messageUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://fsr.lenovomm.com"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/reaper/server/message2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->messageUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getReaperServerPort()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->reaperServerPort:I

    return v0
.end method

.method public getReaperServerhost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->reaperServerhost:Ljava/lang/String;

    return-object v0
.end method

.method public getReportUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->reportUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://fsr.lenovomm.com"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/reaper/server/report2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->reportUrl:Ljava/lang/String;

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->reportUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReportWithCompressUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->reportWithCompressUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://fsr.lenovomm.com"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/reaper/server/post2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->reportWithCompressUrl:Ljava/lang/String;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->reportWithCompressUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getReportWithJointUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->reportWithJointUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://fsr.lenovomm.com"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/reaper/server/joint2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->reportWithJointUrl:Ljava/lang/String;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->reportWithJointUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->sdkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    :try_start_0
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->context:Landroid/content/Context;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 49
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 53
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const-string v3, "2.2.2"

    iput-object v3, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->sdkVersion:Ljava/lang/String;

    .line 56
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "lenovo:customReaperServer"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->customReaperServer:Ljava/lang/String;

    .line 57
    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->customReaperServer:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->customReaperServer:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 58
    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->customReaperServer:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->initReportAndConfigurationUrl(Ljava/lang/String;)V

    .line 64
    :goto_0
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "lenovo:forceUpdateConfig"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->isForceUpdate:Z

    .line 65
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->isForceUpdate:Z

    invoke-virtual {v3, v4}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->setForceUpdate(Z)V

    .line 68
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "lenovo:isTestMode"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->isTestMode:Z

    .line 69
    iget-boolean v3, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->isTestMode:Z

    invoke-static {v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->setTestMode(Z)V

    .line 71
    iget-object v3, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "lenovo:isCustomDispatch"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->isCustomDispatch:Z

    .line 75
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_1
    return-void

    .line 60
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->initServerInfoFromFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "SDKConfig"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public initReportAndConfigurationUrl(Ljava/lang/String;)V
    .locals 6
    .param p1, "reaperServerUrl"    # Ljava/lang/String;

    .prologue
    .line 78
    move-object v1, p1

    .line 80
    .local v1, "mReaperServerUrl":Ljava/lang/String;
    :try_start_0
    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 83
    :cond_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 84
    .local v2, "serverUrl":Ljava/net/URL;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/reaper/server/post2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->reportWithCompressUrl:Ljava/lang/String;

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/reaper/server/joint2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->reportWithJointUrl:Ljava/lang/String;

    .line 86
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/reaper/server/report2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->reportUrl:Ljava/lang/String;

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/reaper/server/config2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->configUrl:Ljava/lang/String;

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/reaper/server/message2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->messageUrl:Ljava/lang/String;

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/reaper/server/didsync"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->didSyncUrl:Ljava/lang/String;

    .line 91
    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->reaperServerhost:Ljava/lang/String;

    .line 92
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    const/16 v3, 0x50

    :goto_0
    iput v3, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->reaperServerPort:I

    .line 93
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->isTestMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    const-string v3, "SDKConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportWithCompressUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->reportWithCompressUrl:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v3, "SDKConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportJointUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->reportWithJointUrl:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v3, "SDKConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->reportUrl:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v3, "SDKConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->configUrl:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v3, "SDKConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "didSyncUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->didSyncUrl:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .end local v2    # "serverUrl":Ljava/net/URL;
    :cond_1
    :goto_1
    return-void

    .line 92
    .restart local v2    # "serverUrl":Ljava/net/URL;
    :cond_2
    invoke-virtual {v2}, Ljava/net/URL;->getPort()I
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto/16 :goto_0

    .line 103
    .end local v2    # "serverUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/net/MalformedURLException;
    const-string v3, "SDKConfig"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initReportAndConfigurationUrl. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public initServerInfoFromFile()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 132
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->context:Landroid/content/Context;

    const-string v2, "ServerUrl"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "TTL"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->serverTTL:J

    .line 135
    const-string v1, "Server"

    const-string v2, "http://fsr.lenovomm.com"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->serverURL:Ljava/lang/String;

    .line 137
    const-string v1, "TIMESTAMP"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->serverInfoUpdateTimestampMills:J

    .line 139
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->serverURL:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->initReportAndConfigurationUrl(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public isCustomDispatch()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->isCustomDispatch:Z

    return v0
.end method

.method public isServerInfoExpried()Z
    .locals 6

    .prologue
    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->serverInfoUpdateTimestampMills:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 110
    .local v0, "interval":J
    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->serverTTL:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public saveServerInfo(Ljava/lang/String;J)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "ttl"    # J

    .prologue
    .line 114
    iput-wide p2, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->serverTTL:J

    .line 115
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->serverURL:Ljava/lang/String;

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->serverInfoUpdateTimestampMills:J

    .line 117
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->serverURL:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->initReportAndConfigurationUrl(Ljava/lang/String;)V

    .line 118
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->context:Landroid/content/Context;

    const-string v3, "ServerUrl"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 120
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "Server"

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "TTL"

    invoke-interface {v2, v3, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "TIMESTAMP"

    iget-wide v4, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/SDKConfig;->serverInfoUpdateTimestampMills:J

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 124
    .local v1, "succ":Z
    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->isTestMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    const-string v2, "SDKConfig"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServerUrl Has Saved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    const-string v2, "SDKConfig"

    const-string v3, "ServerUrl Save Failed."

    invoke-static {v2, v3}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
