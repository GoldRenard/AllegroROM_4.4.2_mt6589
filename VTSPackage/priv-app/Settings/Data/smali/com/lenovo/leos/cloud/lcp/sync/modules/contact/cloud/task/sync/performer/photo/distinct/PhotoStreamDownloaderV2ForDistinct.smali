.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;
.source "PhotoStreamDownloaderV2ForDistinct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$AutoCommitPhotoVisitor;,
        Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$DownloadMimeItem;,
        Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$PhotoDownloadProgressListener;
    }
.end annotation


# instance fields
.field private autoCommitVisitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$AutoCommitPhotoVisitor;

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

.field private nfsItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$DownloadMimeItem;",
            ">;"
        }
    .end annotation
.end field

.field private ops:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private opsTransactionCounter:J

.field private pilotItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$DownloadMimeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->ops:Ljava/util/ArrayList;

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->opsTransactionCounter:J

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->nfsItems:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->pilotItems:Ljava/util/ArrayList;

    .line 47
    const-string v0, "portrait"

    invoke-static {p1, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->fileApi:Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    .line 48
    return-void
.end method

.method private processNfsPhoto()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->nfsItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 127
    return-void

    .line 112
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$DownloadMimeItem;

    .line 114
    .local v1, "item":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$DownloadMimeItem;
    :try_start_0
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, ""

    aput-object v7, v5, v6

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$DownloadMimeItem;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v3, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v5, v3}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->getForBytes(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;)[B

    move-result-object v2

    .line 117
    .local v2, "photoBytes":[B
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$DownloadMimeItem;->getSid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->visitPhoto(Ljava/lang/String;[B)V

    .line 119
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 120
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v5}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v5
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus404Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v2    # "photoBytes":[B
    .end local v3    # "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpStatus404Exception;
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$DownloadMimeItem;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/String;)V

    .line 124
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private processPilotPhoto()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 87
    .local v2, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 89
    .local v1, "key2Sid":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->pilotItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 98
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->fileApi:Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$PhotoDownloadProgressListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$PhotoDownloadProgressListener;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$PhotoDownloadProgressListener;)V

    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$1;

    invoke-direct {v5, p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;Ljava/util/Map;)V

    invoke-virtual {v3, v2, v4, v5}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->batchDownload(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)I

    .line 109
    return-void

    .line 89
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$DownloadMimeItem;

    .line 90
    .local v0, "item":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$DownloadMimeItem;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$DownloadMimeItem;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$DownloadMimeItem;->getObjectKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$DownloadMimeItem;->getSid()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v3}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v3
.end method


# virtual methods
.method public addNfsMimeIten(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$DownloadMimeItem;)V
    .locals 1
    .param p1, "item"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$DownloadMimeItem;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->nfsItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public addPilotMimeIten(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$DownloadMimeItem;)V
    .locals 1
    .param p1, "item"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$DownloadMimeItem;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->pilotItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method public cancel()V
    .locals 4

    .prologue
    .line 175
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->cancel()V

    .line 177
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->currentTaskId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->fileApi:Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->currentTaskId:J

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cancel(J)V

    .line 180
    :cond_0
    return-void
.end method

.method public commitOperation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->ops:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->ops:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactDButil;->commitOperations(Landroid/content/Context;Ljava/util/List;)[Landroid/content/ContentProviderResult;

    .line 147
    :cond_0
    return-void
.end method

.method public execute()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 64
    .local v1, "startDownload":J
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->processResponse(Lorg/apache/http/HttpResponse;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iput-boolean v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->isFinish:Z

    .line 71
    const-string v3, "DEBUG_TAG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "downloadTask.execute:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v3, v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/Exception;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 68
    iput-boolean v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->isFinish:Z

    .line 69
    throw v3
.end method

.method protected executeHttpMaker(Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;)Lorg/apache/http/HttpResponse;
    .locals 1
    .param p1, "roller"    # Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBizUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->ops:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOpsTransactionCounter()J
    .locals 2

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->opsTransactionCounter:J

    return-wide v0
.end method

.method protected processResponse(Lorg/apache/http/HttpResponse;)V
    .locals 1
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->nfsItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->processNfsPhoto()V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->pilotItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->processPilotPhoto()V

    .line 83
    :cond_1
    return-void
.end method

.method public setOps(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->ops:Ljava/util/ArrayList;

    .line 155
    return-void
.end method

.method public setOpsTransactionCounter(J)V
    .locals 0
    .param p1, "opsTransactionCounter"    # J

    .prologue
    .line 162
    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->opsTransactionCounter:J

    .line 163
    return-void
.end method

.method public setVisitor(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$AutoCommitPhotoVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$AutoCommitPhotoVisitor;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->autoCommitVisitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$AutoCommitPhotoVisitor;

    .line 131
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
    .line 135
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->autoCommitVisitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$AutoCommitPhotoVisitor;

    invoke-interface {v0, p1, p2, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$AutoCommitPhotoVisitor;->onVisit(Ljava/lang/String;[BLcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;)V

    .line 136
    return-void
.end method
