.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;
.source "SmsSDcardBackupTask.java"


# static fields
.field private static final PAGE_NUMBER:I = 0x64

.field public static final SMS_BACKUP_FILE_FULL_PATH:Ljava/lang/String; = "SmsBackupFileFullPath"

.field public static final STEP_ONGOING_BACKUPING:I = 0x65

.field public static final STEP_QUERY_TOTALCOUNT:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SmsSDcardBackupTask"


# instance fields
.field private fileFullPath:Ljava/lang/String;

.field private fileNameTime:J

.field private smsCount:I

.field private startTime:J

.field private writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;-><init>(Landroid/content/Context;J)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "time"    # J

    .prologue
    .line 43
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->smsCount:I

    .line 44
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;

    const-string v1, "SMS-"

    const-string v2, ".zip.tmp"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;

    .line 45
    iput-wide p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->fileNameTime:J

    .line 46
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;)I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->smsCount:I

    return v0
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;I)V
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->smsCount:I

    return-void
.end method

.method static synthetic access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;)J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->fileNameTime:J

    return-wide v0
.end method

.method static synthetic access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->fileFullPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;I)V
    .locals 0

    .prologue
    .line 25
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    return-void
.end method

.method private deleteBackupFile()V
    .locals 8

    .prologue
    .line 166
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->fileFullPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->fileNameTime:J

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->fileFullPath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->deleteFile(Landroid/content/Context;JLjava/lang/String;)Z

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->fileFullPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, "tmpFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v1    # "tmpFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private resovleBackupFilePath()V
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v1, "SmsBackupFileFullPath"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->fileFullPath:Ljava/lang/String;

    .line 153
    :cond_0
    return-void
.end method

.method private startSDCardBackupSms()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 76
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;

    const-string v0, "-1"

    const-string v1, "-1"

    invoke-direct {v8, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v8, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->setProgressStep(I)V

    .line 79
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->smsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    invoke-interface {v0, v2, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->getSmsSize(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 80
    .local v9, "smsNumber":Ljava/lang/Integer;
    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->setProgressStep(I)V

    .line 82
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 83
    :cond_0
    const/16 v0, 0x6e

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    .line 147
    :cond_1
    :goto_0
    return-void

    .line 87
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->resovleBackupFilePath()V

    .line 90
    :try_start_0
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;->putNumberToJSONroot(I)V

    .line 91
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->fileNameTime:J

    invoke-virtual {v8, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;->putTimeToJSONroot(J)V

    .line 92
    const-string v0, "sms"

    invoke-virtual {v8, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;->putCatogaryToJSONroot(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->smsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;

    invoke-direct {v1, p0, v8, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;Ljava/lang/Integer;)V

    .line 142
    const-string v4, "date"

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v3, v2

    .line 98
    invoke-interface/range {v0 .. v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->traverseSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)Z

    .line 144
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    goto :goto_0

    .line 93
    :catch_0
    move-exception v7

    .line 94
    .local v7, "e":Lorg/json/JSONException;
    const-string v0, "SmsSDcardBackupTask"

    const-string v1, "startSDCardBackupSms JSONException"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    goto :goto_1
.end method


# virtual methods
.method protected addOtherFinishParam(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 180
    const-string v0, "countOfAdd"

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->smsCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    const-string v0, "costTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->startTime:J

    sub-long/2addr v1, v3

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 182
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

    .line 157
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v0, :cond_0

    .line 158
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v2, "SmsBackupFileFullPath"

    invoke-interface {v0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->detectTmpFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->detectTmpFile(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 186
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->cancel()V

    .line 187
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$2;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask$2;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 197
    return-void
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 221
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 222
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "countOfAdd"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->smsCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 224
    return-object v0
.end method

.method protected notifyStepProgress(F)V
    .locals 2
    .param p1, "stepProgress"    # F

    .prologue
    const/high16 v1, 0x40a00000

    .line 201
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->progressStep:I

    sparse-switch v0, :sswitch_data_0

    .line 215
    const-string v0, "SmsSDcardBackupTask"

    const-string v1, "notifyStepProgress stepProgress paramter ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_0
    return-void

    .line 203
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V

    goto :goto_0

    .line 206
    :sswitch_1
    mul-float v0, v1, p1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V

    goto :goto_0

    .line 209
    :sswitch_2
    const/high16 v0, 0x42be0000

    mul-float/2addr v0, p1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V

    goto :goto_0

    .line 212
    :sswitch_3
    const/high16 v0, 0x42c80000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->notifyProgress(F)V

    goto :goto_0

    .line 201
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

    .prologue
    const/4 v0, 0x1

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->startTime:J

    .line 52
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->setProgressStep(I)V

    .line 53
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->beforeTask()V

    .line 54
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->startSDCardBackupSms()V

    .line 55
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->close()V

    .line 56
    const v1, 0x7fffffff

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->setProgressStep(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    .line 62
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    if-eqz v0, :cond_5

    .line 63
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->deleteBackupFile()V

    .line 68
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->cost:J

    .line 69
    const-string v1, "LCPSms"

    const-string v2, "SDCARD_SMS_BACKUP"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 70
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->cost:J

    const-string v7, "0"

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->smsCount:I

    move-object v0, p0

    .line 69
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 73
    :goto_2
    return-void

    .line 57
    :catch_0
    move-exception v9

    .line 58
    .local v9, "e":Ljava/io/IOException;
    :try_start_1
    const-string v1, "SmsSDcardBackupTask"

    const-string v2, "startTask IOException"

    invoke-static {v1, v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    const/4 v1, 0x7

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_3
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    .line 62
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    if-eqz v0, :cond_1

    .line 63
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->deleteBackupFile()V

    .line 68
    :goto_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->cost:J

    .line 69
    const-string v1, "LCPSms"

    const-string v2, "SDCARD_SMS_BACKUP"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 70
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->cost:J

    const-string v7, "0"

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->smsCount:I

    move-object v0, p0

    .line 69
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    goto :goto_2

    .line 61
    :cond_0
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    goto :goto_3

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->convert2RealFile()Z

    goto :goto_4

    .line 60
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    move-object v10, v1

    .line 61
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_5
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    .line 62
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    if-eqz v0, :cond_3

    .line 63
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->deleteBackupFile()V

    .line 68
    :goto_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->cost:J

    .line 69
    const-string v1, "LCPSms"

    const-string v2, "SDCARD_SMS_BACKUP"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 70
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->cost:J

    const-string v7, "0"

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->smsCount:I

    move-object v0, p0

    .line 69
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDCardTask;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 72
    throw v10

    .line 61
    :cond_2
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    goto :goto_5

    .line 65
    :cond_3
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->convert2RealFile()Z

    goto :goto_6

    .line 61
    :cond_4
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;->result:I

    goto/16 :goto_0

    .line 65
    :cond_5
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;->writer:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileWriter;->convert2RealFile()Z

    goto/16 :goto_1
.end method
