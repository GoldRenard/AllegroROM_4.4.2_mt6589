.class Lcom/lenovo/lsf/lds/PsPushHttpRequest;
.super Ljava/lang/Object;
.source "PsServerInfo.java"


# static fields
.field private static final DEFAULTTIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "RK_PUSHSDK"


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isHttps"    # Z

    .prologue
    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    return-void
.end method


# virtual methods
.method public executeHttpGet(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/lsf/lds/PsPushHttpReturn;
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 270
    new-instance v9, Lcom/lenovo/lsf/lds/PsPushHttpReturn;

    invoke-direct {v9}, Lcom/lenovo/lsf/lds/PsPushHttpReturn;-><init>()V

    .line 271
    .local v9, "ret":Lcom/lenovo/lsf/lds/PsPushHttpReturn;
    const-string v11, "RK_PUSHSDK"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "URL: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "https://"

    const-string v14, "http://"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const-string v11, "power"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 273
    .local v7, "pm":Landroid/os/PowerManager;
    const/4 v11, 0x1

    const-string v12, "PushSetting"

    invoke-virtual {v7, v11, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    .line 274
    .local v10, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 276
    :try_start_0
    new-instance v6, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v6}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 277
    .local v6, "params":Lorg/apache/http/params/HttpParams;
    const/16 v11, 0x1388

    invoke-static {v6, v11}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 278
    const/16 v11, 0x1388

    invoke-static {v6, v11}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 279
    const/4 v11, 0x1

    invoke-static {v6, v11}, Lorg/apache/http/client/params/HttpClientParams;->setRedirecting(Lorg/apache/http/params/HttpParams;Z)V

    .line 280
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 281
    .local v4, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    const-string v11, "https://"

    const-string v12, "http://"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v5, v11}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 282
    .local v5, "httpget":Lorg/apache/http/client/methods/HttpGet;
    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 283
    .local v8, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    .line 284
    .local v2, "code":I
    const-string v11, "RK_PUSHSDK"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "ResponseCode: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-static {v11}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "body":Ljava/lang/String;
    const-string v11, "RK_PUSHSDK"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Responsebody: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 288
    iput v2, v9, Lcom/lenovo/lsf/lds/PsPushHttpReturn;->code:I

    .line 289
    iput-object v1, v9, Lcom/lenovo/lsf/lds/PsPushHttpReturn;->body:Ljava/lang/String;

    .line 290
    new-instance v11, Ljava/io/StringReader;

    invoke-direct {v11, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iput-object v11, v9, Lcom/lenovo/lsf/lds/PsPushHttpReturn;->reader:Ljava/io/Reader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    .end local v1    # "body":Ljava/lang/String;
    .end local v2    # "code":I
    .end local v4    # "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v5    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v6    # "params":Lorg/apache/http/params/HttpParams;
    .end local v8    # "response":Lorg/apache/http/HttpResponse;
    :goto_0
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 297
    return-object v9

    .line 291
    :catch_0
    move-exception v3

    .line 292
    .local v3, "e":Ljava/lang/Exception;
    const-string v11, "RK_PUSHSDK"

    const-string v12, "PsPushHttpRequest.executeHttpGet() Exception"

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const-string v11, ""

    iput-object v11, v9, Lcom/lenovo/lsf/lds/PsPushHttpReturn;->body:Ljava/lang/String;

    .line 294
    new-instance v11, Ljava/io/StringReader;

    const-string v12, ""

    invoke-direct {v11, v12}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    iput-object v11, v9, Lcom/lenovo/lsf/lds/PsPushHttpReturn;->reader:Ljava/io/Reader;

    goto :goto_0
.end method
