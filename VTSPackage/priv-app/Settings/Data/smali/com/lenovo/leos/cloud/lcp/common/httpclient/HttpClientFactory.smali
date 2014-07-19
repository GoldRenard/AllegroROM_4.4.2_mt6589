.class public final Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;
.super Ljava/lang/Object;
.source "HttpClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory$MyHttpRequestRetryHandler;
    }
.end annotation


# static fields
.field private static final DFT_USER_AGENT:Ljava/lang/String; = "LCP-SDK HttpClient Model"

.field private static final TAG:Ljava/lang/String; = "HttpClientFactory"

.field private static client:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;->client:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static destroyHttpClient()V
    .locals 3

    .prologue
    .line 48
    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;->client:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;

    if-eqz v1, :cond_0

    .line 49
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;->client:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->close()V

    .line 51
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;->client:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 52
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 53
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "HttpClientFactory"

    const-string v2, "Unexcepted Exception in method destroyHttpClient"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;->getHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static getHttpClient(Ljava/lang/String;)Lorg/apache/http/client/HttpClient;
    .locals 2
    .param p0, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 32
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;->client:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;

    if-nez v0, :cond_1

    .line 33
    const-class v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;->client:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;

    if-nez v0, :cond_0

    .line 35
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;->initHttpClient(Ljava/lang/String;)V

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;->client:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static initHttpClient(Ljava/lang/String;)V
    .locals 4
    .param p0, "userAgent"    # Ljava/lang/String;

    .prologue
    .line 58
    if-nez p0, :cond_0

    const-string v0, "LCP-SDK HttpClient Model"

    .line 59
    .local v0, "theAgent":Ljava/lang/String;
    :goto_0
    const-string v1, "UserAgent"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;->newInstance(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;

    move-result-object v1

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;->client:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;

    .line 62
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;->client:Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpClient;

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory$MyHttpRequestRetryHandler;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory$MyHttpRequestRetryHandler;-><init>(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory$MyHttpRequestRetryHandler;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/AbstractHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 63
    return-void

    .end local v0    # "theAgent":Ljava/lang/String;
    :cond_0
    move-object v0, p0

    .line 58
    goto :goto_0
.end method
