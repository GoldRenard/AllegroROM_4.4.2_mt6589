.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;
.source "AppSDcardBackupTask.java"


# static fields
.field public static final APP_BACKUP_FILE_FULL_PATH:Ljava/lang/String; = "APPBackupFileFullPath"

.field public static final APP_PACKAGE_NAME_NEED_FILTER:Ljava/lang/String; = "appPackageNameNeedFilter"


# instance fields
.field private count:I

.field private fileFullPath:Ljava/lang/String;

.field private time:J

.field private writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 36
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;

    const-string v1, "APP-"

    const-string v2, "-tmp"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->time:J

    .line 39
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/loader/AppInfoLoader;->localAppInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->appInfos:Ljava/util/List;

    .line 41
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->appInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->appInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->count:I

    .line 44
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;F)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V

    return-void
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;)J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->time:J

    return-wide v0
.end method

.method static synthetic access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->fileFullPath:Ljava/lang/String;

    return-object v0
.end method

.method private resovleBackupFilePath()V
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v1, "APPBackupFileFullPath"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->fileFullPath:Ljava/lang/String;

    .line 114
    :cond_0
    return-void
.end method

.method private startAppSDCardBackup()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 73
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->setProgressStep(I)V

    .line 75
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/protocol/AppBackupRequest;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/protocol/AppBackupRequest;-><init>()V

    .line 76
    .local v2, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/protocol/AppBackupRequest;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/loader/AppInfoLoader;->localAppList(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 77
    const/16 v0, 0x6e

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    .line 108
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->resovleBackupFilePath()V

    .line 83
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->appInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v10, v0, :cond_1

    .line 87
    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->writeMetaInfo(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/protocol/AppBackupRequest;)V

    .line 89
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->time:J

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->appInfos:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->fileFullPath:Ljava/lang/String;

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->writeToFile(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Protocol;IJIZLjava/lang/String;)V

    .line 92
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->appInfos:Ljava/util/List;

    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->time:J

    new-instance v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask$1;

    invoke-direct {v8, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;)V

    .line 106
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->fileFullPath:Ljava/lang/String;

    .line 92
    invoke-virtual/range {v3 .. v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->copyToFile(Landroid/content/Context;Ljava/util/List;JLcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2$ProgressListener;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/protocol/AppBackupRequest;->clearData()V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->appInfos:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;

    invoke-virtual {v2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/protocol/AppBackupRequest;->addApp(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/AppInfo;)V

    .line 83
    add-int/lit8 v10, v10, 0x1

    goto :goto_1
.end method

.method private writeMetaInfo(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/protocol/AppBackupRequest;)V
    .locals 4
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/protocol/AppBackupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;-><init>()V

    .line 119
    .local v1, "info":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;
    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->time:J

    iput-wide v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->backupTime:J

    .line 120
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->fileFullPath:Ljava/lang/String;

    iput-object v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->fileFullPath:Ljava/lang/String;

    .line 121
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->appInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->dataNumber:I

    .line 122
    const-string v2, "app"

    iput-object v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->moduleName:Ljava/lang/String;

    .line 124
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->writeMetaData(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;)V

    .line 127
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->appInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/protocol/AppBackupRequest;->putNumberToJSONroot(I)V

    .line 128
    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->time:J

    invoke-virtual {p1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/protocol/AppBackupRequest;->putTimeToJSONroot(J)V

    .line 129
    const-string v2, "app"

    invoke-virtual {p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/protocol/AppBackupRequest;->putCatogaryToJSONroot(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->cancel()V

    .line 140
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask$2;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask$2;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 149
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 150
    return-void
.end method

.method protected startTask()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->start:J

    .line 49
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->startTask()V

    .line 52
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->setProgressStep(I)V

    .line 53
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->startAppSDCardBackup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyFinish()V

    .line 57
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    if-eqz v0, :cond_1

    .line 59
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->time:J

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->fileFullPath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "-tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->deleteFile(Landroid/content/Context;JLjava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 66
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->cost:J

    .line 67
    const-string v1, "LCPApp"

    const-string v2, "SDCARD_APP_BACKUP"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 68
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->cost:J

    const-string v7, "0"

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->countOfAdd:I

    move-object v0, p0

    .line 67
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 70
    return-void

    .line 54
    :catchall_0
    move-exception v0

    move-object v10, v0

    .line 55
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyFinish()V

    .line 57
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    if-eqz v0, :cond_0

    .line 59
    :try_start_2
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->time:J

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->fileFullPath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "-tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->deleteFile(Landroid/content/Context;JLjava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 66
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->cost:J

    .line 67
    const-string v1, "LCPApp"

    const-string v2, "SDCARD_APP_BACKUP"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 68
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->cost:J

    const-string v7, "0"

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->countOfAdd:I

    move-object v0, p0

    .line 67
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDCardTask;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 69
    throw v10

    .line 60
    :catch_0
    move-exception v9

    .line 61
    .local v9, "e":Ljava/io/FileNotFoundException;
    const-string v0, "AppSDCardTask"

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 64
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->convert2RealFile()Z

    goto :goto_1

    .line 60
    :catch_1
    move-exception v9

    .line 61
    .restart local v9    # "e":Ljava/io/FileNotFoundException;
    const-string v0, "AppSDCardTask"

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 64
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileWriterV2;->convert2RealFile()Z

    goto/16 :goto_0
.end method
