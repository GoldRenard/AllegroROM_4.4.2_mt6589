.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;
.source "MmsBackupTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MmsBackupTask"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->MMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    .line 35
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->setApplicationContext(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "selectedRequestMmsEntities":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->selectedMmsEntities:Ljava/util/List;

    .line 42
    return-void
.end method

.method private backupDifferentMms(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checksum"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {p1}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "deviceId":Ljava/lang/String;
    const-string v3, "-1"

    .line 224
    .local v3, "pid":Ljava/lang/String;
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;

    invoke-direct {v4, v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .local v4, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;
    invoke-virtual {p0, v4, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;->doDiffMms(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;)Ljava/lang/String;

    move-result-object v5

    .line 227
    .local v5, "response":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 228
    .local v2, "json":Lorg/json/JSONObject;
    const-string v7, "result"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 229
    .local v6, "result":I
    if-nez v6, :cond_0

    .line 230
    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;->getDiff()Lorg/json/JSONArray;

    move-result-object v7

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v7

    iput v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfUpdate:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    return-void

    .line 232
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v6    # "result":I
    :catch_0
    move-exception v1

    .line 233
    .local v1, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Unexcepted JSONException occured"

    invoke-direct {v7, v8, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private buildMmsBackupEnties(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;)Ljava/util/List;
    .locals 4
    .param p1, "checksum"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v1, "uploadEntities":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->selectedMmsEntities:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 206
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v2

    .line 199
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    .line 200
    .local v0, "mmsEntity":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;->needBackup(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 201
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    .end local v0    # "mmsEntity":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    :cond_2
    const/high16 v2, 0x3f800000

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;->notifySubProgress(F)V

    .line 209
    return-object v1
.end method

.method private doMmsBackup(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;)Ljava/util/List;
    .locals 2
    .param p1, "checksum"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 144
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;->hasCAdd()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;->hasDiff()Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 159
    :cond_0
    :goto_0
    return-object v0

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;->mockEncrpyt()V

    .line 149
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;->hasDiff()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;->backupDifferentMms(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;)V

    .line 152
    :cond_2
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;->mockGzip()V

    .line 154
    const/16 v1, 0x69

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 155
    const/high16 v1, 0x3f800000

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;->notifySubProgress(F)V

    .line 156
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;->hasCAdd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;->buildMmsBackupEnties(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private mockEncrpyt()V
    .locals 3

    .prologue
    .line 165
    const/16 v1, 0x67

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 166
    const/high16 v1, 0x3f800000

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;->notifySubProgress(F)V

    .line 167
    const-wide/16 v1, 0x320

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MmsBackupTask"

    const-string v2, " mockEncrpyt InterruptedException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private mockGzip()V
    .locals 3

    .prologue
    .line 176
    const/16 v1, 0x67

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 177
    const/high16 v1, 0x3f800000

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;->notifySubProgress(F)V

    .line 178
    const-wide/16 v1, 0x320

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MmsBackupTask"

    const-string v2, " mockGzip InterruptedException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private needBackup(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;)Z
    .locals 8
    .param p1, "entity"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    .param p2, "checksum"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;

    .prologue
    .line 239
    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;->getClientAdd()Lorg/json/JSONArray;

    move-result-object v3

    .line 240
    .local v3, "preRequeset":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 252
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 242
    :cond_0
    :try_start_0
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 243
    .local v2, "object":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "address"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 244
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getDate()J

    move-result-wide v4

    const-string v6, "date"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 245
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getType()I

    move-result v4

    const-string v5, "type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v4, v5, :cond_1

    .line 246
    const/4 v4, 0x1

    goto :goto_1

    .line 248
    .end local v2    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexcepted JSONException occured"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 240
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "object":Lorg/json/JSONObject;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private startBackupMms(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;)V
    .locals 11
    .param p1, "checksum"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;->doMmsBackup(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;)Ljava/util/List;

    move-result-object v6

    .line 95
    .local v6, "upLoadEntities":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    if-nez v6, :cond_1

    .line 131
    :cond_0
    return-void

    .line 99
    :cond_1
    const/16 v7, 0x6b

    invoke-virtual {p0, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 100
    const/high16 v7, 0x3f800000

    invoke-virtual {p0, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;->notifySubProgress(F)V

    .line 101
    const/4 v0, 0x1

    .local v0, "i":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 102
    .local v4, "size":I
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/SingleMmsUploader;

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getHttpMachine()Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/SingleMmsUploader;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;)V

    .line 103
    .local v2, "mmsBackup":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/SingleMmsUploader;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    .line 105
    .local v3, "mmsEntity":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    :try_start_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->deleteMmsCacheDir()Z

    .line 107
    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getPduId()I

    move-result v10

    invoke-interface {v8, v9, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;->doZipSelectedEntityByPduId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 108
    .local v5, "tmpFile":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_2

    .line 119
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->deleteMmsCacheDir()Z

    goto :goto_0

    .line 111
    :cond_2
    :try_start_1
    invoke-virtual {v3, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->setTmpFilepath(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/SingleMmsUploader;->backup(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 113
    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfAdd:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfAdd:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    int-to-float v8, v0

    int-to-float v9, v4

    div-float/2addr v8, v9

    :try_start_2
    invoke-virtual {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;->notifySubProgress(F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v0, v1

    .line 117
    .end local v1    # "i":I
    .restart local v0    # "i":I
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 119
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->deleteMmsCacheDir()Z

    goto :goto_0

    .line 118
    .end local v5    # "tmpFile":Ljava/lang/String;
    :catchall_0
    move-exception v7

    .line 119
    :goto_1
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->deleteMmsCacheDir()Z

    .line 120
    throw v7

    .line 118
    .end local v0    # "i":I
    .restart local v1    # "i":I
    .restart local v5    # "tmpFile":Ljava/lang/String;
    :catchall_1
    move-exception v7

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1
.end method


# virtual methods
.method public doDiffMms(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;)Ljava/lang/String;
    .locals 5
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;
    .param p2, "checksum"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    const-string v3, "changelocked"

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v2

    .line 259
    .local v2, "uriMaker":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;->getDiff()Lorg/json/JSONArray;

    move-result-object v0

    .line 261
    .local v0, "diffArray":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;->putData(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsProtocol;->toBytes()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unexcepted JSONException occured"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public doQueryLocalMmsNumber(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    invoke-interface {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;->doQueryLocalMmsNumber(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected notifySubProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    const/high16 v1, 0x40e00000

    .line 272
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getProgressStep()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 301
    const-string v0, "MmsBackupTask"

    const-string v1, "MmsBackupTask notifyStepProgress, this log shoud not be printed, there must be some unexcepted ERROR."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_0
    return-void

    .line 274
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->notifyProgress(F)V

    goto :goto_0

    .line 277
    :sswitch_1
    const/high16 v0, 0x41a00000

    mul-float/2addr v0, p1

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->notifyProgress(F)V

    goto :goto_0

    .line 280
    :sswitch_2
    mul-float v0, v1, p1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->notifyProgress(F)V

    goto :goto_0

    .line 283
    :sswitch_3
    const/high16 v0, 0x41e00000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->notifyProgress(F)V

    goto :goto_0

    .line 286
    :sswitch_4
    const/high16 v0, 0x41e80000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->notifyProgress(F)V

    goto :goto_0

    .line 289
    :sswitch_5
    const/high16 v0, 0x41f00000

    mul-float/2addr v0, p1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->notifyProgress(F)V

    goto :goto_0

    .line 295
    :sswitch_6
    mul-float v0, v1, p1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->notifyProgress(F)V

    goto :goto_0

    .line 298
    :sswitch_7
    const/high16 v0, 0x42c80000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->notifyProgress(F)V

    goto :goto_0

    .line 272
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_5
        0x6b -> :sswitch_6
        0x7fffffff -> :sswitch_7
    .end sparse-switch
.end method

.method public startTaskWithSmoothProgress()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x6e

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->start:J

    .line 59
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->getRequestEntityFromResover()V

    .line 63
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 64
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;->notifySubProgress(F)V

    .line 65
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;->doQueryLocalMmsNumber(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v10

    .line 66
    .local v10, "mmsCount":Ljava/lang/Integer;
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5

    .line 67
    :cond_0
    const/16 v0, 0x6e

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 75
    :cond_1
    :goto_0
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-ne v0, v2, :cond_3

    .line 77
    :cond_2
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 78
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;->notifySubProgress(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->mmsUid2Id:Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 82
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->mmsUid2Id:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 85
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->cost:J

    .line 86
    const-string v1, "LCPMms"

    const-string v2, "MMS_BACKUP"

    .line 87
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->cost:J

    const-string v7, "0"

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfAdd:I

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfUpdate:I

    add-int/2addr v8, v0

    move-object v0, p0

    .line 86
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 89
    return-void

    .line 70
    :cond_5
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->startCompareMms(Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;

    move-result-object v9

    .line 71
    .local v9, "checksum":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-nez v0, :cond_1

    .line 72
    invoke-direct {p0, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;->startBackupMms(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 80
    .end local v9    # "checksum":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;
    .end local v10    # "mmsCount":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    move-object v11, v0

    .line 81
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->mmsUid2Id:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 82
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->mmsUid2Id:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 85
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->cost:J

    .line 86
    const-string v1, "LCPMms"

    const-string v2, "MMS_BACKUP"

    .line 87
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->cost:J

    const-string v7, "0"

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfAdd:I

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfUpdate:I

    add-int/2addr v8, v0

    move-object v0, p0

    .line 86
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 88
    throw v11
.end method
