.class public Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppConfig"


# instance fields
.field private applicationToken:Ljava/lang/String;

.field private channel:Ljava/lang/String;

.field private versionCode:I

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private replaceInvalidCharacter()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->channel:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->channel:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->versionName:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->versionName:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->applicationToken:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->applicationToken:Ljava/lang/String;

    .line 57
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->channel:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->replaceInvalidCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->versionName:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->replaceInvalidCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->applicationToken:Ljava/lang/String;

    invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->replaceInvalidCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public getApplicationToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->applicationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->channel:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->versionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 23
    .local v4, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 24
    .local v5, "packageName":Ljava/lang/String;
    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 26
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 29
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v6, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->versionName:Ljava/lang/String;

    .line 30
    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v6, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->versionCode:I

    .line 33
    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "lenovo:applicationToken"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->applicationToken:Ljava/lang/String;

    .line 36
    iget-object v6, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "lenovo:channel"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 37
    .local v1, "channel_tmp":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 38
    const-string v6, "All"

    iput-object v6, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->channel:Ljava/lang/String;

    .line 43
    :goto_0
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->replaceInvalidCharacter()V

    .line 44
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->isTestMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 45
    const-string v6, "AppConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->versionName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->versionCode:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->applicationToken:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->channel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "channel_tmp":Ljava/lang/Object;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 40
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v1    # "channel_tmp":Ljava/lang/Object;
    .restart local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->channel:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "channel_tmp":Ljava/lang/Object;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v5    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 48
    .local v2, "e":Ljava/lang/Exception;
    const-string v6, "AppConfig"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setAppToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "applicationToken"    # Ljava/lang/String;

    .prologue
    .line 76
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->replaceInvalidCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->applicationToken:Ljava/lang/String;

    goto :goto_0
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;

    .prologue
    .line 94
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->replaceInvalidCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->channel:Ljava/lang/String;

    goto :goto_0
.end method

.method public setVersionCode(I)V
    .locals 0
    .param p1, "versionCode"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->versionCode:I

    .line 91
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .locals 1
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 83
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-static {p1}, Lcom/lenovo/lps/reaper/sdk/util/AnalyticsTrackerUtils;->replaceInvalidCharacter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/localconfig/AppConfig;->versionName:Ljava/lang/String;

    goto :goto_0
.end method
