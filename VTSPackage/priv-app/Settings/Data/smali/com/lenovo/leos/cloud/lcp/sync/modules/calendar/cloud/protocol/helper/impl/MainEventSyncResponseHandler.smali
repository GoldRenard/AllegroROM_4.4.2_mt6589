.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;
.super Ljava/lang/Object;
.source "MainEventSyncResponseHandler.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/SyncResponseHandler;


# instance fields
.field private context:Landroid/content/Context;

.field private currentUser:Ljava/lang/String;

.field private dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;

.field private superTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "superTask"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;->context:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;

    .line 30
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;->superTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    .line 31
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;->currentUser:Ljava/lang/String;

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;->currentUser:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;->superTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;

    return-object v0
.end method


# virtual methods
.method public handleBackupResponse(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;
    .locals 3
    .param p1, "response"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;
    .param p2, "stepProgressListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;-><init>()V

    .local v1, "tr":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;
    move-object v0, p1

    .line 38
    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventBackupResponse;

    .line 40
    .local v0, "eventResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventBackupResponse;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventBackupResponse;->getResult()I

    move-result v2

    iput v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->result:I

    .line 41
    iget v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->result:I

    if-nez v2, :cond_0

    .line 42
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler$1;

    invoke-direct {v2, p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;)V

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventBackupResponse;->tranverseResponse(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventBackupResponse$EventBackupVisitor;)V

    .line 60
    :cond_0
    return-object v1
.end method

.method public handleRestoreResponse(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;
    .locals 3
    .param p1, "response"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;
    .param p2, "stepProgressListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;-><init>()V

    .local v1, "tr":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;
    move-object v0, p1

    .line 67
    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;

    .line 69
    .local v0, "mainEventResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;->getResult()I

    move-result v2

    iput v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->result:I

    .line 70
    iget v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->result:I

    if-nez v2, :cond_0

    .line 71
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler$2;

    invoke-direct {v2, p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler$2;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;)V

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;->tranverseResponse(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse$EventRestoreVisitor;)V

    .line 95
    :cond_0
    return-object v1
.end method
