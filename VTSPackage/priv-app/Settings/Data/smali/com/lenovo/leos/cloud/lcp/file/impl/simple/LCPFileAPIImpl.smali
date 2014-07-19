.class public final Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;
.super Ljava/lang/Object;
.source "LCPFileAPIImpl.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/LCPFileAPI;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;",
        ">;>",
        "Ljava/lang/Object;",
        "Lcom/lenovo/leos/cloud/lcp/file/LCPFileAPI",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final PROGRESS_HIT_TOTAL:I = 0x64

.field private static final TAG:Ljava/lang/String; = "LCPFileAPIImpl"

.field private static instanceCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;",
            ">;>;>;"
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

.field private context:Landroid/content/Context;

.field private cost:J

.field private pilotSupport:Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport",
            "<TT;>;"
        }
    .end annotation
.end field

.field private start:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->$assertionsDisabled:Z

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->instanceCache:Ljava/util/Map;

    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lenovoId"    # Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    .param p3, "realmId"    # Ljava/lang/String;
    .param p4, "bucketName"    # Ljava/lang/String;

    .prologue
    .line 50
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cancelMap:Ljava/util/Map;

    .line 51
    sget-boolean v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->pilotSupport:Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;

    .line 53
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->context:Landroid/content/Context;

    .line 54
    return-void
.end method

