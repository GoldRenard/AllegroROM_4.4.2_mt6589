.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
.source "MmsTaskAdapter.java"


# static fields
.field public static final BACK_FLAG:Z = true

.field public static final DFT_EXPORT_FORMAT:Ljava/lang/String; = ".zip"

.field public static final MODE_NAME:Ljava/lang/String; = "MMS-"

.field public static final PROBLEM_MMS_REQUEST_ENTITY:Ljava/lang/String; = "mmsRequestEntity"

.field public static final STATUS_ONGOING:I = 0x64

.field public static final STATUS_ONGOING_BACKUP_DB:I = 0x69

.field public static final STATUS_ONGOING_BACKUP_NET:I = 0x6b

.field public static final STATUS_ONGOING_BACKUP_ZIP:I = 0x6a

.field public static final STATUS_ONGOING_DIFF_DB:I = 0x65

.field public static final STATUS_ONGOING_DIFF_NET:I = 0x66

.field public static final STATUS_ONGOING_ENCRPYT:I = 0x67

.field public static final STATUS_ONGOING_GZIP:I = 0x68

.field public static final STATUS_ONGOING_RESTORE_DB:I = 0x69

.field public static final STATUS_ONGOING_RESTORE_NET:I = 0x6b

.field public static final STATUS_ONGOING_RESTORE_ZIP:I = 0x6a


# instance fields
.field protected cost:J

.field protected countOfAdd:I

.field protected countOfUpdate:I

.field protected localMmsEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

.field protected mmsUid2Id:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected progressStatus:I

.field protected selectedMmsEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected start:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskID"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 39
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfAdd:I

    .line 40
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfUpdate:I

    .line 59
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDaoImpl;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDaoImpl;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskID"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p3, "mmsEntities":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;>;"
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    .line 64
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->selectedMmsEntities:Ljava/util/List;

    .line 65
    return-void
.end method


