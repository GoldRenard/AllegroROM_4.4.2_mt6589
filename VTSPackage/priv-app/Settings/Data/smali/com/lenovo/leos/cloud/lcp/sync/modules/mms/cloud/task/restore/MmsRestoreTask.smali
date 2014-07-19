.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;
.source "MmsRestoreTask.java"


# static fields
.field private static final MOCK_SLEEP_TIME:I = 0x320

.field private static final TAG:Ljava/lang/String; = "MmsRestoreTask"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->MMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    .line 42
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->setApplicationContext(Landroid/content/Context;)V

    .line 43
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
    .line 46
    .local p2, "selectedRequestMmsEntities":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->selectedMmsEntities:Ljava/util/List;

    .line 48
    return-void
.end method

.method private buildMmsRestoreRequests(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;)Ljava/util/List;
    .locals 13
    .param p1, "checksum"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreRequest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->selectedMmsEntities:Ljava/util/List;

    if-nez v10, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;->getCloudMmsList()Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->selectedMmsEntities:Ljava/util/List;

    .line 226
    :cond_0
    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "deviceId":Ljava/lang/String;
    const-string v6, "-1"

    .line 228
    .local v6, "pid":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v8, "requests":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreRequest;>;"
    const/4 v5, 0x0

    .line 230
    .local v5, "needRestoreObject":Lorg/json/JSONObject;
    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->selectedMmsEntities:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .local v9, "size":I
    const/4 v3, 0x1

    .line 231
    .local v3, "i":I
    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->selectedMmsEntities:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 248
    new-instance v10, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v10}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v10

    .line 231
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    .line 232
    .local v2, "entity":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    invoke-direct {p0, v2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;->needRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;)Lorg/json/JSONObject;

    move-result-object v5

    .line 233
    if-eqz v5, :cond_2

    .line 234
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreRequest;

    invoke-direct {v7, v0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .local v7, "request":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreRequest;
    :try_start_0
    invoke-virtual {v7, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreRequest;->addRestoreBody(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 242
    new-instance v10, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v10}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v10

    .line 237
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Lorg/json/JSONException;
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "Unexcepted JSONException occured"

    invoke-direct {v10, v11, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 245
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v7    # "request":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreRequest;
    :cond_2
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    int-to-float v11, v3

    int-to-float v12, v9

    div-float/2addr v11, v12

    invoke-virtual {p0, v11}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;->notifySubProgress(F)V

    move v3, v4

    .end local v4    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 251
    .end local v2    # "entity":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    :cond_3
    return-object v8
.end method

.method private doAddRestoreMms(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreRequest;)V
    .locals 5
    .param p1, "request"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/SingleMmsDownloader;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreRequest;->getRequestBody()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getHttpMachine()Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/SingleMmsDownloader;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;)V

    .line 119
    .local v1, "revert":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/SingleMmsDownloader;
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/SingleMmsDownloader;->revert()Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    move-result-object v0

    .line 120
    .local v0, "entity":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;->save(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)V

    .line 122
    return-void
.end method

.method private getCloudMmsList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    const-string v0, "phonelist?gzip=false"

    .line 256
    .local v0, "downloadUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v1

    .line 257
    .local v1, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getMmsServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "contact.cloud.lps.lenovo.com"

    invoke-direct {v2, v3, v0, v1, v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 259
    .local v2, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;->wapperResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private mockEncrpyt()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 201
    const/16 v1, 0x67

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 202
    const/high16 v1, 0x3f800000

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;->notifySubProgress(F)V

    .line 203
    const-wide/16 v1, 0x320

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 204
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MmsRestoreTask"

    const-string v2, "mockEncrpyt InterruptedException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private mockGzip()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 213
    const/16 v1, 0x68

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 214
    const/high16 v1, 0x3f800000

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;->notifySubProgress(F)V

    .line 215
    const-wide/16 v1, 0x320

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 216
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MmsRestoreTask"

    const-string v2, "mockGzip InterruptedException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private needRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;)Lorg/json/JSONObject;
    .locals 8
    .param p1, "entity"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    .param p2, "checksum"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;

    .prologue
    .line 167
    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;->getServerAdd()Lorg/json/JSONArray;

    move-result-object v3

    .line 168
    .local v3, "preRequeset":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 181
    const/4 v2, 0x0

    :cond_0
    return-object v2

    .line 170
    :cond_1
    :try_start_0
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 171
    .local v2, "object":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getAddress()Ljava/lang/String;

    move-result-object v4

    const-string v5, "address"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 172
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getDate()J

    move-result-wide v4

    const-string v6, "date"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 173
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getType()I

    move-result v4

    const-string v5, "type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 174
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->localMmsEntities:Ljava/util/List;

    invoke-interface {v4, v5, p1, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;->exists(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;Ljava/util/List;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 168
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v2    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Lorg/json/JSONException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unexcepted JSONException occured"

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private needUpdate(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "entity"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    .param p2, "checksum"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;->getDiff()Lorg/json/JSONArray;

    move-result-object v2

    .line 186
    .local v2, "preRequeset":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 194
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 187
    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 188
    .local v1, "object":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getAddress()Ljava/lang/String;

    move-result-object v3

    const-string v4, "address"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 189
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getDate()J

    move-result-wide v3

    const-string v5, "date"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    .line 190
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getType()I

    move-result v3

    const-string v4, "type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 186
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private restoreDifferentMms(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;)V
    .locals 7
    .param p1, "entity"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    .param p2, "checksum"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;->needUpdate(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;)Lorg/json/JSONObject;

    move-result-object v6

    .line 109
    .local v6, "needUpdateObject":Lorg/json/JSONObject;
    if-eqz v6, :cond_0

    .line 110
    const-string v0, "date"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 111
    .local v2, "date":J
    const-string v0, "type"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 112
    .local v4, "type":I
    const-string v0, "address"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "address":Ljava/lang/String;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;->updateMms(Landroid/content/Context;JILjava/lang/String;)V

    .line 115
    .end local v2    # "date":J
    .end local v4    # "type":I
    .end local v5    # "address":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private save(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)V
    .locals 7
    .param p1, "entity"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->localMmsEntities:Ljava/util/List;

    invoke-interface {v4, v5, p1, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;->exists(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getTmpFilepath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 89
    .local v2, "zipDir":Ljava/lang/String;
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;

    invoke-direct {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;-><init>()V

    .line 91
    .local v3, "zipManager":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->getTmpFilepath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;->releaseZipToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5, p1, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;->createMms(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;Ljava/io/File;)V

    .line 93
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfAdd:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfAdd:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .end local v2    # "zipDir":Ljava/lang/String;
    .end local v3    # "zipManager":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/ZipManager;
    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->deleteMmsCacheDir()Z

    .line 105
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "ioe":Ljava/io/IOException;
    :try_start_1
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-interface {v4, v5, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;->removeDamagedDataAfterException(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)V

    .line 97
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .end local v1    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 103
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->deleteMmsCacheDir()Z

    .line 104
    throw v4

    .line 98
    :catch_1
    move-exception v0

    .line 99
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-interface {v4, v5, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;->removeDamagedDataAfterException(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)V

    .line 100
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsFileUtil;->deleteMmsCacheDir()Z

    goto :goto_0
.end method

.method private startRestoreMms(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;)V
    .locals 8
    .param p1, "checksum"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;->hasSAdd()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;->hasDiff()Z

    move-result v5

    if-nez v5, :cond_1

    .line 126
    const/4 v5, 0x0

    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 164
    :cond_0
    return-void

    .line 129
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;->mockEncrpyt()V

    .line 131
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;->mockGzip()V

    .line 134
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;->hasDiff()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 135
    const/16 v5, 0x6b

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 136
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;->getDiff()Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 137
    .local v4, "size":I
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->selectedMmsEntities:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 152
    .end local v4    # "size":I
    :cond_3
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;->hasSAdd()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 153
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;->buildMmsRestoreRequests(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;)Ljava/util/List;

    move-result-object v2

    .line 156
    .local v2, "requestBodies":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreRequest;>;"
    const/16 v5, 0x69

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 157
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 158
    .restart local v4    # "size":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreRequest;

    .line 159
    .local v3, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreRequest;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->checkCancelOperation()V

    .line 160
    iget v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfAdd:I

    int-to-float v6, v6

    int-to-float v7, v4

    div-float/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;->notifySubProgress(F)V

    .line 161
    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;->doAddRestoreMms(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreRequest;)V

    goto :goto_0

    .line 137
    .end local v2    # "requestBodies":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreRequest;>;"
    .end local v3    # "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsRestoreRequest;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    .line 139
    .local v1, "entity":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    :try_start_0
    iget v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfUpdate:I

    int-to-float v6, v6

    int-to-float v7, v4

    div-float/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;->notifySubProgress(F)V

    .line 140
    invoke-direct {p0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;->restoreDifferentMms(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;)V

    .line 141
    iget v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfUpdate:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfUpdate:I

    .line 142
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 143
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v5}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    .line 147
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Unexcepted JSONException occured"

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private wapperResult(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "resultString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 267
    .local v3, "respJson":Lorg/json/JSONObject;
    const-string v6, "data"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 268
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 276
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "respJson":Lorg/json/JSONObject;
    :goto_1
    return-object v5

    .line 269
    .restart local v1    # "i":I
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    .restart local v3    # "respJson":Lorg/json/JSONObject;
    :cond_0
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    invoke-direct {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;-><init>()V

    .line 270
    .local v4, "result":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;->parseFromPhoneList(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    .line 271
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    .end local v3    # "respJson":Lorg/json/JSONObject;
    .end local v4    # "result":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "MmsRestoreTask"

    const-string v7, "wapperResult unexcepted JSONException"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method protected notifySubProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    const/high16 v1, 0x41a00000

    .line 280
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getProgressStep()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 306
    const-string v0, "MmsRestoreTask"

    const-string v1, "MmsRestoreTask notifyStepProgress, this log shoud not be printed, there must be some unexcepted ERROR."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_0
    return-void

    .line 282
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->notifyProgress(F)V

    goto :goto_0

    .line 285
    :sswitch_1
    mul-float v0, v1, p1

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->notifyProgress(F)V

    goto :goto_0

    .line 288
    :sswitch_2
    const/high16 v0, 0x40e00000

    mul-float/2addr v0, p1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x14

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->notifyProgress(F)V

    goto :goto_0

    .line 291
    :sswitch_3
    const/high16 v0, 0x41e00000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->notifyProgress(F)V

    goto :goto_0

    .line 294
    :sswitch_4
    const/high16 v0, 0x41e80000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->notifyProgress(F)V

    goto :goto_0

    .line 297
    :sswitch_5
    mul-float v0, v1, p1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1e

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->notifyProgress(F)V

    goto :goto_0

    .line 300
    :sswitch_6
    const/high16 v0, 0x42400000

    mul-float/2addr v0, p1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x32

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->notifyProgress(F)V

    goto :goto_0

    .line 303
    :sswitch_7
    const/high16 v0, 0x42c80000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->notifyProgress(F)V

    goto :goto_0

    .line 280
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0x68 -> :sswitch_4
        0x69 -> :sswitch_6
        0x6b -> :sswitch_5
        0x7fffffff -> :sswitch_7
    .end sparse-switch
.end method

.method public startTaskWithSmoothProgress()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v5, 0x7fffffff

    const/high16 v4, 0x3f800000

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->start:J

    .line 56
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->getRequestEntityFromResover()V

    .line 58
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;->getMmsEntities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->localMmsEntities:Ljava/util/List;

    .line 61
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 62
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;->notifySubProgress(F)V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->startCompareMms(Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;

    move-result-object v9

    .line 64
    .local v9, "checksum":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-nez v0, :cond_0

    .line 65
    invoke-direct {p0, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;->startRestoreMms(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->mmsUid2Id:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->mmsUid2Id:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 71
    :cond_1
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfAdd:I

    if-eqz v0, :cond_2

    .line 72
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 74
    :cond_2
    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->setProgressStatus(I)V

    .line 75
    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;->notifySubProgress(F)V

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->cost:J

    .line 78
    const-string v1, "LCPMms"

    const-string v2, "MMS_RESTORE"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 79
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->cost:J

    const-string v7, "1"

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfAdd:I

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfUpdate:I

    add-int/2addr v8, v0

    move-object v0, p0

    .line 78
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 81
    return-void

    .line 67
    .end local v9    # "checksum":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;
    :catchall_0
    move-exception v0

    move-object v10, v0

    .line 68
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->mmsUid2Id:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 69
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->mmsUid2Id:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 71
    :cond_3
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfAdd:I

    if-eqz v0, :cond_4

    .line 72
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    const-class v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUpdateConversations;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 74
    :cond_4
    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->setProgressStatus(I)V

    .line 75
    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;->notifySubProgress(F)V

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->cost:J

    .line 78
    const-string v1, "LCPMms"

    const-string v2, "MMS_RESTORE"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 79
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->cost:J

    const-string v7, "1"

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfAdd:I

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfUpdate:I

    add-int/2addr v8, v0

    move-object v0, p0

    .line 78
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 80
    throw v10
.end method
