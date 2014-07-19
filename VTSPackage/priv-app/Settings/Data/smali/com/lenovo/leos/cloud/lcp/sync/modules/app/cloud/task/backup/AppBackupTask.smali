.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/ParentBackupTask;
.source "AppBackupTask.java"


# static fields
.field public static final KEY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final PROBLEM_GET_APP_BACKUP_LIST:Ljava/lang/String; = "PROBLEM_GET_APP_BACKUP_LIST"


# instance fields
.field private backupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private progressBundle:Landroid/os/Bundle;

.field private successCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/ParentBackupTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;->successCount:I

    .line 25
    return-void
.end method

.method private resolveData()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 76
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;->backupList:Ljava/util/List;

    if-nez v5, :cond_0

    .line 77
    const-string v5, "PROBLEM_GET_APP_BACKUP_LIST"

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/AbsAppTask;->getParamList(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 78
    .local v2, "param":Ljava/lang/Object;
    instance-of v5, v2, Ljava/util/List;

    if-eqz v5, :cond_0

    move-object v4, v2

    .line 79
    check-cast v4, Ljava/util/List;

    .line 80
    .local v4, "tmpBackupList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;->backupList:Ljava/util/List;

    .line 81
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 82
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_2

    .line 87
    .end local v0    # "i":I
    .end local v2    # "param":Ljava/lang/Object;
    .end local v3    # "size":I
    .end local v4    # "tmpBackupList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;"
    :cond_0
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;->backupList:Ljava/util/List;

    if-nez v5, :cond_1

    .line 89
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    .line 88
    invoke-static {v5, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/util/Devices;->localAppList(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    .line 90
    .local v1, "localAppList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;->backupList:Ljava/util/List;

    .line 91
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 92
    .restart local v3    # "size":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    if-lt v0, v3, :cond_3

    .line 96
    .end local v0    # "i":I
    .end local v1    # "localAppList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;>;"
    .end local v3    # "size":I
    :cond_1
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;->backupList:Ljava/util/List;

    if-nez v5, :cond_4

    .line 97
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "argument bakcupList is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 83
    .restart local v0    # "i":I
    .restart local v2    # "param":Ljava/lang/Object;
    .restart local v3    # "size":I
    .restart local v4    # "tmpBackupList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;"
    :cond_2
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;->backupList:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    .end local v2    # "param":Ljava/lang/Object;
    .end local v4    # "tmpBackupList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;>;"
    .restart local v1    # "localAppList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;>;"
    :cond_3
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;->backupList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 99
    .end local v0    # "i":I
    .end local v1    # "localAppList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;>;"
    .end local v3    # "size":I
    :cond_4
    return-void
.end method

.method private startActionTask()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x64

    .line 35
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;->backupList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 36
    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 57
    :cond_0
    return-void

    .line 39
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifySubProgress(II)V

    .line 40
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;->backupList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    .line 41
    .local v0, "appItem":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;->progressBundle:Landroid/os/Bundle;

    .line 42
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;->progressBundle:Landroid/os/Bundle;

    const-string v4, "pn"

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v3, 0x1

    invoke-virtual {p0, v3, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifySubProgress(II)V

    .line 44
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/ParentBackupTask;->singleUploadApp(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)I

    move-result v3

    iput v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 45
    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-nez v3, :cond_0

    .line 48
    const/16 v3, 0x63

    invoke-virtual {p0, v3, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifySubProgress(II)V

    .line 50
    const-wide/16 v3, 0x190

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_1
    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;->successCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;->successCount:I

    .line 55
    invoke-virtual {p0, v6, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->notifySubProgress(II)V

    goto :goto_0

    .line 51
    :catch_0
    move-exception v1

    .line 52
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public getParams()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 67
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "countOfAdd"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;->successCount:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 68
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;->progressBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;->progressBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 71
    :cond_0
    return-object v0
.end method

.method protected getSubParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;->progressBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method protected startTask()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;->resolveData()V

    .line 30
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;->startActionTask()V

    .line 31
    return-void
.end method
