.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;
.source "PhotoStreamDownloaderV2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2$PhotoDownloadProgressListener;
    }
.end annotation


# instance fields
.field public currentTaskId:J

.field private fileApi:Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private requestBody:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;->requestBody:[B

    .line 47
    const-string v0, "portrait"

    invoke-static {p1, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;->fileApi:Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    .line 48
    return-void
.end method

.method private processNfsPhoto(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 118
    const-string v3, "nfs_pt"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 120
    .local v2, "nfsPtArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_1

    .line 130
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 122
    .restart local v0    # "i":I
    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 123
    .local v1, "info":Lorg/json/JSONObject;
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;->processNfsSinglePhoto(Lorg/json/JSONObject;)V

    .line 125
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v3}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v3

    .line 121
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private processNfsSinglePhoto(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "meta"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 133
    const-string v4, "sid"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 134
    .local v3, "sid":Ljava/lang/String;
    const-string v4, "path"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "path":Ljava/lang/String;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-direct {v2, v4, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .local v2, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v4, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)[B

    move-result-object v1

    .line 139
    .local v1, "photoBytes":[B
    invoke-virtual {p0, v3, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->visitPhoto(Ljava/lang/String;[B)V

    .line 140
    return-void
.end method

.method private processPilotPhoto(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "jsonObj"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 81
    const-string v7, "object_key"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 82
    .local v5, "pilotArray":Lorg/json/JSONArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v3, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 85
    .local v2, "key2Sid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v5, :cond_0

    .line 115
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-lt v0, v7, :cond_1

    .line 105
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;->fileApi:Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    new-instance v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2$PhotoDownloadProgressListener;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2$PhotoDownloadProgressListener;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2$PhotoDownloadProgressListener;)V

    new-instance v9, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2$1;

    invoke-direct {v9, p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;Ljava/util/Map;)V

    invoke-virtual {v7, v3, v8, v9}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->batchDownload(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)I

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 92
    .local v1, "info":Lorg/json/JSONObject;
    const-string v7, "sid"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 93
    .local v6, "sid":Ljava/lang/String;
    const-string v7, "key"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, "objectKey":Ljava/lang/String;
    if-eqz v4, :cond_2

    if-eqz v6, :cond_2

    .line 96
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    invoke-interface {v2, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 101
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v7}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v7

    .line 89
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public cancel()V
    .locals 4

    .prologue
    .line 148
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->cancel()V

    .line 150
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;->currentTaskId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;->fileApi:Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;->currentTaskId:J

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cancel(J)V

    .line 153
    :cond_0
    return-void
.end method

.method protected executeHttpMaker(Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;)Lorg/apache/http/HttpResponse;
    .locals 3
    .param p1, "roller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;->requestBody:[B

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BLjava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected getBizUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const-string v0, "v5/batch/photorevert.action"

    return-object v0
.end method

.method protected processResponse(Lorg/apache/http/HttpResponse;)V
    .locals 6
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v1

    .line 63
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readText(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "respStr":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    .local v2, "jsonObj":Lorg/json/JSONObject;
    const-string v5, "result"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 68
    .local v4, "result":I
    if-eqz v4, :cond_0

    .line 69
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    invoke-direct {v5}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>()V

    throw v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v2    # "jsonObj":Lorg/json/JSONObject;
    .end local v4    # "result":I
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e1":Lorg/json/JSONException;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v5, v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v5

    .line 72
    .end local v0    # "e1":Lorg/json/JSONException;
    .restart local v2    # "jsonObj":Lorg/json/JSONObject;
    .restart local v4    # "result":I
    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;->processNfsPhoto(Lorg/json/JSONObject;)V

    .line 74
    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;->processPilotPhoto(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    return-void
.end method

.method public setRequestBody(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;

    .prologue
    .line 143
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->toBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderV2;->requestBody:[B

    .line 144
    return-void
.end method
