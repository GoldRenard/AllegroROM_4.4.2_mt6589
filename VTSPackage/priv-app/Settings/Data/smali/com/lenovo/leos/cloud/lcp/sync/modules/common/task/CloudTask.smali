.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
.super Ljava/lang/Object;
.source "CloudTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;


# static fields
.field protected static final DEFAULT_PROGRESS_TOTAL:I = 0x64


# instance fields
.field private cancelled:Z

.field protected curProgressStep:I

.field protected currentThreadId:J

.field protected currentUser:Ljava/lang/String;

.field private gzipFlow:J

.field private httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

.field protected mContext:Landroid/content/Context;

.field protected problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

.field protected progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

.field private realFlow:J

.field protected result:I

.field protected smoothProgress:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

.field protected smoothProgressListener:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProxyListener;

.field protected taskId:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V
    .locals 2
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 38
    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->cancelled:Z

    .line 61
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask$1;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->smoothProgressListener:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProxyListener;

    .line 71
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->smoothProgressListener:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProxyListener;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;-><init>(Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress$ProxyListener;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->smoothProgress:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    .line 87
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->taskId:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    .line 88
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    .line 90
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    .line 91
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    .line 92
    return-void
.end method


# virtual methods
.method public afterRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 293
    return-void
.end method

.method public beforeRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)Z
    .locals 1
    .param p1, "request"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "retryReasonException"    # Ljava/lang/Exception;

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->cancelled:Z

    .line 271
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->currentThreadId:J

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->turnOffRequest(J)V

    .line 272
    return-void
.end method

.method protected checkCancelOperation()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 303
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v0

    .line 305
    :cond_0
    return-void
.end method

