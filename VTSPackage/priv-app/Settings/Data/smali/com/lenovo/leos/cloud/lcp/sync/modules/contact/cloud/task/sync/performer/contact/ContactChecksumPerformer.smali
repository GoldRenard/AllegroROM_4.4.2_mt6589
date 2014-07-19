.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
.source "ContactChecksumPerformer.java"


# static fields
.field public static final ONGOING_C_SYNC_CHECKSUM:I = 0x2

.field public static final ONGOING_C_SYNC_CHECK_SERVER:I = 0x3


# instance fields
.field private asyncComputeChecksum:Z

.field protected checksumBuilder:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;

.field private checksumRequest:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;

.field protected checksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

.field protected localChecksumResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;

.field private localMergeGroupCount:I

.field private stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stepProgressListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;-><init>(Landroid/content/Context;)V

    .line 53
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->localMergeGroupCount:I

    .line 118
    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->asyncComputeChecksum:Z

    .line 62
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    .line 63
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private asyncComputeChecksum()V
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer$1;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 200
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 201
    return-void
.end method

.method private buildContactChecksumRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    .locals 4

    .prologue
    .line 127
    iget-boolean v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->asyncComputeChecksum:Z

    if-eqz v2, :cond_0

    .line 128
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->getLastestLocalChange(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;

    move-result-object v0

    .line 129
    .local v0, "localChange":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->fastBuildSyncChecksumRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;

    move-result-object v1

    .line 133
    .local v1, "request":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->asyncComputeChecksum()V

    .line 137
    .end local v0    # "localChange":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;
    .end local v1    # "request":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->buildSyncContactChecksumReqeust()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;

    move-result-object v1

    goto :goto_0
.end method

.method private buildExistContactCheckSumRequest(Ljava/util/Map;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "checksumObjList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;

    invoke-direct {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;-><init>()V

    .line 222
    .local v3, "request":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->getLastServerVersion()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;->setVersion(Ljava/lang/Long;)V

    .line 223
    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;->checkInitContactReq()V

    .line 225
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 226
    .local v8, "tempIds":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->currentUser:Ljava/lang/String;

    invoke-static {v9, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getClonedContactData(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->keyMap()Ljava/util/Map;

    move-result-object v2

    .line 227
    .local v2, "contactMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 228
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    .line 229
    .local v7, "sids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 234
    .end local v7    # "sids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 235
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    .line 234
    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 236
    .local v1, "computeChecksumList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_2

    .line 252
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5

    .line 256
    return-object v3

    .line 229
    .end local v1    # "computeChecksumList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    .restart local v7    # "sids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 230
    .local v6, "sid":Ljava/lang/String;
    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    .end local v6    # "sid":Ljava/lang/String;
    .end local v7    # "sids":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v1    # "computeChecksumList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    :cond_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;

    .line 237
    .local v0, "checksum":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;
    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactChecksumMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 238
    .local v4, "savedChecksumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    iget-object v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->sid:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 239
    iget v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->cid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->crc:Ljava/lang/String;

    iget-object v12, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->alger:Ljava/lang/String;

    invoke-virtual {v3, v10, v11, v12}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;->addContactLocalAdd(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 241
    :cond_3
    iget v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->cid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;

    .line 242
    .local v5, "savedChecksumVo":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;
    if-eqz v5, :cond_4

    .line 243
    invoke-virtual {v0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 244
    iget-object v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->sid:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;->addContactLocalNoChangeSID(Ljava/lang/Long;)V

    .line 248
    :goto_3
    iget-object v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->sid:Ljava/lang/String;

    invoke-interface {v8, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 246
    :cond_4
    iget-object v10, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->sid:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;->addContactLocalDiffSid(Ljava/lang/Long;)V

    goto :goto_3

    .line 252
    .end local v0    # "checksum":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;
    .end local v4    # "savedChecksumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    .end local v5    # "savedChecksumVo":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;
    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 253
    .restart local v6    # "sid":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;->addContactLocalDeleteSid(Ljava/lang/Long;)V

    goto :goto_2
.end method

.method private buildSyncContactChecksumReqeust()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->checksumBuilder:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;

    .line 205
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->checksumBuilder:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer$2;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer$2;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;)V

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->setStepProgressListener(Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V

    .line 213
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->checksumBuilder:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->buidChecksum()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->localChecksumResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;

    .line 215
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->localChecksumResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;->canBeMergedContactChecksumList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->localMergeGroupCount:I

    .line 217
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->localChecksumResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;->allContactChecksumObjectMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->buildExistContactCheckSumRequest(Ljava/util/Map;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;

    move-result-object v0

    return-object v0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->localChecksumResult:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;->canBeMergedContactChecksumList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private doContactCheckSum()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    .line 89
    invoke-virtual {p0, v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->setProgressStep(I)V

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 92
    .local v5, "startbuid":J
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->buildContactChecksumRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->checksumRequest:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 94
    .local v2, "endbuild":J
    const-string v7, "DEBUG_TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "buildContactChecksumRequest:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v9, v2, v5

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v7, "v5/checksum.action"

    invoke-virtual {p0, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v0

    .line 98
    .local v0, "bizURIRoller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    .line 100
    invoke-virtual {p0, v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->setProgressStep(I)V

    .line 101
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->checksumRequest:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;

    invoke-virtual {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->toBytes()[B

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {p0, v0, v7, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "json":Ljava/lang/String;
    :try_start_0
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-direct {v7, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->checksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .line 105
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->checksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->getResult()I

    move-result v7

    if-eqz v7, :cond_0

    .line 106
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v7, v4}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Lorg/json/JSONException;
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v7, v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 112
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    const-string v7, "DEBUG_TAG"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "SyncChecksumResponse:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void
.end method

.method private fastBuildSyncChecksumRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    .locals 12
    .param p1, "localChange"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;

    .prologue
    .line 158
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;

    invoke-direct {v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;-><init>()V

    .line 159
    .local v8, "request":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->getLastServerVersion()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;->setVersion(Ljava/lang/Long;)V

    .line 160
    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;->checkInitContactReq()V

    .line 162
    iget-object v9, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;->sidList:Ljava/util/List;

    invoke-virtual {v8, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;->addContactLocalNoChangeSID(Ljava/util/List;)V

    .line 163
    iget-object v9, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;->diffList:Ljava/util/List;

    invoke-virtual {v8, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;->addContactLocalDiff(Ljava/util/List;)V

    .line 164
    iget-object v9, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;->delList:Ljava/util/List;

    invoke-virtual {v8, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;->addContactLocalDelete(Ljava/util/List;)V

    .line 169
    iget-object v9, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;->caddList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 170
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v6, "dataCidBuilder":Ljava/lang/StringBuilder;
    iget-object v9, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;->caddList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_1

    .line 174
    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 176
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;

    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

    .line 177
    .local v0, "addChecksumBuilder":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->buidChecksum(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;

    move-result-object v3

    .line 179
    .local v3, "checkResult":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;
    iget-object v1, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;->allContactChecksumObjectMap:Ljava/util/Map;

    .line 180
    .local v1, "addChecksumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 181
    .local v2, "addChecksumSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 182
    .local v4, "checksumIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 188
    .end local v0    # "addChecksumBuilder":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;
    .end local v1    # "addChecksumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    .end local v2    # "addChecksumSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;>;"
    .end local v3    # "checkResult":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;
    .end local v4    # "checksumIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;>;"
    .end local v6    # "dataCidBuilder":Ljava/lang/StringBuilder;
    :cond_0
    return-object v8

    .line 171
    .restart local v6    # "dataCidBuilder":Ljava/lang/StringBuilder;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 172
    .local v5, "cid":Ljava/lang/Integer;
    const-string v10, ","

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 183
    .end local v5    # "cid":Ljava/lang/Integer;
    .restart local v0    # "addChecksumBuilder":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;
    .restart local v1    # "addChecksumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    .restart local v2    # "addChecksumSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;>;"
    .restart local v3    # "checkResult":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;
    .restart local v4    # "checksumIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 184
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;

    iget-object v11, v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->crc:Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;

    iget-object v10, v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->alger:Ljava/lang/String;

    invoke-virtual {v8, v9, v11, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;->addContactLocalAdd(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private saveDupContacts(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "dupContacts":Ljava/util/List;, "Ljava/util/List<Lorg/json/JSONObject;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 277
    :cond_0
    return-void

    .line 270
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    .line 271
    .local v1, "dup":Lorg/json/JSONObject;
    const-string v4, "cid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 272
    .local v0, "cid":I
    const-string v4, "sid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "sid":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    .line 275
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 274
    invoke-static {v4, v0, v2, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->setContactSid(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected doFetchServerContactCount()I
    .locals 7

    .prologue
    const/4 v4, -0x1

    .line 281
    :try_start_0
    const-string v5, "v4/count.action"

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v3

    .line 283
    .local v3, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getHttpMachine()Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "respString":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 285
    .local v2, "response":Lorg/json/JSONObject;
    const-string v5, "count"

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 288
    .end local v1    # "respString":Ljava/lang/String;
    .end local v2    # "response":Lorg/json/JSONObject;
    .end local v3    # "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :goto_0
    return v4

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getChecksumBuilder()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;
    .locals 3

    .prologue
    .line 329
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->checksumBuilder:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;

    if-eqz v1, :cond_1

    .line 330
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->checksumBuilder:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;

    .line 343
    :goto_0
    return-object v1

    .line 334
    :cond_0
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    :goto_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->checksumBuilder:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;

    if-eqz v1, :cond_1

    .line 343
    :goto_2
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->checksumBuilder:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;

    goto :goto_0

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 332
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    iget-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->asyncComputeChecksum:Z

    if-nez v1, :cond_0

    goto :goto_2
.end method

.method public getChecksumRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->checksumRequest:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;

    return-object v0
.end method

.method public getChecksumResponse()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->checksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    return-object v0
.end method

.method protected getLastServerVersion()J
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactDButil;->readLastServerVersion(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalMergeGroupCount()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->localMergeGroupCount:I

    return v0
.end method

.method protected getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    .locals 5
    .param p1, "buzzURL"    # Ljava/lang/String;

    .prologue
    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?gzip=true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    .local v1, "requestUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v0

    .line 349
    .local v0, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    .line 350
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getContactServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 351
    const-string v4, "contact.cloud.lps.lenovo.com"

    .line 349
    invoke-direct {v2, v3, v1, v0, v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 353
    .local v2, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    return-object v2
.end method

.method public isAsyncComputeChecksum()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->asyncComputeChecksum:Z

    return v0
.end method

.method public notifyProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    .prologue
    .line 358
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    float-to-int v1, p1

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;->onStepProgress(IILandroid/os/Bundle;)Z

    .line 363
    :goto_0
    return-void

    .line 361
    :cond_0
    invoke-super {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    goto :goto_0
.end method

.method public notifyStepProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getProgressStep()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 392
    :goto_0
    return-void

    .line 381
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->notifyProgress(F)V

    goto :goto_0

    .line 384
    :sswitch_1
    const/high16 v0, 0x420c0000

    mul-float/2addr v0, p1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->notifyProgress(F)V

    goto :goto_0

    .line 387
    :sswitch_2
    const/high16 v0, 0x42820000

    mul-float/2addr v0, p1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x23

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->notifyProgress(F)V

    goto :goto_0

    .line 390
    :sswitch_3
    const/high16 v0, 0x42c80000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->notifyProgress(F)V

    goto :goto_0

    .line 379
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x7fffffff -> :sswitch_3
    .end sparse-switch
.end method

.method protected onPostChecksum()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->checksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactDup()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->saveDupContacts(Ljava/util/List;)V

    .line 84
    return-void
.end method

.method protected reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "userName"    # Ljava/lang/String;
    .param p4, "result"    # I
    .param p5, "cost"    # J
    .param p7, "operateType"    # Ljava/lang/String;
    .param p8, "changeNum"    # I

    .prologue
    .line 399
    return-void
.end method

.method public setAsyncComputeChecksum(Z)V
    .locals 0
    .param p1, "asyncComputeChecksum"    # Z

    .prologue
    .line 317
    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->asyncComputeChecksum:Z

    .line 318
    return-void
.end method

.method public setChecksumRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;)V
    .locals 0
    .param p1, "checksumRequest"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->checksumRequest:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumRequest;

    .line 322
    return-void
.end method

.method public setChecksumResponse(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)V
    .locals 0
    .param p1, "checksumResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->checksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .line 306
    return-void
.end method

.method public setLocalMergeGroupCount(I)V
    .locals 0
    .param p1, "localMergeGroupCount"    # I

    .prologue
    .line 297
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->localMergeGroupCount:I

    .line 298
    return-void
.end method

.method protected setProgressStep(I)V
    .locals 3
    .param p1, "progressStep"    # I

    .prologue
    const/high16 v2, 0x3f800000

    .line 366
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->curProgressStep:I

    if-le p1, v0, :cond_0

    .line 367
    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->notifyStepProgress(F)V

    .line 368
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->curProgressStep:I

    .line 369
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->curProgressStep:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 370
    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->notifyStepProgress(F)V

    .line 373
    :cond_0
    return-void
.end method

.method protected startTask()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x2

    .line 68
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->doContactCheckSum()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->checksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->checksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->getResult()I

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    :cond_0
    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 76
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ChecksumResponse\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->checksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Lorg/json/JSONException;
    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 71
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 79
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;->onPostChecksum()V

    .line 80
    return-void
.end method
