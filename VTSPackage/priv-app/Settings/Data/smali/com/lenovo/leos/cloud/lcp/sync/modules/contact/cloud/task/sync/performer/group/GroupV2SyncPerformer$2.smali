.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$2;
.super Ljava/lang/Object;
.source "GroupV2SyncPerformer.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao$GroupVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->loadAllGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;II)Z
    .locals 3
    .param p1, "group"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    .param p2, "cur"    # I
    .param p3, "total"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->groupCid2TitleMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;)Ljava/util/Map;

    move-result-object v0

    iget v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->cid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->title:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->groupTitle2CidMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->title:Ljava/lang/String;

    iget v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->cid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
