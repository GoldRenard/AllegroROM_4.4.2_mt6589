.class public final Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;
.super Ljava/lang/Object;
.source "PilotAPI.java"


# instance fields
.field private authenticator:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;

.field private bucket:Ljava/lang/String;

.field private operator:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->DEFAULT:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->authenticator:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;

    .line 20
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->bucket:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static getInstance(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;
    .locals 1
    .param p0, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 24
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public batchDownload(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)V
    .locals 2
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
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->operator:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->bucket:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->batchDownload(Ljava/util/List;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)V

    .line 89
    return-void
.end method

.method public batchUpload(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "pipeList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;>;"
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->operator:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    const-string v2, "Not login."

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->operator:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->bucket:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->batchCreateObject(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, "cosList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;>;"
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->operator:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->bucket:Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->batchWriteObject(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 84
    return-object v0
.end method

.method public declared-synchronized ensureLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "realmId"    # Ljava/lang/String;
    .param p2, "lpsust"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;
        }
    .end annotation

    .prologue
    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->authenticator:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;->DEFAULT:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->setConfig(Lcom/lenovo/leos/cloud/lcp/file/pilot2/Config;)V

    .line 36
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->authenticator:Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;

    invoke-virtual {v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/Authenticator;->getOperatorByLpsust(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->operator:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit p0

    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public upload(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;Ljava/util/Map;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;
    .locals 3
    .param p1, "inputPipe"    # Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    .local p2, "appServerCallBackData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->operator:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;

    const-string v2, "Not login."

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->operator:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->bucket:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->createObject(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;

    move-result-object v0

    .line 57
    .local v0, "cosObject":Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;
    invoke-virtual {v0, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;->setAppServerCallbackData(Ljava/util/Map;)V

    .line 58
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->operator:Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;

    invoke-virtual {v1, v0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosOperator;->writeObject(Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;)V

    .line 60
    return-object v0
.end method
