.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;
.super Ljava/lang/Object;
.source "CalendarSyncResponseHandler.java"

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
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;->context:Landroid/content/Context;

    .line 30
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;

    .line 31
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;->superTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    .line 32
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;->currentUser:Ljava/lang/String;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;->currentUser:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;->superTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;

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
    .line 38
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;-><init>()V

    .local v1, "tr":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;
    move-object v0, p1

    .line 39
    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarBackupResponse;

    .line 41
    .local v0, "calendarResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarBackupResponse;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarBackupResponse;->getResult()I

    move-result v2

    iput v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->result:I

    .line 42
    iget v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->result:I

    if-nez v2, :cond_0

    .line 43
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler$1;

    invoke-direct {v2, p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;)V

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarBackupResponse;->tranverseResponse(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarBackupResponse$CalendarBackupVisitor;)V

    .line 61
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
    .line 67
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;-><init>()V

    .local v1, "tr":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;
    move-object v0, p1

    .line 68
    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarRestoreResponse;

    .line 70
    .local v0, "calendarResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarRestoreResponse;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarRestoreResponse;->getResult()I

    move-result v2

    iput v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->result:I

    .line 71
    iget v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->result:I

    if-nez v2, :cond_0

    .line 72
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler$2;

    invoke-direct {v2, p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler$2;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/CalendarSyncResponseHandler;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;)V

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarRestoreResponse;->tranverseResponse(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarRestoreResponse$CalendarVisitor;)V

    .line 95
    :cond_0
    return-object v1
.end method
