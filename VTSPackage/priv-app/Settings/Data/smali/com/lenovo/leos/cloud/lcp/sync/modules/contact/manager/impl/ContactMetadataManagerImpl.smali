.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;
.super Ljava/lang/Object;
.source "ContactMetadataManagerImpl.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/ContactMetadataManager;


# static fields
.field private static manager:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;


# instance fields
.field isChangeDirty:Z

.field private lastestLocalChange:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->isChangeDirty:Z

    .line 30
    return-void
.end method

.method public static getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;

    monitor-enter v1

    .line 37
    :try_start_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->manager:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->manager:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;

    .line 40
    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->manager:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getLastestLocalChange(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 56
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->getLastestLocalChange(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastestLocalChange(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "parentTask"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    .prologue
    .line 65
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->lastestLocalChange:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->isChangeDirty:Z

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->lastestLocalChange:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_0
    monitor-exit p0

    return-object v0

    .line 68
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->queryLocalChangeByVersion(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;

    .line 69
    :goto_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->lastestLocalChange:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->isChangeDirty:Z

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->lastestLocalChange:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->queryLocalChangeByVersion(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized queryLocalChangeByVersion(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentTask"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 93
    .local v22, "start":J
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->lastestLocalChange:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->isChangeDirty:Z

    .line 94
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;

    invoke-direct {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .local v4, "info":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;
    :try_start_1
    invoke-static/range {p1 .. p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "currentUser":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;->newRawContactDao(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    move-result-object v12

    .line 100
    .local v12, "dao":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getClonedContactData(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->keyMap()Ljava/util/Map;

    move-result-object v7

    .line 102
    .local v7, "clonedSaveCid2SidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v8, "tmpDiffList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl$1;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 134
    const-string v3, "deleted = 0"

    const/4 v5, 0x0

    .line 103
    invoke-interface {v12, v2, v3, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseRawContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 137
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 138
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v15, "idBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 142
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 144
    new-instance v10, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v10, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

    .line 145
    .local v10, "checksumBuilder":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->buidChecksum(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;

    move-result-object v18

    .line 146
    .local v18, "result":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;->allContactChecksumObjectMap:Ljava/util/Map;

    move-object/from16 v17, v0

    .line 147
    .local v17, "nowChecksumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v16

    .line 148
    .local v16, "nowChecksumEntrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;>;"
    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactChecksumMap(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v19

    .line 149
    .local v19, "savedChecksumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 162
    .end local v10    # "checksumBuilder":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;
    .end local v15    # "idBuilder":Ljava/lang/StringBuilder;
    .end local v16    # "nowChecksumEntrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;>;"
    .end local v17    # "nowChecksumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    .end local v18    # "result":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;
    .end local v19    # "savedChecksumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    :cond_0
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v21

    .line 163
    .local v21, "sidCollections":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-nez v3, :cond_4

    .line 169
    :try_start_2
    const-string v2, "DEBUG_TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "queryLocalChangeByVersion :"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v22

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .end local v6    # "currentUser":Ljava/lang/String;
    .end local v7    # "clonedSaveCid2SidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v8    # "tmpDiffList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "dao":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;
    .end local v21    # "sidCollections":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :goto_3
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->lastestLocalChange:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v4

    .line 139
    .restart local v6    # "currentUser":Ljava/lang/String;
    .restart local v7    # "clonedSaveCid2SidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v8    # "tmpDiffList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v12    # "dao":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;
    .restart local v15    # "idBuilder":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 140
    .local v11, "cid":Ljava/lang/Integer;
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 166
    .end local v6    # "currentUser":Ljava/lang/String;
    .end local v7    # "clonedSaveCid2SidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v8    # "tmpDiffList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v11    # "cid":Ljava/lang/Integer;
    .end local v12    # "dao":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;
    .end local v15    # "idBuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v13

    .line 167
    .local v13, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-static {v13}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 169
    :try_start_5
    const-string v2, "DEBUG_TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "queryLocalChangeByVersion :"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v22

    move-wide/from16 v0, v24

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 92
    .end local v4    # "info":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;
    .end local v13    # "e":Ljava/lang/Exception;
    .end local v22    # "start":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 149
    .restart local v4    # "info":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;
    .restart local v6    # "currentUser":Ljava/lang/String;
    .restart local v7    # "clonedSaveCid2SidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v8    # "tmpDiffList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "checksumBuilder":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;
    .restart local v12    # "dao":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;
    .restart local v15    # "idBuilder":Ljava/lang/StringBuilder;
    .restart local v16    # "nowChecksumEntrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;>;"
    .restart local v17    # "nowChecksumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    .restart local v18    # "result":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;
    .restart local v19    # "savedChecksumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    .restart local v22    # "start":J
    :cond_2
    :try_start_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 150
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 151
    .restart local v11    # "cid":Ljava/lang/Integer;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;

    .line 152
    .local v9, "checksum":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;
    iget-object v0, v9, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->sid:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 153
    .local v20, "sid":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 154
    iget-object v3, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;->sidList:Ljava/util/List;

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_1

    .line 168
    .end local v6    # "currentUser":Ljava/lang/String;
    .end local v7    # "clonedSaveCid2SidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v8    # "tmpDiffList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "checksum":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;
    .end local v10    # "checksumBuilder":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;
    .end local v11    # "cid":Ljava/lang/Integer;
    .end local v12    # "dao":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    .end local v15    # "idBuilder":Ljava/lang/StringBuilder;
    .end local v16    # "nowChecksumEntrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;>;"
    .end local v17    # "nowChecksumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    .end local v18    # "result":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;
    .end local v19    # "savedChecksumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    .end local v20    # "sid":Ljava/lang/String;
    :catchall_1
    move-exception v2

    .line 169
    :try_start_7
    const-string v3, "DEBUG_TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v24, "queryLocalChangeByVersion :"

    move-object/from16 v0, v24

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v22

    move-wide/from16 v0, v24

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 156
    .restart local v6    # "currentUser":Ljava/lang/String;
    .restart local v7    # "clonedSaveCid2SidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v8    # "tmpDiffList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "checksum":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;
    .restart local v10    # "checksumBuilder":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;
    .restart local v11    # "cid":Ljava/lang/Integer;
    .restart local v12    # "dao":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;
    .restart local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    .restart local v15    # "idBuilder":Ljava/lang/StringBuilder;
    .restart local v16    # "nowChecksumEntrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;>;"
    .restart local v17    # "nowChecksumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    .restart local v18    # "result":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;
    .restart local v19    # "savedChecksumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    .restart local v20    # "sid":Ljava/lang/String;
    :cond_3
    :try_start_8
    iget-object v3, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;->diffList:Ljava/util/List;

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 163
    .end local v9    # "checksum":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;
    .end local v10    # "checksumBuilder":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;
    .end local v11    # "cid":Ljava/lang/Integer;
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    .end local v15    # "idBuilder":Ljava/lang/StringBuilder;
    .end local v16    # "nowChecksumEntrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;>;"
    .end local v17    # "nowChecksumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    .end local v18    # "result":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$ChecksumResult;
    .end local v19    # "savedChecksumMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/CheckSumVO;>;"
    .end local v20    # "sid":Ljava/lang/String;
    .restart local v21    # "sidCollections":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 164
    .restart local v20    # "sid":Ljava/lang/String;
    iget-object v3, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/vo/LocalChange;->delList:Ljava/util/List;

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_2
.end method

.method public resetLastestLocalChange()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/manager/impl/ContactMetadataManagerImpl;->isChangeDirty:Z

    .line 52
    return-void
.end method
