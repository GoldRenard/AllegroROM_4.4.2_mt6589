.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;
.source "SmsRestoreTaskAdapter.java"


# static fields
.field public static final MAX_OPS_IN_ONE_BATCH:I = 0x32

.field public static final MAX_UPLOAD_SMS_SIZE:I = 0x3e8

.field private static final MOCK_SLEEP_TIME:I = 0x320

.field public static final ONGOING_RESOTRE_AFT:I = 0x6d

.field public static final ONGOING_RESOTRE_DIFF_NET:I = 0x6c

.field public static final ONGOING_RESOTRE_SADD_NET:I = 0x6b

.field public static final SMS_TYPE_CHECKSUM:I = 0x2

.field public static final SMS_TYPE_NO_CHECKSUM:I = 0x1

.field public static final SMS_TYPE_NO_OPERATE:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "SmsTaskAdapter"


# instance fields
.field protected backupType:I

.field protected cost:J

.field protected countOfAdd:I

.field protected countOfUpdate:I

.field private ops:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field protected start:J

.field protected virtualTaskProgressNumber:I


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V
    .locals 1
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->virtualTaskProgressNumber:I

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->ops:Ljava/util/List;

    .line 47
    return-void
.end method

.method private commit()V
    .locals 4

    .prologue
    .line 236
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->ops:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->ops:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 241
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->SMS_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->ops:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->ops:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v1, "ab"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SmsBatch->applyBatch"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-string v1, "SmsTaskAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->ops:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 245
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 247
    .local v0, "e":Landroid/content/OperationApplicationException;
    :try_start_2
    const-string v1, "ac"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SmsBatch->applyBatch"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v1, "SmsTaskAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 259
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->ops:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 249
    .end local v0    # "e":Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    :try_start_3
    const-string v1, "SmsTaskAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 259
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->ops:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 255
    .end local v0    # "e":Ljava/lang/UnsupportedOperationException;
    :catch_3
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v1, "ac"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SmsBatch->applyBatch"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v1, "SmsTaskAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 259
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->ops:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 258
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 259
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->ops:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 260
    throw v1
.end method

.method private doSmsRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;
    .locals 5
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 184
    const-string v1, "pcs/v3/revert?gzip=true"

    .line 185
    .local v1, "restoreUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->getSmsURIRoller(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v2

    .line 186
    .local v2, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;->toBytes()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "respStr":Ljava/lang/String;
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;

    invoke-direct {v3, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method private insertSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)V
    .locals 2
    .param p1, "sms"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->ops:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->buildInsertSms2Opertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)V

    .line 273
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->isCommit()V

    .line 274
    return-void
.end method

.method private isCommit()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->ops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->commit()V

    goto :goto_0
.end method

.method private isMockProgress()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->ops:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->mockProgress()V

    .line 228
    :cond_0
    return-void
.end method

.method private updateSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)V
    .locals 2
    .param p1, "sms"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->ops:Ljava/util/List;

    invoke-interface {v0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->buildUpdateSms2Opertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)V

    .line 268
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->isCommit()V

    .line 269
    return-void
.end method


