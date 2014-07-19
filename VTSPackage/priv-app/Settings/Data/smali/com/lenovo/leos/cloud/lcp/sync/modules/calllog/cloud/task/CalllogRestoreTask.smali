.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogRestoreTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;
.source "CalllogRestoreTask.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->CALLLOG:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method private buildRestoreRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogRestoreRequest;
    .locals 3
    .param p1, "checksum"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "deviceId":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogRestoreRequest;

    invoke-direct {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogRestoreRequest;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogRestoreRequest;
    const/high16 v2, 0x3f000000

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->notifyProgress(F)V

    .line 100
    invoke-direct {p0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogRestoreTask;->buildSmsRestoreRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogRestoreRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;)V

    .line 101
    const/high16 v2, 0x3f800000

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->notifyProgress(F)V

    .line 102
    return-object v1
.end method

.method private buildSmsRestoreRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogRestoreRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;)V
    .locals 3
    .param p1, "request"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogRestoreRequest;
    .param p2, "checksum"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v1

    .line 160
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->getSAdd()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogRestoreRequest;->addRestoreBody(Lorg/json/JSONArray;)V

    .line 161
    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->getDiff()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogRestoreRequest;->addRestoreBody(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexcepted JSONException occured"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private doRestoreRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;
    .locals 10
    .param p1, "checksum"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    const/high16 v8, 0x3f800000

    .line 107
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->hasSAdd()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;->hasDiff()Z

    move-result v6

    if-nez v6, :cond_0

    .line 108
    iput v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 134
    :goto_0
    return-object v5

    .line 112
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogRestoreTask;->mockEncrpyt()V

    .line 114
    invoke-virtual {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->notifyProgress(F)V

    .line 116
    const-string v0, "callhistory/api/v2/revert?gzip=true"

    .line 117
    .local v0, "calllogUrl":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v2

    .line 118
    .local v2, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getCalllogServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v6

    const-string v7, "sms.cloud.lps.lenovo.com"

    invoke-direct {v4, v6, v0, v2, v7}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 120
    .local v4, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogRestoreTask;->mockGzip()V

    .line 122
    invoke-virtual {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->notifyProgress(F)V

    .line 123
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogRestoreTask;->buildRestoreRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogRestoreRequest;

    move-result-object v3

    .line 125
    .local v3, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogRestoreRequest;
    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogRestoreRequest;->hasRestoreData()Z

    move-result v6

    if-nez v6, :cond_1

    .line 126
    iput v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    goto :goto_0

    .line 130
    :cond_1
    const/16 v5, 0x37

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 132
    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogRestoreRequest;->toBytes()[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "json":Ljava/lang/String;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;

    invoke-direct {v5, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private mockEncrpyt()V
    .locals 3

    .prologue
    .line 138
    const/16 v1, 0x35

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 140
    const-wide/16 v1, 0x320

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private mockGzip()V
    .locals 3

    .prologue
    .line 147
    const/16 v1, 0x36

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 149
    const-wide/16 v1, 0x320

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private save(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;)V
    .locals 10
    .param p1, "restoreResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 51
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->getAllCalllog()Ljava/util/List;

    move-result-object v1

    .line 52
    .local v1, "calllogAllLocal":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;>;"
    const/4 v2, 0x0

    .line 53
    .local v2, "cur":I
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 54
    .local v4, "total":I
    iput v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->countOfAdd:I

    .line 55
    iput v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->countOfUpdate:I

    .line 56
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 85
    return-void

    .line 56
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;

    .line 57
    .local v0, "calllog":Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 58
    new-instance v6, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v6}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v6

    .line 61
    :cond_2
    :try_start_0
    iget v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->type:I

    const/4 v8, 0x3

    if-gt v6, v8, :cond_3

    iget v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->type:I

    if-ge v6, v9, :cond_4

    .line 62
    :cond_3
    const/4 v6, 0x1

    iput v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->type:I

    .line 65
    :cond_4
    const/high16 v6, 0x3f800000

    add-int/lit8 v8, v2, 0x1

    int-to-float v8, v8

    mul-float/2addr v6, v8

    int-to-float v8, v4

    div-float/2addr v6, v8

    invoke-virtual {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->notifyProgress(F)V

    .line 66
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->uid2id:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->uid()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_5

    .line 67
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->calllogDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao;

    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-interface {v6, v8, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao;->createCalllog(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;)Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 73
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->uid2id:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->uid()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iget v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->countOfAdd:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->countOfAdd:I

    .line 80
    .end local v5    # "value":Ljava/lang/String;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_5
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->uid2id:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->uid()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;->id:I

    .line 78
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->calllogDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao;

    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-interface {v6, v8, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/CalllogDao;->updateCalllog(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/po/Calllog;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 81
    :catch_0
    move-exception v3

    .line 82
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getParams()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 89
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "countOfAdd"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->countOfAdd:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 91
    const-string v1, "countOfUpdate"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->countOfUpdate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 92
    return-object v0
.end method

.method protected onStartCalllogTask(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;)V
    .locals 10
    .param p1, "checksum"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogRestoreTask;->doRestoreRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/protocol/CalllogChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;

    move-result-object v9

    .line 35
    .local v9, "restoreResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;
    if-nez v9, :cond_0

    .line 48
    :goto_0
    return-void

    .line 37
    :cond_0
    invoke-virtual {v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->getResult()I

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    const/4 v0, -0x2

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 40
    :cond_1
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-nez v0, :cond_2

    invoke-virtual {v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;->getResult()I

    move-result v0

    if-nez v0, :cond_2

    .line 41
    const/16 v0, 0x38

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 42
    invoke-direct {p0, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogRestoreTask;->save(Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/protocol/CalllogRestoreResponse;)V

    .line 44
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->cost:J

    .line 45
    const-string v1, "LCPCalllog"

    const-string v2, "CALLLOG_RESTORE"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 46
    iget v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->cost:J

    const-string v7, "1"

    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->countOfAdd:I

    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->countOfUpdate:I

    add-int/2addr v8, v0

    move-object v0, p0

    .line 45
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogTask;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    goto :goto_0
.end method
