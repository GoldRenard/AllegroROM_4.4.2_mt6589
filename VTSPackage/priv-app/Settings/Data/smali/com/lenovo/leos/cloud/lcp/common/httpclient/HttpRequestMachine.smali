.class public Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;
.super Ljava/lang/Object;
.source "HttpRequestMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;
    }
.end annotation


# static fields
.field private static final DFT_RETRY_TIMES:I = 0x4

.field private static final HTTP_STATUS_OK_END:I = 0x12b

.field private static final HTTP_STATUS_OK_START:I = 0xc8

.field private static final LESYNC_OPTIONS_HEADER:Ljava/lang/String; = "X-LeSync-Options"

.field private static final LOCK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/concurrent/locks/Lock;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUEST:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lorg/apache/http/client/methods/HttpRequestBase;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUEST_ON_OFF:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "HttpReuqestMachine"


# instance fields
.field private defaultCharset:Ljava/lang/String;

.field private requestIntercepter:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;

.field private retryTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->LOCK:Ljava/util/Map;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->REQUEST:Ljava/util/Map;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->REQUEST_ON_OFF:Ljava/util/Map;

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x4

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->retryTimes:I

    .line 61
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->defaultCharset:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public static varargs abortRequest([Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 2
    .param p0, "requests"    # [Lorg/apache/http/client/methods/HttpRequestBase;

    .prologue
    .line 123
    if-eqz p0, :cond_0

    array-length v1, p0

    if-lez v1, :cond_0

    .line 124
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$1;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$1;-><init>([Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 133
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 135
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_0
    return-void
.end method

.method private afterRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;)V
    .locals 6
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 344
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    .line 345
    .local v1, "threadId":J
    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getOnOffLock(J)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 347
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 348
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->requestIntercepter:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;

    if-eqz v3, :cond_0

    .line 349
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->requestIntercepter:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;

    invoke-interface {v3, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;->afterRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    :cond_0
    :try_start_1
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->REQUEST:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->LOCK:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 356
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 359
    return-void

    .line 351
    :catchall_0
    move-exception v3

    .line 353
    :try_start_2
    sget-object v4, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->REQUEST:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    sget-object v4, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->LOCK:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 356
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 358
    throw v3

    .line 355
    :catchall_1
    move-exception v3

    .line 356
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 357
    throw v3

    .line 355
    :catchall_2
    move-exception v3

    .line 356
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 357
    throw v3
.end method

.method private beforeRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)Z
    .locals 7
    .param p1, "httpRequest"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "retryReasonException"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpAbortException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    .line 386
    .local v2, "threadId":J
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v1

    .line 387
    .local v1, "requestUri":Ljava/net/URI;
    const-string v4, "####"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "urlpattern---------"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-static {v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getOnOffLock(J)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 390
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 391
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->checkRequestOnOff()V

    .line 392
    sget-object v4, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->REQUEST:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LcpHttpOptions;->getBanList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 404
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 396
    const/4 v4, 0x1

    .line 406
    :goto_0
    return v4

    .line 400
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->requestIntercepter:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->requestIntercepter:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;

    invoke-interface {v4, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;->beforeRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 404
    :cond_2
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 406
    const/4 v4, 0x0

    goto :goto_0

    .line 403
    :catchall_0
    move-exception v4

    .line 404
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 405
    throw v4
.end method

.method private buildHttpGet(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpGet;
    .locals 1
    .param p1, "url"    # Ljava/net/URI;

    .prologue
    .line 282
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    return-object v0
.end method

.method private buildHttpPost(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 3
    .param p1, "url"    # Ljava/net/URI;
    .param p2, "requestData"    # Ljava/lang/String;
    .param p3, "contentEncoding"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-direct {p0, p4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->findCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "charset":Ljava/lang/String;
    const/4 v1, 0x0

    .line 221
    .local v1, "entity":Lorg/apache/http/entity/StringEntity;
    if-eqz p2, :cond_0

    .line 222
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    .end local v1    # "entity":Lorg/apache/http/entity/StringEntity;
    invoke-direct {v1, p2, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .restart local v1    # "entity":Lorg/apache/http/entity/StringEntity;
    :cond_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->buildHttpPost(Ljava/net/URI;Lorg/apache/http/entity/AbstractHttpEntity;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v2

    return-object v2
.end method

.method private buildHttpPost(Ljava/net/URI;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 5
    .param p1, "url"    # Ljava/net/URI;
    .param p3, "contentEncoding"    # Ljava/lang/String;
    .param p4, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/http/client/methods/HttpPost;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    .local p2, "requestData":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    if-nez p4, :cond_1

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->defaultCharset:Ljava/lang/String;

    .line 239
    .local v2, "theCharset":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "application/x-www-form-urlencoded; charset="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "contentType":Ljava/lang/String;
    const/4 v1, 0x0

    .line 242
    .local v1, "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    if-eqz p2, :cond_0

    .line 243
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    .end local v1    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-direct {v1, p2, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 246
    .restart local v1    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    :cond_0
    invoke-direct {p0, p1, v1, p3, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->buildHttpPost(Ljava/net/URI;Lorg/apache/http/entity/AbstractHttpEntity;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v3

    return-object v3

    .end local v0    # "contentType":Ljava/lang/String;
    .end local v1    # "entity":Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v2    # "theCharset":Ljava/lang/String;
    :cond_1
    move-object v2, p4

    .line 238
    goto :goto_0
.end method

.method private buildHttpPost(Ljava/net/URI;Lorg/apache/http/entity/AbstractHttpEntity;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 2
    .param p1, "url"    # Ljava/net/URI;
    .param p2, "entity"    # Lorg/apache/http/entity/AbstractHttpEntity;
    .param p3, "contentEncoding"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;

    .prologue
    .line 250
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 251
    .local v0, "post":Lorg/apache/http/client/methods/HttpPost;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    invoke-virtual {p2, p3}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentEncoding(Ljava/lang/String;)V

    .line 254
    :cond_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 255
    invoke-virtual {p2, p4}, Lorg/apache/http/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 257
    :cond_1
    if-eqz p2, :cond_2

    .line 258
    invoke-virtual {v0, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 261
    :cond_2
    return-object v0
.end method

.method private buildHttpPost(Ljava/net/URI;[BLjava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;
    .locals 2
    .param p1, "url"    # Ljava/net/URI;
    .param p2, "requestData"    # [B
    .param p3, "contentEncoding"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 230
    .local v0, "entity":Lorg/apache/http/entity/ByteArrayEntity;
    if-eqz p2, :cond_0

    .line 231
    new-instance v0, Lorg/apache/http/entity/ByteArrayEntity;

    .end local v0    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    invoke-direct {v0, p2}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 234
    .restart local v0    # "entity":Lorg/apache/http/entity/ByteArrayEntity;
    :cond_0
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->buildHttpPost(Ljava/net/URI;Lorg/apache/http/entity/AbstractHttpEntity;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v1

    return-object v1
.end method

.method private checkAndReturnResponse(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;
    .locals 5
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 474
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 475
    .local v1, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 476
    .local v0, "statusCode":I
    const/16 v2, 0xc8

    if-lt v0, v2, :cond_0

    const/16 v2, 0x12b

    if-gt v0, v2, :cond_0

    .line 477
    return-object p1

    .line 480
    :cond_0
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->recycleHttpResponse(Lorg/apache/http/HttpResponse;)V

    .line 481
    const-string v2, "HttpReuqestMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Http failed, server error code:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    sparse-switch v0, :sswitch_data_0

    .line 494
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;

    invoke-direct {v2, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatusXXXException;-><init>(I)V

    throw v2

    .line 484
    :sswitch_0
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception;-><init>()V

    throw v2

    .line 486
    :sswitch_1
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus403Exception;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus403Exception;-><init>()V

    throw v2

    .line 488
    :sswitch_2
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus50XException;

    invoke-direct {v2, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus50XException;-><init>(I)V

    throw v2

    .line 490
    :sswitch_3
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus404Exception;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus404Exception;-><init>()V

    throw v2

    .line 492
    :sswitch_4
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus405Exception;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus405Exception;-><init>()V

    throw v2

    .line 482
    nop

    :sswitch_data_0
    .sparse-switch
        0x191 -> :sswitch_0
        0x193 -> :sswitch_1
        0x194 -> :sswitch_3
        0x195 -> :sswitch_4
        0x1f4 -> :sswitch_2
    .end sparse-switch
.end method

.method private checkHttpOptions(Lorg/apache/http/HttpResponse;)V
    .locals 11
    .param p1, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    const/4 v6, 0x0

    .line 362
    const-string v5, "X-LeSync-Options"

    invoke-interface {p1, v5}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 363
    .local v2, "httpHeader":[Lorg/apache/http/Header;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-lez v5, :cond_0

    .line 364
    array-length v8, v2

    move v7, v6

    :goto_0
    if-lt v7, v8, :cond_1

    .line 382
    :cond_0
    return-void

    .line 364
    :cond_1
    aget-object v0, v2, v7

    .line 365
    .local v0, "header":Lorg/apache/http/Header;
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, "heardValue":Ljava/lang/String;
    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 367
    .local v4, "value":[Ljava/lang/String;
    array-length v9, v4

    move v5, v6

    :goto_1
    if-lt v5, v9, :cond_2

    .line 364
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    .line 367
    :cond_2
    aget-object v3, v4, v5

    .line 368
    .local v3, "urlPattern":Ljava/lang/String;
    const-string v10, "ban"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 369
    const/4 v10, 0x4

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 370
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 371
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LcpHttpOptions;->addBanUri(Ljava/lang/String;)V

    .line 367
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 373
    :cond_4
    const-string v10, "approve"

    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 374
    const/16 v10, 0x8

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 375
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 376
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LcpHttpOptions;->removeBanUri(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private checkRequestOnOff()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpAbortException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 337
    .local v0, "threadId":J
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->REQUEST_ON_OFF:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 338
    .local v2, "turnOff":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 339
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpAbortException;

    const-string v4, "CurrentThead has been avoid to do httpRequest!"

    invoke-direct {v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpAbortException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 341
    :cond_0
    return-void
.end method

.method private doRetryRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;
    .locals 11
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    const/4 v6, 0x0

    .line 298
    .local v6, "lastFailedException":Ljava/io/IOException;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v8, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->retryTimes:I

    if-lt v5, v8, :cond_2

    .line 328
    :cond_0
    :goto_1
    if-nez v6, :cond_1

    .line 329
    new-instance v6, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpAbortException;

    .end local v6    # "lastFailedException":Ljava/io/IOException;
    const-string v8, "\u8bf7\u6c42\u88ab\u4e2d\u6b62"

    invoke-direct {v6, v8}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpAbortException;-><init>(Ljava/lang/String;)V

    .line 332
    .restart local v6    # "lastFailedException":Ljava/io/IOException;
    :cond_1
    throw v6

    .line 300
    :cond_2
    :try_start_0
    invoke-interface {p2, v6}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;->roll(Ljava/lang/Exception;)Ljava/net/URI;

    move-result-object v8

    invoke-virtual {p1, v8}, Lorg/apache/http/client/methods/HttpRequestBase;->setURI(Ljava/net/URI;)V

    .line 301
    const-string v8, "HttpReuqestMachine"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "doRequest times: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " uri:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpClientFactory;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v3

    .line 303
    .local v3, "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-direct {p0, p1, v6}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->beforeRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)Z

    move-result v0

    .line 304
    .local v0, "breakRequest":Z
    if-nez v0, :cond_0

    .line 307
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;

    invoke-interface {v3, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    invoke-direct {v4, v8, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/LCPHttpResponse;-><init>(Lorg/apache/http/HttpResponse;Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 309
    .local v4, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->checkHttpOptions(Lorg/apache/http/HttpResponse;)V

    .line 310
    invoke-direct {p0, p1, v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->afterRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;)V

    .line 311
    invoke-direct {p0, v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->checkAndReturnResponse(Lorg/apache/http/HttpResponse;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpAbortException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v8

    return-object v8

    .line 312
    .end local v0    # "breakRequest":Z
    .end local v3    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v2

    .line 313
    .local v2, "hae":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpAbortException;
    move-object v6, v2

    .line 314
    goto :goto_1

    .line 315
    .end local v2    # "hae":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpAbortException;
    :catch_1
    move-exception v1

    .line 316
    .local v1, "e":Ljava/io/IOException;
    move-object v6, v1

    .line 317
    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->isAborted()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 318
    new-instance v6, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpAbortException;

    .end local v6    # "lastFailedException":Ljava/io/IOException;
    const-string v8, "\u8bf7\u6c42\u88ab\u53d6\u6d88"

    invoke-direct {v6, v8}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpAbortException;-><init>(Ljava/lang/String;)V

    .line 319
    .restart local v6    # "lastFailedException":Ljava/io/IOException;
    goto :goto_1

    .line 321
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v7

    .line 322
    .local v7, "re":Ljava/lang/RuntimeException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 323
    new-instance v6, Ljava/io/IOException;

    .end local v6    # "lastFailedException":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 324
    .restart local v6    # "lastFailedException":Ljava/io/IOException;
    goto :goto_1

    .line 298
    .end local v7    # "re":Ljava/lang/RuntimeException;
    .restart local v1    # "e":Ljava/io/IOException;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private findCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 419
    if-eqz p1, :cond_0

    .line 420
    const-string v2, "; charset="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 421
    .local v1, "charsetIndex":I
    if-lez v1, :cond_0

    .line 422
    const-string v2, "; charset="

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "charset":Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/StringUtil;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 428
    .end local v0    # "charset":Ljava/lang/String;
    .end local v1    # "charsetIndex":I
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->defaultCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method private findCharset(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 410
    const-string v2, "Content-Type"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v1

    .line 411
    .local v1, "contentTypeHeaders":[Lorg/apache/http/Header;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 412
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "contentType":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->findCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 415
    .end local v0    # "contentType":Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->defaultCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method private static declared-synchronized getOnOffLock(J)Ljava/util/concurrent/locks/Lock;
    .locals 4
    .param p0, "threadId"    # J

    .prologue
    .line 102
    const-class v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->LOCK:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    .line 103
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .end local v0    # "lock":Ljava/util/concurrent/locks/Lock;
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 105
    .restart local v0    # "lock":Ljava/util/concurrent/locks/Lock;
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->LOCK:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    monitor-exit v2

    return-object v0

    .line 102
    .end local v0    # "lock":Ljava/util/concurrent/locks/Lock;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static getUnzipedContent(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .locals 1
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Landroid/net/http/AndroidHttpClient;->getUngzippedContent(Lorg/apache/http/HttpEntity;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private readBytesFromResponse(Lorg/apache/http/HttpResponse;)[B
    .locals 2
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getUnzipedContent(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v0

    .line 287
    .local v0, "inputStream":Ljava/io/InputStream;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    return-object v1
.end method

.method private readTextFromResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getUnzipedContent(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v1

    .line 292
    .local v1, "inputStream":Ljava/io/InputStream;
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->findCharset(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "charset":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readText(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static recycleHttpResponse(Lorg/apache/http/HttpResponse;)V
    .locals 5
    .param p0, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 438
    if-nez p0, :cond_0

    .line 451
    :goto_0
    return-void

    .line 442
    :cond_0
    const/4 v0, 0x0

    .line 444
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getUnzipedContent(Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v0

    .line 445
    if-eqz v0, :cond_1

    .line 446
    const-string v1, "HttpReuqestMachine"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readText(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    :cond_1
    new-array v1, v4, [Ljava/io/Closeable;

    .line 449
    aput-object v0, v1, v3

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 448
    :catchall_0
    move-exception v1

    new-array v2, v4, [Ljava/io/Closeable;

    .line 449
    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 450
    throw v1
.end method

.method public static turnOffRequest(J)V
    .locals 5
    .param p0, "threadId"    # J

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getOnOffLock(J)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    .line 73
    .local v1, "lock":Ljava/util/concurrent/locks/Lock;
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 74
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->REQUEST_ON_OFF:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "off"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->REQUEST:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/methods/HttpRequestBase;

    .local v0, "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/http/client/methods/HttpRequestBase;

    const/4 v3, 0x0

    .line 76
    aput-object v0, v2, v3

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->abortRequest([Lorg/apache/http/client/methods/HttpRequestBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 80
    return-void

    .line 77
    .end local v0    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    :catchall_0
    move-exception v2

    .line 78
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 79
    throw v2
.end method

.method public static turnOnRequest(J)V
    .locals 4
    .param p0, "threadId"    # J

    .prologue
    .line 87
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getOnOffLock(J)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 89
    .local v0, "lock":Ljava/util/concurrent/locks/Lock;
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 90
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->REQUEST_ON_OFF:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "on"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 94
    return-void

    .line 91
    :catchall_0
    move-exception v1

    .line 92
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 93
    throw v1
.end method


# virtual methods
.method public get(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 276
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->buildHttpGet(Ljava/net/URI;)Lorg/apache/http/client/methods/HttpGet;

    move-result-object v0

    .line 277
    .local v0, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->doRetryRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public getForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)[B
    .locals 2
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->get(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 267
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->readBytesFromResponse(Lorg/apache/http/HttpResponse;)[B

    move-result-object v1

    return-object v1
.end method

.method public getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Ljava/lang/String;
    .locals 2
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->get(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 272
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->readTextFromResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRequestIntercepter()Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->requestIntercepter:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;

    return-object v0
.end method

.method public getRetryTimes()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->retryTimes:I

    return v0
.end method

.method public post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "postData"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 195
    invoke-direct {p0, v1, p2, v1, p3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->buildHttpPost(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 196
    .local v0, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->doRetryRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/util/List;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "postData":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    const/4 v1, 0x0

    .line 212
    invoke-direct {p0, v1, p2, v1, p3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->buildHttpPost(Ljava/net/URI;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 213
    .local v0, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->doRetryRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/HttpEntity;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "postEntity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpPost;-><init>()V

    .line 207
    .local v0, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-virtual {v0, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 208
    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->doRetryRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BLjava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "postData"    # [B
    .param p3, "contentType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 190
    invoke-direct {p0, v1, p2, v1, p3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->buildHttpPost(Ljava/net/URI;[BLjava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/methods/HttpPost;

    move-result-object v0

    .line 191
    .local v0, "httpPost":Lorg/apache/http/client/methods/HttpPost;
    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->doRetryRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public postForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)[B
    .locals 2
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "postData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 165
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->readBytesFromResponse(Lorg/apache/http/HttpResponse;)[B

    move-result-object v1

    return-object v1
.end method

.method public postForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/util/List;)[B
    .locals 2
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 175
    .local p2, "postData":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->defaultCharset:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/util/List;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 176
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->readBytesFromResponse(Lorg/apache/http/HttpResponse;)[B

    move-result-object v1

    return-object v1
.end method

.method public postForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/HttpEntity;)[B
    .locals 2
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "postData"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/HttpEntity;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 181
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->readBytesFromResponse(Lorg/apache/http/HttpResponse;)[B

    move-result-object v1

    return-object v1
.end method

.method public postForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[B)[B
    .locals 2
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "postData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BLjava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 170
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->readBytesFromResponse(Lorg/apache/http/HttpResponse;)[B

    move-result-object v1

    return-object v1
.end method

.method public postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "postData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 140
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->readTextFromResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    .local p2, "postData":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->defaultCharset:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/util/List;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 150
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->readTextFromResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 2
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "postData"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/HttpEntity;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 155
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->readTextFromResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[B)Ljava/lang/String;
    .locals 2
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "postData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->post(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BLjava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 145
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->readTextFromResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public put(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/HttpEntity;)Lorg/apache/http/HttpResponse;
    .locals 2
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "putEntity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v0}, Lorg/apache/http/client/methods/HttpPut;-><init>()V

    .line 201
    .local v0, "httpPut":Lorg/apache/http/client/methods/HttpPut;
    invoke-virtual {v0, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 202
    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->doRetryRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    return-object v1
.end method

.method public putForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/HttpEntity;)[B
    .locals 2
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "putData"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->put(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/HttpEntity;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 186
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->readBytesFromResponse(Lorg/apache/http/HttpResponse;)[B

    move-result-object v1

    return-object v1
.end method

.method public putForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    .locals 2
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "putEntity"    # Lorg/apache/http/HttpEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->put(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/HttpEntity;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 160
    .local v0, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->readTextFromResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V
    .locals 0
    .param p1, "requestIntercepter"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->requestIntercepter:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;

    .line 516
    return-void
.end method

.method public setRetryTimes(I)V
    .locals 0
    .param p1, "retryTimes"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->retryTimes:I

    .line 116
    return-void
.end method