.method private cleanTask(J)V
    .locals 2
    .param p1, "taskId"    # J

    .prologue
    .line 247
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<TT;>;"
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cancelMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-static {p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->turnOnRequest(J)V

    .line 249
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bucketName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 64
    const-class v4, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    monitor-enter v4

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 65
    const/4 v0, 0x0

    .line 78
    :cond_0
    :goto_0
    monitor-exit v4

    return-object v0

    .line 68
    :cond_1
    :try_start_1
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->instanceCache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    .line 70
    .local v0, "instance":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;>;>;"
    if-nez v0, :cond_0

    .line 71
    const-string v2, "contact.cloud.lps.lenovo.com"

    .line 72
    .local v2, "realmId":Ljava/lang/String;
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v1

    .line 74
    .local v1, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;

    .end local v0    # "instance":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;>;>;"
    invoke-direct {v0, p0, v1, v2, p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .restart local v0    # "instance":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;>;>;"
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->instanceCache:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    .end local v0    # "instance":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;>;>;"
    .end local v1    # "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    .end local v2    # "realmId":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private declared-synchronized initTaskId()J
    .locals 5

    .prologue
    .line 252
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<TT;>;"
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 253
    .local v0, "taskId":J
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cancelMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    monitor-exit p0

    return-wide v0

    .line 252
    .end local v0    # "taskId":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private isCurrentTaskCancelled()Z
    .locals 5

    .prologue
    .line 303
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    .line 304
    .local v1, "taskId":J
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cancelMap:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 305
    .local v0, "isCancel":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V
    .locals 3
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .param p2, "resultCode"    # I
    .param p3, "taskId"    # J

    .prologue
    .line 233
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<TT;>;"
    if-nez p1, :cond_0

    .line 244
    :goto_0
    return-void

    .line 237
    :cond_0
    const/16 v1, 0x64

    const/16 v2, 0x64

    :try_start_0
    invoke-direct {p0, p1, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V

    .line 238
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 239
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 240
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-direct {p0, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cleanTask(J)V

    goto :goto_0

    .line 241
    .end local v0    # "bundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    .line 242
    invoke-direct {p0, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cleanTask(J)V

    .line 243
    throw v1
.end method

.method private notifyProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V
    .locals 6
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .param p2, "current"    # I
    .param p3, "total"    # I

    .prologue
    .line 296
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<TT;>;"
    if-nez p1, :cond_0

    .line 300
    :goto_0
    return-void

    .line 299
    :cond_0
    int-to-long v1, p2

    int-to-long v3, p3

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private notifyStart(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;J)V
    .locals 3
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .param p2, "taskId"    # J

    .prologue
    .line 258
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<TT;>;"
    if-nez p1, :cond_0

    .line 266
    :goto_0
    return-void

    .line 261
    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-direct {p0, p1, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V

    .line 263
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 264
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "taskId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 265
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onStart(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private notifySubProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .param p2, "current"    # I

    .prologue
    .line 287
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<TT;>;"
    const/16 v0, 0x64

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V

    .line 288
    return-void
.end method

.method private notifySubProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V
    .locals 6
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .param p2, "current"    # I
    .param p3, "total"    # I

    .prologue
    .line 275
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<TT;>;"
    if-nez p1, :cond_0

    .line 279
    :goto_0
    return-void

    .line 278
    :cond_0
    int-to-long v1, p2

    int-to-long v3, p3

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onSubProgress(JJLandroid/os/Bundle;)V

    goto :goto_0
.end method

.method private startUpload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I
    .locals 5
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 154
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<TT;>;"
    .local p2, "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;, "TT;"
    const/4 v2, 0x0

    .line 155
    .local v2, "resultCode":I
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;I)V

    .line 156
    invoke-interface {p2}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->getMetaInfo()Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;

    .line 157
    .local v1, "metaInfo":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 158
    .local v0, "callbackdata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->pilotSupport:Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;

    new-instance v4, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl$AppConfigListenerProxy;

    invoke-direct {v4, p1}, Lcom/lenovo/leos/cloud/lcp/file/impl/profiles/ProfilesFileAPIImpl$AppConfigListenerProxy;-><init>(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V

    invoke-virtual {v3, p2, v0, v4}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->uploadToPilot(Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)I

    move-result v2

    .line 159
    const/16 v3, 0x64

    invoke-direct {p0, p1, v3}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;I)V

    .line 160
    return v2

    .line 157
    .end local v0    # "callbackdata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/SimpleMetaInfo;->getData()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method private startUploadOnce(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I
    .locals 5
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "TT;)I"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<TT;>;"
    .local p2, "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;, "TT;"
    const/4 v2, 0x0

    .line 130
    .local v2, "resultCode":I
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->startUpload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpAbortException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result v2

    .line 150
    :goto_0
    return v2

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "hae":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpAbortException;
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->isCurrentTaskCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    const/4 v2, 0x4

    .line 134
    goto :goto_0

    .line 135
    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    .line 137
    .end local v1    # "hae":Lcom/lenovo/leos/cloud/lcp/common/httpclient/exception/HttpAbortException;
    :catch_1
    move-exception v0

    .line 138
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x2

    .line 139
    const-string v3, "LCPFileAPIImpl"

    const-string v4, "IOException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 140
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 141
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;
    const/4 v2, 0x3

    .line 142
    const-string v3, "LCPFileAPIImpl"

    const-string v4, "AuthenticationException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 143
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;
    :catch_3
    move-exception v0

    .line 144
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;->getErrorCode()I

    move-result v2

    .line 145
    const-string v3, "LCPFileAPIImpl"

    const-string v4, "ServerRuntimeException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 146
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;
    :catch_4
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x1

    .line 148
    const-string v3, "LCPFileAPIImpl"

    const-string v4, "Unexcepted Exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public batchDownload(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)I
    .locals 17
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
    .line 202
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<TT;>;"
    .local p1, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->start:J

    .line 203
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->initTaskId()J

    move-result-wide v13

    .line 204
    .local v13, "taskId":J
    const/4 v7, 0x0

    .line 207
    .local v7, "resultCode":I
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v13, v14}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyStart(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;J)V

    .line 208
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->pilotSupport:Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v3, v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->download(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 224
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7, v13, v14}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->start:J

    sub-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    .line 226
    const-string v4, "LCPFile"

    const-string v5, "FILE_BATCH_UPLOAD"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    const-string v10, "5"

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 229
    :goto_0
    return v7

    .line 209
    :catch_0
    move-exception v12

    .line 210
    .local v12, "e":Ljava/io/IOException;
    const/4 v7, 0x2

    .line 211
    :try_start_1
    const-string v3, "LCPFileAPIImpl"

    const-string v4, "IOException"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7, v13, v14}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->start:J

    sub-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    .line 226
    const-string v4, "LCPFile"

    const-string v5, "FILE_BATCH_UPLOAD"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    const-string v10, "5"

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    goto :goto_0

    .line 212
    .end local v12    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v12

    .line 213
    .local v12, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;
    const/4 v7, 0x3

    .line 214
    :try_start_2
    const-string v3, "LCPFileAPIImpl"

    const-string v4, "AuthenticationException"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 224
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7, v13, v14}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->start:J

    sub-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    .line 226
    const-string v4, "LCPFile"

    const-string v5, "FILE_BATCH_UPLOAD"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    const-string v10, "5"

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    goto :goto_0

    .line 215
    .end local v12    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;
    :catch_2
    move-exception v12

    .line 216
    .local v12, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;
    const/4 v7, 0x1

    .line 217
    :try_start_3
    const-string v3, "LCPFileAPIImpl"

    const-string v4, "ServerRuntimeException"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 224
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7, v13, v14}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->start:J

    sub-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    .line 226
    const-string v4, "LCPFile"

    const-string v5, "FILE_BATCH_UPLOAD"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    const-string v10, "5"

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    goto/16 :goto_0

    .line 218
    .end local v12    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;
    :catch_3
    move-exception v15

    .line 219
    .local v15, "uce":Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
    const/4 v7, 0x4

    .line 224
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7, v13, v14}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->start:J

    sub-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    .line 226
    const-string v4, "LCPFile"

    const-string v5, "FILE_BATCH_UPLOAD"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    const-string v10, "5"

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    goto/16 :goto_0

    .line 220
    .end local v15    # "uce":Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
    :catch_4
    move-exception v12

    .line 221
    .local v12, "e":Ljava/lang/Exception;
    const/4 v7, 0x1

    .line 222
    :try_start_4
    const-string v3, "LCPFileAPIImpl"

    const-string v4, "Unexcepted Exception"

    invoke-static {v3, v4, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 224
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7, v13, v14}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->start:J

    sub-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    .line 226
    const-string v4, "LCPFile"

    const-string v5, "FILE_BATCH_UPLOAD"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    const-string v10, "5"

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    goto/16 :goto_0

    .line 223
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    move-object/from16 v16, v3

    .line 224
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7, v13, v14}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->start:J

    sub-long/2addr v3, v5

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    .line 226
    const-string v4, "LCPFile"

    const-string v5, "FILE_BATCH_UPLOAD"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    const-string v10, "5"

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 227
    throw v16
