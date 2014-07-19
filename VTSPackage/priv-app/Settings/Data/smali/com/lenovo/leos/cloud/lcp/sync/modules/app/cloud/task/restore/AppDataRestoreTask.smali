.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/AppDataRestoreTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;
.source "AppDataRestoreTask.java"


# static fields
.field public static final PROBLEM_GET_APP_DATA_BACKUP_LIST:Ljava/lang/String; = "PROBLEM_GET_APP_DATA_RESTORE_LIST"


# instance fields
.field private backupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->APP_DATA:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V
    .locals 0
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method private resolveData()V
    .locals 3

    .prologue
    .line 49
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/AppDataRestoreTask;->backupList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 50
    const-string v1, "PROBLEM_GET_APP_DATA_RESTORE_LIST"

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/AbsAppTask;->getParamList(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    .local v0, "param":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 52
    check-cast v0, Ljava/util/List;

    .end local v0    # "param":Ljava/lang/Object;
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/AppDataRestoreTask;->backupList:Ljava/util/List;

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/AppDataRestoreTask;->backupList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "argument bakcupList is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_1
    return-void
.end method

.method private startActionTask()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/AppDataRestoreTask;->backupList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 32
    const/4 v3, 0x0

    iput v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 44
    :cond_0
    return-void

    .line 35
    :cond_1
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/AppDataRestoreTask;->backupList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 36
    .local v2, "total":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 37
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/AppDataRestoreTask;->backupList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;

    .line 38
    .local v0, "appItem":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/ParentRestoreTask;->singleDowloadAppData(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;)I

    move-result v3

    iput v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 39
    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-nez v3, :cond_0

    .line 42
    div-int v3, v1, v2

    mul-int/lit8 v3, v3, 0x64

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifyProgress(F)V

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected startTask()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/AppDataRestoreTask;->resolveData()V

    .line 26
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/restore/AppDataRestoreTask;->startActionTask()V

    .line 27
    return-void
.end method
