.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;
.source "SelectedConversationRestoreTask.java"


# instance fields
.field private conversationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;"
        }
    .end annotation
.end field

.field private excludeIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    .prologue
    .line 32
    invoke-direct {p0, p2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "conversationList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;>;"
    .local p3, "excludeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    .line 42
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->conversationList:Ljava/util/List;

    .line 43
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->excludeIds:Ljava/util/List;

    .line 44
    return-void
.end method

.method private bactchRestoreSmsByChecksum(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;)V
    .locals 1
    .param p1, "smsChecksumResp"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;->hasSAdd()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;->hasDiff()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->mockProgress()V

    .line 90
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->batchRestoreSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;)V

    goto :goto_0
.end method

.method private batchRestoreSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;)V
    .locals 4
    .param p1, "smsChecksumResp"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->getDefSmsRestoreRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;

    move-result-object v1

    .line 95
    .local v1, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;
    const/16 v3, 0x6b

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->setProgressStep(I)V

    .line 96
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;->getSAdd()Lorg/json/JSONArray;

    move-result-object v2

    .line 97
    .local v2, "sAddJson":Lorg/json/JSONArray;
    invoke-direct {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->oneMonthRestoreSms2Db(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;Lorg/json/JSONArray;)V

    .line 98
    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-eqz v3, :cond_0

    .line 106
    :goto_0
    return-void

    .line 101
    :cond_0
    const/16 v3, 0x6c

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->setProgressStep(I)V

    .line 102
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;->getDiff()Lorg/json/JSONArray;

    move-result-object v0

    .line 103
    .local v0, "diffJson":Lorg/json/JSONArray;
    invoke-direct {p0, v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->oneMonthRestoreSms2Db(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;Lorg/json/JSONArray;)V

    .line 104
    const/16 v3, 0x6d

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->setProgressStep(I)V

    .line 105
    const/high16 v3, 0x3f800000

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    goto :goto_0
.end method

.method private downloadSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;
    .locals 5
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->singleRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;

    move-result-object v0

    .line 129
    .local v0, "backupResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->getResult()I

    move-result v1

    .line 130
    .local v1, "result":I
    if-eqz v1, :cond_0

    .line 131
    const/4 v1, -0x2

    .line 132
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u670d\u52a1\u5668\u8fd4\u56de\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 134
    :cond_0
    return-object v0
.end method

.method private oneMonthRestoreSms2Db(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;Lorg/json/JSONArray;)V
    .locals 7
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;
    .param p2, "jsonArray"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 110
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 126
    :cond_0
    return-void

    .line 113
    :cond_1
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 114
    .local v4, "total":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 116
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v5}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v5

    .line 118
    :cond_2
    invoke-virtual {p2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 119
    .local v1, "oneMonth":Lorg/json/JSONObject;
    invoke-virtual {p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;->addRestoreBodyByMonth(Lorg/json/JSONObject;)V

    .line 120
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->downloadSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;

    move-result-object v2

    .line 121
    .local v2, "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreResponse;->getAllSms()Ljava/util/List;

    move-result-object v3

    .line 122
    .local v3, "smsAllCloud":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/Sms;>;"
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->excludeIds:Ljava/util/List;

    invoke-virtual {p0, v3, v5, v6, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->saveSms2Db(Ljava/util/List;Ljava/util/List;II)V

    .line 123
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsRestoreRequest;->removeDate()V

    .line 124
    invoke-virtual {p0, v0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifySubProgress(II)V

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private resolveData()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->conversationList:Ljava/util/List;

    if-nez v2, :cond_0

    .line 67
    const-string v2, "PROBLEM_GET_SMS_CONVERSATION"

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->getParamList(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 68
    .local v1, "param":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 69
    check-cast v1, Ljava/util/List;

    .end local v1    # "param":Ljava/lang/Object;
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->conversationList:Ljava/util/List;

    .line 72
    :cond_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->conversationList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 73
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsRestoreManageImpl;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getHttpMachine()Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsRestoreManageImpl;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;)V

    .line 74
    .local v0, "manage":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsManage;
    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsManage;->queryConversation(II)Ljava/util/List;

    .line 76
    .end local v0    # "manage":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/manage/SmsManage;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->excludeIds:Ljava/util/List;

    if-nez v2, :cond_2

    .line 77
    const-string v2, "PROBLEM_GET_SMS_EXCLUDE_IDS"

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->getParamList(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 78
    .restart local v1    # "param":Ljava/lang/Object;
    instance-of v2, v1, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 79
    check-cast v1, Ljava/util/List;

    .end local v1    # "param":Ljava/lang/Object;
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->excludeIds:Ljava/util/List;

    .line 82
    :cond_2
    return-void
.end method


# virtual methods
.method protected startTaskWithSmoothProgress()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->start:J

    .line 50
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->resolveData()V

    .line 51
    new-instance v9, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask$1;

    invoke-direct {v9, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;)V

    .line 58
    .local v9, "checksumListener":Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->conversationList:Ljava/util/List;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v9, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->startChecksumTask(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;

    move-result-object v10

    .line 59
    .local v10, "smsChecksumResp":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;
    invoke-direct {p0, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;->bactchRestoreSmsByChecksum(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;)V

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->cost:J

    .line 61
    const-string v1, "LCPSms"

    const-string v2, "SMS_RESTORE"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 62
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->cost:J

    const-string v7, "1"

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->countOfAdd:I

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->countOfUpdate:I

    add-int/2addr v8, v0

    move-object v0, p0

    .line 61
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SmsRestoreTaskAdapter;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 63
    return-void
.end method
