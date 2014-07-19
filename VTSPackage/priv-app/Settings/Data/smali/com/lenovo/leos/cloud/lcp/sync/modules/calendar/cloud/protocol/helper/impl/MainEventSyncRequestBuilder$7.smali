.class Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$7;
.super Ljava/lang/Object;
.source "MainEventSyncRequestBuilder.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->buildRestoreSDeleteOperation(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CommonRestoreRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;

.field private final synthetic val$stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$7;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$7;->val$stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Ljava/lang/Long;Ljava/lang/Long;)Z
    .locals 5
    .param p1, "cid"    # Ljava/lang/Long;
    .param p2, "sid"    # Ljava/lang/Long;

    .prologue
    .line 252
    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;->getEventCid(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    .line 253
    .local v0, "eventCid":Ljava/lang/Long;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$7;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->access$7(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;->deleteEventById(Ljava/lang/Long;)V

    .line 254
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$7;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$7;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->currentUser:Ljava/lang/String;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->access$6(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->delEventSID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    .line 256
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$7;->val$stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$7;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->cur:I
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-static {v2, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;I)V

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$7;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->total:I
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;)I

    move-result v2

    const/4 v4, 0x0

    invoke-interface {v1, v3, v2, v4}, Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;->onStepProgress(IILandroid/os/Bundle;)Z

    .line 258
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder$7;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->superTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;->access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventSyncRequestBuilder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