.method protected getForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)[B
    .locals 5
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "isGzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v1, p1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)[B

    move-result-object v0

    .line 122
    .local v0, "returnData":[B
    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->realFlow:J

    array-length v3, v0

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->realFlow:J

    .line 123
    if-eqz p2, :cond_0

    .line 124
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/GzipUtil;->ungzip([B)[B

    move-result-object v0

    .line 126
    :cond_0
    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->gzipFlow:J

    array-length v3, v0

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->gzipFlow:J

    .line 127
    return-object v0
.end method

.method protected getForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)Ljava/lang/String;
    .locals 3
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "isGzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Z)[B

    move-result-object v0

    .line 117
    .local v0, "returnData":[B
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public getHttpMachine()Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 189
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 190
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "progressstate"

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getProgressStep()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    const-string v1, "result"

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getResult()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    const-string v1, "real_flow"

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->realFlow:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 193
    const-string v1, "gzip_flow"

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->gzipFlow:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 195
    return-object v0
.end method

.method protected getProgressStep()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->curProgressStep:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    return v0
.end method

.method protected getSubParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 222
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public getTaskId()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->taskId:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    return-object v0
.end method

.method public getUserName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->currentUser:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 253
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->currentUser:Ljava/lang/String;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->currentUser:Ljava/lang/String;

    return-object v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->cancelled:Z

    return v0
.end method

.method protected isProgressStepPassed(I)Z
    .locals 1
    .param p1, "step"    # I

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getProgressStep()I

    move-result v0

    if-lt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected notifyFinish()V
    .locals 3

    .prologue
    .line 240
    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->currentThreadId:J

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->turnOnRequest(J)V

    .line 241
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 242
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V

    .line 245
    :cond_0
    return-void
.end method

.method protected notifyProgress(F)V
    .locals 6
    .param p1, "current"    # F

    .prologue
    .line 203
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getParams()Landroid/os/Bundle;

    move-result-object v5

    .line 205
    .local v5, "bundle":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    float-to-int v1, p1

    int-to-long v1, v1

    const-wide/16 v3, 0x64

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V

    .line 207
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method protected notifyStart()V
    .locals 3

    .prologue
    .line 229
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->currentThreadId:J

    .line 230
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 231
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {v1, v0}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onStart(Landroid/os/Bundle;)V

    .line 234
    :cond_0
    return-void
.end method

.method protected notifySubProgress(II)V
    .locals 6
    .param p1, "current"    # I
    .param p2, "total"    # I

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getSubParams()Landroid/os/Bundle;

    move-result-object v5

    .line 216
    .local v5, "bundle":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    int-to-long v1, p1

    int-to-long v3, p2

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onSubProgress(JJLandroid/os/Bundle;)V

    .line 219
    :cond_0
    return-void
.end method

.method protected postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/entity/mime/MultipartEntity;)Ljava/lang/String;
    .locals 3
    .param p1, "roller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "entity"    # Lorg/apache/http/entity/mime/MultipartEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v1, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    .line 96
    .local v0, "returnData":[B
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method protected postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;
    .locals 7
    .param p1, "uriRoller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .param p2, "postData"    # [B
    .param p3, "isGzip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    if-eqz p3, :cond_1

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/common/util/GzipUtil;->gzip([B)[B

    move-result-object v1

    .line 100
    .local v1, "gzipedData":[B
    :goto_0
    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->realFlow:J

    array-length v5, p2

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->realFlow:J

    .line 101
    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->gzipFlow:J

    array-length v5, v1

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->gzipFlow:J

    .line 102
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v3, p1, v1}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[B)[B

    move-result-object v2

    .line 103
    .local v2, "returnData":[B
    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->realFlow:J

    array-length v5, v2

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->realFlow:J

    .line 104
    if-eqz p3, :cond_0

    .line 106
    :try_start_0
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/GzipUtil;->ungzip([B)[B
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 111
    :cond_0
    :goto_1
    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->gzipFlow:J

    array-length v5, v2

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->gzipFlow:J

    .line 112
    new-instance v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v3

    .end local v1    # "gzipedData":[B
    .end local v2    # "returnData":[B
    :cond_1
    move-object v1, p2

    .line 99
    goto :goto_0

    .line 107
    .restart local v1    # "gzipedData":[B
    .restart local v2    # "returnData":[B
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method protected abstract reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V
.end method

.method public setProblemResolver(Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;)V
    .locals 0
    .param p1, "problemResolver"    # Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    .line 298
    return-void
.end method

.method public setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 0
    .param p1, "progressListener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->progressListener:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    .line 249
    return-void
.end method

.method protected setProgressStep(I)V
    .locals 0
    .param p1, "step"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->curProgressStep:I

    .line 173
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 265
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 266
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyStart()V

    .line 137
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->startTask()V
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus403Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyFinish()V

    .line 166
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception;
    const/4 v1, 0x4

    :try_start_1
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 140
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyFinish()V

    goto :goto_0

    .line 141
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus401Exception;
    :catch_1
    move-exception v0

    .line 142
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus403Exception;
    const/16 v1, 0x193

    :try_start_2
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 143
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyFinish()V

    goto :goto_0

    .line 144
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus403Exception;
    :catch_2
    move-exception v0

    .line 145
    .local v0, "e":Ljava/net/UnknownHostException;
    const/4 v1, 0x6

    :try_start_3
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 146
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyFinish()V

    goto/16 :goto_0

    .line 147
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_3
    move-exception v0

    .line 148
    .local v0, "e":Ljava/io/IOException;
    :try_start_4
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 149
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyFinish()V

    goto/16 :goto_0

    .line 148
    :cond_0
    const/4 v1, 0x3

    goto :goto_1

    .line 150
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 151
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
    const/4 v1, 0x1

    :try_start_5
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 152
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyFinish()V

    goto/16 :goto_0

    .line 153
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
    :catch_5
    move-exception v0

    .line 154
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;
    const/4 v1, 0x4

    :try_start_6
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 155
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyFinish()V

    goto/16 :goto_0

    .line 156
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;
    :catch_6
    move-exception v0

    .line 157
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;
    const/16 v1, 0x1f4

    :try_start_7
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 158
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyFinish()V

    goto/16 :goto_0

    .line 159
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;
    :catch_7
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_2
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 161
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyFinish()V

    goto/16 :goto_0

    .line 160
    :cond_1
    const/4 v1, 0x2

    goto :goto_2

    .line 162
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ", result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->i(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyFinish()V

    .line 165
    throw v1
.end method

.method protected abstract startTask()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
