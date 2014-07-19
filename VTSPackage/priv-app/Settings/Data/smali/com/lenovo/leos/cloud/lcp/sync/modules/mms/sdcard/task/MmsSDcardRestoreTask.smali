.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardRestoreTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;
.source "MmsSDcardRestoreTask.java"


# static fields
.field public static final STEP_ONGOING_RESTOREING:I = 0x65

.field private static final TAG:Ljava/lang/String; = "MmsSDcardRestoreTask"


# instance fields
.field private localEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;",
            ">;"
        }
    .end annotation
.end field

.field private reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;

.field private startTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->MMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageFilePath"    # Ljava/lang/String;

    .prologue
    .line 41
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->MMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 42
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;

    invoke-direct {v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;

    .line 45
    :cond_0
    return-void
.end method

.method private existAndUpdate(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)Z
    .locals 12
    .param p1, "entity"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardRestoreTask;->localEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 143
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    .line 144
    .local v7, "localEntity":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getType()I

    move-result v1

    invoke-virtual {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getType()I

    move-result v8

    if-ne v1, v8, :cond_0

    .line 146
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getDate()J

    move-result-wide v8

    invoke-virtual {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getDate()J

    move-result-wide v10

    cmp-long v1, v8, v10

    if-nez v1, :cond_0

    .line 147
    iget v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->locked:I

    iget v1, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->locked:I

    if-eq v0, v1, :cond_2

    .line 149
    iget-wide v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->date:J

    .line 150
    .local v2, "date":J
    iget v4, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->type:I

    .line 151
    .local v4, "type":I
    iget-object v5, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->address:Ljava/lang/String;

    .line 153
    .local v5, "address":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;->updateMms(Landroid/content/Context;JILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfUpdate:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfUpdate:I

    .line 159
    .end local v2    # "date":J
    .end local v4    # "type":I
    .end local v5    # "address":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 154
    .restart local v2    # "date":J
    .restart local v4    # "type":I
    .restart local v5    # "address":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 155
    .local v6, "e":Lorg/json/JSONException;
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexcepted JSONException occured"

    invoke-direct {v0, v1, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getPackageReader()Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 100
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v2, "GET_PACKAGE_PATH"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    .local v0, "packageFilePath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 103
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;

    invoke-direct {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;

    .line 107
    .end local v0    # "packageFilePath":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;->existsFile()Z

    move-result v1

    if-nez v1, :cond_2

    .line 108
    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "Cant find import file, can\'t do restore task!"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_2
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardRestoreTask;->reader:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;

    return-object v1
.end method

.method private importMMSFromJson()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardRestoreTask;->getPackageReader()Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;->readMmsList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 91
    .local v2, "requestList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 92
    .local v1, "localNumberTotal":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 97
    return-void

    .line 93
    :cond_0
    int-to-float v3, v0

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardRestoreTask;->notifyStepProgress(F)V

    .line 94
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardRestoreTask;->save(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private save(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)V
    .locals 9
    .param p1, "entity"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 117
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardRestoreTask;->existAndUpdate(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 118
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardRestoreTask;->getPackageReader()Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/io/MmsPackageFileReader;->getMmsDir()Ljava/io/File;

    move-result-object v1

    .line 119
    .local v1, "mmsDir":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    iget-object v6, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->tmpFilepath:Ljava/lang/String;

    invoke-direct {v3, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    .local v3, "sourceZip":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 137
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->deleteMmsCacheDir()Z

    .line 139
    .end local v1    # "mmsDir":Ljava/io/File;
    .end local v3    # "sourceZip":Ljava/io/File;
    :goto_0
    return-void

    .line 123
    .restart local v1    # "mmsDir":Ljava/io/File;
    .restart local v3    # "sourceZip":Ljava/io/File;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->getTmpFilePath()Ljava/lang/String;

    move-result-object v2

    .line 124
    .local v2, "outFileName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->date:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 125
    .local v4, "zipDir":Ljava/lang/String;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;

    invoke-direct {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;-><init>()V

    .line 126
    .local v5, "zipManager":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;->releaseZipToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7, p1, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;->createMms(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;Ljava/io/File;)V

    .line 128
    iget v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfAdd:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfAdd:I

    .line 129
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 130
    new-instance v6, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v6}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .end local v1    # "mmsDir":Ljava/io/File;
    .end local v2    # "outFileName":Ljava/lang/String;
    .end local v3    # "sourceZip":Ljava/io/File;
    .end local v4    # "zipDir":Ljava/lang/String;
    .end local v5    # "zipManager":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-interface {v6, v7, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;->removeDamagedDataAfterException(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)V

    .line 135
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 137
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->deleteMmsCacheDir()Z

    .line 138
    throw v6

    .line 137
    :cond_1
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->deleteMmsCacheDir()Z

    goto :goto_0
.end method

.method private startSDcardRestore()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->setProgressStep(I)V

    .line 85
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->context:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;->getMmsEntities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardRestoreTask;->localEntities:Ljava/util/List;

    .line 86
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardRestoreTask;->importMMSFromJson()V

    .line 87
    return-void
.end method


# virtual methods
.method protected addOtherFinishParam(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 176
    const-string v0, "countOfAdd"

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfAdd:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 177
    const-string v0, "countOfupadte"

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfUpdate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    const-string v0, "costTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardRestoreTask;->startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 179
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

    .line 168
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v2, "GET_PACKAGE_PATH"

    invoke-interface {v0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->detectTmpFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->detectTmpFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "progressstate"

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->getProgressStep()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string v1, "countOfAdd"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfAdd:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 75
    const-string v1, "countOfUpdate"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfUpdate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v1, "costTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardRestoreTask;->startTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 77
    const-string v1, "result"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    return-object v0
.end method

.method protected notifyStepProgress(F)V
    .locals 2
    .param p1, "stepProgress"    # F

    .prologue
    .line 183
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->progressStep:I

    sparse-switch v0, :sswitch_data_0

    .line 194
    const-string v0, "MmsSDcardRestoreTask"

    const-string v1, "MmsSDcardRestoreTask notifyStepProgress, this log shoud not be printed, there must be some unexcepted ERROR."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :goto_0
    return-void

    .line 185
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V

    goto :goto_0

    .line 188
    :sswitch_1
    const/high16 v0, 0x42a00000

    mul-float/2addr v0, p1

    const/high16 v1, 0x41a00000

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V

    goto :goto_0

    .line 191
    :sswitch_2
    const/high16 v0, 0x42c80000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V

    goto :goto_0

    .line 183
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x65 -> :sswitch_1
        0x7fffffff -> :sswitch_2
    .end sparse-switch
.end method

.method public startTask()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardRestoreTask;->startTime:J

    .line 49
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->setApplicationContext(Landroid/content/Context;)V

    .line 51
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->setProgressStep(I)V

    .line 52
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardRestoreTask;->beforeTask()V

    .line 53
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardRestoreTask;->startSDcardRestore()V

    .line 54
    const v1, 0x7fffffff

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->setProgressStep(I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfAdd:I

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 65
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->cost:J

    .line 66
    const-string v1, "LCPMms"

    const-string v2, "SDCARD_MMS_RESTORE"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 67
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->cost:J

    const-string v7, "1"

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfAdd:I

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfUpdate:I

    add-int/2addr v8, v0

    move-object v0, p0

    .line 66
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 69
    :goto_0
    return-void

    .line 55
    :catch_0
    move-exception v9

    .line 56
    .local v9, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-static {v9}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    .line 57
    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v0

    move-object v11, v0

    .line 62
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfAdd:I

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 65
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->cost:J

    .line 66
    const-string v1, "LCPMms"

    const-string v2, "SDCARD_MMS_RESTORE"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 67
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->cost:J

    const-string v7, "1"

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfAdd:I

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfUpdate:I

    add-int/2addr v8, v0

    move-object v0, p0

    .line 66
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 68
    throw v11

    .line 58
    :catch_1
    move-exception v10

    .line 59
    .local v10, "ioe":Ljava/io/IOException;
    :try_start_2
    const-string v1, "MmsSDcardRestoreTask"

    const-string v2, "MmsSDcardRestoreTask IOException"

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    :goto_1
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfAdd:I

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 65
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->cost:J

    .line 66
    const-string v1, "LCPMms"

    const-string v2, "SDCARD_MMS_RESTORE"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 67
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->cost:J

    const-string v7, "1"

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfAdd:I

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->countOfUpdate:I

    add-int/2addr v8, v0

    move-object v0, p0

    .line 66
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDCardTask;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    goto/16 :goto_0

    .line 60
    :cond_3
    const/4 v0, 0x7

    goto :goto_1
.end method
