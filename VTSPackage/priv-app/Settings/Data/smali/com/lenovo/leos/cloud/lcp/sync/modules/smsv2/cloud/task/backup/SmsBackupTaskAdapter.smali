.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;
.source "SmsBackupTaskAdapter.java"


# static fields
.field public static final MAX_UPLOAD_SMS_SIZE:I = 0x3e8

.field private static final MOCK_SLEEP_TIME:I = 0x320

.field public static final ONGOING_BACKUP_AFT:I = 0x6a

.field public static final ONGOING_BACKUP_NET:I = 0x69

.field public static final SMS_TYPE_CHECKSUM:I = 0x2

.field public static final SMS_TYPE_NO_CHECKSUM:I = 0x1

.field public static final SMS_TYPE_NO_OPERATE:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "SmsTaskAdapter"


# instance fields
.field protected backupType:I

.field protected cost:J

.field protected countOfAdd:I

.field protected countOfUpdate:I

.field protected start:J

.field protected virtualTaskProgressNumber:I


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V
    .locals 1
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->virtualTaskProgressNumber:I

    .line 43
    return-void
.end method

.method private doSmsBackup(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupResponse;
    .locals 5
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    const-string v0, "pcs/v3/backup?gzip=true"

    .line 193
    .local v0, "bckupUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->getSmsURIRoller(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v2

    .line 194
    .local v2, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;->toBytes()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "respStr":Ljava/lang/String;
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupResponse;

    invoke-direct {v3, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupResponse;-><init>(Ljava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method protected batchUploadSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;)Z
    .locals 2
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;->getDataArray()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 202
    .local v0, "reqbodySize":I
    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->singleBackup(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    const/4 v1, 0x0

    .line 205
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected getDefSmsBackupRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;
    .locals 3

    .prologue
    .line 75
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/lsf/account/PsDeviceInfo;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "deviceId":Ljava/lang/String;
    const-string v1, "-1"

    .line 77
    .local v1, "pid":Ljava/lang/String;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;

    invoke-direct {v2, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method protected getDefSmsRestoreRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;
    .locals 3

    .prologue
    .line 82
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/lsf/account/PsDeviceInfo;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "deviceId":Ljava/lang/String;
    const-string v1, "-1"

    .line 84
    .local v1, "pid":Ljava/lang/String;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;

    invoke-direct {v2, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 149
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 150
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "countOfAdd"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->countOfAdd:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 151
    const-string v1, "countOfUpdate"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->countOfUpdate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    return-object v0
.end method

.method protected mockProgress()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 88
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->mockProgressStep(I)V

    .line 89
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v0

    .line 92
    :cond_0
    const/16 v0, 0x68

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->mockProgressStep(I)V

    .line 94
    const/16 v0, 0x69

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->setProgressStep(I)V

    .line 95
    return-void
.end method

.method protected mockProgressStep(I)V
    .locals 3
    .param p1, "progressType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->setProgressStep(I)V

    .line 64
    const-wide/16 v1, 0x320

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 65
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "SmsTaskAdapter"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method

.method protected notifyStepProgress(F)V
    .locals 2
    .param p1, "stepProgress"    # F

    .prologue
    const/high16 v1, 0x3f800000

    .line 109
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->curProgressStep:I

    sparse-switch v0, :sswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 111
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    goto :goto_0

    .line 114
    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    goto :goto_0

    .line 117
    :sswitch_2
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->virtualTaskProgressNumber:I

    add-int/lit8 v0, v0, 0x1

    .line 118
    const/high16 v1, 0x42200000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 117
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    goto :goto_0

    .line 121
    :sswitch_3
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->virtualTaskProgressNumber:I

    add-int/lit8 v0, v0, 0x29

    .line 122
    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 121
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    goto :goto_0

    .line 125
    :sswitch_4
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->virtualTaskProgressNumber:I

    add-int/lit8 v0, v0, 0x2a

    .line 126
    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 125
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    goto :goto_0

    .line 129
    :sswitch_5
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->virtualTaskProgressNumber:I

    add-int/lit8 v0, v0, 0x2b

    .line 130
    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    goto :goto_0

    .line 133
    :sswitch_6
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->virtualTaskProgressNumber:I

    add-int/lit8 v0, v0, 0x2c

    .line 134
    const/high16 v1, 0x425c0000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 133
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    goto :goto_0

    .line 137
    :sswitch_7
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->virtualTaskProgressNumber:I

    add-int/lit8 v0, v0, 0x5f

    .line 138
    const/high16 v1, 0x40800000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 137
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    goto :goto_0

    .line 141
    :sswitch_8
    const/high16 v0, 0x42c80000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    goto :goto_0

    .line 109
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_4
        0x68 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6a -> :sswitch_7
        0x7fffffff -> :sswitch_8
    .end sparse-switch
.end method

.method protected reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V
    .locals 6
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "userName"    # Ljava/lang/String;
    .param p4, "result"    # I
    .param p5, "cost"    # J
    .param p7, "operateType"    # Ljava/lang/String;
    .param p8, "changeNum"    # I

    .prologue
    .line 211
    new-instance v5, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v5}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 212
    .local v5, "params":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    const/4 v0, 0x1

    const-string v1, "userName"

    invoke-virtual {v5, v0, v1, p3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 213
    const/4 v0, 0x2

    const-string v1, "smsNum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 214
    const/4 v0, 0x3

    const-string v1, "isAuto"

    const-string v2, "0"

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 215
    const/4 v0, 0x5

    const-string v1, "APPTOKEN"

    const-string v2, "PJPRUFMX2B3"

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 217
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    .line 219
    return-void
.end method

.method protected setProgressStep(I)V
    .locals 3
    .param p1, "progressStep"    # I

    .prologue
    .line 46
    const-string v0, "SmsTaskAdapter.java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "change progress status : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->curProgressStep:I

    if-ge p1, v0, :cond_0

    .line 48
    const-string v0, "SmsTaskAdapter.java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The current progressStep( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") should bigger than this.progerssStep( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->curProgressStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->notifyStepProgress(F)V

    .line 54
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->curProgressStep:I

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->notifyStepProgress(F)V

    .line 56
    return-void
.end method

.method protected singleBackup(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;)Z
    .locals 6
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 167
    :try_start_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;->getDataArray()Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 168
    const-string v3, "SmsTaskAdapter"

    const-string v4, "requestBody\u91cc\u9762\u6ca1\u6709data\u6570\u636e\uff0c\u76f4\u63a5\u8fd4\u56detrue"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;->removeDate()V

    .line 183
    :goto_0
    return v2

    .line 171
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->doSmsBackup(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupResponse;

    move-result-object v0

    .line 172
    .local v0, "backupResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupResponse;
    const-string v3, "SmsTaskAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u60f3\u8981\u4e0a\u4f20\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;->getDataArray()Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 173
    const-string v5, "\u4e2a,\u5b9e\u9645\u5907\u4efd\u4e86\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupResponse;->getAddNum()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\u4e2a\uff0c"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 174
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupResponse;->getResult()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 176
    .local v1, "result":I
    if-eqz v1, :cond_1

    .line 177
    const/4 v1, -0x2

    .line 186
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;->removeDate()V

    .line 178
    const/4 v2, 0x0

    goto :goto_0

    .line 180
    :cond_1
    :try_start_2
    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->countOfAdd:I

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupResponse;->getAddNum()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->countOfAdd:I

    .line 181
    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->countOfUpdate:I

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupResponse;->getUpdateNum()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->countOfUpdate:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;->removeDate()V

    goto :goto_0

    .line 184
    .end local v0    # "backupResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupResponse;
    .end local v1    # "result":I
    :catchall_0
    move-exception v2

    .line 186
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;->removeDate()V

    .line 187
    throw v2
.end method
