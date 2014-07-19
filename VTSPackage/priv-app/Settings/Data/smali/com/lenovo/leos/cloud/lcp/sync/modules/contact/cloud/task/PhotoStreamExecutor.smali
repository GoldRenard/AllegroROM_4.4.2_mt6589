.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;
.super Ljava/lang/Object;
.source "PhotoStreamExecutor.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor$PhotoVisitor;
    }
.end annotation


# static fields
.field protected static final NET_BUFFER_SIZE:I = 0x1000

.field protected static final RETRY_TIMES:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PhotoStreamExecutor"


# instance fields
.field protected context:Landroid/content/Context;

.field protected flux:J

.field protected httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

.field protected isCanceled:Z

.field protected isFinish:Z

.field private request:Lorg/apache/http/client/methods/HttpRequestBase;

.field private visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor$PhotoVisitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->isFinish:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor$PhotoVisitor;

    .line 42
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->context:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    .line 44
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    .line 45
    return-void
.end method


# virtual methods
.method public afterRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 121
    return-void
.end method

.method public beforeRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)Z
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "retryReasonException"    # Ljava/lang/Exception;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 105
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->isCanceled:Z

    .line 106
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PhotoStreamExecutor"

    const-string v2, "cancel Exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public execute()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    const/16 v13, 0xc8

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 64
    .local v7, "startupload":J
    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v10

    invoke-virtual {v10}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v3

    .line 65
    .local v3, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v6, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->context:Landroid/content/Context;

    invoke-static {v10}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getContactServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->getBizUrl()Ljava/lang/String;

    move-result-object v11

    const-string v12, "contact.cloud.lps.lenovo.com"

    invoke-direct {v6, v10, v11, v3, v12}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 67
    .local v6, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    const/4 v5, 0x0

    .line 68
    .local v5, "response":Lorg/apache/http/HttpResponse;
    const/4 v4, 0x0

    .line 70
    .local v4, "respCode":I
    :try_start_0
    invoke-virtual {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->executeHttpMaker(Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 71
    if-eqz v5, :cond_0

    .line 72
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    .line 73
    .local v9, "status":Lorg/apache/http/StatusLine;
    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    .line 74
    if-ne v4, v13, :cond_2

    .line 75
    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->processResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v9    # "status":Lorg/apache/http/StatusLine;
    :cond_0
    if-eq v4, v13, :cond_1

    .line 90
    :try_start_1
    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->recycleHttpResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 96
    :cond_1
    :goto_0
    iput-boolean v14, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->isFinish:Z

    .line 98
    const-string v10, "DEBUG_TAG"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "uploadTask.execute:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v7

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    return-void

    .line 76
    .restart local v9    # "status":Lorg/apache/http/StatusLine;
    :cond_2
    const/16 v10, 0x191

    if-ne v4, v10, :cond_4

    .line 77
    :try_start_2
    new-instance v10, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception;

    invoke-direct {v10}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception;-><init>()V

    throw v10
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    .end local v9    # "status":Lorg/apache/http/StatusLine;
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    new-instance v10, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v10, v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 89
    if-eq v4, v13, :cond_3

    .line 90
    :try_start_4
    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->recycleHttpResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 96
    :cond_3
    :goto_1
    iput-boolean v14, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->isFinish:Z

    .line 97
    throw v10

    .line 79
    .restart local v9    # "status":Lorg/apache/http/StatusLine;
    :cond_4
    :try_start_5
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-static {v10}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "html":Ljava/lang/String;
    const-string v10, "NetTaskExecutor"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v10, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v10}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>()V

    throw v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 92
    .end local v1    # "html":Ljava/lang/String;
    .end local v9    # "status":Lorg/apache/http/StatusLine;
    :catch_1
    move-exception v2

    .line 93
    .local v2, "ioe":Ljava/io/IOException;
    const-string v11, "NetTaskExecutor"

    const-string v12, "Unexcepted IOException when recyle httpResponse"

    invoke-static {v11, v12, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 92
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 93
    .restart local v2    # "ioe":Ljava/io/IOException;
    const-string v10, "NetTaskExecutor"

    const-string v11, "Unexcepted IOException when recyle httpResponse"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected abstract executeHttpMaker(Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract getBizUrl()Ljava/lang/String;
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->isCanceled:Z

    return v0
.end method

.method public isFinish()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->isFinish:Z

    return v0
.end method

.method public prepare()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->isFinish:Z

    .line 49
    return-void
.end method

.method protected processResponse(Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 101
    return-void
.end method

.method public setVisitor(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor$PhotoVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor$PhotoVisitor;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor$PhotoVisitor;

    .line 125
    return-void
.end method

.method public visitPhoto(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor$PhotoVisitor;

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor$PhotoVisitor;->onVisit(Ljava/lang/String;[B)V

    .line 133
    return-void
.end method

.method public visitPhoto(Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 2
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "inStream"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor$PhotoVisitor;

    const/4 v1, 0x0

    invoke-static {p2, p3, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readBytes(Ljava/io/InputStream;IZ)[B

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor$PhotoVisitor;->onVisit(Ljava/lang/String;[B)V

    .line 129
    return-void
.end method

.method public visitPhoto(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor$PhotoVisitor;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor$PhotoVisitor;->onVisit(Ljava/lang/String;[B)V

    .line 137
    return-void
.end method
