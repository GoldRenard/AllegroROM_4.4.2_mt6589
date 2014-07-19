.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;
.source "SelectedConversationBackupTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;
    }
.end annotation


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
    .line 35
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    .prologue
    .line 32
    invoke-direct {p0, p2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

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
    .line 46
    .local p2, "conversationList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;>;"
    .local p3, "excludeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    .line 47
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->conversationList:Ljava/util/List;

    .line 48
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->excludeIds:Ljava/util/List;

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;)Ljava/util/List;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->excludeIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;)Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->conversationList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    return-object v0
.end method

.method private batchUploadSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;)V
    .locals 3
    .param p1, "smsChecksumResp"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->getDefSmsBackupRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;

    move-result-object v1

    .line 110
    .local v1, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->initBackupVisitor(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;

    move-result-object v0

    .line 112
    .local v0, "backupContactVisitor":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;
    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;->traverseContactCAdd(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse$Visitor;)V

    .line 113
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->tryCanceled()V

    .line 116
    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;->traverseContactDiff(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse$Visitor;)V

    .line 117
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->tryCanceled()V

    .line 119
    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->singleBackup(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;)Z

    .line 120
    const/high16 v2, 0x3f800000

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    .line 121
    return-void
.end method

.method private getAllConversation()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->queryConversation(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private initBackupVisitor(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;
    .locals 5
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;

    .prologue
    .line 125
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;)V

    .line 126
    .local v1, "backupContactVisitor":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->conversationList:Ljava/util/List;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->buildSmsConversWhere(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "conversWhere":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;->getSmsSize(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 128
    .local v0, "allTotal":I
    invoke-virtual {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->setAllTotal(I)V

    .line 129
    invoke-virtual {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$SmsBackupContactVisitor;->setRequestBody(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/SmsBackupRequest;)V

    .line 130
    return-object v1
.end method

.method private initStepProgressListener()Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$1;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;)V

    .line 72
    .local v0, "checksumListener":Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    return-object v0
.end method

.method private resolveData()V
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->conversationList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 77
    const-string v1, "PROBLEM_GET_SMS_CONVERSATION"

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->getParamList(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 78
    .local v0, "param":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 79
    check-cast v0, Ljava/util/List;

    .end local v0    # "param":Ljava/lang/Object;
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->conversationList:Ljava/util/List;

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->conversationList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 83
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->getAllConversation()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->conversationList:Ljava/util/List;

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->excludeIds:Ljava/util/List;

    if-nez v1, :cond_2

    .line 86
    const-string v1, "PROBLEM_GET_SMS_EXCLUDE_IDS"

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->getParamList(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 87
    .restart local v0    # "param":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 88
    check-cast v0, Ljava/util/List;

    .end local v0    # "param":Ljava/lang/Object;
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->excludeIds:Ljava/util/List;

    .line 91
    :cond_2
    return-void
.end method

.method private startActionTask(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;)V
    .locals 1
    .param p1, "smsChecksumResp"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;->hasCAdd()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;->hasDiff()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->mockProgress()V

    .line 104
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->batchUploadSms(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;)V

    goto :goto_0
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
    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->start:J

    .line 56
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->resolveData()V

    .line 57
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->initStepProgressListener()Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    move-result-object v9

    .line 58
    .local v9, "checksumListener":Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->conversationList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v9, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->startChecksumTask(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;

    move-result-object v10

    .line 59
    .local v10, "smsChecksumResp":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;
    invoke-direct {p0, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;->startActionTask(Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;)V

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->cost:J

    .line 61
    const-string v1, "LCPSms"

    const-string v2, "SMS_BACKUP"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 62
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->cost:J

    const-string v7, "1"

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->countOfAdd:I

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->countOfUpdate:I

    add-int/2addr v8, v0

    move-object v0, p0

    .line 61
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SmsBackupTaskAdapter;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 63
    return-void
.end method
