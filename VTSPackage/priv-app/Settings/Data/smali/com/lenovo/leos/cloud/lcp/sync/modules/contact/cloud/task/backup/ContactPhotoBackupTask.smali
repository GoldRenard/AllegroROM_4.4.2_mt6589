.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;
.source "ContactPhotoBackupTask.java"


# static fields
.field private static final PHOTO_PAGE_NUMBER:I = 0xa


# instance fields
.field public syncedNumber:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->syncedNumber:I

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->addPhotoMimeItem2Task(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;F)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;->notifyProgress(F)V

    return-void
.end method

.method static synthetic access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;->opUpdateCount:I

    return v0
.end method

.method static synthetic access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;->opUpdateCount:I

    return-void
.end method

.method static synthetic access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;->opAddCount:I

    return v0
.end method

.method static synthetic access$6(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;->opAddCount:I

    return-void
.end method

.method static synthetic access$7(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->buildPortraitCheckSum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V

    return-void
.end method

.method private addPhotoMimeItem2Task(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "contactSid"    # Ljava/lang/String;
    .param p2, "dataCid"    # Ljava/lang/Integer;

    .prologue
    .line 146
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactPhotoProxy;->openContactPhotoInputStream(Landroid/content/Context;J)Ljava/io/InputStream;

    move-result-object v0

    .line 148
    .local v0, "is":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;->netTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;

    invoke-virtual {v1, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;->addMimeItem(Ljava/lang/String;Ljava/io/InputStream;)V

    .line 151
    :cond_0
    return-void
.end method

.method private buildPortraitCheckSum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V
    .locals 7
    .param p1, "checksumRequest"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;
    .param p2, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .prologue
    .line 215
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    iget v5, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    invoke-interface {v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->queryRawContact(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    move-result-object v2

    .line 216
    .local v2, "rawcontact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    iget-object v3, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sourceid:Ljava/lang/String;

    .line 218
    .local v3, "sid":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 219
    iget-object v0, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data15:[B

    .line 220
    .local v0, "b":[B
    if-eqz v0, :cond_0

    array-length v4, v0

    if-lez v4, :cond_0

    .line 221
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    iget v5, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->contactId:I

    int-to-long v5, v5

    invoke-static {v4, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactPhotoProxy;->getContactPhotoLength(Landroid/content/Context;J)I

    move-result v1

    .line 223
    .local v1, "photoSize":I
    if-lez v1, :cond_0

    .line 224
    invoke-virtual {p1, v3, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->addPortrait(Ljava/lang/String;I)V

    .line 225
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;->sid2fieldIdMap:Ljava/util/Map;

    iget v5, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->cid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;->sid2cidMap:Ljava/util/Map;

    iget v5, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .end local v0    # "b":[B
    .end local v1    # "photoSize":I
    :cond_0
    return-void
.end method

.method private buildPortraitCheckSumRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;
    .locals 7

    .prologue
    .line 196
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "deviceId":Ljava/lang/String;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->newPortraitChecksumRequest(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;

    move-result-object v0

    .line 198
    .local v0, "checksumRequest":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;
    const-string v2, "mimetype = ? and data15 is not null "

    .line 199
    .local v2, "where":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "vnd.android.cursor.item/photo"

    aput-object v5, v3, v4

    .line 201
    .local v3, "whereArg":[Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask$4;

    invoke-direct {v5, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask$4;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;)V

    .line 209
    const/4 v6, 0x0

    .line 201
    invoke-interface {v4, v5, v2, v3, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseContactData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-object v0
.end method

.method private doAddPortraitOperations()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 72
    const-string v0, "mimetype = ? and data15 is not null "

    .line 73
    .local v0, "where":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "vnd.android.cursor.item/photo"

    aput-object v3, v1, v2

    .line 75
    .local v1, "whereArg":[Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask$1;

    invoke-direct {v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;)V

    .line 102
    const/4 v4, 0x0

    .line 75
    invoke-interface {v2, v3, v0, v1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseContactData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->getNetTask()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->execute()V

    .line 105
    return-void
.end method

.method private doAddPortraitOperations(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V
    .locals 5
    .param p1, "checksumBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 116
    const/4 v3, 0x0

    .line 117
    .local v3, "photoCount":I
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->getAddPhotoContactSidList(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)Ljava/util/List;

    move-result-object v0

    .line 118
    .local v0, "contactSidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-le v1, v2, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->getNetTask()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->execute()V

    .line 126
    iput v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->syncedNumber:I

    .line 127
    return-void

    .line 119
    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->streamBackupPortrait(Ljava/util/List;II)V

    .line 120
    add-int/lit8 v3, v3, 0x1

    .line 121
    if-eqz v3, :cond_1

    rem-int/lit8 v4, v3, 0xa

    if-nez v4, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->getNetTask()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->execute()V

    .line 118
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private doPhotoCompare()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    const/4 v5, 0x0

    .line 180
    .local v5, "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->buildPortraitCheckSumRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;

    move-result-object v3

    .line 182
    .local v3, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;
    const-string v4, "v4/checksum.action?gzip=true"

    .line 183
    .local v4, "requestUrl":Ljava/lang/String;
    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v2

    .line 184
    .local v2, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getContactServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v8

    const-string v9, "contact.cloud.lps.lenovo.com"

    invoke-direct {v7, v8, v4, v2, v9}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 186
    .local v7, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->toBytes()[B

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "json":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;

    invoke-direct {v6, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    .local v6, "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    move-object v5, v6

    .line 192
    .end local v6    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    .restart local v5    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    :goto_0
    return-object v5

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private doPortraitBackup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V
    .locals 1
    .param p1, "checksumBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;->isChecksum()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->getPortraitNumber()I

    move-result v0

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->doAddPortraitOperations(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->doAddPortraitOperations()V

    goto :goto_0
.end method

.method private getAddPhotoContactSidList(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)Ljava/util/List;
    .locals 2
    .param p1, "checksumBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v0, "contactSidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask$2;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask$2;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->traversePortraitDiff(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V

    .line 163
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask$3;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask$3;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->traversePortraitSDelete(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V

    .line 171
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v1

    .line 174
    :cond_0
    return-object v0
.end method

.method private streamBackupPortrait(Ljava/util/List;II)V
    .locals 5
    .param p2, "i"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "contactSidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v3}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v3

    .line 134
    :cond_0
    add-int/lit8 v3, p2, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    .local v0, "contactSid":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;->sid2cidMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 137
    .local v1, "dataCid":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->queryRawContact(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    move-result-object v2

    .line 138
    .local v2, "rc":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    if-eqz v2, :cond_1

    .line 139
    iget v3, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->contactId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->addPhotoMimeItem2Task(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    :cond_1
    const v3, 0x3e99999a

    add-int/lit8 v4, p2, 0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v4, p3

    div-float/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;->notifyProgress(F)V

    .line 143
    return-void
.end method


# virtual methods
.method protected getNetTask()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;
    .locals 3

    .prologue
    .line 234
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    const-string v2, "v4/stream/photobackup.action"

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

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
    .line 242
    return-void
.end method

.method protected startTask()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 44
    .local v0, "checksumBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;->isChecksum()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->doPhotoCompare()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->getResult()I

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->getResult()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 48
    const/4 v1, 0x3

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 57
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v1, -0x2

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    goto :goto_0

    .line 56
    :cond_1
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;->doPortraitBackup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V

    goto :goto_0
.end method
