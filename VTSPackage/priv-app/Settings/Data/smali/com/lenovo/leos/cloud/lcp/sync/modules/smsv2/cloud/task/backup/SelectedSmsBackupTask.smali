.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedSmsBackupTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;
.source "SelectedSmsBackupTask.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    .prologue
    .line 22
    invoke-direct {p0, p2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "chooser"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    .prologue
    .line 34
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedSmsBackupTask;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    .line 35
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedSmsBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    return-object v0
.end method

.method private backupOtherMode()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->getDefSmsBackupRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;

    move-result-object v0

    .line 65
    .local v0, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->isSelectedAll()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedSmsBackupTask;->doBackupSelectedAllSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;)V

    .line 72
    :goto_0
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->singleBackup(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;)Z

    .line 73
    return-void

    .line 69
    :cond_0
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedSmsBackupTask;->doBackupBySmsList(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;)V

    goto :goto_0
.end method

.method private doBackupBySmsList(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;)V
    .locals 5
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->getSmsList()Ljava/util/List;

    move-result-object v2

    .line 113
    .local v2, "smsList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;>;"
    if-nez v2, :cond_1

    .line 124
    :cond_0
    return-void

    .line 116
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 117
    .local v0, "allTotal":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 118
    int-to-float v3, v1

    const/high16 v4, 0x3f800000

    mul-float/2addr v3, v4

    int-to-float v4, v0

    div-float/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->notifyStepProgress(F)V

    .line 119
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;

    invoke-virtual {p1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;->addSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->batchUploadSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private doBackupSelectedAllSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;)V
    .locals 8
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;

    .prologue
    const/4 v4, 0x0

    .line 76
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedSmsBackupTask;->getSelectWhereByTimeOrKeyword()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "where":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->getWhereArgs()[Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "whereArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    invoke-interface {v0, v2, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->getSmsSize(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 79
    .local v7, "allTotal":I
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedSmsBackupTask$1;

    invoke-direct {v1, p0, v7, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedSmsBackupTask$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedSmsBackupTask;ILcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;)V

    .line 98
    .local v1, "visitor":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->traverseSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;II)Z

    .line 99
    return-void
.end method

.method private getSelectWhereByTimeOrKeyword()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->getStartTime()Ljava/lang/Long;

    move-result-object v2

    .line 104
    .local v2, "startTime":Ljava/lang/Long;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->getEndTime()Ljava/lang/Long;

    move-result-object v0

    .line 105
    .local v0, "endTime":Ljava/lang/Long;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->getKeyword()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "keyword":Ljava/lang/String;
    invoke-static {v2, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->buildTimeAndKeywordWhere(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method protected resolveChooseResultData()V
    .locals 3

    .prologue
    .line 51
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    if-nez v1, :cond_0

    .line 52
    const-string v1, "PROBLEM_GET_SMS_CHOOSE_RESULT"

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->getParamList(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 53
    .local v0, "param":Ljava/lang/Object;
    instance-of v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    if-eqz v1, :cond_0

    .line 54
    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    .end local v0    # "param":Ljava/lang/Object;
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    if-nez v1, :cond_1

    .line 58
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cant find chooseResult, can\'t do backup task!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_1
    return-void
.end method

.method protected startTaskWithSmoothProgress()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->start:J

    .line 41
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->mockProgressStep(I)V

    .line 42
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->mockProgressStep(I)V

    .line 43
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedSmsBackupTask;->resolveChooseResultData()V

    .line 44
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->mockProgress()V

    .line 45
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedSmsBackupTask;->backupOtherMode()V

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->cost:J

    .line 47
    const-string v1, "LCPSms"

    const-string v2, "SMS_BACKUP"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 48
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->cost:J

    const-string v7, "0"

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->countOfAdd:I

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->countOfUpdate:I

    add-int/2addr v8, v0

    move-object v0, p0

    .line 47
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 49
    return-void
.end method
