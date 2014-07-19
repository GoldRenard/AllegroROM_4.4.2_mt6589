.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;
.source "AppSDcardRestoreTask.java"


# static fields
.field public static final APP_PACKAGE_NAME_NEED_FILTER:Ljava/lang/String; = "appNeedFilter"

.field public static final PROBLEM_FIND_FILE_PATH:Ljava/lang/String; = "findFilePath"

.field public static final PROBLEM_KEY_PATH:Ljava/lang/String; = "path"

.field public static final PROBLEM_SILENT_INSTALL_FAILED:Ljava/lang/String; = "silentInstallFailed"

.field private static final PROGRESS_COUNT:I = 0x64


# instance fields
.field private filePath:Ljava/lang/String;

.field private installer:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;

.field private neddFilterPacakgeName:Ljava/lang/String;

.field private reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 45
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->installer:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;

    .line 46
    return-void
.end method

.method private callProblemResovler(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v1, :cond_0

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 156
    .local v0, "problmenContext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "path"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v2, "silentInstallFailed"

    invoke-interface {v1, v2, v0}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    .line 160
    .end local v0    # "problmenContext":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method private getFilePath()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->filePath:Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v2, "findFilePath"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 141
    .local v0, "resolveObj":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 142
    check-cast v0, Ljava/lang/String;

    .end local v0    # "resolveObj":Ljava/lang/Object;
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->filePath:Ljava/lang/String;

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->filePath:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 147
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    throw v1

    .line 150
    :cond_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->filePath:Ljava/lang/String;

    return-object v1
.end method

.method private getNeddFilterPakageName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->neddFilterPacakgeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v1, "appNeedFilter"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->neddFilterPacakgeName:Ljava/lang/String;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->neddFilterPacakgeName:Ljava/lang/String;

    return-object v0
.end method

.method private getPackageKey(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;)Ljava/lang/String;
    .locals 2
    .param p1, "appInfo"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;

    .prologue
    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private restoreDataFromSD(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;Ljava/io/File;Ljava/lang/String;)V
    .locals 8
    .param p1, "app"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;
    .param p2, "temp"    # Ljava/io/File;
    .param p3, "needFilterPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 163
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    :try_start_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, "backupUtil":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    .line 169
    .local v7, "info":Landroid/content/pm/ApplicationInfo;
    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    iget v3, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, 0x1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;->restoreDataFromSD(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    .end local v0    # "backupUtil":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/BackupUtils;
    .end local v7    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v6

    .line 171
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "AppSDCardTask"

    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startAppSDCardRestore()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    .line 66
    invoke-virtual {p0, v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->setProgressStep(I)V

    .line 68
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->initReader()V

    .line 70
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;

    if-nez v9, :cond_1

    .line 71
    const/16 v9, 0x6e

    iput v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;

    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;->readAppList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->appInfos:Ljava/util/List;

    .line 78
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    :try_start_0
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->appInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_0

    .line 79
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->appInfos:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;

    .line 81
    .local v2, "appInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_0

    .line 86
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->getNeddFilterPakageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 78
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 90
    :cond_3
    new-instance v0, Ljava/io/File;

    const-string v9, "software"

    invoke-virtual {p0, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->getAppDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->getPackageKey(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".apk"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .local v0, "apk":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 95
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->getAPKPublicKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 96
    .local v6, "localKey":Ljava/lang/String;
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-static {v9, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->getAPKPublicKey(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "apkKey":Ljava/lang/String;
    invoke-static {v6, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/SignatureUtil;->checkSignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 99
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->installer:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;

    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/installer/AppInstallerProxy;->slientInstallApk(Landroid/content/Context;Ljava/io/File;)I

    move-result v8

    .line 101
    .local v8, "resultCode":I
    const/4 v9, 0x1

    if-eq v8, v9, :cond_5

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->callProblemResovler(Ljava/lang/String;)V

    .line 111
    .end local v8    # "resultCode":I
    :cond_4
    :goto_3
    add-int/lit8 v9, v5, 0x1

    mul-int/lit8 v9, v9, 0x64

    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->appInfos:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    div-int v7, v9, v10

    .line 112
    .local v7, "progress":I
    int-to-float v9, v7

    invoke-virtual {p0, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 114
    .end local v0    # "apk":Ljava/io/File;
    .end local v1    # "apkKey":Ljava/lang/String;
    .end local v2    # "appInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;
    .end local v6    # "localKey":Ljava/lang/String;
    .end local v7    # "progress":I
    :catch_0
    move-exception v4

    .line 115
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "AppSDCardTask"

    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    iput v12, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    goto/16 :goto_0

    .line 104
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "apk":Ljava/io/File;
    .restart local v1    # "apkKey":Ljava/lang/String;
    .restart local v2    # "appInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;
    .restart local v6    # "localKey":Ljava/lang/String;
    .restart local v8    # "resultCode":I
    :cond_5
    :try_start_1
    new-instance v3, Ljava/io/File;

    const-string v9, "data"

    invoke-virtual {p0, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->getAppDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, ".tar.gz"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 105
    .local v3, "dataFile":Ljava/io/File;
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->getNeddFilterPakageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v2, v3, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->restoreDataFromSD(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;Ljava/io/File;Ljava/lang/String;)V

    .line 107
    iget v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->countOfAdd:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->countOfAdd:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method


# virtual methods
.method protected beforeTask()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 186
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v0, :cond_0

    .line 187
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v2, "findFilePath"

    invoke-interface {v0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->detectTmpFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->detectTmpFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAppDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public initReader()V
    .locals 3

    .prologue
    .line 131
    :try_start_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "AppSDCardTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected startTask()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->start:J

    .line 51
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->startTask()V

    .line 54
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->setProgressStep(I)V

    .line 55
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->beforeTask()V

    .line 56
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;->startAppSDCardRestore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyFinish()V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->cost:J

    .line 60
    const-string v1, "LCPApp"

    const-string v2, "SDCARD_APP_RESTORE"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 61
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->cost:J

    const-string v7, "1"

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->countOfAdd:I

    move-object v0, p0

    .line 60
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 63
    return-void

    .line 57
    :catchall_0
    move-exception v0

    move-object v9, v0

    .line 58
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyFinish()V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->cost:J

    .line 60
    const-string v1, "LCPApp"

    const-string v2, "SDCARD_APP_RESTORE"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 61
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->cost:J

    const-string v7, "1"

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->countOfAdd:I

    move-object v0, p0

    .line 60
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 62
    throw v9
.end method
