.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderForNfs;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;
.source "PhotoStreamDownloaderForNfs.java"


# instance fields
.field private photoRestoreUrl:Ljava/lang/String;

.field private requestBody:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "restoreUrl"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderForNfs;->photoRestoreUrl:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderForNfs;->requestBody:[B

    .line 35
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderForNfs;->photoRestoreUrl:Ljava/lang/String;

    .line 36
    return-void
.end method

.method private processSinglePhoto(Lorg/json/JSONObject;Ljava/io/InputStream;)V
    .locals 3
    .param p1, "meta"    # Lorg/json/JSONObject;
    .param p2, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    const-string v2, "sid"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "sid":Ljava/lang/String;
    const-string v2, "length"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 86
    .local v0, "length":I
    invoke-virtual {p0, v1, p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->visitPhoto(Ljava/lang/String;Ljava/io/InputStream;I)V

    .line 87
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
    .line 46
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderForNfs;->requestBody:[B

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BLjava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method protected getBizUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderForNfs;->photoRestoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoRestoreUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderForNfs;->photoRestoreUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected processResponse(Lorg/apache/http/HttpResponse;)V
    .locals 12
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 52
    const/4 v2, 0x0

    .line 55
    .local v2, "inStream":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    .line 54
    invoke-static {v8}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v2

    .line 57
    const-string v8, "retLength"

    invoke-interface {p1, v8}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    .line 58
    .local v5, "lenHeader":Lorg/apache/http/Header;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 59
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 60
    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 61
    .local v7, "retLength":I
    const/4 v8, 0x0

    invoke-static {v2, v7, v8}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readBytes(Ljava/io/InputStream;IZ)[B

    move-result-object v4

    .line 63
    .local v4, "jsonb":[B
    new-instance v3, Lorg/json/JSONArray;

    new-instance v8, Ljava/lang/String;

    .line 64
    const-string v9, "UTF-8"

    invoke-direct {v8, v4, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 63
    invoke-direct {v3, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 65
    .local v3, "jmetas":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-lt v1, v8, :cond_1

    .line 76
    .end local v1    # "i":I
    .end local v3    # "jmetas":Lorg/json/JSONArray;
    .end local v4    # "jsonb":[B
    .end local v7    # "retLength":I
    :cond_0
    new-array v8, v11, [Ljava/io/Closeable;

    .line 77
    aput-object v2, v8, v10

    invoke-static {v8}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 79
    return-void

    .line 66
    .restart local v1    # "i":I
    .restart local v3    # "jmetas":Lorg/json/JSONArray;
    .restart local v4    # "jsonb":[B
    .restart local v7    # "retLength":I
    :cond_1
    :try_start_1
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 67
    .local v6, "meta":Lorg/json/JSONObject;
    invoke-direct {p0, v6, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderForNfs;->processSinglePhoto(Lorg/json/JSONObject;Ljava/io/InputStream;)V

    .line 69
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->isCanceled()Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-nez v8, :cond_0

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "i":I
    .end local v3    # "jmetas":Lorg/json/JSONArray;
    .end local v4    # "jsonb":[B
    .end local v5    # "lenHeader":Lorg/apache/http/Header;
    .end local v6    # "meta":Lorg/json/JSONObject;
    .end local v7    # "retLength":I
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v8, v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    .end local v0    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v8

    new-array v9, v11, [Ljava/io/Closeable;

    .line 77
    aput-object v2, v9, v10

    invoke-static {v9}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 78
    throw v8
.end method

.method public setPhotoRestoreUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "photoRestoreUrl"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderForNfs;->photoRestoreUrl:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setRequestBody(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->toBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/PhotoStreamDownloaderForNfs;->requestBody:[B

    .line 99
    return-void
.end method
