.class Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler$2;
.super Ljava/lang/Object;
.source "MainEventSyncResponseHandler.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse$EventRestoreVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;->handleRestoreResponse(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;

.field private final synthetic val$tr:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler$2;->val$tr:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;)Z
    .locals 7
    .param p1, "event"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;

    .prologue
    .line 76
    :try_start_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getSid()Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;->getEventCid(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    .line 77
    .local v1, "cid":Ljava/lang/Long;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 78
    invoke-virtual {p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->set_id(Ljava/lang/Long;)V

    .line 79
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;->updateEvent(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;)Ljava/lang/Long;

    .line 80
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler$2;->val$tr:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    iget v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->opUpdate:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->opUpdate:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v1    # "cid":Ljava/lang/Long;
    :goto_0
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;->superTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    move-result-object v3

    invoke-interface {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    return v3

    .line 82
    .restart local v1    # "cid":Ljava/lang/Long;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;->insertEvent(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;)Ljava/lang/Long;

    move-result-object v0

    .line 83
    .local v0, "_id":Ljava/lang/Long;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;->context:Landroid/content/Context;
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;->currentUser:Ljava/lang/String;
    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getSid()Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4, v0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->setEventSID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 84
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncResponseHandler$2;->val$tr:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;

    iget v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->opAdd:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/TaskResult;->opAdd:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 86
    .end local v0    # "_id":Ljava/lang/Long;
    .end local v1    # "cid":Ljava/lang/Long;
    :catch_0
    move-exception v2

    .line 87
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 89
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method
