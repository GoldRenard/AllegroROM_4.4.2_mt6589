.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;
.source "CalllogBackupTask.java"


# static fields
.field private static final HALF_PROGRESS:F = 0.5f

.field private static final MOCK_SLEEP_800:J = 0x320L

.field private static final TAG:Ljava/lang/String; = "CalllogBackupTask"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CALLLOG:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private buildAddCalllog(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;)V
    .locals 1
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;
    .param p2, "checksum"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v0

    .line 139
    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;)V

    invoke-virtual {p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->traverseContactCAdd(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse$Visitor;)V

    .line 171
    return-void
.end method

.method private buildDiffSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;)V
    .locals 1
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;
    .param p2, "checksum"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v0

    .line 178
    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$2;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask$2;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;)V

    invoke-virtual {p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->traverseContactDiff(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse$Visitor;)V

    .line 211
    return-void
.end method

.method private buildSmsBackupRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;
    .locals 3
    .param p1, "checksum"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 120
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "deviceId":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;

    invoke-direct {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;-><init>(Ljava/lang/String;)V

    .line 123
    .local v1, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;
    invoke-direct {p0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;->buildAddCalllog(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;)V

    .line 125
    const/high16 v2, 0x3f000000

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->notifyProgress(F)V

    .line 127
    invoke-direct {p0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;->buildDiffSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;)V

    .line 129
    const/high16 v2, 0x3f800000

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->notifyProgress(F)V

    .line 131
    return-object v1
.end method

.method private doCalllogBackup(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogBackupResponse;
    .locals 8
    .param p1, "checksum"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v7, 0x3f800000

    .line 76
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->hasCAdd()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->hasDiff()Z

    move-result v5

    if-nez v5, :cond_0

    .line 77
    const/4 v5, 0x0

    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 78
    const/4 v5, 0x0

    .line 98
    :goto_0
    return-object v5

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;->mockEncrpyt()V

    .line 83
    invoke-virtual {p0, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->notifyProgress(F)V

    .line 85
    const-string v0, "callhistory/api/v2/backup?gzip=true"

    .line 86
    .local v0, "calllogUrl":Ljava/lang/String;
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v2

    .line 87
    .local v2, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getCalllogServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "sms.cloud.lps.lenovo.com"

    invoke-direct {v4, v5, v0, v2, v6}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 89
    .local v4, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;->mockGzip()V

    .line 91
    invoke-virtual {p0, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->notifyProgress(F)V

    .line 93
    const/16 v5, 0x37

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 94
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;->buildSmsBackupRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;

    move-result-object v3

    .line 96
    .local v3, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;
    const/16 v5, 0x38

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 97
    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogBackupRequest;->toBytes()[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "json":Ljava/lang/String;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogBackupResponse;

    invoke-direct {v5, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogBackupResponse;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private mockEncrpyt()V
    .locals 3

    .prologue
    .line 102
    const/16 v1, 0x35

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 104
    const-wide/16 v1, 0x320

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CalllogBackupTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private mockGzip()V
    .locals 3

    .prologue
    .line 111
    const/16 v1, 0x36

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 113
    const-wide/16 v1, 0x320

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "CalllogBackupTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getParams()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 69
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "countOfAdd"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->countOfAdd:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 70
    const-string v1, "countOfUpdate"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->countOfUpdate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    return-object v0
.end method

.method protected onStartCalllogTask(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;)V
    .locals 2
    .param p1, "checksum"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;->doCalllogBackup(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogBackupResponse;

    move-result-object v0

    .line 55
    .local v0, "backupResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogBackupResponse;
    if-nez v0, :cond_0

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 64
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogBackupResponse;->getResult()I

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    const/4 v1, -0x2

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogBackupResponse;->getAddNum()I

    move-result v1

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->countOfAdd:I

    goto :goto_0
.end method

.method protected startTask()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 41
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->calllogDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, v2, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao;->getCalllogCount(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 42
    .local v9, "calllogCount":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 43
    :cond_0
    const/16 v0, 0x6e

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 47
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->cost:J

    .line 48
    const-string v1, "LCPCalllog"

    const-string v2, "CALLLOG_BACKUP"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 49
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->cost:J

    const-string v7, "0"

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->countOfAdd:I

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->countOfUpdate:I

    add-int/2addr v8, v0

    move-object v0, p0

    .line 48
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 50
    return-void

    .line 45
    :cond_1
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->startTask()V

    goto :goto_0
.end method