# virtual methods
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
    .line 152
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 153
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "countOfAdd"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->countOfAdd:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    const-string v1, "countOfUpdate"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->countOfUpdate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
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

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->mockProgressStep(I)V

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

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->mockProgressStep(I)V

    .line 93
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
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->setProgressStep(I)V

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

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

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

    .line 106
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->curProgressStep:I

    sparse-switch v0, :sswitch_data_0

    .line 150
    :goto_0
    return-void

    .line 108
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    goto :goto_0

    .line 111
    :sswitch_1
    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    goto :goto_0

    .line 114
    :sswitch_2
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->virtualTaskProgressNumber:I

    add-int/lit8 v0, v0, 0x1

    .line 115
    const/high16 v1, 0x42200000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 114
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    goto :goto_0

    .line 118
    :sswitch_3
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->virtualTaskProgressNumber:I

    add-int/lit8 v0, v0, 0x29

    .line 119
    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 118
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    goto :goto_0

    .line 122
    :sswitch_4
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->virtualTaskProgressNumber:I

    add-int/lit8 v0, v0, 0x2a

    .line 123
    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 122
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    goto :goto_0

    .line 126
    :sswitch_5
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->virtualTaskProgressNumber:I

    add-int/lit8 v0, v0, 0x2b

    .line 127
    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 126
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    goto :goto_0

    .line 141
    :sswitch_6
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->virtualTaskProgressNumber:I

    add-int/lit8 v0, v0, 0x5f

    .line 142
    const/high16 v1, 0x40800000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 141
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    goto :goto_0

    .line 145
    :sswitch_7
    const/high16 v0, 0x42c80000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    goto :goto_0

    .line 106
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x64 -> :sswitch_1
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_4
        0x68 -> :sswitch_5
        0x6d -> :sswitch_6
        0x7fffffff -> :sswitch_7
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
    .line 279
    new-instance v5, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v5}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 280
    .local v5, "params":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    const/4 v0, 0x1

    const-string v1, "userName"

    invoke-virtual {v5, v0, v1, p3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 281
    const/4 v0, 0x2

    const-string v1, "smsNum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 282
    const/4 v0, 0x3

    const-string v1, "isAuto"

    const-string v2, "0"

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 283
    const/4 v0, 0x5

    const-string v1, "APPTOKEN"

    const-string v2, "PJPRUFMX2B3"

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 285
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

    .line 287
    return-void
.end method

.method protected saveSms2Db(Ljava/util/List;Ljava/util/List;II)V
    .locals 6
    .param p3, "total"    # I
    .param p4, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "smsAllCloud":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;>;"
    .local p2, "excludeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-eqz v4, :cond_0

    .line 222
    :goto_0
    return-void

    .line 194
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 221
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->commit()V

    goto :goto_0

    .line 195
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    .line 196
    .local v2, "sms":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 197
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v4}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v4

    .line 199
    :cond_2
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 194
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 202
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 205
    :cond_5
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->getSmsUid(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->buildAdlerCrcKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 206
    .local v3, "smsKey":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->cacheSmsKey2Locks:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 207
    .local v0, "cacheLocked":Ljava/lang/Integer;
    if-nez v0, :cond_7

    .line 208
    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->insertSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)V

    .line 209
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->countOfAdd:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->countOfAdd:I

    .line 211
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->cacheSmsKey2Locks:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getLocked()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_6
    :goto_3
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->isMockProgress()V

    .line 217
    if-eqz p4, :cond_3

    if-eqz p3, :cond_3

    .line 218
    add-int v4, p4, v1

    int-to-float v4, v4

    const/high16 v5, 0x3f800000

    mul-float/2addr v4, v5

    int-to-float v5, p3

    div-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->notifyStepProgress(F)V

    goto :goto_2

    .line 212
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;->getLocked()I

    move-result v5

    if-eq v4, v5, :cond_6

    .line 213
    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->updateSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)V

    .line 214
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->countOfUpdate:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->countOfUpdate:I

    goto :goto_3
.end method

.method protected setProgressStep(I)V
    .locals 3
    .param p1, "progressStep"    # I

    .prologue
    .line 50
    const-string v0, "SmsTaskAdapter.java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "change progress status : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->curProgressStep:I

    if-ge p1, v0, :cond_0

    .line 52
    const-string v0, "SmsTaskAdapter.java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The current progressStep( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") should bigger than this.progerssStep( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->curProgressStep:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->notifyStepProgress(F)V

    .line 56
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->curProgressStep:I

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->notifyStepProgress(F)V

    .line 58
    return-void
.end method

.method protected singleRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;
    .locals 2
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 173
    :try_start_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;->getDataArray()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 174
    const-string v0, "SmsTaskAdapter"

    const-string v1, "requestBody\u91cc\u9762\u6ca1\u6709data\u6570\u636e\uff0c\u76f4\u63a5\u8fd4\u56detrue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;->removeDate()V

    .line 175
    const/4 v0, 0x0

    .line 177
    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->doSmsRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;->removeDate()V

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    .line 180
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;->removeDate()V

    .line 181
    throw v0
.end method

.method protected tryCanceled()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v0

    .line 162
    :cond_0
    return-void
.end method
