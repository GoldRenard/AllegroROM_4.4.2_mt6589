.class Lcom/lenovo/lsf/account/PsPushHttpRequest;
.super Ljava/lang/Object;
.source "PsPushHttpRequest.java"


# static fields
.field private static final DEFAULTTIMEOUT:I = 0x2710

.field static final TAG:Ljava/lang/String; = "RK_PUSHSDK"

.field private static isSSL:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lenovo/lsf/account/PsPushHttpRequest;->isSSL:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isHttps"    # Z

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method private isWap(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 289
    :try_start_0
    const-string v4, "connectivity"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 290
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 301
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_0
    :goto_0
    return v3

    .line 292
    .restart local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 293
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 295
    const-string v4, "mobile"

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lez v4, :cond_0

    .line 297
    const/4 v3, 0x1

    goto :goto_0

    .line 298
    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public executeHttpGet(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;

    invoke-direct {v7}, Lcom/lenovo/lsf/account/PsPushHttpReturn;-><init>()V

    .line 93
    .local v7, "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    invoke-static {p1}, Lcom/lenovo/lsf/account/PsLogUtil;->getDebugLevel(Landroid/content/Context;)I

    move-result v8

    if-lez v8, :cond_0

    .line 94
    const-string v8, "RK_PUSHSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "https://"

    const-string v11, "http://"

    invoke-virtual {p2, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    :try_start_0
    const-string v8, " "

    const-string v9, "%20"

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 98
    new-instance v5, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v5}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 99
    .local v5, "params":Lorg/apache/http/params/HttpParams;
    const/16 v8, 0x2710

    invoke-static {v5, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 100
    const/16 v8, 0x2710

    invoke-static {v5, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 101
    const/4 v8, 0x1

    invoke-static {v5, v8}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 103
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 104
    .local v3, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    const-string v8, "https://"

    const-string v9, "http://"

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 106
    .local v4, "httpget":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 107
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 108
    .local v1, "code":I
    invoke-static {p1}, Lcom/lenovo/lsf/account/PsLogUtil;->getDebugLevel(Landroid/content/Context;)I

    move-result v8

    if-lez v8, :cond_1

    .line 109
    const-string v8, "RK_PUSHSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ResponseCode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_1
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "body":Ljava/lang/String;
    invoke-static {p1}, Lcom/lenovo/lsf/account/PsLogUtil;->getDebugLevel(Landroid/content/Context;)I

    move-result v8

    if-lez v8, :cond_2

    .line 113
    const-string v8, "RK_PUSHSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Responsebody: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_2
    invoke-virtual {v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 117
    iput v1, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    .line 118
    iput-object v0, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->body:Ljava/lang/String;

    .line 119
    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iput-object v8, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v0    # "body":Ljava/lang/String;
    .end local v1    # "code":I
    .end local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v4    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "params":Lorg/apache/http/params/HttpParams;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v7

    .line 120
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "RK_PUSHSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PsPushHttpRequest.executeHttpGet() Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v8, ""

    iput-object v8, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->body:Ljava/lang/String;

    .line 124
    new-instance v8, Ljava/io/StringReader;

    const-string v9, ""

    invoke-direct {v8, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iput-object v8, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    goto :goto_0
.end method

.method public executeHttpGetInputStream(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 131
    new-instance v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;

    invoke-direct {v7}, Lcom/lenovo/lsf/account/PsPushHttpReturn;-><init>()V

    .line 132
    .local v7, "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    const/4 v8, -0x1

    iput v8, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    .line 134
    invoke-static {p1}, Lcom/lenovo/lsf/account/PsLogUtil;->getDebugLevel(Landroid/content/Context;)I

    move-result v8

    if-lez v8, :cond_0

    .line 135
    const-string v8, "RK_PUSHSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    :try_start_0
    const-string v8, " "

    const-string v9, "%20"

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 139
    new-instance v5, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v5}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 140
    .local v5, "params":Lorg/apache/http/params/HttpParams;
    const/16 v8, 0x2710

    invoke-static {v5, v8}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 141
    const/16 v8, 0x2710

    invoke-static {v5, v8}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 142
    const/4 v8, 0x1

    invoke-static {v5, v8}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 144
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 145
    .local v3, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 147
    .local v4, "httpget":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v3, v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 148
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 150
    .local v1, "code":I
    invoke-static {p1}, Lcom/lenovo/lsf/account/PsLogUtil;->getDebugLevel(Landroid/content/Context;)I

    move-result v8

    if-lez v8, :cond_1

    .line 151
    const-string v8, "RK_PUSHSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ResponseCode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    .line 154
    .local v0, "buff":[B
    invoke-virtual {v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 156
    iput v1, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    .line 157
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v8, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->stream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v1    # "code":I
    .end local v3    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v4    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "params":Lorg/apache/http/params/HttpParams;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v7

    .line 158
    .end local v0    # "buff":[B
    :catch_0
    move-exception v2

    .line 160
    .local v2, "e":Ljava/lang/Exception;
    const-string v8, "RK_PUSHSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PsPushHttpRequest.executeHttpGetInputStream() Exception :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-array v0, v12, [B

    aput-byte v11, v0, v11

    .line 162
    .restart local v0    # "buff":[B
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v8, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->stream:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "post"    # Ljava/lang/String;
    .param p4, "contenttype"    # Ljava/lang/String;

    .prologue
    .line 41
    new-instance v9, Lcom/lenovo/lsf/account/PsPushHttpReturn;

    invoke-direct {v9}, Lcom/lenovo/lsf/account/PsPushHttpReturn;-><init>()V

    .line 43
    .local v9, "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    invoke-static {p1}, Lcom/lenovo/lsf/account/PsLogUtil;->getDebugLevel(Landroid/content/Context;)I

    move-result v10

    if-lez v10, :cond_0

    .line 44
    const-string v10, "RK_PUSHSDK"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "URL: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "https://"

    const-string v13, "http://"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    if-eqz p3, :cond_0

    const-string v10, "password="

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "onekpass="

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 46
    const-string v10, "RK_PUSHSDK"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "POST: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    :try_start_0
    const-string v10, " "

    const-string v11, "%20"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 52
    if-eqz p3, :cond_1

    .line 53
    const-string v10, " "

    const-string v11, "%20"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 55
    :cond_1
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 56
    .local v6, "params":Lorg/apache/http/params/HttpParams;
    const/16 v10, 0x2710

    invoke-static {v6, v10}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 57
    const/16 v10, 0x2710

    invoke-static {v6, v10}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 58
    const/4 v10, 0x1

    invoke-static {v6, v10}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 60
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 61
    .local v4, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    const-string v10, "https://"

    const-string v11, "http://"

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 62
    .local v5, "httppost":Lorg/apache/http/client/methods/HttpPost;
    const-string v10, "Content-Type"

    move-object/from16 v0, p4

    invoke-virtual {v5, v10, v0}, Lorg/apache/http/message/AbstractHttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v7, Lorg/apache/http/entity/StringEntity;

    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 64
    .local v7, "reqEntity":Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v5, v7}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 66
    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 67
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 68
    .local v2, "code":I
    invoke-static {p1}, Lcom/lenovo/lsf/account/PsLogUtil;->getDebugLevel(Landroid/content/Context;)I

    move-result v10

    if-lez v10, :cond_2

    .line 69
    const-string v10, "RK_PUSHSDK"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ResponseCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_2
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "body":Ljava/lang/String;
    invoke-static {p1}, Lcom/lenovo/lsf/account/PsLogUtil;->getDebugLevel(Landroid/content/Context;)I

    move-result v10

    if-lez v10, :cond_3

    .line 73
    const-string v10, "RK_PUSHSDK"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Responsebody: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_3
    invoke-virtual {v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 77
    iput v2, v9, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    .line 78
    iput-object v1, v9, Lcom/lenovo/lsf/account/PsPushHttpReturn;->body:Ljava/lang/String;

    .line 79
    new-instance v10, Ljava/io/StringReader;

    invoke-direct {v10, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iput-object v10, v9, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "body":Ljava/lang/String;
    .end local v2    # "code":I
    .end local v4    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v5    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v6    # "params":Lorg/apache/http/params/HttpParams;
    .end local v7    # "reqEntity":Lorg/apache/http/entity/StringEntity;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    return-object v9

    .line 80
    :catch_0
    move-exception v3

    .line 82
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "RK_PUSHSDK"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PsPushHttpRequest.executeHttpPost() Exception : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v10, ""

    iput-object v10, v9, Lcom/lenovo/lsf/account/PsPushHttpReturn;->body:Ljava/lang/String;

    .line 84
    new-instance v10, Ljava/io/StringReader;

    const-string v11, ""

    invoke-direct {v10, v11}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iput-object v10, v9, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    goto :goto_0
.end method

.method public executeHttpsGet(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 231
    new-instance v6, Lcom/lenovo/lsf/account/PsPushHttpReturn;

    invoke-direct {v6}, Lcom/lenovo/lsf/account/PsPushHttpReturn;-><init>()V

    .line 233
    .local v6, "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    invoke-static {p1}, Lcom/lenovo/lsf/account/PsLogUtil;->getDebugLevel(Landroid/content/Context;)I

    move-result v7

    if-lez v7, :cond_0

    .line 234
    const-string v7, "RK_PUSHSDK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->isWap(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 237
    const-string v7, "RK_PUSHSDK"

    const-string v8, "Connect is WAP"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpGet(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v6

    .line 284
    .end local v6    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    :cond_1
    :goto_0
    return-object v6

    .line 240
    .restart local v6    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    :cond_2
    sget-boolean v7, Lcom/lenovo/lsf/account/PsPushHttpRequest;->isSSL:Z

    if-nez v7, :cond_3

    .line 241
    const-string v7, "RK_PUSHSDK"

    const-string v8, "Can not SSL"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpGet(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v6

    goto :goto_0

    .line 245
    :cond_3
    const/4 v3, 0x0

    .line 247
    .local v3, "httpClient":Landroid/net/http/AndroidHttpClient;
    :try_start_0
    const-string v7, " "

    const-string v8, "%20"

    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 248
    const-string v7, "Android-Push/0.1"

    invoke-static {v7}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    .line 249
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, p2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 251
    .local v4, "httpget":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v3, v4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 252
    .local v5, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 253
    .local v1, "code":I
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, "body":Ljava/lang/String;
    iput v1, v6, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    .line 256
    iput-object v0, v6, Lcom/lenovo/lsf/account/PsPushHttpReturn;->body:Ljava/lang/String;

    .line 257
    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iput-object v7, v6, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    .line 259
    invoke-static {p1}, Lcom/lenovo/lsf/account/PsLogUtil;->getDebugLevel(Landroid/content/Context;)I

    move-result v7

    if-lez v7, :cond_4

    .line 260
    const-string v7, "RK_PUSHSDK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ResponseCode: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_4
    invoke-static {p1}, Lcom/lenovo/lsf/account/PsLogUtil;->getDebugLevel(Landroid/content/Context;)I

    move-result v7

    if-lez v7, :cond_5

    .line 263
    const-string v7, "RK_PUSHSDK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Responsebody: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    :cond_5
    if-eqz v3, :cond_1

    .line 280
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_0

    .line 264
    .end local v0    # "body":Ljava/lang/String;
    .end local v1    # "code":I
    .end local v4    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v2

    .line 265
    .local v2, "e":Ljavax/net/ssl/SSLHandshakeException;
    const/4 v7, 0x0

    :try_start_1
    sput-boolean v7, Lcom/lenovo/lsf/account/PsPushHttpRequest;->isSSL:Z

    .line 266
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpGet(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 279
    .end local v6    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    if-eqz v3, :cond_1

    .line 280
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_0

    .line 267
    .end local v2    # "e":Ljavax/net/ssl/SSLHandshakeException;
    .restart local v6    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    :catch_1
    move-exception v2

    .line 269
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "RK_PUSHSDK"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PsPushHttpRequest.executeHttpsGet() Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    instance-of v7, v2, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v7, :cond_6

    .line 271
    const/4 v7, -0x2

    iput v7, v6, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    .line 275
    :goto_1
    const-string v7, ""

    iput-object v7, v6, Lcom/lenovo/lsf/account/PsPushHttpReturn;->body:Ljava/lang/String;

    .line 276
    new-instance v7, Ljava/io/StringReader;

    const-string v8, ""

    invoke-direct {v7, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iput-object v7, v6, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    if-eqz v3, :cond_1

    .line 280
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_0

    .line 273
    :cond_6
    const/4 v7, -0x1

    :try_start_3
    iput v7, v6, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 279
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    if-eqz v3, :cond_7

    .line 280
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_7
    throw v7
.end method

.method public executeHttpsPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "post"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;

    .prologue
    .line 169
    new-instance v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;

    invoke-direct {v7}, Lcom/lenovo/lsf/account/PsPushHttpReturn;-><init>()V

    .line 171
    .local v7, "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    invoke-static {p1}, Lcom/lenovo/lsf/account/PsLogUtil;->getDebugLevel(Landroid/content/Context;)I

    move-result v8

    if-lez v8, :cond_0

    .line 172
    const-string v8, "RK_PUSHSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    if-eqz p3, :cond_0

    const-string v8, "password="

    invoke-virtual {p3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "onekpass="

    invoke-virtual {p3, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 174
    const-string v8, "RK_PUSHSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "POST: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    invoke-direct {p0, p1}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->isWap(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 179
    const-string v8, "RK_PUSHSDK"

    const-string v9, "Connect is WAP"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v7

    .line 227
    .end local v7    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    :cond_1
    :goto_0
    return-object v7

    .line 182
    .restart local v7    # "ret":Lcom/lenovo/lsf/account/PsPushHttpReturn;
    :cond_2
    sget-boolean v8, Lcom/lenovo/lsf/account/PsPushHttpRequest;->isSSL:Z

    if-nez v8, :cond_3

    .line 183
    const-string v8, "RK_PUSHSDK"

    const-string v9, "Can not SSL"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/lenovo/lsf/account/PsPushHttpRequest;->executeHttpPost(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lsf/account/PsPushHttpReturn;

    move-result-object v7

    goto :goto_0

    .line 187
    :cond_3
    const/4 v3, 0x0

    .line 189
    .local v3, "httpClient":Landroid/net/http/AndroidHttpClient;
    :try_start_0
    const-string v8, " "

    const-string v9, "%20"

    invoke-virtual {p2, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 190
    const-string v8, " "

    const-string v9, "%20"

    invoke-virtual {p3, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 191
    const-string v8, "Android-Push/0.1"

    invoke-static {v8}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    .line 192
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v4, p2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 193
    .local v4, "httppost":Lorg/apache/http/client/methods/HttpPost;
    const-string v8, "Content-Type"

    invoke-virtual {v4, v8, p4}, Lorg/apache/http/message/AbstractHttpMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v5, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v5, p3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 195
    .local v5, "reqEntity":Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v4, v5}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 197
    invoke-virtual {v3, v4}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 198
    .local v6, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 199
    .local v1, "code":I
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v0

    .line 201
    .local v0, "body":Ljava/lang/String;
    iput v1, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    .line 202
    iput-object v0, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->body:Ljava/lang/String;

    .line 203
    new-instance v8, Ljava/io/StringReader;

    invoke-direct {v8, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iput-object v8, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;

    .line 205
    invoke-static {p1}, Lcom/lenovo/lsf/account/PsLogUtil;->getDebugLevel(Landroid/content/Context;)I

    move-result v8

    if-lez v8, :cond_4

    .line 206
    const-string v8, "RK_PUSHSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ResponseCode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_4
    invoke-static {p1}, Lcom/lenovo/lsf/account/PsLogUtil;->getDebugLevel(Landroid/content/Context;)I

    move-result v8

    if-lez v8, :cond_5

    .line 209
    const-string v8, "RK_PUSHSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Responsebody: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    :cond_5
    if-eqz v3, :cond_1

    .line 223
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_0

    .line 210
    .end local v0    # "body":Ljava/lang/String;
    .end local v1    # "code":I
    .end local v4    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    .end local v5    # "reqEntity":Lorg/apache/http/entity/StringEntity;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v2

    .line 212
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v8, "RK_PUSHSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PsPushHttpRequest.executeHttpsPost() Exception : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    instance-of v8, v2, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v8, :cond_6

    .line 214
    const/4 v8, -0x2

    iput v8, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I

    .line 218
    :goto_1
    const-string v8, ""

    iput-object v8, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->body:Ljava/lang/String;

    .line 219
    new-instance v8, Ljava/io/StringReader;

    const-string v9, ""

    invoke-direct {v8, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iput-object v8, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->reader:Ljava/io/Reader;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    if-eqz v3, :cond_1

    .line 223
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    goto/16 :goto_0

    .line 216
    :cond_6
    const/4 v8, -0x1

    :try_start_2
    iput v8, v7, Lcom/lenovo/lsf/account/PsPushHttpReturn;->code:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 222
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v3, :cond_7

    .line 223
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    :cond_7
    throw v8
.end method
