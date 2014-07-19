.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncCloudPerformer;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;
.source "ContactSyncCloudPerformer.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "stepProgressListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    .param p3, "checksumPerformer"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChecksumPerformer;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected buildCAddContactsX(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;Ljava/util/List;)V
    .locals 0
    .param p1, "request"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 87
    .local p2, "addCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    return-void
.end method

.method protected buildCDeleteContactsX(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;Ljava/util/List;)V
    .locals 0
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "sids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    return-void
.end method

.method protected buildCDiffContactsX(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;Ljava/util/List;)V
    .locals 0
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "sids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    return-void
.end method

.method protected buildSAddRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;Ljava/util/List;)V
    .locals 1
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 79
    .local p2, "sids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactSAdd()Ljava/util/List;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->buildSAddRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;Ljava/util/List;)V

    .line 80
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCDel()Ljava/util/List;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->buildSAddRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;Ljava/util/List;)V

    .line 81
    return-void
.end method

.method protected buildSDelete(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "sids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v2, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCAdd()Ljava/util/List;

    move-result-object v1

    .line 52
    .local v1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 67
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 68
    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->digestDBBatchOperation(Ljava/util/List;)[Landroid/content/ContentProviderResult;

    .line 71
    :cond_1
    invoke-super {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->buildSDelete(Ljava/util/List;)V

    .line 72
    return-void

    .line 52
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 53
    .local v0, "cid":Ljava/lang/Integer;
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->restoreCur:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->restoreCur:I

    .line 54
    const/high16 v4, 0x3f800000

    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->restoreCur:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->restoreTotal:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->notifyStepProgress(F)V

    .line 56
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_3

    .line 57
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->opRestoreDeleteCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->opRestoreDeleteCount:I

    .line 58
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->newDeleteOpertion(I)Landroid/content/ContentProviderOperation;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->deletedCids:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x64

    if-le v4, v5, :cond_0

    .line 63
    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->digestDBBatchOperation(Ljava/util/List;)[Landroid/content/ContentProviderResult;

    goto :goto_0
.end method

.method protected buildSDiffRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;Ljava/util/List;)V
    .locals 1
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "sids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactSDiff()Ljava/util/List;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->buildSDiffRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;Ljava/util/List;)V

    .line 39
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCDiff()Ljava/util/List;

    move-result-object v0

    invoke-super {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->buildSDiffRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;Ljava/util/List;)V

    .line 40
    return-void
.end method

.method protected getRestoreCount()I
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactSDiff()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactSDel()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 29
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactSAdd()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 29
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCDiff()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 30
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCDel()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 28
    add-int/2addr v0, v1

    .line 30
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactSyncPerformer;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCAdd()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 28
    add-int/2addr v0, v1

    return v0
.end method
