.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;
.source "MmsSDcardBackupTask.java"


# static fields
.field private static final MMS_BACKUP_FILE_FULL_PATH:Ljava/lang/String; = "MMSBackupFileFullPath"

.field private static final PAGE_NUMBER:I = 0x64

.field public static final STEP_ONGOING_BACKUPING:I = 0x65

.field public static final STEP_QUERY_TOTALCOUNT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "MmsSDcardBackupTask"


# instance fields
.field private fileFullPath:Ljava/lang/String;

.field private fileNameTime:J

.field private mmsCount:Ljava/lang/Integer;

.field private pageCount:I

.field private startTime:J

.field private writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 43
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->MMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->mmsCount:Ljava/lang/Integer;

    .line 168
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->pageCount:I

    .line 44
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;

    const-string v1, "MMS-"

    const-string v2, "-tmp"

    invoke-direct {v0, p1, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->fileNameTime:J

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "time"    # J

    .prologue
    const/4 v1, 0x0

    .line 50
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->MMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->mmsCount:Ljava/lang/Integer;

    .line 168
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->pageCount:I

    .line 51
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;

    const-string v1, "MMS-"

    const-string v2, "-tmp"

    invoke-direct {v0, p1, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;

    .line 52
    iput-wide p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->fileNameTime:J

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;)J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->fileNameTime:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->fileFullPath:Ljava/lang/String;

    return-object v0
.end method

.method private backupMms(ILcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupRequest;)Z
    .locals 9
    .param p1, "cur"    # I
    .param p2, "mmsEntity"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    .param p3, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 170
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->copyFileToSDCard(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)V

    .line 171
    invoke-virtual {p3, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupRequest;->addMms(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)V

    .line 172
    if-eqz p1, :cond_0

    rem-int/lit8 v0, p1, 0x64

    if-eqz v0, :cond_1

    :cond_0
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->mmsCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->pageCount:I

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->pageCount:I

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->fileNameTime:J

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->mmsCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v1, p1, 0x1

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->mmsCount:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v1, v6, :cond_3

    move v6, v8

    :goto_0
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->fileFullPath:Ljava/lang/String;

    move-object v1, p3

    invoke-virtual/range {v0 .. v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->writeToFile(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Protocol;IJIZLjava/lang/String;)V

    .line 174
    invoke-virtual {p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupRequest;->clearData()V

    .line 175
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->mmsCount:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupRequest;->putNumberToJSONroot(I)V

    .line 177
    :cond_2
    return v8

    .line 173
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private backupToSdCard(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupRequest;)V
    .locals 9
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-interface {v6, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;->getMmsEntities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 147
    .local v5, "upLoadEntities":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 148
    .local v4, "total":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-lt v1, v4, :cond_0

    .line 167
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->checkCancelOperation()V

    .line 150
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    .line 152
    .local v2, "mmsEntity":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    :try_start_0
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getPduId()I

    move-result v8

    invoke-interface {v6, v7, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;->doZipSelectedEntityByPduId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "tmpFile":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    .line 164
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->deleteMmsCacheDir()Z

    .line 148
    .end local v3    # "tmpFile":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .restart local v3    # "tmpFile":Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-virtual {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->setTmpFilepath(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, v1, v2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->backupMms(ILcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupRequest;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 158
    iget v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfAdd:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfAdd:I

    .line 159
    int-to-float v6, v1

    int-to-float v7, v4

    div-float/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->notifyStepProgress(F)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    :cond_2
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->deleteMmsCacheDir()Z

    goto :goto_1

    .line 161
    .end local v3    # "tmpFile":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    const-string v6, "MmsSDcardBackupTask"

    const-string v7, " backupToSdCard JSONException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->deleteMmsCacheDir()Z

    goto :goto_1

    .line 163
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v6

    .line 164
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->deleteMmsCacheDir()Z

    .line 165
    throw v6
.end method

.method private copyFileToSDCard(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)V
    .locals 6
    .param p1, "mmsEntity"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getTmpFilepath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    .local v1, "filePath":Ljava/io/File;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->fileNameTime:J

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->mmsCount:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->fileFullPath:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->copyToFile(Ljava/io/File;JILjava/lang/String;)V

    .line 183
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->setTmpFilepath(Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method private resovleBackupFilePath()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v1, "MMSBackupFileFullPath"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->fileFullPath:Ljava/lang/String;

    .line 134
    :cond_0
    return-void
.end method

.method private startSDCardBackupMms()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 106
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupRequest;

    const-string v2, "-1"

    const-string v3, "-1"

    invoke-direct {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .local v1, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupRequest;
    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->setProgressStep(I)V

    .line 109
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->context:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;->doQueryLocalMmsNumber(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->mmsCount:Ljava/lang/Integer;

    .line 111
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->mmsCount:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->mmsCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    .line 112
    :cond_0
    const/16 v2, 0x6e

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    .line 128
    :goto_0
    return-void

    .line 115
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->resovleBackupFilePath()V

    .line 117
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->mmsCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->writeMetaInfo(I)V

    .line 118
    const/16 v2, 0x65

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->setProgressStep(I)V

    .line 121
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->mmsCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupRequest;->putNumberToJSONroot(I)V

    .line 122
    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->fileNameTime:J

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupRequest;->putTimeToJSONroot(J)V

    .line 123
    const-string v2, "mms"

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupRequest;->putCatogaryToJSONroot(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->backupToSdCard(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsBackupRequest;)V

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, " Unexcepted JSONException occured"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private writeMetaInfo(I)V
    .locals 3
    .param p1, "total"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;-><init>()V

    .line 97
    .local v0, "info":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;
    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->fileNameTime:J

    iput-wide v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->backupTime:J

    .line 98
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->fileFullPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->fileFullPath:Ljava/lang/String;

    .line 99
    iput p1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->dataNumber:I

    .line 100
    const-string v1, "mms"

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;->moduleName:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->writeMetaData(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SdcardBackupMetaInfo;)V

    .line 103
    return-void
.end method


# virtual methods
.method protected addOtherFinishParam(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 187
    const-string v0, "countOfAdd"

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->mmsCount:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    const-string v0, "costTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 189
    return-void
.end method

.method protected beforeTask()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 138
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v2, "MMSBackupFileFullPath"

    invoke-interface {v0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->detectTmpFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->detectTmpFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 193
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->cancel()V

    .line 194
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask$1;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 203
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 204
    return-void
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "progressstate"

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->getProgressStep()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 88
    const-string v1, "countOfAdd"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfAdd:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    const-string v1, "countOfUpdate"

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->mmsCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfAdd:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 90
    const-string v1, "costTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->startTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 91
    const-string v1, "result"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    return-object v0
.end method

.method protected notifyStepProgress(F)V
    .locals 2
    .param p1, "stepProgress"    # F

    .prologue
    const/high16 v1, 0x40a00000

    .line 208
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->progressStep:I

    sparse-switch v0, :sswitch_data_0

    .line 222
    const-string v0, "MmsSDcardBackupTask"

    const-string v1, "MmsSDcardBackupTask notifyStepProgress, this log shoud not be printed, there must be some unexcepted ERROR."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :goto_0
    return-void

    .line 210
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V

    goto :goto_0

    .line 213
    :sswitch_1
    mul-float v0, v1, p1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V

    goto :goto_0

    .line 216
    :sswitch_2
    const/high16 v0, 0x42be0000

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V

    goto :goto_0

    .line 219
    :sswitch_3
    const/high16 v0, 0x42c80000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V

    goto :goto_0

    .line 208
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x7fffffff -> :sswitch_3
    .end sparse-switch
.end method

.method public startTask()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->startTime:J

    .line 57
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->setApplicationContext(Landroid/content/Context;)V

    .line 59
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->setProgressStep(I)V

    .line 60
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->beforeTask()V

    .line 61
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->startSDCardBackupMms()V

    .line 62
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->close()V

    .line 63
    const v1, 0x7fffffff

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->setProgressStep(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_5

    :goto_0
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    .line 68
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    if-eqz v0, :cond_6

    .line 70
    :try_start_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->fileNameTime:J

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->fileFullPath:Ljava/lang/String;

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
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 78
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->cost:J

    .line 79
    const-string v1, "LCPMms"

    const-string v2, "SDCARD_MMS_BACKUP"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 80
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->cost:J

    const-string v7, "0"

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfAdd:I

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfUpdate:I

    add-int/2addr v8, v0

    move-object v0, p0

    .line 79
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 83
    :goto_2
    return-void

    .line 64
    :catch_0
    move-exception v9

    .line 65
    .local v9, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    :goto_3
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_4
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    .line 68
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    if-eqz v0, :cond_2

    .line 70
    :try_start_3
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->fileNameTime:J

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->fileFullPath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "-tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->deleteFile(Landroid/content/Context;JLjava/lang/String;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    .line 78
    .end local v9    # "e":Ljava/io/IOException;
    :goto_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->cost:J

    .line 79
    const-string v1, "LCPMms"

    const-string v2, "SDCARD_MMS_BACKUP"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 80
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->cost:J

    const-string v7, "0"

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfAdd:I

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfUpdate:I

    add-int/2addr v8, v0

    move-object v0, p0

    .line 79
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    goto :goto_2

    .line 65
    .restart local v9    # "e":Ljava/io/IOException;
    :cond_0
    const/4 v1, 0x7

    goto :goto_3

    .line 67
    :cond_1
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    goto :goto_4

    .line 71
    :catch_1
    move-exception v9

    .line 72
    .local v9, "e":Ljava/io/FileNotFoundException;
    const-string v0, "MmsSDcardBackup startTask FileNotFoundException"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 73
    invoke-static {v9}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 76
    .local v9, "e":Ljava/io/IOException;
    :cond_2
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->convert2RealFile()Z

    goto :goto_5

    .line 66
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    move-object v10, v1

    .line 67
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_6
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    .line 68
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    if-eqz v0, :cond_4

    .line 70
    :try_start_4
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->fileNameTime:J

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->fileFullPath:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "-tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->deleteFile(Landroid/content/Context;JLjava/lang/String;)Z
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 78
    :goto_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->cost:J

    .line 79
    const-string v1, "LCPMms"

    const-string v2, "SDCARD_MMS_BACKUP"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 80
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->cost:J

    const-string v7, "0"

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfAdd:I

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfUpdate:I

    add-int/2addr v8, v0

    move-object v0, p0

    .line 79
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 82
    throw v10

    .line 67
    :cond_3
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    goto :goto_6

    .line 71
    :catch_2
    move-exception v9

    .line 72
    .local v9, "e":Ljava/io/FileNotFoundException;
    const-string v0, "MmsSDcardBackup startTask FileNotFoundException"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 73
    invoke-static {v9}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 76
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :cond_4
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->convert2RealFile()Z

    goto :goto_7

    .line 67
    :cond_5
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    goto/16 :goto_0

    .line 71
    :catch_3
    move-exception v9

    .line 72
    .restart local v9    # "e":Ljava/io/FileNotFoundException;
    const-string v0, "MmsSDcardBackup startTask FileNotFoundException"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 73
    invoke-static {v9}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 76
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :cond_6
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileWriter;->convert2RealFile()Z

    goto/16 :goto_1
.end method
