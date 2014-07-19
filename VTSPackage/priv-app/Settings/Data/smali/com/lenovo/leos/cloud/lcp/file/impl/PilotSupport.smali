.class public Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;
.super Ljava/lang/Object;
.source "PilotSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity",
        "<+",
        "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
        ">;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final SLEEP_TIME:I = 0x64

.field private static final TAG:Ljava/lang/String; = "AppConfFileService"


# instance fields
.field protected context:Landroid/content/Context;

.field protected lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

.field protected pilotApi:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

.field protected realmId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lenovoId"    # Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    .param p3, "realmId"    # Ljava/lang/String;
    .param p4, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 40
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;, "Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->context:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    .line 43
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->realmId:Ljava/lang/String;

    .line 44
    invoke-static {p4}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->getInstance(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->pilotApi:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    .line 45
    return-void
.end method

.method private buildResultObjects(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;, "Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport<TT;>;"
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "cosList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 186
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;

    const-string v5, "entityList size is not equal to cosList size"

    invoke-direct {v4, v5}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 189
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 202
    return-object v3

    .line 192
    :cond_1
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    .line 193
    .local v0, "cosObj":Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;

    .line 195
    .local v1, "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;, "TT;"
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->isWritten()Z

    move-result v4

    if-nez v4, :cond_2

    .line 191
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 199
    :cond_2
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;

    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->getLocation()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->length()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private preparePilot()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 225
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;, "Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport<TT;>;"
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;->loadPilotParameter(Landroid/content/Context;)V

    .line 226
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->realmId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/LenovoId;->getSt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "lpsust":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->pilotApi:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->realmId:Ljava/lang/String;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->realmId:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/lenovo/leos/cloud/lcp/common/LenovoId;->getSt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->ensureLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void

    .line 230
    :cond_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    const-string v2, "\u83b7\u53d6\u7684Lpsust\u4e3anull, \u8bf7\u68c0\u67e5\u662f\u5426\u767b\u5f55\u6216LenovoId\u7684Bug"

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public download(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)I
    .locals 4
    .param p2, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .param p3, "visitor"    # Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;, "Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport<TT;>;"
    .local p1, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 206
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->preparePilot()V

    .line 208
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return v3

    .line 212
    :cond_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->pilotApi:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    invoke-virtual {v1, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->batchDownload(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)V

    .line 216
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "AppConfFileService"

    const-string v2, "InterruptedException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public uploadToPilot(Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)I
    .locals 4
    .param p3, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity",
            "<+",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;,
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;, "Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport<TT;>;"
    .local p1, "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;, "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<+Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;>;"
    .local p2, "appServerCallbackData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->preparePilot()V

    .line 62
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;

    invoke-direct {v1, p1}, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;-><init>(Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)V

    .line 63
    .local v1, "inputPipe":Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;
    invoke-virtual {v1, p3}, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    .line 65
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->pilotApi:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    invoke-virtual {v2, v1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->upload(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;Ljava/util/Map;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    .line 69
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "AppConfFileService"

    const-string v3, "InterruptedException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public uploadToPilot(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)Ljava/util/List;
    .locals 13
    .param p2, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;,
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;, "Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport<TT;>;"
    .local p1, "entities":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->preparePilot()V

    .line 133
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v6, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v1, "cosList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v5, "pipeList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    move-object v7, v6

    .line 174
    .end local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;>;"
    .local v7, "resultList":Ljava/lang/Object;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;>;"
    :goto_0
    return-object v7

    .line 141
    .end local v7    # "resultList":Ljava/lang/Object;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;>;"
    .restart local v6    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;>;"
    :cond_1
    const-wide/16 v8, 0x0

    .line 142
    .local v8, "totalLength":J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_2

    .line 146
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;

    invoke-direct {v0, v8, v9, p2}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;-><init>(JLcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    .line 147
    .local v0, "batchUploadProgressListener":Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;, "Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_3

    .line 163
    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->pilotApi:Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    invoke-virtual {v10, v5}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->batchUpload(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 165
    invoke-direct {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->buildResultObjects(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 169
    const-wide/16 v10, 0x64

    :try_start_0
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-object v7, v6

    .line 174
    .restart local v7    # "resultList":Ljava/lang/Object;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;>;"
    goto :goto_0

    .line 142
    .end local v0    # "batchUploadProgressListener":Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;, "Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;"
    .end local v7    # "resultList":Ljava/lang/Object;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;>;"
    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;

    .line 143
    .local v3, "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;, "TT;"
    invoke-interface {v3}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->length()J

    move-result-wide v11

    add-long/2addr v8, v11

    goto :goto_1

    .line 147
    .end local v3    # "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;, "TT;"
    .restart local v0    # "batchUploadProgressListener":Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;, "Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$BatchUploadProgressListener;"
    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;

    .line 148
    .restart local v3    # "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;, "TT;"
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;

    invoke-direct {v4, v3}, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;-><init>(Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)V

    .line 149
    .local v4, "inputPipe":Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;
    invoke-virtual {v4, v0}, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    .line 150
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 170
    .end local v3    # "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;, "TT;"
    .end local v4    # "inputPipe":Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;
    :catch_0
    move-exception v2

    .line 171
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v10, "AppConfFileService"

    const-string v11, "InterruptedException"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method
