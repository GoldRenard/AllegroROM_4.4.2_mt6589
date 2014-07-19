.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;
.super Ljava/lang/Object;
.source "PhotoStreamUploaderV2.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2$PhotoUploadProgressListener;
    }
.end annotation


# static fields
.field private static final PHOTO_INFO_COMMIT_SIZE:I = 0x32


# instance fields
.field private currentTaskId:J

.field private entityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;",
            ">;>;"
        }
    .end annotation
.end field

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

.field protected httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

.field private mContext:Landroid/content/Context;

.field private request:Lorg/apache/http/client/methods/HttpRequestBase;

.field private resultList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->entityList:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->resultList:Ljava/util/List;

    .line 54
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->mContext:Landroid/content/Context;

    .line 55
    const-string v0, "portrait"

    invoke-static {p1, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->fileApi:Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    .line 56
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    .line 57
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->setRequestIntercepter(Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine$RequestIntercepter;)V

    .line 58
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;J)V
    .locals 0

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->currentTaskId:J

    return-void
.end method

.method private commitPhotoInfo()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 93
    .local v6, "postData":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 95
    .local v3, "infos":Lorg/json/JSONArray;
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->resultList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 104
    const-string v9, "pt"

    invoke-virtual {v6, v9, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v9

    invoke-virtual {v9}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v5

    .line 106
    .local v5, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getContactServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v9

    .line 107
    const-string v10, "v5/photobackup.action"

    .line 108
    const-string v11, "contact.cloud.lps.lenovo.com"

    .line 106
    invoke-direct {v8, v9, v10, v5, v11}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 109
    .local v8, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->httpMachine:Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 111
    .local v7, "respStr":Ljava/lang/String;
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;

    invoke-direct {v0, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "backupResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;->getResult()I

    move-result v9

    if-eqz v9, :cond_1

    .line 114
    new-instance v9, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v9, v7}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 116
    .end local v0    # "backupResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;
    .end local v3    # "infos":Lorg/json/JSONArray;
    .end local v5    # "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    .end local v6    # "postData":Lorg/json/JSONObject;
    .end local v7    # "respStr":Ljava/lang/String;
    .end local v8    # "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    new-instance v9, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v9}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>()V

    throw v9

    .line 95
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v3    # "infos":Lorg/json/JSONArray;
    .restart local v6    # "postData":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;

    .line 96
    .local v2, "info":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 97
    .local v4, "json":Lorg/json/JSONObject;
    const-string v10, "sid"

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v10, "path"

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v10, "photolength"

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;->getLength()J

    move-result-wide v11

    invoke-virtual {v4, v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 101
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 119
    .end local v2    # "info":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;
    .end local v3    # "infos":Lorg/json/JSONArray;
    .end local v4    # "json":Lorg/json/JSONObject;
    .end local v6    # "postData":Lorg/json/JSONObject;
    :catch_1
    move-exception v1

    .line 120
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    new-instance v9, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;

    invoke-direct {v9}, Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;-><init>()V

    throw v9

    .line 123
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "backupResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;
    .restart local v3    # "infos":Lorg/json/JSONArray;
    .restart local v5    # "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    .restart local v6    # "postData":Lorg/json/JSONObject;
    .restart local v7    # "respStr":Ljava/lang/String;
    .restart local v8    # "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    :cond_1
    return-void
.end method


# virtual methods
.method public addEntity(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "contactSid"    # Ljava/lang/String;
    .param p2, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 126
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;

    const-string v1, "image/jpg"

    invoke-direct {v0, p2, p1, v1}, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v0, "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;>;"
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->entityList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public afterRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lorg/apache/http/HttpResponse;)V
    .locals 1
    .param p1, "httpRequest"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "httpResponse"    # Lorg/apache/http/HttpResponse;

    .prologue
    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 150
    return-void
.end method

.method public beforeRequest(Lorg/apache/http/client/methods/HttpRequestBase;Ljava/lang/Exception;)Z
    .locals 1
    .param p1, "httpRequest"    # Lorg/apache/http/client/methods/HttpRequestBase;
    .param p2, "retryReasonException"    # Ljava/lang/Exception;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public cancel()V
    .locals 4

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->currentTaskId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->fileApi:Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->currentTaskId:J

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cancel(J)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->request:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    .line 139
    :cond_1
    return-void
.end method

.method public execute(Z)Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;
    .locals 5
    .param p1, "isFlush"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "result":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->entityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 86
    :goto_0
    return-object v1

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->entityList:Ljava/util/List;

    monitor-enter v2

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->fileApi:Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2$PhotoUploadProgressListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2$PhotoUploadProgressListener;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2$PhotoUploadProgressListener;)V

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->entityList:Ljava/util/List;

    invoke-virtual {v1, v3, v4}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->batchUpload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->entityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 77
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->getResult()I

    move-result v1

    if-nez v1, :cond_2

    .line 78
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->resultList:Ljava/util/List;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->getResultList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->resultList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x32

    if-gt v1, v3, :cond_1

    if-eqz p1, :cond_2

    .line 81
    :cond_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderV2;->commitPhotoInfo()V

    .line 73
    :cond_2
    monitor-exit v2

    move-object v1, v0

    .line 86
    goto :goto_0

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
