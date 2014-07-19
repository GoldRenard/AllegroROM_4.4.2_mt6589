.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl$1;
.super Ljava/lang/Object;
.source "ContactMetadataManagerImpl.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->queryLocalChangeByVersion(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;

.field private final synthetic val$clonedSaveCid2SidMap:Ljava/util/Map;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$currentUser:Ljava/lang/String;

.field private final synthetic val$info:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;

.field private final synthetic val$tmpDiffList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl$1;->val$info:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl$1;->val$currentUser:Ljava/lang/String;

    iput-object p5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl$1;->val$clonedSaveCid2SidMap:Ljava/util/Map;

    iput-object p6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl$1;->val$tmpDiffList:Ljava/util/List;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;II)Z
    .locals 5
    .param p1, "contact"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    .param p2, "cur"    # I
    .param p3, "total"    # I

    .prologue
    const/4 v4, 0x1

    .line 108
    iget-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sourceid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    iget v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->deleted:I

    if-nez v1, :cond_0

    .line 111
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl$1;->val$info:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;

    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;->caddList:Ljava/util/List;

    iget v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_0
    :goto_0
    return v4

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl$1;->val$context:Landroid/content/Context;

    iget v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl$1;->val$currentUser:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getRawContactVersion(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 115
    .local v0, "savedVersion":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl$1;->val$clonedSaveCid2SidMap:Ljava/util/Map;

    iget v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    if-eqz v0, :cond_2

    iget v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->version:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 118
    :cond_2
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl$1;->val$info:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;

    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;->sidList:Ljava/util/List;

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sourceid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 122
    :cond_3
    iget v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->deleted:I

    if-nez v1, :cond_4

    .line 125
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl$1;->val$tmpDiffList:Ljava/util/List;

    iget v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_4
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl$1;->val$info:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;

    iget-object v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;->delList:Ljava/util/List;

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sourceid:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
