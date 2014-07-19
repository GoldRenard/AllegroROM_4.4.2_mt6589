.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
.source "SmsDistributedController.java"


# static fields
.field public static final OPERATE_TYPE_BACKUP_CONVERSATION:I = 0x1

.field public static final OPERATE_TYPE_BACKUP_ITEMS:I = 0x2

.field public static final OPERATE_TYPE_RESTORE_CONVERSATION:I = 0x3

.field public static final OPERATE_TYPE_RESTORE_ITEMS:I = 0x4

.field public static final PROBLEM_GET_SMS_OPERATE_TYPE:Ljava/lang/String; = "PROBLEM_GET_SMS_OPERATE_TYPE"


# instance fields
.field private smsType:Ljava/lang/Integer;

.field private subTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    .prologue
    .line 35
    invoke-direct {p0, p2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 36
    instance-of v0, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    if-eqz v0, :cond_0

    .line 37
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->smsType:Ljava/lang/Integer;

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->smsType:Ljava/lang/Integer;

    goto :goto_0
.end method

.method private findSmsTask()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x0

    .line 62
    .local v0, "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->smsType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 63
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedConversationBackupTask;-><init>(Landroid/content/Context;)V

    .line 71
    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :cond_1
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->smsType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 65
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedSmsBackupTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/backup/SelectedSmsBackupTask;-><init>(Landroid/content/Context;)V

    .line 66
    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->smsType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 67
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedConversationRestoreTask;-><init>(Landroid/content/Context;)V

    .line 68
    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->smsType:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 69
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/restore/SelectedSmsRestoreTask;-><init>(Landroid/content/Context;)V

    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    goto :goto_0
.end method

.method private resolveData()V
    .locals 3

    .prologue
    .line 74
    const-string v1, "PROBLEM_GET_SMS_OPERATE_TYPE"

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->getParamList(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    .local v0, "param":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 76
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "param":Ljava/lang/Object;
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->smsType:Ljava/lang/Integer;

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->smsType:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->smsType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    .line 79
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "PROBLEM_GET_SMS_BACKUP_TYPE is empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :cond_2
    return-void
.end method

.method private runSmsTask()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->findSmsTask()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->subTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    .line 52
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->subTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PROBLEM_GET_SMS_BACKUP_TYPE parameter is error."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->subTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    .line 56
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->subTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProblemResolver(Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V

    .line 57
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->subTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->start()V

    .line 58
    return-void
.end method


# virtual methods
.method public afterRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;)V
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 105
    invoke-super {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->afterRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;)V

    .line 106
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->subTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->subTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->afterRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;)V

    .line 109
    :cond_0
    return-void
.end method

.method public beforeRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)Z
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "retryReasonException"    # Ljava/lang/Exception;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->subTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->subTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->beforeRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)Z

    .line 116
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->beforeRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)Z

    move-result v0

    return v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->cancel()V

    .line 99
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->subTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->subTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->cancel()V

    .line 102
    :cond_0
    return-void
.end method

.method protected getParamList(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "problemKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    invoke-interface {v1, p1, v0}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    .line 86
    :cond_0
    return-object v0
.end method

.method protected notifyFinish()V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method protected notifyProgress(F)V
    .locals 0
    .param p1, "current"    # F

    .prologue
    .line 124
    return-void
.end method

.method protected notifySubProgress(II)V
    .locals 0
    .param p1, "current"    # I
    .param p2, "total"    # I

    .prologue
    .line 127
    return-void
.end method

.method protected reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "userName"    # Ljava/lang/String;
    .param p4, "result"    # I
    .param p5, "cost"    # J
    .param p7, "operateType"    # Ljava/lang/String;
    .param p8, "changeNum"    # I

    .prologue
    .line 94
    return-void
.end method

.method protected startTask()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->resolveData()V

    .line 46
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;->runSmsTask()V

    .line 47
    return-void
.end method
