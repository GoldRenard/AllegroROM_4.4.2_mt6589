.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$3;
.super Ljava/lang/Object;
.source "GroupV2SyncPerformer.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->initSidCid2Titles()V
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
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildGroupCheckSum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V
    .locals 5
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .prologue
    .line 190
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;)Landroid/content/Context;

    move-result-object v1

    .line 191
    iget v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-static {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactSid(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "sid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$3;->putSidAndGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private putSidAndGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    .param p2, "sid"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data1:Ljava/lang/String;

    .line 200
    .local v1, "groupId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 202
    .local v0, "cid":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->groupCid2TitleMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 203
    .local v2, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->sid2TitlesMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 204
    .local v3, "titlesBySid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 205
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "titlesBySid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .restart local v3    # "titlesBySid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->sid2TitlesMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, p2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .end local v0    # "cid":Ljava/lang/Integer;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "titlesBySid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;II)Z
    .locals 3
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    .param p2, "cur"    # I
    .param p3, "total"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;

    const/high16 v1, 0x3f800000

    int-to-float v2, p2

    mul-float/2addr v1, v2

    int-to-float v2, p3

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer;->notifyStepProgress(F)V

    .line 185
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/group/GroupV2SyncPerformer$3;->buildGroupCheckSum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V

    .line 186
    const/4 v0, 0x1

    return v0
.end method
