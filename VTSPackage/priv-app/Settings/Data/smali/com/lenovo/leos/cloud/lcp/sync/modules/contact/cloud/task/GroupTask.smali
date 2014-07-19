.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
.source "GroupTask.java"


# static fields
.field protected static final DB_COMMIT_SIZE:I = 0x32


# instance fields
.field protected contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

.field protected groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

.field protected opAddCount:I

.field protected opDeleteCount:I

.field protected opUpdateCount:I

.field protected sid2cidMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;-><init>(Landroid/content/Context;)V

    .line 42
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->opAddCount:I

    .line 43
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->opUpdateCount:I

    .line 44
    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->opDeleteCount:I

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->sid2cidMap:Ljava/util/Map;

    .line 52
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;->newRawContactDao(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    .line 53
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;

    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/GroupDaoImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

    .line 54
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;)Z
    .locals 1

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->isExitsAndTransferGroupRelation(Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;)Z

    move-result v0

    return v0
.end method

.method private buildGroupCheckSumRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;
    .locals 5

    .prologue
    .line 79
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "deviceId":Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;->newGroupChecksumRequest(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;

    move-result-object v2

    .line 81
    .local v2, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 83
    .local v1, "existGroupMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask$1;

    invoke-direct {v4, p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;)V

    invoke-interface {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;->traverseAllGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao$GroupVisitor;)V

    .line 104
    return-object v2
.end method

.method private isExitsAndTransferGroupRelation(Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;)Z
    .locals 3
    .param p2, "group"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "groupMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->title:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 115
    .local v0, "cid":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    iget v1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->cid:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->transferGroupRelation(II)V

    .line 117
    const/4 v1, 0x1

    .line 119
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private transferGroupRelation(II)V
    .locals 8
    .param p1, "fromCid"    # I
    .param p2, "toCid"    # I

    .prologue
    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v0, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "targetCid":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask$2;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 139
    const-string v4, "mimetype = ? and data1 = ?"

    .line 140
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 141
    const-string v7, "vnd.android.cursor.item/group_membership"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 142
    const/4 v6, 0x0

    .line 127
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseContactData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

    invoke-interface {v2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;->newDeleteOpertion(I)Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

    invoke-interface {v2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;->deleteGroupsSid(I)V

    .line 147
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->digestDBBatchOperation(Ljava/util/List;)[Landroid/content/ContentProviderResult;

    .line 148
    return-void
.end method


# virtual methods
.method protected digestDBBatchOperation(Ljava/util/List;)[Landroid/content/ContentProviderResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .prologue
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const/4 v4, 0x0

    .line 151
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 153
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "com.android.contacts"

    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    .line 154
    .local v2, "result":[Landroid/content/ContentProviderResult;
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    .end local v2    # "result":[Landroid/content/ContentProviderResult;
    :goto_0
    return-object v2

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V

    .line 158
    invoke-interface {p1}, Ljava/util/List;->clear()V

    move-object v2, v4

    .line 160
    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v2, v4

    .line 163
    goto :goto_0
.end method

.method protected doGroupCompare()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v5, 0x0

    .line 59
    .local v5, "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    const v8, 0x3dcccccd

    invoke-virtual {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->notifyProgress(F)V

    .line 61
    const-string v4, "v4/checksum.action?gzip=true"

    .line 62
    .local v4, "requestUrl":Ljava/lang/String;
    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v2

    .line 63
    .local v2, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getContactServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v8

    const-string v9, "contact.cloud.lps.lenovo.com"

    invoke-direct {v7, v8, v4, v2, v9}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 65
    .local v7, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->buildGroupCheckSumRequest()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;

    move-result-object v3

    .line 67
    .local v3, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumRequest;
    const v8, 0x3e4ccccd

    invoke-virtual {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->notifyProgress(F)V

    .line 69
    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->toBytes()[B

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "json":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;

    invoke-direct {v6, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    .local v6, "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    move-object v5, v6

    .line 75
    .end local v6    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    .restart local v5    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    :goto_0
    return-object v5

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getStepProgressListener()Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    return-object v0
.end method

.method protected notifyProgress(F)V
    .locals 4
    .param p1, "current"    # F

    .prologue
    .line 167
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    const/high16 v1, 0x42c80000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;->onStepProgress(IILandroid/os/Bundle;)Z

    .line 170
    :cond_0
    return-void
.end method

.method public setStepProgressListener(Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)V
    .locals 0
    .param p1, "stepProgressListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->stepProgressListener:Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;

    .line 180
    return-void
.end method
