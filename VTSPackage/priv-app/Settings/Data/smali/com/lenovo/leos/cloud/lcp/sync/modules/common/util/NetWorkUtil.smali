.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/NetWorkUtil;
.super Ljava/lang/Object;
.source "NetWorkUtil.java"


# static fields
.field public static final SERVER_REACHABLE_FLAG:Ljava/lang/String; = "pimapiok"

.field public static final TOUCH_SERVER_URL:Ljava/lang/String; = "checknetwork"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static isServerReachable(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 31
    :try_start_0
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    .line 33
    .local v2, "machine":Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;
    new-instance v6, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getContactServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v7

    const-string v8, "checknetwork"

    invoke-direct {v6, v7, v8}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->get(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 34
    .local v3, "response":Lorg/apache/http/HttpResponse;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_0

    .line 35
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v6

    invoke-static {v6}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readText(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "config":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "pimapiok"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 51
    .end local v0    # "config":Ljava/lang/String;
    .end local v2    # "machine":Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return v4

    .line 40
    .restart local v2    # "machine":Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->recycleHttpResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_1
    move v4, v5

    .line 51
    goto :goto_0

    .line 42
    .end local v2    # "machine":Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;
    goto :goto_0

    .line 44
    .end local v1    # "e":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus40XException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/net/UnknownHostException;
    move v4, v5

    .line 45
    goto :goto_0

    .line 46
    .end local v1    # "e":Ljava/net/UnknownHostException;
    :catch_2
    move-exception v1

    .local v1, "e":Ljava/net/SocketException;
    move v4, v5

    .line 47
    goto :goto_0

    .line 48
    .end local v1    # "e":Ljava/net/SocketException;
    :catch_3
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move v4, v5

    .line 49
    goto :goto_0
.end method
