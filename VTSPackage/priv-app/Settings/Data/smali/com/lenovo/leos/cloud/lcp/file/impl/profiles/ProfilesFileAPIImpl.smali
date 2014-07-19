.class public final Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;
.super Ljava/lang/Object;
.source "ProfilesFileAPIImpl.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/LCPFileAPI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl$AppConfigListenerProxy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;",
        ">;>",
        "Ljava/lang/Object;",
        "Lcom/lenovo/leos/cloud/lcp/file/LCPFileAPI",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PROGRESS_HIT_METAINFO:I = 0xa

.field private static final PROGRESS_HIT_TOTAL:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ProfilesFileAPIImpl"

.field private static instance:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private cancelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected context:Landroid/content/Context;

.field private cost:J

.field private lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

.field private realmId:Ljava/lang/String;

.field private start:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->$assertionsDisabled:Z

    .line 165
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lenovoId"    # Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    .param p3, "realmId"    # Ljava/lang/String;

    .prologue
    .line 44
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->cancelMap:Ljava/util/Map;

    .line 46
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    .line 48
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->realmId:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private cleanTask(J)V
    .locals 2
    .param p1, "taskId"    # J

    .prologue
    .line 85
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<TT;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->cancelMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->turnOnRequest(J)V

    .line 87
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 69
    const-class v1, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->instance:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "It\'s first getIntance, call method: getInstance( Context, String, String )"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 72
    :cond_0
    :try_start_1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->instance:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 57
    sget-boolean v2, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v0

    .line 59
    .local v0, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    const-string v1, "contact.cloud.lps.lenovo.com"

    .line 60
    .local v1, "realmId":Ljava/lang/String;
    const-class v3, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    monitor-enter v3

    .line 61
    :try_start_0
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->instance:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    if-nez v2, :cond_1

    .line 62
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    invoke-direct {v2, p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    sput-object v2, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->instance:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    .line 60
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    sget-object v2, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->instance:Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;

    return-object v2

    .line 60
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private initService(J)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;
    .locals 5
    .param p1, "taskId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<TT;>;"
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->cancelMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 77
    .local v0, "cancelled":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v1

    .line 81
    :cond_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->lenovoId:Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->realmId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    return-object v1
.end method

.method private declared-synchronized initTaskId()J
    .locals 5

    .prologue
    .line 117
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 118
    .local v0, "taskId":J
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->cancelMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit p0

    return-wide v0

    .line 117
    .end local v0    # "taskId":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private isSuccessuploadMetaInfo(Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/UploadMetaInfoResult;)Z
    .locals 1
    .param p1, "result"    # Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/UploadMetaInfoResult;

    .prologue
    .line 248
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<TT;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/UploadMetaInfoResult;->getResult()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V
    .locals 3
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .param p2, "resultCode"    # I
    .param p3, "taskId"    # J

    .prologue
    .line 237
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<TT;>;"
    const/16 v1, 0x64

    const/16 v2, 0x64

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V

    .line 239
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 240
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-direct {p0, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->cleanTask(J)V

    .line 245
    return-void

    .line 242
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    .line 243
    invoke-direct {p0, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->cleanTask(J)V

    .line 244
    throw v1
.end method

.method private notifyProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V
    .locals 6
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .param p2, "current"    # I
    .param p3, "total"    # I

    .prologue
    .line 226
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<TT;>;"
    int-to-long v1, p2

    int-to-long v3, p3

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V

    .line 227
    return-void
.end method

.method private notifyStart(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;J)V
    .locals 2
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .param p2, "taskId"    # J

    .prologue
    .line 230
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<TT;>;"
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "taskId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 232
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onStart(Landroid/os/Bundle;)V

    .line 233
    return-void
.end method

.method private notifySubProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .param p2, "current"    # I

    .prologue
    .line 217
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<TT;>;"
    const/16 v0, 0x64

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V

    .line 218
    return-void
.end method

.method private notifySubProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V
    .locals 6
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .param p2, "current"    # I
    .param p3, "total"    # I

    .prologue
    .line 208
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<TT;>;"
    int-to-long v1, p2

    int-to-long v3, p3

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onSubProgress(JJLandroid/os/Bundle;)V

    .line 209
    return-void
.end method

.method private startUpload(Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I
    .locals 9
    .param p1, "profilesPilotSupport"    # Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;
    .param p2, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "TT;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<TT;>;"
    .local p3, "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;, "TT;"
    const/4 v1, 0x0

    .line 168
    const/4 v4, 0x0

    .line 170
    .local v4, "resultCode":I
    invoke-direct {p0, p2, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;I)V

    .line 172
    invoke-interface {p3}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->getMetaInfo()Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;

    .line 173
    .local v2, "metaInfo":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;
    invoke-interface {p3}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    const/4 v1, 0x1

    .line 175
    .local v1, "hasFile":Z
    :cond_0
    invoke-virtual {p1, v2, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;->uploadMetaInfo(Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesMetaInfo;Z)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/UploadMetaInfoResult;

    move-result-object v3

    .line 176
    .local v3, "result":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/UploadMetaInfoResult;
    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/UploadMetaInfoResult;->getResult()I

    move-result v4

    .line 178
    const/16 v5, 0xa

    invoke-direct {p0, p2, v5}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;I)V

    .line 180
    if-eqz v1, :cond_1

    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->isSuccessuploadMetaInfo(Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/UploadMetaInfoResult;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 182
    .local v0, "callbackdata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "callback_dataId"

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/UploadMetaInfoResult;->getDataId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl$AppConfigListenerProxy;

    invoke-direct {v5, p2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl$AppConfigListenerProxy;-><init>(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    invoke-virtual {p1, p3, v0, v5}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->uploadToPilot(Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)I

    move-result v4

    .line 186
    .end local v0    # "callbackdata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const/16 v5, 0x64

    invoke-direct {p0, p2, v5}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;I)V

    .line 187
    return v4
.end method

.method private startUploadOnce(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I
    .locals 4
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .param p2, "service"    # Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;",
            "TT;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<TT;>;"
    .local p3, "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;, "TT;"
    const/4 v1, 0x0

    .line 148
    .local v1, "resultCode":I
    :try_start_0
    invoke-direct {p0, p2, p1, p3}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->startUpload(Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v1

    .line 162
    :goto_0
    return v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x2

    .line 151
    const-string v2, "ProfilesFileAPIImpl"

    const-string v3, "IOException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 152
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 153
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;
    const/4 v1, 0x3

    .line 154
    const-string v2, "ProfilesFileAPIImpl"

    const-string v3, "AuthenticationException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 155
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;
    :catch_2
    move-exception v0

    .line 156
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;
    const/4 v1, 0x1

    .line 157
    const-string v2, "ProfilesFileAPIImpl"

    const-string v3, "ServerRuntimeException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 158
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;
    :catch_3
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x1

    .line 160
    const-string v2, "ProfilesFileAPIImpl"

    const-string v3, "Unexcepted Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public batchDownload(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)I
    .locals 1
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

    .prologue
    .line 293
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<TT;>;"
    .local p1, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public batchUpload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "Ljava/util/List",
            "<TT;>;)",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<TT;>;"
    .local p2, "entityList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public declared-synchronized cancel(J)V
    .locals 4
    .param p1, "taskId"    # J

    .prologue
    .line 192
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->cancelMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 193
    .local v0, "isCancel":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 194
    const-string v1, "ProfilesFileAPIImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No task is running, to check if code logic wrong , taskId : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :goto_0
    monitor-exit p0

    return-void

    .line 197
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->cancelMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-static {p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->turnOffRequest(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 192
    .end local v0    # "isCancel":Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V
    .locals 6
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "userName"    # Ljava/lang/String;
    .param p4, "result"    # I
    .param p5, "cost"    # J
    .param p7, "operateType"    # Ljava/lang/String;
    .param p8, "changeNum"    # I

    .prologue
    .line 282
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<TT;>;"
    new-instance v5, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v5}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 283
    .local v5, "params":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    const/4 v0, 0x1

    const-string v1, "userName"

    invoke-virtual {v5, v0, v1, p3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 284
    const/4 v0, 0x2

    const-string v1, "fileNum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 285
    const/4 v0, 0x5

    const-string v1, "APPTOKEN"

    const-string v2, "PJPRUFMX2B3"

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 287
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->getInstance()Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v4

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/track/TrackServiceImpl;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lenovo/lps/reaper/sdk/api/ParamMap;)V

    .line 289
    return-void
.end method

.method public upload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I
    .locals 17
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "TT;)I"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<TT;>;"
    .local p2, "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;, "TT;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->start:J

    .line 125
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->initTaskId()J

    move-result-wide v13

    .line 126
    .local v13, "taskId":J
    const/4 v7, 0x0

    .line 129
    .local v7, "resultCode":I
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyStart(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;J)V

    .line 130
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->initService(J)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;

    move-result-object v12

    .line 131
    .local v12, "service":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;
    const/4 v3, 0x0

    const/16 v4, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v12, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->startUploadOnce(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 136
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v13, v14}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->start:J

    sub-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->cost:J

    .line 138
    const-string v4, "LCPFile"

    const-string v5, "FILE_UPLOAD"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 139
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->cost:J

    const-string v10, "3"

    const/4 v11, 0x1

    move-object/from16 v3, p0

    .line 138
    invoke-virtual/range {v3 .. v11}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 142
    .end local v12    # "service":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;
    :goto_0
    return v7

    .line 133
    :catch_0
    move-exception v15

    .line 134
    .local v15, "uce":Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
    const/4 v7, 0x4

    .line 136
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v13, v14}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->start:J

    sub-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->cost:J

    .line 138
    const-string v4, "LCPFile"

    const-string v5, "FILE_UPLOAD"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 139
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->cost:J

    const-string v10, "3"

    const/4 v11, 0x1

    move-object/from16 v3, p0

    .line 138
    invoke-virtual/range {v3 .. v11}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    goto :goto_0

    .line 135
    .end local v15    # "uce":Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
    :catchall_0
    move-exception v3

    move-object/from16 v16, v3

    .line 136
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v13, v14}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->start:J

    sub-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->cost:J

    .line 138
    const-string v4, "LCPFile"

    const-string v5, "FILE_UPLOAD"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 139
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->cost:J

    const-string v10, "3"

    const/4 v11, 0x1

    move-object/from16 v3, p0

    .line 138
    invoke-virtual/range {v3 .. v11}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 140
    throw v16
.end method

.method public upload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Ljava/util/List;)I
    .locals 18
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "Ljava/util/List",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl<TT;>;"
    .local p2, "entityList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->start:J

    .line 92
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->initTaskId()J

    move-result-wide v14

    .line 93
    .local v14, "taskId":J
    const/4 v6, 0x0

    .line 96
    .local v6, "resultCode":I
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyStart(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;J)V

    .line 97
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->initService(J)Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;

    move-result-object v13

    .line 98
    .local v13, "service":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;
    const/4 v2, 0x0

    const/16 v3, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V

    .line 100
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-ge v12, v2, :cond_0

    if-eqz v6, :cond_1

    .line 108
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v14, v15}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->start:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->cost:J

    .line 110
    const-string v3, "LCPFile"

    const-string v4, "FILE_UPLOAD"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 111
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->cost:J

    const-string v9, "3"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    move-object/from16 v2, p0

    .line 110
    invoke-virtual/range {v2 .. v10}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 113
    .end local v12    # "i":I
    .end local v13    # "service":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;
    :goto_1
    return v6

    .line 101
    .restart local v12    # "i":I
    .restart local v13    # "service":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;
    :cond_1
    :try_start_1
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;

    .line 102
    .local v11, "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v11}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->startUploadOnce(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I

    move-result v6

    .line 103
    add-int/lit8 v2, v12, 0x1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V
    :try_end_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 105
    .end local v11    # "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;, "TT;"
    .end local v12    # "i":I
    .end local v13    # "service":Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesPilotSupport;
    :catch_0
    move-exception v16

    .line 106
    .local v16, "uce":Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
    const/4 v6, 0x4

    .line 108
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v14, v15}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->start:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->cost:J

    .line 110
    const-string v3, "LCPFile"

    const-string v4, "FILE_UPLOAD"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 111
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->cost:J

    const-string v9, "3"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    move-object/from16 v2, p0

    .line 110
    invoke-virtual/range {v2 .. v10}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    goto :goto_1

    .line 107
    .end local v16    # "uce":Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
    :catchall_0
    move-exception v2

    move-object/from16 v17, v2

    .line 108
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v14, v15}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->start:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->cost:J

    .line 110
    const-string v3, "LCPFile"

    const-string v4, "FILE_UPLOAD"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 111
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->cost:J

    const-string v9, "3"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    move-object/from16 v2, p0

    .line 110
    invoke-virtual/range {v2 .. v10}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 112
    throw v17
.end method
