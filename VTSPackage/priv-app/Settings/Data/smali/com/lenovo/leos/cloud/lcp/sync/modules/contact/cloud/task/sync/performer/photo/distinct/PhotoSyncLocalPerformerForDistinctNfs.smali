.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncLocalPerformerForDistinctNfs;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;
.source "PhotoSyncLocalPerformerForDistinctNfs.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "stepListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    .param p3, "photoCidLengthCache2"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;
    .param p4, "portraitChecksumResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncCache;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected buildSubBackupRequest(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "cDiffList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitSDel()Ljava/util/List;

    move-result-object v0

    .line 45
    .local v0, "sDel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 46
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitSDiffList()Ljava/util/List;

    move-result-object v1

    .line 50
    .local v1, "sDiff":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 51
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    :cond_1
    return-void
.end method

.method protected buildSubFastBackupRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoFastBackupRequest;)V
    .locals 3
    .param p1, "fastBackupRequest"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoFastBackupRequest;

    .prologue
    .line 35
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitSDel()Ljava/util/List;

    move-result-object v0

    .line 36
    .local v0, "sDel":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->buildExistFastBackpRequest(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoFastBackupRequest;)V

    .line 38
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitSDiffList()Ljava/util/List;

    move-result-object v1

    .line 39
    .local v1, "sDiff":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->buildExistFastBackpRequest(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoFastBackupRequest;)V

    .line 40
    return-void
.end method

.method protected computeBackupPortraitCount()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitCDiff()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 58
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitCAdd()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitSDel()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 60
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/PhotoChecksumResponse;->getPortraitSDiffList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->backupPortraitCount:I

    .line 61
    return-void
.end method

.method protected computeRestorePortraitCount()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->restorePortraitCount:I

    .line 66
    return-void
.end method

.method protected startTask()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->notifyProgress(F)V

    .line 30
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoSyncPerformerForDistinctNfs;->doPortraitBackup()V

    .line 31
    const/high16 v0, 0x42c80000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->notifyProgress(F)V

    .line 32
    return-void
.end method