# virtual methods
.method protected buildGroupCheckSumRequest(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {p1}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "deviceId":Ljava/lang/String;
    const-string v4, "-1"

    .line 109
    .local v4, "pid":Ljava/lang/String;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;

    invoke-direct {v5, v0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .local v5, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->selectedMmsEntities:Ljava/util/List;

    if-nez v7, :cond_0

    .line 112
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    invoke-interface {v7, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;->getMmsEntities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->selectedMmsEntities:Ljava/util/List;

    .line 114
    :cond_0
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->selectedMmsEntities:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 115
    .local v6, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 125
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v7}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v7

    .line 116
    :cond_1
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->selectedMmsEntities:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    .line 118
    .local v2, "entity":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    :try_start_0
    invoke-virtual {v5, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;->addMmsData(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    .line 120
    .local v1, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Unexcepted JSONException occured"

    invoke-direct {v7, v8, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 127
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "entity":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    :cond_2
    return-object v5
.end method

.method protected buildGroupRestoreCheckSumRequest(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {p1}, Lcom/lenovo/lsf/util/PsDeviceInfo;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "deviceId":Ljava/lang/String;
    const-string v4, "-1"

    .line 133
    .local v4, "pid":Ljava/lang/String;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;

    invoke-direct {v5, v0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .local v5, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->localMmsEntities:Ljava/util/List;

    if-nez v7, :cond_0

    .line 135
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->mmsDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;

    invoke-interface {v7, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDao;->getMmsEntities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->localMmsEntities:Ljava/util/List;

    .line 137
    :cond_0
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->localMmsEntities:Ljava/util/List;

    if-eqz v7, :cond_1

    .line 138
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->localMmsEntities:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 139
    .local v6, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v6, :cond_2

    .line 148
    .end local v3    # "i":I
    .end local v6    # "size":I
    :cond_1
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 149
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v7}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v7

    .line 140
    .restart local v3    # "i":I
    .restart local v6    # "size":I
    :cond_2
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->localMmsEntities:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;

    .line 142
    .local v2, "entity":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    :try_start_0
    invoke-virtual {v5, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;->addMmsData(Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Lorg/json/JSONException;
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Unexcepted JSONException occured"

    invoke-direct {v7, v8, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 151
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "entity":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/vo/RequestMmsEntity;
    .end local v3    # "i":I
    .end local v6    # "size":I
    :cond_3
    return-object v5
.end method

.method protected doMmsCompare(Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;
    .locals 5
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/high16 v4, 0x3f800000

    .line 79
    const/16 v3, 0x65

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 80
    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->notifySubProgress(F)V

    .line 82
    if-eqz p1, :cond_0

    .line 83
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->buildGroupCheckSumRequest(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;

    move-result-object v1

    .line 87
    .local v1, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;
    :goto_0
    const-string v3, "checksum"

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;

    move-result-object v2

    .line 90
    .local v2, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    const/16 v3, 0x66

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->setProgressStep(I)V

    .line 91
    invoke-virtual {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->notifySubProgress(F)V

    .line 92
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/MmsProtocol;->toBytes()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "json":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v3}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v3

    .line 85
    .end local v0    # "json":Ljava/lang/String;
    .end local v1    # "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;
    .end local v2    # "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    :cond_0
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->buildGroupRestoreCheckSumRequest(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;

    move-result-object v1

    .restart local v1    # "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumRequest;
    goto :goto_0

    .line 96
    .restart local v0    # "json":Ljava/lang/String;
    .restart local v2    # "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    :cond_1
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;

    invoke-direct {v3, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;-><init>(Ljava/lang/String;)V

    return-object v3
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 180
    invoke-super {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 181
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "progressstate"

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getProgressStep()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 182
    const-string v1, "countOfAdd"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfAdd:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    const-string v1, "countOfUpdate"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->countOfUpdate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    const-string v1, "result"

    iget v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    return-object v0
.end method

.method protected getRequestEntityFromResover()V
    .locals 3

    .prologue
    .line 155
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->problemResolver:Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;

    const-string v1, "mmsRequestEntity"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/common/ProblemResolver;->resolve(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->selectedMmsEntities:Ljava/util/List;

    .line 156
    return-void
.end method

.method protected getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;
    .locals 5
    .param p1, "urlPrefix"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?gzip=true"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "requestUrl":Ljava/lang/String;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v0

    .line 102
    .local v0, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getMmsServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "contact.cloud.lps.lenovo.com"

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 103
    .local v2, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    return-object v2
.end method

.method protected notifyProgress(F)V
    .locals 2
    .param p1, "current"    # F

    .prologue
    .line 225
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->smoothProgress:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->setRealProgress(I)V

    .line 226
    return-void
.end method

.method protected abstract notifySubProgress(F)V
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
    .line 191
    new-instance v5, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;

    invoke-direct {v5}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;-><init>()V

    .line 192
    .local v5, "params":Lcom/lenovo/lps/reaper/sdk/api/ParamMap;
    const/4 v0, 0x1

    const-string v1, "userName"

    invoke-virtual {v5, v0, v1, p3}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 193
    const/4 v0, 0x2

    const-string v1, "mmsNum"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 194
    const/4 v0, 0x3

    const-string v1, "isAuto"

    const-string v2, "0"

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 195
    const/4 v0, 0x5

    const-string v1, "APPTOKEN"

    const-string v2, "PJPRUFMX2B3"

    invoke-virtual {v5, v0, v1, v2}, Lcom/lenovo/lps/reaper/sdk/api/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    .line 197
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

    .line 199
    return-void
.end method

.method protected setProgressStatus(I)V
    .locals 3
    .param p1, "progressStatus"    # I

    .prologue
    .line 173
    const-string v0, "MmsTaskAdapter.java"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "change progress status : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/high16 v0, 0x3f800000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->notifySubProgress(F)V

    .line 175
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->progressStatus:I

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->notifySubProgress(F)V

    .line 177
    return-void
.end method

.method public startCompareMms(Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;
    .locals 2
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->mmsUid2Id:Ljava/util/Map;

    .line 69
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->doMmsCompare(Z)Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;

    move-result-object v0

    .line 71
    .local v0, "checksumResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/protocol/ChecksumResponse;->getResult()I

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    const/4 v1, -0x2

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 74
    :cond_0
    return-object v0
.end method

.method protected startTask()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->smoothProgress:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->start()V

    .line 212
    :try_start_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/MmsTaskAdapter;->startTaskWithSmoothProgress()V

    .line 214
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->smoothProgress:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->waitingForFinish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->smoothProgress:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->stop()V

    .line 219
    return-void

    .line 215
    :catchall_0
    move-exception v0

    .line 217
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->smoothProgress:Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/SmoothProgress;->stop()V

    .line 218
    throw v0
.end method

.method protected abstract startTaskWithSmoothProgress()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
