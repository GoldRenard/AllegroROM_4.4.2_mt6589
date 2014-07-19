.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;
.source "ContactRestoreTask.java"


# static fields
.field public static final STATUS_ONGOING_C_DIFF_DB:I = 0x3

.field public static final STATUS_ONGOING_C_DIFF_NET:I = 0x4

.field public static final STATUS_ONGOING_C_RESTORE_DB:I = 0x5

.field public static final STATUS_ONGOING_C_RESTORE_DB2:I = 0x7

.field public static final STATUS_ONGOING_C_RESTORE_NET:I = 0x6

.field public static final STATUS_ONGOING_G_RESTORE:I = 0x2

.field public static final STATUS_ONGOING_P_DIFF_DB:I = 0x8

.field public static final STATUS_ONGOING_P_DIFF_NET:I = 0x9

.field public static final STATUS_ONGOING_P_RESTORE_DB:I = 0xa

.field public static final STATUS_ONGOING_P_RESTORE_DB2:I = 0xc

.field public static final STATUS_ONGOING_P_RESTORE_NET:I = 0xb


# instance fields
.field private deletedCids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private operationIndex2SidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private restoreCurProgress:I

.field private restoreTotalProgress:I

.field private sid2cidGroupMap:Ljava/util/Map;
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

.field private virtualTaskProgressNumber:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 50
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->sid2cidGroupMap:Ljava/util/Map;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->deletedCids:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->operationIndex2SidList:Ljava/util/List;

    .line 46
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->restoreTotalProgress:I

    .line 47
    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->restoreCurProgress:I

    .line 384
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->virtualTaskProgressNumber:I

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->sid2cidGroupMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    return-object v0
.end method

