.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderPool;
.super Ljava/lang/Object;
.source "PhotoStreamUploaderPool.java"


# static fields
.field private static final DEFAULT_POOL_SIZE:I = 0x5

.field private static final UPLODER_ITEM_SIZE:I = 0x1e


# instance fields
.field private pool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;",
            ">;"
        }
    .end annotation
.end field

.field private result:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderPool;-><init>(Landroid/content/Context;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "poolSize"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderPool;->result:I

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderPool;->pool:Ljava/util/List;

    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 31
    return-void

    .line 28
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderPool;->pool:Ljava/util/List;

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;

    .line 29
    const-string v3, "v5/stream/photobackup.action"

    invoke-direct {v2, p1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderPool;I)V
    .locals 0

    .prologue
    .line 18
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderPool;->result:I

    return-void
.end method

.method private executeUploader(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;)V
    .locals 2
    .param p1, "freeUploader"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->prepare()V

    .line 51
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderPool$1;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderPool$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderPool;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 65
    return-void
.end method

.method private getCurUploader(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;
    .locals 2
    .param p1, "cur"    # I

    .prologue
    .line 44
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderPool;->pool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v0, p1, v1

    .line 45
    .local v0, "index":I
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderPool;->pool:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;

    return-object v1
.end method

.method private waitAllUploadFinish()V
    .locals 5

    .prologue
    .line 69
    :goto_0
    const/4 v1, 0x1

    .line 70
    .local v1, "isFinish":Z
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderPool;->pool:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 76
    if-eqz v1, :cond_2

    .line 86
    return-void

    .line 70
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;

    .line 71
    .local v2, "uploader":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->isFinish()Z

    move-result v4

    if-nez v4, :cond_0

    .line 72
    const/4 v1, 0x0

    goto :goto_1

    .line 81
    .end local v2    # "uploader":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;
    :cond_2
    const-wide/16 v3, 0x7d0

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addMimeItem(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "contactSid"    # Ljava/lang/String;
    .param p2, "adler"    # Ljava/lang/String;
    .param p3, "is"    # Ljava/io/InputStream;
    .param p4, "cur"    # I

    .prologue
    .line 34
    invoke-direct {p0, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderPool;->getCurUploader(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;

    move-result-object v0

    .line 35
    .local v0, "freeUploader":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;
    invoke-virtual {v0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;->addMimeItem(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 38
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;->getMimeItemCount()I

    move-result v1

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderPool;->flush()I

    .line 41
    :cond_0
    return-void
.end method

.method public close()V
    .locals 3

    .prologue
    .line 101
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderPool;->pool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 106
    return-void

    .line 101
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;

    .line 102
    .local v0, "uploader":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->isFinish()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->cancel()V

    goto :goto_0
.end method

.method public flush()I
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderPool;->pool:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderPool;->waitAllUploadFinish()V

    .line 97
    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderPool;->result:I

    return v1

    .line 89
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;

    .line 90
    .local v0, "uploader":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor;->isFinish()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;->getMimeItemCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 91
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploaderPool;->executeUploader(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/PhotoStreamUploader;)V

    goto :goto_0
.end method
