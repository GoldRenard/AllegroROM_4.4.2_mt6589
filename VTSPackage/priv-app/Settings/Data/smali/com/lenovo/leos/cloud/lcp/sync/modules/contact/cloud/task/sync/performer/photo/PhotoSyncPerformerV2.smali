.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;
.source "PhotoSyncPerformerV2.java"


# static fields
.field private static final PHOTO_PAGE_NUMBER:I = 0xf


# instance fields
.field private backupCurCount:I

.field private backupTotalCount:I

.field private downloadTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;

.field private hasPhotoCidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private photoCount:I

.field private uploadTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "stepListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    .param p3, "contactChecksumResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;
    .param p4, "portraitChecksumResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;)V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->hasPhotoCidList:Ljava/util/List;

    .line 51
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->backupTotalCount:I

    .line 52
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->backupCurCount:I

    .line 54
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->uploadTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;

    .line 55
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->downloadTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;

    .line 62
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;)Ljava/util/List;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->hasPhotoCidList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->backupCurCount:I

    return v0
.end method

.method static synthetic access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;I)V
    .locals 0

    .prologue
    .line 52
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->backupCurCount:I

    return-void
.end method

.method static synthetic access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;)I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->backupTotalCount:I

    return v0
.end method

.method static synthetic access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->addPhotoEntityToTask(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    return-void
.end method

.method static synthetic access$6(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    return v0
.end method

.method static synthetic access$7(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;Ljava/util/List;Ljava/lang/String;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-direct {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->saveSinglePhoto(Ljava/util/List;Ljava/lang/String;[B)V

    return-void
.end method

.method private addPhotoEntityToTask(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 7
    .param p1, "contactSid"    # Ljava/lang/String;
    .param p2, "dataCid"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactPhotoProxy;->openContactPhotoInputStream(Landroid/content/Context;J)Ljava/io/InputStream;

    move-result-object v3

    .line 222
    .local v3, "is":Ljava/io/InputStream;
    if-nez v3, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->getPortraitCacheFile()Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "portrait."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 229
    .local v1, "f":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 230
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    .line 232
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 233
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->uploadTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, p1, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->addEntity(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 234
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->photoCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->photoCount:I

    .line 236
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->photoCount:I

    rem-int/lit8 v4, v4, 0xf

    if-nez v4, :cond_0

    .line 237
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->executeUpload(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private backupExistContactPortraits()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getPortraitCDiff()Ljava/util/List;

    move-result-object v2

    .line 191
    .local v2, "contactSidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getPortraitCAdd()Ljava/util/List;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 193
    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->buildSubRequest(Ljava/util/List;)V

    .line 195
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCAdd()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->backupTotalCount:I

    .line 197
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "len":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 217
    return-void

    .line 198
    :cond_0
    iget v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->backupCurCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->backupCurCount:I

    .line 199
    const/high16 v6, 0x3f800000

    iget v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->backupCurCount:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->backupTotalCount:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->notifyStepProgress(F)V

    .line 201
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    .line 203
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "contactSid":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    .line 205
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 204
    invoke-static {v6, v1, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactCid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 207
    .local v0, "cid":Ljava/lang/Integer;
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->hasPhotoCidList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 197
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 211
    :cond_2
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->queryRawContact(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    move-result-object v5

    .line 212
    .local v5, "rc":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    if-eqz v5, :cond_1

    .line 213
    iget v6, v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->contactId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v1, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->addPhotoEntityToTask(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    iget v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->cloudDiffCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->cloudDiffCount:I

    goto :goto_1
.end method

.method private backupNewContactPortraits()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 133
    iget-object v11, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getContactCAdd()Ljava/util/List;

    move-result-object v6

    .line 134
    .local v6, "newContactCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 135
    .local v9, "startPhoto":J
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->loadRawContactMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v7

    .line 137
    .local v7, "rawContactMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 138
    .local v2, "endload":J
    const-string v11, "DEBUG_TAG"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "loadRawContactMap:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v13, v2, v9

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "len":I
    :goto_0
    if-lt v4, v5, :cond_0

    .line 154
    const-string v11, "DEBUG_TAG"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "backupNewContactPortraits:"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v2

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void

    .line 140
    :cond_0
    iget v11, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->backupCurCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->backupCurCount:I

    .line 141
    const/high16 v11, 0x3f800000

    iget v12, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->backupCurCount:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    iget v12, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->backupTotalCount:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    invoke-virtual {p0, v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->notifyStepProgress(F)V

    .line 143
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 144
    .local v0, "cid":Ljava/lang/Integer;
    iget-object v11, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 145
    iget-object v13, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v13}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 144
    invoke-static {v11, v12, v13}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactSid(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "contactSid":Ljava/lang/String;
    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    .line 147
    .local v8, "rc":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    iget-object v11, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->hasPhotoCidList:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    if-eqz v1, :cond_1

    if-nez v8, :cond_2

    .line 139
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 151
    :cond_2
    iget v11, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->cloudAddCount:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->cloudAddCount:I

    .line 152
    iget v11, v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->contactId:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-direct {p0, v1, v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->addPhotoEntityToTask(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1
.end method

.method private batchDownloadPortrait(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;)V
    .locals 0
    .param p1, "request"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->streamPortraitRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;)V

    .line 335
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;->clearPortraits()V

    .line 336
    return-void
.end method

.method private buildAddContactFirstBackup()V
    .locals 6

    .prologue
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 82
    .local v0, "endload":J
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->hasPhotoCidList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->backupTotalCount:I

    .line 84
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2$1;

    invoke-direct {v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;)V

    .line 107
    const-string v4, "deleted = 0"

    const/4 v5, 0x0

    .line 84
    invoke-interface {v2, v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseRawContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 108
    const-string v2, "DEBUG_TAG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "buildAddContactFirstBackup:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return-void
.end method

.method private buildFieldIdMap()V
    .locals 5

    .prologue
    .line 310
    const-string v0, "mimetype = ? and data15 is not null "

    .line 313
    .local v0, "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "vnd.android.cursor.item/photo"

    aput-object v3, v1, v2

    .line 315
    .local v1, "whereArg":[Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2$4;

    invoke-direct {v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2$4;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;)V

    .line 328
    const/4 v4, 0x0

    .line 315
    invoke-interface {v2, v3, v0, v1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseContactData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    return-void
.end method

.method private buildSinglePhotoOperation(Ljava/util/List;[BLjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 3
    .param p2, "photoBytes"    # [B
    .param p3, "fieldId"    # Ljava/lang/Integer;
    .param p4, "cid"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;[B",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 390
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;-><init>()V

    .line 391
    .local v0, "photo":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    const-string v1, "vnd.android.cursor.item/photo"

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->mimetype:Ljava/lang/String;

    .line 392
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    .line 393
    iput-object p2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data15:[B

    .line 395
    if-nez p3, :cond_0

    .line 396
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->localAddCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->localAddCount:I

    .line 397
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, p1, v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->newCreateDataOperation(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;I)V

    .line 403
    :goto_0
    return-void

    .line 399
    :cond_0
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->localDiffCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->localDiffCount:I

    .line 400
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->newDeleteFieldDataOpertion(I)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, p1, v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->newCreateDataOperation(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;I)V

    goto :goto_0
.end method

.method private executeUpload(Z)V
    .locals 1
    .param p1, "isFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->uploadTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;

    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->execute(Z)Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;

    .line 262
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->photoCount:I

    .line 264
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->getPortraitCacheFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 265
    return-void
.end method

.method private fetchRawContact(Ljava/util/Map;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p2, "idBuilder"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;",
            ">;",
            "Ljava/lang/StringBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "rawContactMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;>;"
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 177
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2$3;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2$3;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;Ljava/util/Map;)V

    .line 185
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id in ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 177
    invoke-interface {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseRawContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 187
    return-void
.end method

.method private getPortraitCacheFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 246
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "portrait"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 248
    .local v0, "cacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 252
    :cond_0
    return-object v0
.end method

.method private loadLocalHasPhotoCid()V
    .locals 8

    .prologue
    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 113
    .local v0, "endload":J
    const-string v2, "mimetype = ? and data15 is not null "

    .line 116
    .local v2, "where":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "vnd.android.cursor.item/photo"

    aput-object v5, v3, v4

    .line 118
    .local v3, "whereArg":[Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2$2;

    invoke-direct {v5, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2$2;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;)V

    .line 128
    const/4 v6, 0x0

    .line 118
    invoke-interface {v4, v5, v2, v3, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseContactData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string v4, "DEBUG_TAG"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "loadLocalHasPhotoCid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    return-void
.end method

.method private loadRawContactMap(Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "newContactCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 159
    .local v3, "rawContactMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v1, "idBuilder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 161
    .local v2, "index":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 169
    invoke-direct {p0, v3, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->fetchRawContact(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    .line 171
    :cond_1
    return-object v3

    .line 161
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 162
    .local v0, "cid":Ljava/lang/Integer;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    add-int/lit8 v2, v2, 0x1

    .line 164
    rem-int/lit16 v5, v2, 0x3e8

    if-nez v5, :cond_0

    .line 165
    invoke-direct {p0, v3, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->fetchRawContact(Ljava/util/Map;Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method

.method private saveSinglePhoto(Ljava/util/List;Ljava/lang/String;[B)V
    .locals 5
    .param p2, "sid"    # Ljava/lang/String;
    .param p3, "photoBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 368
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->sid2fieldIdMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 369
    .local v1, "fieldId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    .line 370
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 369
    invoke-static {v3, p2, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactCid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 372
    .local v0, "cid":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_0

    .line 373
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-interface {v3, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->queryContactCId(Ljava/lang/String;)I

    move-result v2

    .line 374
    .local v2, "qcid":I
    if-eqz v2, :cond_0

    .line 375
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 378
    .end local v2    # "qcid":I
    :cond_0
    if-eqz v0, :cond_1

    .line 379
    invoke-direct {p0, p1, p3, v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->buildSinglePhotoOperation(Ljava/util/List;[BLjava/lang/Integer;Ljava/lang/Integer;)V

    .line 382
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x32

    if-le v3, v4, :cond_2

    .line 383
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactDButil;->commitOperations(Landroid/content/Context;Ljava/util/List;)[Landroid/content/ContentProviderResult;

    .line 384
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 386
    :cond_2
    return-void
.end method

.method private streamPortraitRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;)V
    .locals 3
    .param p1, "request"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 339
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 341
    .local v0, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->downloadTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;

    invoke-virtual {v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;->setRequestBody(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;)V

    .line 342
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->downloadTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2$5;

    invoke-direct {v2, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2$5;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->setVisitor(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor$PhotoVisitor;)V

    .line 358
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->downloadTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->execute()V

    .line 360
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactDButil;->commitOperations(Landroid/content/Context;Ljava/util/List;)[Landroid/content/ContentProviderResult;

    .line 362
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 364
    :cond_0
    return-void
.end method


# virtual methods
.method protected buildSubRequest(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "contactSidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 409
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->cancel()V

    .line 411
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->uploadTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->uploadTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->cancel()V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->downloadTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->downloadTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;->cancel()V

    .line 418
    :cond_1
    return-void
.end method

.method protected doPortraitBackup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 66
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->setProgressStep(I)V

    .line 67
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->loadLocalHasPhotoCid()V

    .line 68
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->contactChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getSyncType()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 69
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->buildAddContactFirstBackup()V

    .line 75
    :goto_0
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->photoCount:I

    if-lez v0, :cond_0

    .line 76
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->executeUpload(Z)V

    .line 78
    :cond_0
    return-void

    .line 71
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->backupExistContactPortraits()V

    .line 72
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->backupNewContactPortraits()V

    goto :goto_0
.end method

.method protected doPortraitRestore()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 269
    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->setProgressStep(I)V

    .line 270
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 271
    .local v2, "deviceId":Ljava/lang/String;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;

    invoke-direct {v5, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;-><init>(Ljava/lang/String;)V

    .line 274
    .local v5, "request":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getPortraitSAdd()Ljava/util/List;

    move-result-object v1

    .line 275
    .local v1, "contactSidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->portraitChecksumResponse:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;

    invoke-virtual {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/sync/SyncChecksumResponse;->getPortraitSDiff()Ljava/util/List;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 276
    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->buildSubRequest(Ljava/util/List;)V

    .line 278
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->buildFieldIdMap()V

    .line 280
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "len":I
    :goto_0
    if-lt v3, v4, :cond_1

    .line 297
    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;->getPortraitSize()I

    move-result v7

    if-lez v7, :cond_0

    .line 298
    invoke-direct {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->batchDownloadPortrait(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;)V

    .line 301
    .end local v3    # "i":I
    .end local v4    # "len":I
    :cond_0
    return-void

    .line 281
    .restart local v3    # "i":I
    .restart local v4    # "len":I
    :cond_1
    const/high16 v7, 0x3f800000

    add-int/lit8 v8, v3, 0x1

    int-to-float v8, v8

    mul-float/2addr v7, v8

    int-to-float v8, v4

    div-float/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->notifyStepProgress(F)V

    .line 283
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    .line 285
    .local v6, "sid":Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    .line 287
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactCid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 288
    .local v0, "cid":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_2

    .line 289
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;->addPortrait(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;->getPortraitSize()I

    move-result v7

    const/16 v8, 0xf

    if-lt v7, v8, :cond_2

    .line 292
    invoke-direct {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerV2;->batchDownloadPortrait(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;)V

    .line 280
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 422
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 424
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "PHOTO_LOCAL_ADD"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->localAddCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 425
    const-string v1, "PHOTO_LOCAL_DIFF"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->localDiffCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 426
    const-string v1, "PHOTO_CLOUD_ADD"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->cloudAddCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 427
    const-string v1, "PHOTO_CLOUD_DIFF"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/BasePhotoSyncPerformer;->cloudDiffCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 429
    return-object v0
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
    .line 436
    return-void
.end method