.method static synthetic access$10(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->buildContactRestoreOperations(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V

    return-void
.end method

.method static synthetic access$11(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;)I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->restoreCurProgress:I

    return v0
.end method

.method static synthetic access$12(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->restoreCurProgress:I

    return-void
.end method

.method static synthetic access$13(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->restoreTotalProgress:I

    return v0
.end method

.method static synthetic access$14(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->commit(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->sid2cidMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->opDeleteCount:I

    return v0
.end method

.method static synthetic access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;I)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->opDeleteCount:I

    return-void
.end method

.method static synthetic access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;)Ljava/util/List;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->deletedCids:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->dbCommistSize:I

    return v0
.end method

.method static synthetic access$8(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;Ljava/util/List;)[Landroid/content/ContentProviderResult;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->digestDBBatchOperation(Ljava/util/List;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;)Z
    .locals 1

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->checkOrDoPageRestoreContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;)Z

    move-result v0

    return v0
.end method

.method private buildContactRestoreOperations(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V
    .locals 6
    .param p2, "c"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->sourceid:Ljava/lang/String;

    .line 67
    .local v2, "sid":Ljava/lang/String;
    const-string v3, "add"

    iget-object v4, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->op:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "update"

    iget-object v4, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->op:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 68
    :cond_0
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->sid2cidMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 69
    .local v0, "cid":Ljava/lang/Integer;
    if-eqz v0, :cond_2

    .line 70
    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->opUpdateCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->opUpdateCount:I

    .line 71
    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->restoreDiffContact(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;Ljava/lang/Integer;)V

    .line 92
    .end local v0    # "cid":Ljava/lang/Integer;
    :cond_1
    :goto_0
    return-void

    .line 74
    .restart local v0    # "cid":Ljava/lang/Integer;
    :cond_2
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->checksumBuilder:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->checksumBuilder:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;

    iget-object v5, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->fields:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->computeCoreChecksum(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->getCidByCoreChecksumKey(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 75
    .local v1, "clientId":Ljava/lang/Integer;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->deletedCids:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 76
    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->opUpdateCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->opUpdateCount:I

    .line 77
    invoke-direct {p0, p1, p2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->restoreDiffContact(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;Ljava/lang/Integer;)V

    goto :goto_0

    .line 79
    :cond_3
    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->opAddCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->opAddCount:I

    .line 80
    invoke-direct {p0, p1, p2, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->restoreAddContact(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    .end local v0    # "cid":Ljava/lang/Integer;
    .end local v1    # "clientId":Ljava/lang/Integer;
    :cond_4
    const-string v3, "delete"

    iget-object v4, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->op:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 84
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->sid2cidMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 85
    .restart local v0    # "cid":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 86
    iget v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->opDeleteCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->opDeleteCount:I

    .line 87
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->cid:I

    .line 88
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    iget v4, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->cid:I

    invoke-interface {v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->newDeleteOpertion(I)Landroid/content/ContentProviderOperation;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    iget v4, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->cid:I

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->delContactSid(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method private buildContactRestoreRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;
    .locals 4
    .param p1, "checksumBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "deviceId":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;

    invoke-direct {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;-><init>(Ljava/lang/String;)V

    .line 188
    .local v1, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->contactDiffSize()I

    move-result v2

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->contactSAddSize()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->restoreTotalProgress:I

    .line 190
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->buildRestoreDup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V

    .line 191
    const v2, 0x3e4ccccd

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->notifyStepProgress(F)V

    .line 192
    invoke-direct {p0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->buildRestoreDiff(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V

    .line 193
    const v2, 0x3ecccccd

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->notifyStepProgress(F)V

    .line 194
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->buildRestoreServerDeleted(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V

    .line 195
    const v2, 0x3f4ccccd

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->notifyStepProgress(F)V

    .line 196
    invoke-direct {p0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->buildRestoreServerAdd(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V

    .line 198
    return-object v1
.end method

.method private buildRestoreDiff(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V
    .locals 1
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;
    .param p2, "checksumBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 222
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$3;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$3;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;)V

    invoke-virtual {p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->traverseContactDiff(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V

    .line 230
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v0

    .line 233
    :cond_0
    return-void
.end method

.method private buildRestoreDup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V
    .locals 1
    .param p1, "checksumBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$2;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$2;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;)V

    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->traverseContactDup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V

    .line 214
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v0

    .line 218
    :cond_0
    return-void
.end method

.method private buildRestoreServerAdd(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V
    .locals 1
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;
    .param p2, "checksumBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 270
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$5;

    invoke-direct {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$5;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;)V

    invoke-virtual {p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->traverseContactSAdd(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V

    .line 278
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v0

    .line 281
    :cond_0
    return-void
.end method

.method private buildRestoreServerDeleted(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V
    .locals 2
    .param p1, "checksumBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v0, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$4;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$4;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->traverseContactSDelete(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V

    .line 257
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v1

    .line 260
    :cond_0
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->digestDBBatchOperation(Ljava/util/List;)[Landroid/content/ContentProviderResult;

    .line 266
    return-void
.end method

.method private checkOrDoPageRestoreContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;)Z
    .locals 4
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;

    .prologue
    const/4 v2, 0x1

    .line 285
    :try_start_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;->queryRestoreSize()I

    move-result v1

    .line 286
    .local v1, "len":I
    if-lez v1, :cond_0

    rem-int/lit16 v3, v1, 0x3e8

    if-nez v3, :cond_0

    .line 287
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->doNetRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreResponse;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->onSaveContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;)V

    .line 288
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;->clearContactArray()V
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 302
    .end local v1    # "len":I
    :cond_0
    :goto_0
    return v2

    .line 291
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 293
    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 302
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 294
    :catch_1
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 296
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 297
    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    goto :goto_1

    .line 299
    :cond_1
    const/4 v2, 0x3

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    goto :goto_1
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
    .line 123
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->digestDBBatchOperation(Ljava/util/List;)[Landroid/content/ContentProviderResult;

    move-result-object v6

    .line 125
    .local v6, "results":[Landroid/content/ContentProviderResult;
    if-eqz v6, :cond_1

    .line 126
    :try_start_0
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->operationIndex2SidList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 139
    :cond_1
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->operationIndex2SidList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 141
    :goto_1
    return-void

    .line 126
    :cond_2
    :try_start_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Integer;

    .line 127
    .local v3, "idx2sid":[Ljava/lang/Integer;
    const/4 v7, 0x0

    aget-object v4, v3, v7

    .line 128
    .local v4, "opPosition":Ljava/lang/Integer;
    const/4 v7, 0x1

    aget-object v2, v3, v7

    .line 129
    .local v2, "gsid":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v7, v6, v7

    iget-object v7, v7, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x1

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 131
    .local v1, "gcid":Ljava/lang/Integer;
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v7, v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;-><init>(ILjava/lang/String;)V

    .line 132
    .local v5, "rawcontact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-interface {v7, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->updateContactGSid(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    .end local v1    # "gcid":Ljava/lang/Integer;
    .end local v2    # "gsid":Ljava/lang/Integer;
    .end local v3    # "idx2sid":[Ljava/lang/Integer;
    .end local v4    # "opPosition":Ljava/lang/Integer;
    .end local v5    # "rawcontact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->operationIndex2SidList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 138
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    .line 139
    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->operationIndex2SidList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 140
    throw v7
.end method

.method private doNetRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreResponse;
    .locals 7
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x6

    .line 160
    const/4 v2, 0x0

    .line 162
    .local v2, "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreResponse;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 163
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v5}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v5

    .line 166
    :cond_0
    invoke-virtual {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isProgressStepPassed(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 167
    invoke-virtual {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->setProgressStep(I)V

    .line 168
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->startVirtualNetWorkTask()V

    .line 171
    :cond_1
    const-string v5, "v4/revert.action"

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v4

    .line 173
    .local v4, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->toBytes()[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v1

    .line 175
    .local v1, "json":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreResponse;

    invoke-direct {v3, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreResponse;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreResponse;
    .local v3, "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreResponse;
    move-object v2, v3

    .line 180
    .end local v3    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreResponse;
    .restart local v2    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreResponse;
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->stopVirtualNetWorkTask()V

    .line 181
    return-object v2

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private initGroupMap()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$1;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;)V

    invoke-interface {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;->traverseAllGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao$GroupVisitor;)V

    .line 63
    return-void
.end method

.method private restoreAddContact(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;Ljava/lang/String;)V
    .locals 4
    .param p2, "c"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    .param p3, "sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    iget-object v3, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->sourceid:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->queryContactCId(Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, "cid":I
    if-lez v0, :cond_0

    .line 98
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-interface {v2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->newDeleteOpertion(I)Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->delContactSid(Landroid/content/Context;ILjava/lang/String;)V

    .line 102
    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Integer;

    .line 103
    .local v1, "idx2sid":[Ljava/lang/Integer;
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 104
    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 105
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->operationIndex2SidList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-interface {v2, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->buildCreateContactOpertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V

    .line 108
    return-void
.end method

.method private restoreDiffContact(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;Ljava/lang/Integer;)V
    .locals 5
    .param p2, "c"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    .param p3, "cid"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->cid:I

    .line 112
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-interface {v1, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->buildDeleteTextFieldsOpertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V

    .line 113
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-interface {v1, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->buildCreateFieldsOpertions(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V

    .line 114
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;-><init>()V

    .line 115
    .local v0, "rawcontact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    iget v1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->cid:I

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    .line 116
    iget v1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->starred:I

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->starred:I

    .line 117
    iget-object v1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->sourceid:Ljava/lang/String;

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sourceid:Ljava/lang/String;

    .line 118
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "starred"

    aput-object v4, v2, v3

    invoke-interface {v1, v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->newUpdateOpertion(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;[Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    invoke-interface {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->updateContactGSid(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;)V

    .line 120
    return-void
.end method


# virtual methods
.method protected filterGroupFields(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V
    .locals 7
    .param p1, "c"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;

    .prologue
    .line 144
    iget-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->fields:Ljava/util/List;

    .line 145
    .local v1, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v2, "removedFileds":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 154
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 157
    return-void

    .line 146
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    .line 147
    .local v0, "f":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    const-string v5, "GROUP"

    iget-object v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 148
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->sid2cidGroupMap:Ljava/util/Map;

    iget-object v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    .line 149
    iget-object v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 150
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    .end local v0    # "f":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    .line 155
    .local v3, "rf":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected getChecksumDBProgressStatus()I
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x3

    return v0
.end method

.method protected getChecksumNETProgressStatus()I
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x4

    return v0
.end method

.method protected getGroupProgressStauts()I
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x2

    return v0
.end method

.method protected getGroupTask()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;
    .locals 2

    .prologue
    .line 322
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/GroupRestoreTask;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getPhotoProgressStauts()I
    .locals 1

    .prologue
    .line 439
    const/16 v0, 0x8

    return v0
.end method

.method protected getPhotoTask()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;
    .locals 2

    .prologue
    .line 317
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactPhotoRestoreTask;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected needCheckSum()Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x1

    return v0
.end method

.method protected needStart()Z
    .locals 1

    .prologue
    .line 312
    const/4 v0, 0x1

    return v0
.end method

.method protected notifyStepProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    .prologue
    const/high16 v2, 0x41200000

    const/high16 v1, 0x40a00000

    .line 402
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getProgressStep()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 430
    :goto_0
    return-void

    .line 404
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->notifyProgress(F)V

    goto :goto_0

    .line 407
    :sswitch_1
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->virtualTaskProgressNumber:I

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->notifyProgress(F)V

    goto :goto_0

    .line 410
    :sswitch_2
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->virtualTaskProgressNumber:I

    add-int/lit8 v0, v0, 0x5

    mul-float v1, v2, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->notifyProgress(F)V

    goto :goto_0

    .line 413
    :sswitch_3
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->virtualTaskProgressNumber:I

    add-int/lit8 v0, v0, 0xf

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->notifyProgress(F)V

    goto :goto_0

    .line 416
    :sswitch_4
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->virtualTaskProgressNumber:I

    add-int/lit8 v0, v0, 0x14

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->notifyProgress(F)V

    goto :goto_0

    .line 419
    :sswitch_5
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->virtualTaskProgressNumber:I

    add-int/lit8 v0, v0, 0x19

    mul-float v1, v2, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->notifyProgress(F)V

    goto :goto_0

    .line 422
    :sswitch_6
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->virtualTaskProgressNumber:I

    add-int/lit8 v0, v0, 0x23

    const/high16 v1, 0x42200000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->notifyProgress(F)V

    goto :goto_0

    .line 425
    :sswitch_7
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->virtualTaskProgressNumber:I

    add-int/lit8 v0, v0, 0x4b

    const/high16 v1, 0x41a00000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->notifyProgress(F)V

    goto :goto_0

    .line 428
    :sswitch_8
    const/high16 v0, 0x42c80000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->notifyProgress(F)V

    goto :goto_0

    .line 402
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x7fffffff -> :sswitch_8
    .end sparse-switch
.end method

.method protected onSaveContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;)V
    .locals 3
    .param p1, "syncResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x7

    .line 345
    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isProgressStepPassed(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->setProgressStep(I)V

    .line 349
    :cond_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->initGroupMap()V

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .local v0, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$6;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask$6;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;->traverseContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V

    .line 369
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 370
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->commit(Ljava/util/List;)V

    .line 374
    return-void

    .line 372
    :cond_1
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v1
.end method

.method protected onSaveStatus()V
    .locals 5

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->doFetchServerVersion()Ljava/lang/Long;

    move-result-object v0

    .line 379
    .local v0, "version":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactDButil;->writeLastServerVersion(Landroid/content/Context;J)V

    .line 382
    :cond_0
    return-void
.end method

.method protected onStartContactTask(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;
    .locals 3
    .param p1, "checksumResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v2

    .line 330
    :cond_0
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->setProgressStep(I)V

    .line 332
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->buildContactRestoreRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;

    move-result-object v0

    .line 333
    .local v0, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;->hasRestoreData()Z

    move-result v2

    if-nez v2, :cond_1

    .line 334
    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 335
    const/4 v1, 0x0

    .line 340
    :goto_0
    return-object v1

    .line 338
    :cond_1
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;->doNetRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreResponse;

    move-result-object v1

    .line 340
    .local v1, "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreResponse;
    goto :goto_0
.end method

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
    .line 457
    return-void
.end method
