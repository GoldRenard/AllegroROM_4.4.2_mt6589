.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;
.super Ljava/lang/Object;
.source "AppInstallerProxy.java"


# instance fields
.field appInstaller:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstaller;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;->appInstaller:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstaller;

    .line 18
    return-void
.end method

.method private getLeSyncSlientAppInstaller(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstaller;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;->leSyncSupportSilentInstall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;-><init>(Landroid/content/Context;)V

    .line 117
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncRootAppInstaller;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncRootAppInstaller;-><init>()V

    goto :goto_0
.end method

.method private leStoreExistAndSupportSilentInstall(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const-string v0, "com.lenovo.leos.cloud.sync.intent.ACTION_APP_INSTALL"

    invoke-static {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->isReceiverAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const/4 v0, 0x1

    .line 126
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leSyncSupportSilentInstall(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    .line 131
    const-string v0, "android.permission.INSTALL_PACKAGES"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 130
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private requestAuth(Ljava/io/File;)V
    .locals 6
    .param p1, "apk"    # Ljava/io/File;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 135
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array v0, v5, [Ljava/lang/String;

    .line 136
    const-string v1, "chmod"

    aput-object v1, v0, v2

    const-string v1, "705"

    aput-object v1, v0, v3

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;->run([Ljava/lang/String;)Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    .line 137
    const-string v1, "chmod"

    aput-object v1, v0, v2

    const-string v1, "604"

    aput-object v1, v0, v3

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;->run([Ljava/lang/String;)Ljava/lang/String;

    .line 139
    :cond_0
    return-void
.end method

.method private static varargs run([Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "str"    # [Ljava/lang/String;

    .prologue
    .line 146
    const-string v3, ""

    .line 147
    .local v3, "line":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .local v7, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    .line 150
    .local v6, "runtime":Ljava/lang/Runtime;
    :try_start_0
    invoke-virtual {v6, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 151
    .local v4, "process":Ljava/lang/Process;
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 152
    .local v2, "input":Ljava/io/InputStream;
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    invoke-direct {v5, v2, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 153
    .local v5, "reader":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 154
    .local v0, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 157
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 155
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/InputStream;
    .restart local v4    # "process":Ljava/lang/Process;
    .restart local v5    # "reader":Ljava/io/InputStreamReader;
    :cond_0
    :try_start_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 158
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "input":Ljava/io/InputStream;
    .end local v4    # "process":Ljava/lang/Process;
    .end local v5    # "reader":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "SerialUtil"

    const-string v9, "IOException"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private declared-synchronized trySlientInstall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "versionCode"    # Ljava/lang/String;

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;->appInstaller:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstaller;

    if-nez v1, :cond_1

    .line 70
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;->leStoreExistAndSupportSilentInstall(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;

    invoke-direct {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;->appInstaller:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstaller;

    .line 72
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;->appInstaller:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstaller;

    invoke-interface {v1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstaller;->installApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 74
    .local v0, "firstTry":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 84
    .end local v0    # "firstTry":I
    :goto_0
    monitor-exit p0

    return v0

    .line 77
    .restart local v0    # "firstTry":I
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;->getLeSyncSlientAppInstaller(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstaller;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;->appInstaller:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstaller;

    .line 84
    .end local v0    # "firstTry":I
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;->appInstaller:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstaller;

    invoke-interface {v1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstaller;->installApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 80
    :cond_2
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;->getLeSyncSlientAppInstaller(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstaller;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;->appInstaller:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstaller;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public normalInstallApk(Landroid/content/Context;Ljava/io/File;)I
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apk"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x1

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;->slientInstallApk(Landroid/content/Context;Ljava/io/File;)I

    move-result v4

    .line 29
    .local v4, "slientInstall":I
    if-eq v4, v7, :cond_0

    .line 30
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "filePath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 33
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v2, :cond_1

    .line 34
    const/4 v4, 0x4

    .line 43
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "slientInstall":I
    :cond_0
    :goto_0
    return v4

    .line 37
    .restart local v0    # "filePath":Ljava/lang/String;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v4    # "slientInstall":I
    :cond_1
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 38
    .local v3, "packageName":Ljava/lang/String;
    iget v6, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 40
    .local v5, "versionCode":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncNormalAppInstaller;

    invoke-direct {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncNormalAppInstaller;-><init>(Landroid/content/Context;)V

    .line 41
    .local v1, "installer":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstaller;
    invoke-interface {v1, v0, v3, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstaller;->installApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public slientInstallApk(Landroid/content/Context;Ljava/io/File;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apk"    # Ljava/io/File;

    .prologue
    .line 53
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "filePath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 56
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    .line 57
    const/4 v4, 0x4

    .line 64
    :goto_0
    return v4

    .line 59
    :cond_0
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 60
    .local v2, "packageName":Ljava/lang/String;
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "versionCode":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;->requestAuth(Ljava/io/File;)V

    .line 64
    invoke-direct {p0, p1, v0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;->trySlientInstall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method

.method public declared-synchronized tryLeStoreSlientInstall(Landroid/content/Context;Ljava/io/File;)I
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apk"    # Ljava/io/File;

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "filePath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 96
    const/4 v5, 0x1

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 98
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-nez v1, :cond_0

    .line 99
    const/4 v4, 0x4

    .line 110
    :goto_0
    monitor-exit p0

    return v4

    .line 101
    :cond_0
    :try_start_1
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 102
    .local v2, "packageName":Ljava/lang/String;
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "versionCode":Ljava/lang/String;
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;->requestAuth(Ljava/io/File;)V

    .line 106
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;->leStoreExistAndSupportSilentInstall(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;

    invoke-direct {v4, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeStoreAppInstaller;->installApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    goto :goto_0

    .line 110
    :cond_1
    const/4 v4, 0x3

    goto :goto_0

    .line 94
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "versionCode":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
