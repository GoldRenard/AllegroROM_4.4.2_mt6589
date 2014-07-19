.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarRestoreTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;
.source "CalendarRestoreTask.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V
    .locals 0
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 25
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarRestoreTask;->context:Landroid/content/Context;

    .line 26
    return-void
.end method


# virtual methods
.method protected startCalendarTask()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 31
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/CalendarStep;

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarRestoreTask;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->currentUser:Ljava/lang/String;

    invoke-direct {v4, p0, v6, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/CalendarStep;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    .local v4, "step":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/CalendarStep;
    :try_start_0
    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/CalendarStep;->doCheckSum()Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;

    move-result-object v3

    .line 35
    .local v3, "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    if-eqz v3, :cond_2

    .line 36
    invoke-virtual {v4, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/CalendarStep;->doAction(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarRestoreResponse;

    move-result-object v0

    .line 37
    .local v0, "RestoreResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarRestoreResponse;
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v4, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/CalendarStep;->handleResult(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarRestoreResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    move-result-object v2

    .line 39
    .local v2, "r":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;
    iget v5, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->result:I

    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 50
    .end local v0    # "RestoreResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarRestoreResponse;
    .end local v2    # "r":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;
    .end local v3    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    :goto_0
    return-void

    .line 41
    .restart local v0    # "RestoreResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarRestoreResponse;
    .restart local v3    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    .end local v0    # "RestoreResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarRestoreResponse;
    .end local v3    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 45
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    :cond_2
    const/4 v5, 0x0

    :try_start_1
    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected startMainEventTask()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 55
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/MainEventStep;

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarRestoreTask;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->currentUser:Ljava/lang/String;

    invoke-direct {v4, p0, v6, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/MainEventStep;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    .local v4, "step":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/MainEventStep;
    :try_start_0
    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/MainEventStep;->doCheckSum()Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;

    move-result-object v3

    .line 59
    .local v3, "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    if-eqz v3, :cond_2

    .line 60
    invoke-virtual {v4, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/MainEventStep;->doAction(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;

    move-result-object v0

    .line 61
    .local v0, "RestoreResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v4, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/MainEventStep;->handleResult(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    move-result-object v2

    .line 63
    .local v2, "r":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;
    iget v5, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->opAdd:I

    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opAddCount:I

    .line 64
    iget v5, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->opDelete:I

    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opDeleteCount:I

    .line 65
    iget v5, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->opUpdate:I

    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/AbsCalendarTask;->opUpdateCount:I

    .line 66
    iget v5, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->result:I

    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 77
    .end local v0    # "RestoreResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;
    .end local v2    # "r":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;
    .end local v3    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    :goto_0
    return-void

    .line 68
    .restart local v0    # "RestoreResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;
    .restart local v3    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v0    # "RestoreResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;
    .end local v3    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 72
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    :cond_2
    const/4 v5, 0x0

    :try_start_1
    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected startSubEventTask()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 82
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/SubEventStep;

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarRestoreTask;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->currentUser:Ljava/lang/String;

    invoke-direct {v4, p0, v6, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/SubEventStep;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    .local v4, "step":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/SubEventStep;
    :try_start_0
    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/SubEventStep;->doCheckSum()Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;

    move-result-object v3

    .line 86
    .local v3, "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    if-eqz v3, :cond_2

    .line 87
    invoke-virtual {v4, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/SubEventStep;->doAction(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;

    move-result-object v0

    .line 88
    .local v0, "RestoreResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v4, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/restore/SubEventStep;->handleResult(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    move-result-object v2

    .line 90
    .local v2, "r":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;
    iget v5, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->result:I

    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 101
    .end local v0    # "RestoreResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;
    .end local v2    # "r":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;
    .end local v3    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    :goto_0
    return-void

    .line 92
    .restart local v0    # "RestoreResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;
    .restart local v3    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 98
    .end local v0    # "RestoreResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;
    .end local v3    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 96
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
    :cond_2
    const/4 v5, 0x0

    :try_start_1
    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
