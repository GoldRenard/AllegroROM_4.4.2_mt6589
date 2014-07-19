.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
.source "AbsSmsChecksumTask.java"


# static fields
.field public static final ONGOING_CHECKSUM_NET:I = 0x66

.field public static final ONGOING_CHECKSUM_PRE:I = 0x65

.field public static final ONGOING_CHECKSUM_RESTORE_NET:I = 0x66

.field public static final ONGOING_CHECKSUM_RESTORE_PRE:I = 0x65

.field public static final ONGOING_MOCK_ENCRPYT:I = 0x67

.field public static final ONGOING_MOCK_GZIP:I = 0x68

.field public static final PROBLEM_GET_SMS_CHOOSE_RESULT:Ljava/lang/String; = "PROBLEM_GET_SMS_CHOOSE_RESULT"

.field public static final PROBLEM_GET_SMS_CONVERSATION:Ljava/lang/String; = "PROBLEM_GET_SMS_CONVERSATION"

.field public static final PROBLEM_GET_SMS_EXCLUDE_IDS:Ljava/lang/String; = "PROBLEM_GET_SMS_EXCLUDE_IDS"

.field public static final STEP_ONGOING:I = 0x64


# instance fields
.field protected cacheSmsKey2Locks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private checksumBuilder:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;

.field protected chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

.field protected dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V
    .locals 3
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->cacheSmsKey2Locks:Ljava/util/Map;

    .line 49
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;

    invoke-direct {v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    .line 50
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->checksumBuilder:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;

    .line 52
    return-void
.end method

.method private getChecksumResponse(Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;
    .locals 6
    .param p1, "checksumListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/16 v4, 0x65

    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 77
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->checksumBuilder:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;

    .line 78
    invoke-virtual {v4, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->buildChecksumRequest(Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;

    move-result-object v0

    .line 79
    .local v0, "checksumRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->tryCanceled()V

    .line 80
    const/16 v4, 0x66

    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 81
    const-string v1, "pcs/v3/checksum?gzip=true"

    .line 82
    .local v1, "requestUrl":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->getSmsURIRoller(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v3

    .line 84
    .local v3, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumRequest;->toBytes()[B

    move-result-object v4

    const/4 v5, 0x1

    .line 83
    invoke-virtual {p0, v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v2

    .line 85
    .local v2, "respStr":Ljava/lang/String;
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;

    invoke-direct {v4, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;-><init>(Ljava/lang/String;)V

    return-object v4
.end method


# virtual methods
.method protected getParamList(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "problemKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 89
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    invoke-interface {v1, p1, v0}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    :cond_0
    return-object v0
.end method

.method protected getWhereArgs()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "whereArgs":[Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->chooseResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsChooseResult;->getKeyword()Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "keyword":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 131
    const-string v2, "%"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v4, :cond_0

    .line 132
    const-string v2, "%"

    const-string v3, "/%"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_0
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-le v2, v4, :cond_1

    .line 135
    const-string v2, "_"

    const-string v3, "/_"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    :cond_1
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    .end local v1    # "whereArgs":[Ljava/lang/String;
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "/"

    aput-object v3, v1, v2

    .line 139
    .restart local v1    # "whereArgs":[Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method protected notifyProgress(F)V
    .locals 2
    .param p1, "current"    # F

    .prologue
    .line 124
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->smoothProgress:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->setRealProgress(I)V

    .line 125
    return-void
.end method

.method protected notifyStart()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyStart()V

    .line 98
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 99
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->notifyProgress(F)V

    .line 100
    return-void
.end method

.method protected startChecksumTask(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;
    .locals 3
    .param p2, "checksumListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    .param p3, "isRestore"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;",
            "Z)",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "smsConversation":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/po/SmsConversation;>;"
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->checksumBuilder:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;

    invoke-virtual {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->setSmsConversation(Ljava/util/List;)V

    .line 57
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->checksumBuilder:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;

    invoke-virtual {v1, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->setRestore(Z)V

    .line 58
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->checksumBuilder:Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->cacheSmsKey2Locks:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/SmsConverChecksumBuilder;->setCacheSmsKey2Locks(Ljava/util/Map;)V

    .line 59
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->getChecksumResponse(Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;

    move-result-object v0

    .line 60
    .local v0, "checksumResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/protocol/ChecksumResponse;->getResult()I

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const/4 v1, -0x2

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->tryCanceled()V

    .line 64
    return-object v0
.end method

.method protected startTask()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->smoothProgress:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->start()V

    .line 111
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/AbsSmsChecksumTask;->startTaskWithSmoothProgress()V

    .line 113
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->smoothProgress:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->waitingForFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->smoothProgress:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->stop()V

    .line 118
    return-void

    .line 114
    :catchall_0
    move-exception v0

    .line 116
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->smoothProgress:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->stop()V

    .line 117
    throw v0
.end method

.method protected abstract startTaskWithSmoothProgress()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected tryCanceled()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v0

    .line 71
    :cond_0
    return-void
.end method
