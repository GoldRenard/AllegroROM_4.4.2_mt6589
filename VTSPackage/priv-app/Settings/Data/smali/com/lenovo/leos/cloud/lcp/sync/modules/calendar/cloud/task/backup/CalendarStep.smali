.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/backup/CalendarStep;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;
.source "CalendarStep.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarBackupResponse;",
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
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    return-void
.end method


# virtual methods
.method public doAction(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarBackupResponse;
    .locals 7
    .param p1, "response"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 45
    const/16 v5, 0x3eb

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->setProgressStatus(I)V

    .line 47
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->task:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-direct {v3, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncRequestBuilder;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

    .line 49
    .local v3, "requestBuilder":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/SyncRequestBuilder;
    :try_start_0
    invoke-interface {v3, p1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/SyncRequestBuilder;->buildBackupRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarBackupRequest;

    .line 51
    .local v0, "backupRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarBackupRequest;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarBackupRequest;->getBackupReqSize()I

    move-result v5

    if-lez v5, :cond_0

    .line 52
    const/16 v5, 0x3ec

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->setProgressStatus(I)V

    .line 54
    const-string v5, "v1/calendarbackup.action"

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->buildURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v4

    .line 56
    .local v4, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;->toBytes()[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 58
    .local v2, "json":Ljava/lang/String;
    :try_start_1
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarBackupResponse;

    invoke-direct {v5, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarBackupResponse;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    const/16 v6, 0x3ed

    :try_start_2
    invoke-virtual {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->setProgressStatus(I)V

    .line 63
    .end local v2    # "json":Ljava/lang/String;
    .end local v4    # "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :goto_0
    return-object v5

    .line 59
    .restart local v2    # "json":Ljava/lang/String;
    .restart local v4    # "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :catchall_0
    move-exception v5

    .line 60
    const/16 v6, 0x3ed

    invoke-virtual {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->setProgressStatus(I)V

    .line 61
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    .end local v0    # "backupRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarBackupRequest;
    .end local v2    # "json":Ljava/lang/String;
    .end local v4    # "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v5, v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 63
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "backupRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarBackupRequest;
    :cond_0
    const/4 v5, 0x0

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

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/backup/CalendarStep;->doAction(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarBackupResponse;

    move-result-object v0

    return-object v0
.end method

.method public doCheckSum()Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 30
    :try_start_0
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarChecksumBuilder;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarChecksumBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarChecksumBuilder;->buildChecksumRequest(Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumRequest;

    move-result-object v0

    .line 31
    .local v0, "checksumRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumRequest;
    const/16 v4, 0x3ea

    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->setProgressStatus(I)V

    .line 32
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumRequest;->getCalendarChecksumSize()I

    move-result v4

    if-lez v4, :cond_0

    .line 33
    const-string v4, "v1/checksum.action"

    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->buildURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v3

    .line 34
    .local v3, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;->toBytes()[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v2

    .line 35
    .local v2, "json":Ljava/lang/String;
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;

    invoke-direct {v4, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .end local v2    # "json":Ljava/lang/String;
    .end local v3    # "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :goto_0
    return-object v4

    .line 37
    .end local v0    # "checksumRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumRequest;
    :catch_0
    move-exception v1

    .line 38
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v4, v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v4

    .line 40
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "checksumRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumRequest;
    :cond_0
    const/4 v4, 0x0

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
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/backup/CalendarStep;->doCheckSum()Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;

    move-result-object v0

    return-object v0
.end method

.method public handleResult(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarBackupResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;
    .locals 4
    .param p1, "response"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarBackupResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 73
    :try_start_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/BaseStep;->task:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-direct {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

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
    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarBackupResponse;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/backup/CalendarStep;->handleResult(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarBackupResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    move-result-object v0

    return-object v0
.end method