.end method

.method public batchUpload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;
    .locals 18
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
    .line 165
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<TT;>;"
    .local p2, "entityList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->start:J

    .line 166
    invoke-direct/range {p0 .. p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->initTaskId()J

    move-result-wide v14

    .line 167
    .local v14, "taskId":J
    new-instance v12, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;

    invoke-direct {v12}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;-><init>()V

    .line 168
    .local v12, "result":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;
    const/4 v6, 0x0

    .line 171
    .local v6, "resultCode":I
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyStart(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;J)V

    .line 172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->pilotSupport:Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;->uploadToPilot(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)Ljava/util/List;

    move-result-object v13

    .line 173
    .local v13, "resultObjects":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;>;"
    invoke-virtual {v12, v13}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->setResultObjectList(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-virtual {v12, v6}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->setResult(I)V

    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v14, v15}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->start:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    .line 193
    const-string v3, "LCPFile"

    const-string v4, "FILE_BATCH_UPLOAD"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 194
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    const-string v9, "5"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    move-object/from16 v2, p0

    .line 193
    invoke-virtual/range {v2 .. v10}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 196
    .end local v13    # "resultObjects":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$ResultObject;>;"
    :goto_0
    return-object v12

    .line 174
    :catch_0
    move-exception v11

    .line 175
    .local v11, "e":Ljava/io/IOException;
    const/4 v6, 0x2

    .line 176
    :try_start_1
    const-string v2, "LCPFileAPIImpl"

    const-string v3, "IOException"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    invoke-virtual {v12, v6}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->setResult(I)V

    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v14, v15}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->start:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    .line 193
    const-string v3, "LCPFile"

    const-string v4, "FILE_BATCH_UPLOAD"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 194
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    const-string v9, "5"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    move-object/from16 v2, p0

    .line 193
    invoke-virtual/range {v2 .. v10}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    goto :goto_0

    .line 177
    .end local v11    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v11

    .line 178
    .local v11, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;
    const/4 v6, 0x3

    .line 179
    :try_start_2
    const-string v2, "LCPFileAPIImpl"

    const-string v3, "AuthenticationException"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    invoke-virtual {v12, v6}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->setResult(I)V

    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v14, v15}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->start:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    .line 193
    const-string v3, "LCPFile"

    const-string v4, "FILE_BATCH_UPLOAD"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 194
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    const-string v9, "5"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    move-object/from16 v2, p0

    .line 193
    invoke-virtual/range {v2 .. v10}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    goto :goto_0

    .line 180
    .end local v11    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;
    :catch_2
    move-exception v11

    .line 181
    .local v11, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;
    const/4 v6, 0x1

    .line 182
    :try_start_3
    const-string v2, "LCPFileAPIImpl"

    const-string v3, "ServerRuntimeException"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    invoke-virtual {v12, v6}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->setResult(I)V

    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v14, v15}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->start:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    .line 193
    const-string v3, "LCPFile"

    const-string v4, "FILE_BATCH_UPLOAD"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 194
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    const-string v9, "5"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    move-object/from16 v2, p0

    .line 193
    invoke-virtual/range {v2 .. v10}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    goto/16 :goto_0

    .line 183
    .end local v11    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;
    :catch_3
    move-exception v16

    .line 184
    .local v16, "uce":Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
    const/4 v6, 0x4

    .line 189
    invoke-virtual {v12, v6}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->setResult(I)V

    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v14, v15}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->start:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    .line 193
    const-string v3, "LCPFile"

    const-string v4, "FILE_BATCH_UPLOAD"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 194
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    const-string v9, "5"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    move-object/from16 v2, p0

    .line 193
    invoke-virtual/range {v2 .. v10}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    goto/16 :goto_0

    .line 185
    .end local v16    # "uce":Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
    :catch_4
    move-exception v11

    .line 186
    .local v11, "e":Ljava/lang/Exception;
    const/4 v6, 0x1

    .line 187
    :try_start_4
    const-string v2, "LCPFileAPIImpl"

    const-string v3, "Unexcepted Exception"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 189
    invoke-virtual {v12, v6}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->setResult(I)V

    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v14, v15}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->start:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    .line 193
    const-string v3, "LCPFile"

    const-string v4, "FILE_BATCH_UPLOAD"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 194
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    const-string v9, "5"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    move-object/from16 v2, p0

    .line 193
    invoke-virtual/range {v2 .. v10}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    goto/16 :goto_0

    .line 188
    .end local v11    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    move-object/from16 v17, v2

    .line 189
    invoke-virtual {v12, v6}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult;->setResult(I)V

    .line 191
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v14, v15}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->start:J

    sub-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    .line 193
    const-string v3, "LCPFile"

    const-string v4, "FILE_BATCH_UPLOAD"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 194
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    const-string v9, "5"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    move-object/from16 v2, p0

    .line 193
    invoke-virtual/range {v2 .. v10}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 195
    throw v17
