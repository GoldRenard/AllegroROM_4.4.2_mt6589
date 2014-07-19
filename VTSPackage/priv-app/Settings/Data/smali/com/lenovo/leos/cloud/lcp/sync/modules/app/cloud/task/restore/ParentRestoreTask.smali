.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/AbsAppTask;
.source "ParentRestoreTask.java"


# static fields
.field public static final APP_INSTALLER_RESULT_CODE:Ljava/lang/String; = "APP_INSTALLER_RESULT_CODE"

.field private static final TAG:Ljava/lang/String; = "ParentRestoreTask"


# instance fields
.field protected backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;

.field private installer:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;

.field private neddFilterPacakgeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V
    .locals 1
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/AbsAppTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 43
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;

    invoke-direct {v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;

    .line 44
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->installer:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;

    .line 45
    return-void
.end method

.method private appDataDowloadExecute(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;)I
    .locals 3
    .param p1, "app"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->getDownloadFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;)Ljava/io/File;

    move-result-object v1

    .line 58
    .local v1, "temp":Ljava/io/File;
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->getAppDataResponse(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 59
    .local v0, "response":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->wapperResult(Lorg/apache/http/HttpResponse;Ljava/io/File;)Ljava/io/File;

    .line 60
    invoke-direct {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->restoreDataFromSD(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;Ljava/io/File;)V

    .line 61
    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 62
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    return v2
.end method

.method private appDowloadExecute(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;)I
    .locals 4
    .param p1, "appItem"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 141
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->getVersion()Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->isDownload(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const-string v1, "ParentRestoreTask"

    const-string v2, "The version exists local!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iput v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 144
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 150
    :goto_0
    return v1

    .line 146
    :cond_0
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->appDowload(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;)Ljava/io/File;

    move-result-object v0

    .line 147
    .local v0, "downloadFilePath":Ljava/io/File;
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->installApk(Ljava/io/File;)V

    .line 148
    iput v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 150
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    goto :goto_0
.end method

.method private getNeddFilterPakageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->neddFilterPacakgeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v1, "appNeedFilter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->neddFilterPacakgeName:Ljava/lang/String;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->neddFilterPacakgeName:Ljava/lang/String;

    return-object v0
.end method

.method private installApk(Ljava/io/File;)V
    .locals 3
    .param p1, "downloadFilePath"    # Ljava/io/File;

    .prologue
    .line 156
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->installer:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;->slientInstallApk(Landroid/content/Context;Ljava/io/File;)I

    move-result v0

    .line 161
    .local v0, "resultCode":I
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getParams()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "APP_INSTALLER_RESULT_CODE"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private isDownloadApp(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;)Z
    .locals 7
    .param p1, "appItem"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 165
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "pn":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->tryToLoad(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    move-result-object v2

    .line 167
    .local v2, "localApp":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    if-eqz v2, :cond_0

    .line 169
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getVersionCode()I

    move-result v5

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->getVersionCode()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 170
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;-><init>(Landroid/content/Context;)V

    .line 171
    .local v0, "appInstaller":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;
    invoke-virtual {v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;->unInstatll(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 173
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;-><init>(Landroid/content/Context;)V

    .line 174
    .local v1, "backupUtils":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;
    invoke-virtual {v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;->unInstall(Ljava/lang/String;)Z

    .line 182
    .end local v0    # "appInstaller":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/LeSyncSlientAppInstaller;
    .end local v1    # "backupUtils":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;
    :cond_0
    :goto_0
    return v4

    .line 177
    :cond_1
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getVersionCode()I

    move-result v5

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->getVersionCode()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 179
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private restoreDataFromSD(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;Ljava/io/File;)V
    .locals 6
    .param p1, "app"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;
    .param p2, "temp"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 88
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->getNeddFilterPakageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;->restoreDataFromSD(Ljava/lang/String;ILjava/lang/String;)Z

    .line 89
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 90
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;->deleteDataFile(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 91
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 94
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private wapperResult(Lorg/apache/http/HttpResponse;Ljava/io/File;)Ljava/io/File;
    .locals 5
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "downloadFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    .line 129
    .local v2, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 131
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    invoke-static {v3}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v0

    .line 132
    .local v0, "is":Ljava/io/InputStream;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 133
    .local v1, "os":Ljava/io/FileOutputStream;
    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 136
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "os":Ljava/io/FileOutputStream;
    .end local p2    # "downloadFile":Ljava/io/File;
    :goto_0
    return-object p2

    .restart local p2    # "downloadFile":Ljava/io/File;
    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public appDowload(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;)Ljava/io/File;
    .locals 8
    .param p1, "appItem"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->getVersion()Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "downloadUrl":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v2

    .line 120
    .local v2, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getPhotoServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "photo.cloud.lps.lenovo.com"

    invoke-direct {v4, v5, v1, v2, v6}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 122
    .local v4, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getHttpMachine()Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->get(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 123
    .local v3, "response":Lorg/apache/http/HttpResponse;
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->getSize()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->getDownloadFile(Ljava/lang/String;J)Ljava/io/File;

    move-result-object v0

    .line 124
    .local v0, "downloadFile":Ljava/io/File;
    invoke-direct {p0, v3, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->wapperResult(Lorg/apache/http/HttpResponse;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    return-object v5
.end method

.method public getAppDataResponse(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;)Lorg/apache/http/HttpResponse;
    .locals 6
    .param p1, "app"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->getDataurl()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "downloadUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v1

    .line 76
    .local v1, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getPhotoServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    const-string v5, "photo.cloud.lps.lenovo.com"

    invoke-direct {v3, v4, v0, v1, v5}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 78
    .local v3, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getHttpMachine()Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->get(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 79
    .local v2, "response":Lorg/apache/http/HttpResponse;
    return-object v2
.end method

.method public getDownloadFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;)Ljava/io/File;
    .locals 3
    .param p1, "app"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;

    .prologue
    .line 66
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;->getDataFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 67
    .local v0, "temp":Ljava/io/File;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;->isDataFileExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->backupUtil:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;->deleteDataFile(Ljava/lang/String;)Z

    .line 70
    :cond_0
    return-object v0
.end method

.method protected singleDowloadApp(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;)I
    .locals 2
    .param p1, "appItem"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "result":I
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->isDownloadApp(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->appDowloadExecute(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;)I

    move-result v0

    .line 114
    :cond_0
    return v0
.end method

.method protected singleDowloadAppData(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;)I
    .locals 2
    .param p1, "appItem"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "result":I
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->singleDowloadApp(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;)I

    move-result v0

    .line 50
    if-eqz v0, :cond_0

    move v1, v0

    .line 54
    .end local v0    # "result":I
    .local v1, "result":I
    :goto_0
    return v1

    .line 53
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->appDataDowloadExecute(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;)I

    move-result v0

    move v1, v0

    .line 54
    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0
.end method
