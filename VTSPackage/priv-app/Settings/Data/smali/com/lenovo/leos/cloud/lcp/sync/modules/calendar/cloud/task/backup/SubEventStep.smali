.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/backup/SubEventStep;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;
.source "SubEventStep.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupResponse;",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "task"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "username"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public doAction(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupResponse;
    .locals 7
    .param p1, "response"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 51
    const/16 v4, 0x3f5

    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->setProgressStatus(I)V

    .line 52
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->context:Landroid/content/Context;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->task:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-direct {v2, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncRequestBuilder;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

    .line 54
    .local v2, "requestBuilder":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/SyncRequestBuilder;
    :try_start_0
    invoke-interface {v2, p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/SyncRequestBuilder;->buildBackupRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;

    .line 56
    .local v0, "backupRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventBackupRequest;->getBackupReqSize()I

    move-result v4

    if-lez v4, :cond_0

    .line 57
    const/16 v4, 0x3f6

    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->setProgressStatus(I)V

    .line 58
    const-string v4, "v1/partbackup.action"

    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->buildURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v3

    .line 60
    .local v3, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupResponse;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;->toBytes()[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v3, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupResponse;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v3    # "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :goto_0
    return-object v4

    .line 62
    .end local v0    # "backupRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;
    :catch_0
    move-exception v1

    .line 63
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v4, v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 65
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "backupRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupRequest;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public bridge synthetic doAction(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/backup/SubEventStep;->doAction(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupResponse;

    move-result-object v0

    return-object v0
.end method

.method public doCheckSum()Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 30
    const/16 v5, 0x3f3

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->setProgressStatus(I)V

    .line 31
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventChecksumBuilder;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->task:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-direct {v0, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventChecksumBuilder;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

    .line 33
    .local v0, "checksumBuilder":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/ChecksumBuilder;
    :try_start_0
    invoke-interface {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/ChecksumBuilder;->buildChecksumRequest(Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumRequest;

    move-result-object v1

    .line 34
    .local v1, "checksumRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumRequest;
    const/16 v5, 0x3f4

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->setProgressStatus(I)V

    .line 36
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumRequest;->getSubEventChecksumSize()I

    move-result v5

    if-lez v5, :cond_0

    .line 37
    const-string v5, "v1/checksum.action"

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->buildURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v4

    .line 39
    .local v4, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;->toBytes()[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v3

    .line 40
    .local v3, "json":Ljava/lang/String;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;

    invoke-direct {v5, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v3    # "json":Ljava/lang/String;
    .end local v4    # "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :goto_0
    return-object v5

    .line 42
    .end local v1    # "checksumRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumRequest;
    :catch_0
    move-exception v2

    .line 43
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v5, v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 45
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "checksumRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumRequest;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public bridge synthetic doCheckSum()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/backup/SubEventStep;->doCheckSum()Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;

    move-result-object v0

    return-object v0
.end method

.method public handleResult(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;
    .locals 4
    .param p1, "response"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 71
    const/16 v2, 0x3f7

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->setProgressStatus(I)V

    .line 73
    :try_start_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncResponseHandler;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->task:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-direct {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/SubEventSyncResponseHandler;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

    .line 74
    .local v1, "respHandler":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/SyncResponseHandler;
    invoke-interface {v1, p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/SyncResponseHandler;->handleBackupResponse(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 75
    .end local v1    # "respHandler":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/SyncResponseHandler;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v2, v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupResponse;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/backup/SubEventStep;->handleResult(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventBackupResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    move-result-object v0

    return-object v0
.end method