.end method

.method public declared-synchronized cancel(J)V
    .locals 4
    .param p1, "taskId"    # J

    .prologue
    .line 310
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<TT;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cancelMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 311
    .local v0, "isCancel":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 312
    const-string v1, "LCPFileAPIImpl"

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

    .line 317
    :goto_0
    monitor-exit p0

    return-void

    .line 315
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cancelMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-static {p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/HttpRequestMachine;->turnOffRequest(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 310
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
    .line 321
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<TT;>;"
    new-instance v5, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v5}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 322
    .local v5, "params":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    const/4 v0, 0x1

    const-string v1, "userName"

    invoke-virtual {v5, v0, v1, p3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 323
    const/4 v0, 0x2

    const-string v1, "fileNum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 324
    const/4 v0, 0x5

    const-string v1, "APPTOKEN"

    const-string v2, "PJPRUFMX2B3"

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 326
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

    .line 328
    return-void
.end method

.method public upload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I
    .locals 12
    .param p1, "listener"    # Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;",
            "TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<TT;>;"
    .local p2, "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;, "TT;"
    const/4 v8, 0x1

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->start:J

    .line 84
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->initTaskId()J

    move-result-wide v9

    .line 85
    .local v9, "taskId":J
    const/4 v4, 0x0

    .line 88
    .local v4, "resultCode":I
    :try_start_0
    invoke-direct {p0, p1, v9, v10}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyStart(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;J)V

    .line 89
    const/4 v0, 0x0

    const/16 v1, 0x64

    invoke-direct {p0, p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->startUploadOnce(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 92
    invoke-direct {p0, p1, v4, v9, v10}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    .line 94
    const-string v1, "LCPFile"

    const-string v2, "FILE_UPLOAD"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 95
    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    const-string v7, "3"

    move-object v0, p0

    .line 94
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 97
    return v4

    .line 91
    :catchall_0
    move-exception v0

    move-object v11, v0

    .line 92
    invoke-direct {p0, p1, v4, v9, v10}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->start:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    .line 94
    const-string v1, "LCPFile"

    const-string v2, "FILE_UPLOAD"

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 95
    iget-wide v5, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    const-string v7, "3"

    move-object v0, p0

    .line 94
    invoke-virtual/range {v0 .. v8}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 96
    throw v11
.end method

.method public upload(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Ljava/util/List;)I
    .locals 15
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
    .line 102
    .local p0, "this":Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;, "Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl<TT;>;"
    .local p2, "entityList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->start:J

    .line 103
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->initTaskId()J

    move-result-wide v12

    .line 104
    .local v12, "taskId":J
    const/4 v5, 0x0

    .line 107
    .local v5, "resultCode":I
    :try_start_0
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v12, v13}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyStart(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;J)V

    .line 108
    const/4 v1, 0x0

    const/16 v2, 0x64

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V

    .line 110
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ge v11, v1, :cond_0

    if-eqz v5, :cond_1

    .line 119
    :cond_0
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v5, v12, v13}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->start:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    .line 121
    const-string v2, "LCPFile"

    const-string v3, "FILE_UPLOAD"

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 122
    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    const-string v8, "3"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    move-object v1, p0

    .line 121
    invoke-virtual/range {v1 .. v9}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 124
    return v5

    .line 111
    :cond_1
    :try_start_1
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;

    .line 112
    .local v10, "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;, "TT;"
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v10}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->startUploadOnce(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)I

    move-result v5

    .line 113
    const/4 v1, 0x4

    if-eq v5, v1, :cond_0

    .line 116
    add-int/lit8 v1, v11, 0x1

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyProgress(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 118
    .end local v10    # "entity":Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;, "TT;"
    .end local v11    # "i":I
    :catchall_0
    move-exception v1

    move-object v14, v1

    .line 119
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v5, v12, v13}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->notifyFinish(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;IJ)V

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->start:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    .line 121
    const-string v2, "LCPFile"

    const-string v3, "FILE_UPLOAD"

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 122
    iget-wide v6, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->cost:J

    const-string v8, "3"

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    move-object v1, p0

    .line 121
    invoke-virtual/range {v1 .. v9}, Lcom/lenovo/leos/cloud/lcp/file/impl/simple/LCPFileAPIImpl;->reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V

    .line 123
    throw v14
.end method
