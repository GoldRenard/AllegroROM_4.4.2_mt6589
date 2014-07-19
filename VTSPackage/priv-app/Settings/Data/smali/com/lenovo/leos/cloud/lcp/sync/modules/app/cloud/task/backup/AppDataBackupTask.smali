.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppDataBackupTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/ParentBackupTask;
.source "AppDataBackupTask.java"


# static fields
.field protected static final APPDATA_BUCKET_NAME:Ljava/lang/String; = "appdata"

.field public static final PROBLEM_GET_APP_DATA_BACKUP_LIST:Ljava/lang/String; = "PROBLEM_GET_APP_DATA_BACKUP_LIST"


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


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V
    .locals 1
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->APP_DATA:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-direct {p0, v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/ParentBackupTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method private buildCallbackArgs(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)Ljava/util/Map;
    .locals 4
    .param p1, "appItem"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 78
    .local v0, "callbackdata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "callback_packageName"

    .line 79
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "callback_versionCode"

    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getVersionCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "callback_publicKey"

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;->getPKMD5()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    return-object v0
.end method

.method private resolveData()V
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppDataBackupTask;->backupList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 90
    const-string v1, "PROBLEM_GET_APP_DATA_BACKUP_LIST"

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/AbsAppTask;->getParamList(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    .local v0, "param":Ljava/lang/Object;
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 92
    check-cast v0, Ljava/util/List;

    .end local v0    # "param":Ljava/lang/Object;
    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppDataBackupTask;->backupList:Ljava/util/List;

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppDataBackupTask;->backupList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 96
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "argument bakcupList is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_1
    return-void
.end method

.method private startActionTask()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppDataBackupTask;->backupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 40
    const/4 v1, 0x0

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 50
    :cond_0
    return-void

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppDataBackupTask;->backupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;

    .line 44
    .local v0, "appItem":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppDataBackupTask;->singleUploadData(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)I

    .line 45
    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    if-nez v2, :cond_0

    .line 48
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/ParentBackupTask;->singleUploadApp(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)I

    goto :goto_0
.end method

.method private uploadData2Pilot(Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)I
    .locals 4
    .param p1, "zipFile"    # Ljava/io/File;
    .param p2, "appItem"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;,
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    const-string v2, "appdata"

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->getInstance(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;

    move-result-object v1

    .line 63
    .local v1, "pilot":Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v2

    .line 64
    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v0

    .line 66
    .local v0, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotUtils;->loadPilotParameter(Landroid/content/Context;)V

    .line 67
    const-string v2, "contact.cloud.lps.lenovo.com"

    .line 68
    const-string v3, "contact.cloud.lps.lenovo.com"

    invoke-interface {v0, v3}, Lcom/lenovo/leos/cloud/lcp/common/LenovoId;->getSt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 67
    invoke-virtual {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->ensureLogin(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;

    invoke-direct {v2, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppDataBackupTask;->buildCallbackArgs(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;->upload(Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;Ljava/util/Map;)Lcom/lenovo/leos/cloud/lcp/file/pilot2/CosObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 73
    const/4 v2, 0x0

    return v2

    .line 70
    .end local v0    # "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    .end local v1    # "pilot":Lcom/lenovo/leos/cloud/lcp/file/pilot2/PilotAPI;
    :catchall_0
    move-exception v2

    .line 71
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 72
    throw v2
.end method


# virtual methods
.method protected singleUploadData(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)I
    .locals 2
    .param p1, "appItem"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/AuthenticationException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/ServerRuntimeException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    .line 53
    .local v0, "result":I
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/ParentBackupTask;->zipAppdata(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)Ljava/io/File;

    move-result-object v1

    .line 54
    .local v1, "zipFile":Ljava/io/File;
    invoke-direct {p0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppDataBackupTask;->uploadData2Pilot(Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/LocalAppInfo;)I

    move-result v0

    .line 55
    return v0
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
    .line 33
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppDataBackupTask;->resolveData()V

    .line 34
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppDataBackupTask;->startActionTask()V

    .line 35
    return-void
.end method
