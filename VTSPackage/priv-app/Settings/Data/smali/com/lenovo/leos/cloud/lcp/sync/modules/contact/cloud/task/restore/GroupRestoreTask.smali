.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;
.source "GroupRestoreTask.java"


# instance fields
.field private groupAddInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;->groupAddInfoList:Ljava/util/List;

    .line 35
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->sid2cidMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->opAddCount:I

    return v0
.end method

.method static synthetic access$10(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;->commit(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$11(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

    return-object v0
.end method

.method static synthetic access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->opAddCount:I

    return-void
.end method

.method static synthetic access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;->buildAddGroupOperation(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->opUpdateCount:I

    return v0
.end method

.method static synthetic access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->opUpdateCount:I

    return-void
.end method

.method static synthetic access$6(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;->buildUpdateGroupOperation(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$7(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->opDeleteCount:I

    return v0
.end method

.method static synthetic access$8(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;I)V
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->opDeleteCount:I

    return-void
.end method

.method static synthetic access$9(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;->buildDeleteGroupOperation(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method private buildAddGroupOperation(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 4
    .param p2, "b"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 167
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;-><init>()V

    .line 168
    .local v0, "g":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    const-string v2, "n"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->title:Ljava/lang/String;

    .line 169
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Integer;

    .line 170
    .local v1, "groupAddInfo":[Ljava/lang/Integer;
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 171
    const/4 v2, 0x1

    const-string v3, "sid"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 172
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;->groupAddInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

    invoke-interface {v2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;->newCreateOpertion(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method private buildDeleteGroupOperation(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
    .param p2, "b"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->sid2cidMap:Ljava/util/Map;

    const-string v2, "sid"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 152
    .local v0, "cid":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;->newDeleteOpertion(I)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;->deleteGroupsSid(I)V

    .line 154
    return-void
.end method

.method private buildGroupRestoreRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;
    .locals 3
    .param p1, "checksumBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;

    .prologue
    .line 178
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "deviceId":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;

    invoke-direct {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;-><init>(Ljava/lang/String;)V

    .line 181
    .local v1, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;->buildRestoreDup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V

    .line 182
    invoke-direct {p0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;->buildRestoreDiff(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V

    .line 183
    invoke-direct {p0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;->buildRestoreServerDeleted(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V

    .line 184
    invoke-direct {p0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;->buildRestoreServerAdd(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V

    .line 186
    return-object v1
.end method

.method private buildRestoreDiff(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V
    .locals 1
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;
    .param p2, "checksumBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;

    .prologue
    .line 207
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask$3;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask$3;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;)V

    invoke-virtual {p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->traverseGroupDiff(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V

    .line 219
    return-void
.end method

.method private buildRestoreDup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V
    .locals 1
    .param p1, "checksumBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;

    .prologue
    .line 190
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask$2;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask$2;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;)V

    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->traverseGroupDup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V

    .line 204
    return-void
.end method

.method private buildRestoreServerAdd(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V
    .locals 1
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;
    .param p2, "checksumBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;

    .prologue
    .line 233
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask$5;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask$5;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;)V

    invoke-virtual {p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->traverseGroupSAdd(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V

    .line 241
    return-void
.end method

.method private buildRestoreServerDeleted(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V
    .locals 1
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;
    .param p2, "checksumBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;

    .prologue
    .line 222
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask$4;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask$4;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;)V

    invoke-virtual {p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->traverseGroupSDelete(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V

    .line 230
    return-void
.end method

.method private buildUpdateGroupOperation(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 6
    .param p2, "b"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->sid2cidMap:Ljava/util/Map;

    const-string v3, "sid"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 159
    .local v0, "cid":Ljava/lang/Integer;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;-><init>()V

    .line 160
    .local v1, "g":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->cid:I

    .line 161
    const-string v2, "n"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->title:Ljava/lang/String;

    .line 162
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "title"

    aput-object v5, v3, v4

    invoke-interface {v2, v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;->newUpdateOpertion(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;[Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method

.method private commit(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    const/4 v9, 0x1

    .line 136
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->digestDBBatchOperation(Ljava/util/List;)[Landroid/content/ContentProviderResult;

    move-result-object v4

    .line 137
    .local v4, "results":[Landroid/content/ContentProviderResult;
    if-eqz v4, :cond_1

    .line 138
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;->groupAddInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 147
    :cond_1
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;->groupAddInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 148
    return-void

    .line 138
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 139
    .local v1, "groupAddInfo":[Ljava/lang/Integer;
    const/4 v5, 0x0

    aget-object v3, v1, v5

    .line 140
    .local v3, "opPosition":Ljava/lang/Integer;
    aget-object v2, v1, v9

    .line 141
    .local v2, "gsid":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 142
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v4, v5

    iget-object v5, v5, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 143
    .local v0, "gcid":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;->updateGroupsSid(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private doGroupRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;
    .locals 10
    .param p1, "checksumBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v5, 0x0

    .line 74
    .local v5, "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;
    const-string v4, "v4/revert.action?gzip=true"

    .line 75
    .local v4, "requestUrl":Ljava/lang/String;
    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->init(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;

    move-result-object v8

    invoke-virtual {v8}, Lcom/lenovo/leos/cloud/lcp/LcpConfigHub;->getLenovoId()Lcom/lenovo/leos/cloud/lcp/common/LenovoId;

    move-result-object v2

    .line 76
    .local v2, "lenovoId":Lcom/lenovo/leos/cloud/lcp/common/LenovoId;
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/lenovo/leos/cloud/lcp/common/util/LDSUtil;->getContactServer(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v8

    const-string v9, "contact.cloud.lps.lenovo.com"

    invoke-direct {v7, v8, v4, v2, v9}, Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/common/LenovoId;Ljava/lang/String;)V

    .line 78
    .local v7, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;->buildGroupRestoreRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;

    move-result-object v3

    .line 80
    .local v3, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;
    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreRequest;->getRestoreGroupSize()I

    move-result v8

    if-nez v8, :cond_0

    .line 81
    const/4 v8, 0x0

    .line 92
    :goto_0
    return-object v8

    .line 84
    :cond_0
    const/high16 v8, 0x3f000000

    invoke-virtual {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->notifyProgress(F)V

    .line 86
    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->toBytes()[B

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {p0, v7, v8, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "json":Ljava/lang/String;
    :try_start_0
    new-instance v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;

    invoke-direct {v6, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;
    .local v6, "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;
    move-object v5, v6

    .end local v6    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;
    .restart local v5    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;
    :goto_1
    move-object v8, v5

    .line 92
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method private saveResult(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;)V
    .locals 2
    .param p1, "restoreResonse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask$1;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;->traverseGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V

    .line 128
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 129
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;->commit(Ljava/util/List;)V

    .line 133
    return-void

    .line 131
    :cond_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v1
.end method


# virtual methods
.method protected reaperRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;I)V
    .locals 0
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "userName"    # Ljava/lang/String;
    .param p4, "result"    # I
    .param p5, "cost"    # J
    .param p7, "operateType"    # Ljava/lang/String;
    .param p8, "changeNum"    # I

    .prologue
    .line 248
    return-void
.end method

.method protected startTask()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, -0x2

    .line 39
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->doGroupCompare()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;

    move-result-object v0

    .line 40
    .local v0, "checksumResponse":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    const v2, 0x3e99999a

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->notifyProgress(F)V

    .line 41
    if-nez v0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->getResult()I

    move-result v2

    if-eqz v2, :cond_3

    .line 46
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->getResult()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 47
    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    goto :goto_0

    .line 49
    :cond_2
    iput v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    goto :goto_0

    .line 54
    :cond_3
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;->doGroupRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;

    move-result-object v1

    .line 55
    .local v1, "restoreResonse":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;
    const v2, 0x3f19999a

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;->notifyProgress(F)V

    .line 56
    if-eqz v1, :cond_0

    .line 59
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;->getResult()I

    move-result v2

    if-eqz v2, :cond_5

    .line 60
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;->getResult()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 61
    iput v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    goto :goto_0

    .line 63
    :cond_4
    iput v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    goto :goto_0

    .line 68
    :cond_5
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;->saveResult(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;)V

    goto :goto_0
.end method
