.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$2;
.super Ljava/lang/Object;
.source "ContactSyncTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->findAllContactGroupReq()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;

.field private final synthetic val$allContactGroupReq:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$2;->val$allContactGroupReq:Ljava/util/Map;

    .line 726
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildGroupCheckSum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V
    .locals 5
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .prologue
    .line 735
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;)Landroid/content/Context;

    move-result-object v1

    .line 736
    iget v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 735
    invoke-static {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactSid(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, "sid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 741
    :goto_0
    return-void

    .line 740
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$2;->val$allContactGroupReq:Ljava/util/Map;

    invoke-direct {p0, v1, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$2;->putSidAndGroup(Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private putSidAndGroup(Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;Ljava/lang/String;)V
    .locals 5
    .param p2, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    .param p3, "sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 746
    .local p1, "allContactGroupReq":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data1:Ljava/lang/String;

    .line 747
    .local v1, "groupId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 748
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 749
    .local v0, "cid":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->groupCid2TitleMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 750
    .local v2, "title":Ljava/lang/String;
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 751
    .local v3, "titlesBySid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    .line 752
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "titlesBySid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .restart local v3    # "titlesBySid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    invoke-interface {p1, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
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
    .line 729
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$2;->buildGroupCheckSum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V

    .line 730
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;

    int-to-float v1, p2

    const/high16 v2, 0x3f800000

    add-float/2addr v1, v2

    int-to-float v2, p3

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;->notifyStepProgress(F)V

    .line 731
    const/4 v0, 0x1

    return v0
.end method
