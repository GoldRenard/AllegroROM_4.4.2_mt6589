.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;
.super Ljava/lang/Object;
.source "ContactChecksumBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;,
        Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;
    }
.end annotation


# static fields
.field private static final DB_COMMIT_SIZE:I = 0x64


# instance fields
.field private allChecksumVOMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;",
            ">;"
        }
    .end annotation
.end field

.field private bMergeContact:Z

.field private checksumLikedMergeGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private checksumMergeGroupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private checksumMergedCids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

.field private context:Landroid/content/Context;

.field private coreFieldChecksumMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private deleteContactQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private filedNoFlagComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;"
        }
    .end annotation
.end field

.field private groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

.field private parentTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

.field private revertAllChecksumVOMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentTask"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->bMergeContact:Z

    .line 128
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->allChecksumVOMap:Ljava/util/Map;

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->revertAllChecksumVOMap:Ljava/util/Map;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->checksumMergeGroupList:Ljava/util/List;

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->deleteContactQueue:Ljava/util/List;

    .line 135
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->checksumMergedCids:Ljava/util/List;

    .line 136
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->coreFieldChecksumMap:Ljava/util/Map;

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->checksumLikedMergeGroupList:Ljava/util/List;

    .line 345
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$1;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->filedNoFlagComparator:Ljava/util/Comparator;

    .line 61
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->context:Landroid/content/Context;

    .line 62
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "currentUser":Ljava/lang/String;
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;->newRawContactDao(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    move-result-object v1

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    .line 64
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;

    invoke-direct {v1, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

    .line 65
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->parentTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->parentTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->buildOneContactChecksumRequest(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;)Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    return-object v0
.end method

.method private addOrMergeContact(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;)V
    .locals 8
    .param p2, "protoCheckSumVo"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;",
            ")V"
        }
    .end annotation

    .prologue
    .line 263
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 264
    .local v4, "protoFields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->computeCoreFieldChecksum(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    .line 265
    .local v1, "coreCheckSum":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 266
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->allChecksumVOMap:Ljava/util/Map;

    iget v7, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->cid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->revertAllChecksumVOMap:Ljava/util/Map;

    iget v7, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->cid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->unionCheckSumCode([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 272
    .local v2, "coreCheckSumCode":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->coreFieldChecksumMap:Ljava/util/Map;

    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 273
    .local v5, "targetCId":Ljava/lang/Integer;
    const/4 v3, 0x0

    .line 275
    .local v3, "newFields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {p0, v4, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->mergeContact(Ljava/util/List;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 276
    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->getCheckSumObject(Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;

    move-result-object v0

    .line 278
    .local v0, "checkSumVo":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->allChecksumVOMap:Ljava/util/Map;

    iget v7, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->cid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->revertAllChecksumVOMap:Ljava/util/Map;

    iget v7, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->cid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->checksumLikedMergeGroupList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 281
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->checksumLikedMergeGroupList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    .end local v0    # "checkSumVo":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;
    :cond_2
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->coreFieldChecksumMap:Ljava/util/Map;

    iget v7, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->cid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->allChecksumVOMap:Ljava/util/Map;

    iget v7, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->cid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->revertAllChecksumVOMap:Ljava/util/Map;

    iget v7, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->cid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private afterChecksum()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;
    .locals 3

    .prologue
    .line 87
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->deleteContactQueue:Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->batchCommit(Ljava/util/List;)V

    .line 89
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;-><init>()V

    .line 90
    .local v0, "result":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->allChecksumVOMap:Ljava/util/Map;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;->allContactChecksumObjectMap:Ljava/util/Map;

    .line 91
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->checksumMergeGroupList:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->checksumLikedMergeGroupList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 92
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->checksumMergeGroupList:Ljava/util/List;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;->canBeMergedContactChecksumList:Ljava/util/List;

    .line 94
    return-object v0
.end method

.method private buildChecksumString(Ljava/util/List;Ljava/util/List;Z)Ljava/lang/String;
    .locals 8
    .param p3, "starred"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    .local p2, "groupIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    const/16 v7, 0xa

    .line 206
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 207
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 222
    const-string v4, "star:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p3, :cond_3

    const-string v4, "true"

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 223
    const-string v4, "categorys:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 228
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 210
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    .line 211
    .local v0, "f":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, "val":Ljava/lang/String;
    const-string v5, "GROUP"

    iget-object v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "IMAGE"

    iget-object v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/JSONUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 216
    iget-object v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    if-eqz v5, :cond_2

    .line 218
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_2
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 222
    .end local v0    # "f":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    .end local v3    # "val":Ljava/lang/String;
    :cond_3
    const-string v4, "false"

    goto :goto_1

    .line 224
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 225
    .local v1, "id":Ljava/lang/Long;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private buildCoreFieldChecksumString(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 315
    .local v0, "checkFileds":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->filedNoFlagComparator:Ljava/util/Comparator;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 317
    const/4 v2, 0x0

    .line 318
    .local v2, "ifindPhone":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 338
    if-eqz v2, :cond_5

    .line 339
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 341
    :goto_1
    return-object v5

    .line 319
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    .line 320
    .local v1, "f":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    const-string v6, "NAME"

    iget-object v7, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "PHONE"

    iget-object v7, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 321
    :cond_2
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->toString()Ljava/lang/String;

    move-result-object v4

    .line 322
    .local v4, "val":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/util/JSONUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 326
    const-string v6, "PHONE"

    iget-object v7, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 327
    const/4 v2, 0x1

    .line 330
    :cond_3
    iget-object v6, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    iget-object v6, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    if-eqz v6, :cond_4

    .line 332
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    :cond_4
    const/16 v6, 0xa

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 341
    .end local v1    # "f":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    .end local v4    # "val":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private buildOneContactChecksumRequest(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    .local p2, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    const/4 v6, 0x0

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    .line 147
    .local v2, "f":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactUtil;->buildRawContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    move-result-object v5

    .line 149
    .local v5, "rawContact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 150
    .local v4, "protoFiles":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    invoke-virtual {p0, v5, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->computeChecksum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "checksum":[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->unionCheckSumCode([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    .local v0, "checkSumCode":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v5, v1, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->build(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;[Ljava/lang/String;I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;

    move-result-object v3

    .line 153
    .local v3, "protoChecksumVo":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;
    iget-boolean v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->bMergeContact:Z

    if-eqz v6, :cond_0

    .line 154
    invoke-direct {p0, v5, v4, v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->saveChecksumAndMergeContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;Ljava/util/List;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->allChecksumVOMap:Ljava/util/Map;

    iget v7, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->cid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private computeCoreFieldChecksum(Ljava/util/List;)[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->removePhotoField(Ljava/util/List;)V

    .line 305
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->buildCoreFieldChecksumString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "checksumStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    const/4 v1, 0x0

    .line 310
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ChecksumUtil;->computeChecksum(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private digestDBBatchOperation(Ljava/util/List;)[Landroid/content/ContentProviderResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .prologue
    .line 511
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->validateCancel()V

    .line 512
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 514
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "com.android.contacts"

    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    .line 515
    .local v2, "result":[Landroid/content/ContentProviderResult;
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    .end local v2    # "result":[Landroid/content/ContentProviderResult;
    :goto_0
    return-object v2

    .line 517
    :catch_0
    move-exception v1

    .line 518
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 519
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 523
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getCheckSumObject(Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactUtil;->buildRawContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    move-result-object v3

    .line 495
    .local v3, "rawContact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    const/4 v2, 0x0

    .line 497
    .local v2, "photos":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 504
    :goto_0
    invoke-virtual {p0, v3, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->computeChecksum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "checksum":[Ljava/lang/String;
    invoke-static {v3, v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->build(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;[Ljava/lang/String;I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;

    move-result-object v4

    return-object v4

    .line 497
    .end local v0    # "checksum":[Ljava/lang/String;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    .line 498
    .local v1, "field":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    const-string v5, "IMAGE"

    iget-object v6, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 499
    const/4 v2, 0x1

    .line 500
    goto :goto_0
.end method

.method private mergeContact(Ljava/util/List;I)Ljava/util/List;
    .locals 17
    .param p2, "targetContactId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    .local p1, "fromFields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    iget v4, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->cid:I

    .line 381
    .local v4, "srouceContactId":I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v10, 0x0

    .line 384
    .local v10, "sourceStared":I
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->queryTargetContact(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;

    move-result-object v11

    .line 386
    .local v11, "targetContact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    iget-object v6, v11, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->fields:Ljava/util/List;

    .line 388
    .local v6, "toFields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 389
    const/4 v2, 0x0

    .line 440
    :goto_1
    return-object v2

    .line 381
    .end local v6    # "toFields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    .end local v10    # "sourceStared":I
    .end local v11    # "targetContact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    iget v10, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->stared:I

    goto :goto_0

    .line 393
    .restart local v6    # "toFields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    .restart local v10    # "sourceStared":I
    .restart local v11    # "targetContact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    const/4 v12, 0x0

    .line 394
    .local v12, "targetServerId":Ljava/lang/String;
    :goto_2
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v13, 0x0

    .line 397
    .local v13, "targetStared":I
    :goto_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v5, "addFields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 435
    const/4 v7, 0x0

    .line 436
    .local v7, "updateStarred":Z
    iget v2, v11, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->starred:I

    if-nez v2, :cond_3

    const/4 v2, 0x1

    if-ne v10, v2, :cond_3

    .line 437
    const/4 v7, 0x1

    :cond_3
    move-object/from16 v2, p0

    move/from16 v3, p2

    .line 440
    invoke-direct/range {v2 .. v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->mergeContactFields(IILjava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 393
    .end local v5    # "addFields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    .end local v7    # "updateStarred":Z
    .end local v12    # "targetServerId":Ljava/lang/String;
    .end local v13    # "targetStared":I
    :cond_4
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    iget-object v12, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->sid:Ljava/lang/String;

    goto :goto_2

    .line 394
    .restart local v12    # "targetServerId":Ljava/lang/String;
    :cond_5
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    iget v13, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->stared:I

    goto :goto_3

    .line 398
    .restart local v5    # "addFields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    .restart local v13    # "targetStared":I
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    .line 400
    .local v8, "fromField":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    const-string v3, "NAME"

    iget-object v15, v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "NICKNAME"

    iget-object v15, v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v3, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 403
    const/4 v9, 0x0

    .line 404
    .local v9, "ifind":Z
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_8

    .line 427
    :goto_5
    if-nez v9, :cond_2

    .line 428
    move/from16 v0, p2

    iput v0, v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->cid:I

    .line 429
    iput-object v12, v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->sid:Ljava/lang/String;

    .line 430
    iput v13, v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->stared:I

    .line 431
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 404
    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    .line 405
    .local v14, "toField":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    iget-object v15, v14, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    if-eqz v15, :cond_7

    .line 406
    iget-object v15, v14, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    if-eqz v15, :cond_7

    .line 407
    iget-object v15, v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    if-eqz v15, :cond_7

    .line 408
    iget-object v15, v14, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    iget-object v0, v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 410
    const-string v15, "IMAGE"

    iget-object v0, v14, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 411
    const/4 v9, 0x1

    .line 412
    goto :goto_5

    .line 413
    :cond_9
    const-string v15, "EVENT"

    iget-object v0, v14, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 414
    iget-object v15, v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    if-eqz v15, :cond_7

    .line 415
    iget-object v15, v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    iget-object v0, v14, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 416
    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 417
    const/4 v9, 0x1

    .line 418
    goto :goto_5

    .line 420
    :cond_a
    invoke-virtual {v14}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 421
    const/4 v9, 0x1

    .line 422
    goto :goto_5
.end method

.method private mergeContactFields(IILjava/util/List;Ljava/util/List;Z)Ljava/util/List;
    .locals 7
    .param p1, "targetContactId"    # I
    .param p2, "srouceContactId"    # I
    .param p5, "updateStarred"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .local p3, "addFields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    .local p4, "toFields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    const/4 v4, 0x1

    .line 466
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 468
    .local v1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 469
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;-><init>()V

    .line 470
    .local v0, "c":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    iput p1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->cid:I

    .line 471
    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->fields:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 472
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-interface {v3, v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->buildCreateFieldsOpertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V

    .line 474
    invoke-interface {p4, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 477
    .end local v0    # "c":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    :cond_0
    if-eqz p5, :cond_1

    .line 478
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;-><init>()V

    .line 479
    .local v2, "rc":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    iput p1, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    .line 480
    iput v4, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->starred:I

    .line 482
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "starred"

    aput-object v6, v4, v5

    invoke-interface {v3, v2, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->newUpdateOpertion(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;[Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    .end local v2    # "rc":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    :cond_1
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-interface {v3, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->newLogicalDeleteOpertion(I)Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->checksumMergedCids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->digestDBBatchOperation(Ljava/util/List;)[Landroid/content/ContentProviderResult;

    .line 490
    return-object p4
.end method

.method private prepareChecksumRequest()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->prepareChecksumRequest(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private prepareChecksumRequest(Ljava/lang/String;)V
    .locals 8
    .param p1, "dataCids"    # Ljava/lang/String;

    .prologue
    .line 100
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v1, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v2, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    if-eqz p1, :cond_1

    .line 104
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v1, v2, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;Ljava/util/List;Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "raw_contact_id in ( "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseContactData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->parentTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->parentTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-interface {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 110
    new-instance v3, Ljava/util/concurrent/CancellationException;

    invoke-direct {v3}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .end local v1    # "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    .end local v2    # "photos":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    .line 119
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :goto_1
    return-void

    .line 106
    .restart local v1    # "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    .restart local v2    # "photos":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v1, v2, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;Ljava/util/List;Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ContactDataVisitor;)V

    const-string v5, "raw_contact_id"

    invoke-interface {v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseAllContactData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 114
    invoke-direct {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->buildOneContactChecksumRequest(Ljava/util/List;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private queryTargetContact(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    .locals 4
    .param p1, "targetContactId"    # I

    .prologue
    .line 444
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;-><init>()V

    .line 445
    .local v0, "contact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$2;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$2;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V

    .line 460
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 445
    invoke-interface {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;Ljava/lang/String;)V

    .line 461
    return-object v0
.end method

.method private removePhotoField(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 365
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-gez v1, :cond_0

    .line 371
    return-void

    .line 366
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    .line 367
    .local v0, "field":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    const-string v2, "IMAGE"

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 368
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 365
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private saveChecksumAndMergeContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;Ljava/util/List;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;)V
    .locals 4
    .param p1, "rawContact"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    .param p3, "checkSumCode"    # Ljava/lang/String;
    .param p4, "protoChecksumVo"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;",
            ")V"
        }
    .end annotation

    .prologue
    .line 165
    .local p2, "protoFiles":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->allChecksumVOMap:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->checksumMergeGroupList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->checksumMergeGroupList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_0
    const/4 v0, 0x0

    .line 171
    .local v0, "cid":Ljava/lang/Integer;
    iget v1, p4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->photos:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->revertAllChecksumVOMap:Ljava/util/Map;

    invoke-interface {v1, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cid":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .restart local v0    # "cid":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 172
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->allChecksumVOMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->allChecksumVOMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;

    iget v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->photos:I

    if-gtz v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->deleteContactQueue:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->newLogicalDeleteOpertion(I)Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->checksumMergedCids:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->allChecksumVOMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->allChecksumVOMap:Ljava/util/Map;

    iget v2, p4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->cid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->revertAllChecksumVOMap:Ljava/util/Map;

    iget v2, p4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->cid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .end local v0    # "cid":Ljava/lang/Integer;
    :goto_0
    return-void

    .line 181
    .restart local v0    # "cid":Ljava/lang/Integer;
    :cond_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->deleteContactQueue:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    iget v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    invoke-interface {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->newLogicalDeleteOpertion(I)Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->checksumMergedCids:Ljava/util/List;

    iget v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    .end local v0    # "cid":Ljava/lang/Integer;
    :cond_2
    invoke-direct {p0, p2, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->addOrMergeContact(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;)V

    goto :goto_0
.end method

.method private seperateGroupIds(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "finalFields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 233
    .local v2, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v5, "groupIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    .local v6, "i":I
    :goto_0
    if-gez v6, :cond_0

    .line 251
    return-object v5

    .line 235
    :cond_0
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    .line 236
    .local v1, "field":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    const-string v7, "GROUP"

    iget-object v8, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 237
    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 239
    :try_start_0
    iget-object v7, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 240
    .local v4, "groupId":I
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

    invoke-interface {v7, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;->queryGroup(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;

    move-result-object v3

    .line 241
    .local v3, "group":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    if-eqz v3, :cond_1

    iget-object v7, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->sourceid:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 242
    iget-object v7, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->sourceid:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v3    # "group":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    .end local v4    # "groupId":I
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 247
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v7, "IMAGE"

    iget-object v8, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 248
    invoke-interface {v2, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method private unionCheckSumCode([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "checksum"    # [Ljava/lang/String;

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected batchCommit(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 533
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 534
    .local v1, "opsLength":I
    if-lez v1, :cond_0

    .line 535
    const/16 v4, 0x64

    if-le v1, v4, :cond_2

    .line 536
    rem-int/lit8 v0, v1, 0x64

    .line 537
    .local v0, "mod":I
    div-int/lit8 v3, v1, 0x64

    .line 538
    .local v3, "times":I
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 541
    if-lez v0, :cond_0

    .line 542
    new-instance v4, Ljava/util/ArrayList;

    mul-int/lit8 v5, v3, 0x64

    invoke-interface {p1, v5, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->digestDBBatchOperation(Ljava/util/List;)[Landroid/content/ContentProviderResult;

    .line 548
    .end local v0    # "mod":I
    .end local v2    # "t":I
    .end local v3    # "times":I
    :cond_0
    :goto_1
    return-void

    .line 539
    .restart local v0    # "mod":I
    .restart local v2    # "t":I
    .restart local v3    # "times":I
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    mul-int/lit8 v5, v2, 0x64

    add-int/lit8 v6, v2, 0x1

    mul-int/lit8 v6, v6, 0x64

    invoke-interface {p1, v5, v6}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->digestDBBatchOperation(Ljava/util/List;)[Landroid/content/ContentProviderResult;

    .line 538
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 545
    .end local v0    # "mod":I
    .end local v2    # "t":I
    .end local v3    # "times":I
    :cond_2
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->digestDBBatchOperation(Ljava/util/List;)[Landroid/content/ContentProviderResult;

    goto :goto_1
.end method

.method public buidChecksum()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->prepareChecksumRequest()V

    .line 76
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->validateCancel()V

    .line 77
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->afterChecksum()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;

    move-result-object v0

    return-object v0
.end method

.method public buidChecksum(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;
    .locals 1
    .param p1, "dataCids"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->prepareChecksumRequest(Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->afterChecksum()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;

    move-result-object v0

    return-object v0
.end method

.method public buidChecksum(Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;
    .locals 1
    .param p1, "bDeletedRepeatedContact"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->bMergeContact:Z

    .line 71
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->buidChecksum()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;

    move-result-object v0

    return-object v0
.end method

.method public computeChecksum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .param p1, "rawContact"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    const/4 v2, 0x1

    .line 199
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->seperateGroupIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 200
    .local v1, "groupIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->starred:I

    if-ne v3, v2, :cond_0

    :goto_0
    invoke-direct {p0, p2, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->buildChecksumString(Ljava/util/List;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "checksumStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ChecksumUtil;->computeChecksum(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 200
    .end local v0    # "checksumStr":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public computeCoreChecksum(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 295
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->computeCoreFieldChecksum(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "checksum":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 297
    const/4 v1, 0x0

    .line 299
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->unionCheckSumCode([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCidByCoreChecksumKey(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "coreCheckSumCode"    # Ljava/lang/String;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->coreFieldChecksumMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public setStepProgressListener(Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V
    .locals 0
    .param p1, "stepProgressListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    .line 552
    return-void
.end method

.method public validateCancel()V
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->parentTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->parentTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0

    .line 530
    :cond_0
    return-void
.end method
