.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderForPilot;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;
.source "PhotoStreamDownloaderForPilot.java"


# instance fields
.field private requestBody:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderForPilot;->requestBody:[B

    .line 33
    return-void
.end method

.method private processSinglePhoto(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "meta"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 75
    const-string v4, "sid"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "sid":Ljava/lang/String;
    const-string v4, "path"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "path":Ljava/lang/String;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-direct {v2, v4, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .local v2, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v4, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)[B

    move-result-object v1

    .line 81
    .local v1, "photoBytes":[B
    invoke-virtual {p0, v3, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->visitPhoto(Ljava/lang/String;[B)V

    .line 82
    return-void
.end method


# virtual methods
.method protected executeHttpMaker(Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;)Lorg/apache/http/HttpResponse;
    .locals 3
    .param p1, "roller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderForPilot;->requestBody:[B

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BLjava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected getBizUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "v5/photorevert.action"

    return-object v0
.end method

.method protected processResponse(Lorg/apache/http/HttpResponse;)V
    .locals 9
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v3

    .line 48
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readText(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, "respStr":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    .local v4, "jsonObj":Lorg/json/JSONObject;
    const-string v8, "result"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 53
    .local v7, "result":I
    if-eqz v7, :cond_0

    .line 54
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    invoke-direct {v8}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>()V

    throw v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v4    # "jsonObj":Lorg/json/JSONObject;
    .end local v7    # "result":I
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e1":Lorg/json/JSONException;
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v8, v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v8

    .line 57
    .end local v0    # "e1":Lorg/json/JSONException;
    .restart local v4    # "jsonObj":Lorg/json/JSONObject;
    .restart local v7    # "result":I
    :cond_0
    :try_start_1
    const-string v8, "pt"

    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 59
    .local v5, "ptArray":Lorg/json/JSONArray;
    if-eqz v5, :cond_1

    .line 60
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v1, v8, :cond_2

    .line 72
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 61
    .restart local v1    # "i":I
    :cond_2
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 62
    .local v2, "info":Lorg/json/JSONObject;
    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderForPilot;->processSinglePhoto(Lorg/json/JSONObject;)V

    .line 64
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->isCanceled()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 65
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v8}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v8
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setRequestBody(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;

    .prologue
    .line 85
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->toBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderForPilot;->requestBody:[B

    .line 86
    return-void
.end method
