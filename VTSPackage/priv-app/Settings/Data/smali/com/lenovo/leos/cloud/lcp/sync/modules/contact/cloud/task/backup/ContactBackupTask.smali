.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;
.source "ContactBackupTask.java"


# static fields
.field public static final STATUS_ONGOING_C_BACKUP_DB:I = 0x5

.field public static final STATUS_ONGOING_C_BACKUP_NET:I = 0x6

.field public static final STATUS_ONGOING_C_DIFF_DB:I = 0x3

.field public static final STATUS_ONGOING_C_DIFF_NET:I = 0x4

.field public static final STATUS_ONGOING_G_BACKUP:I = 0x2

.field public static final STATUS_ONGOING_P_BACKUP:I = 0x7


# instance fields
.field protected cloudVersion:J

.field private final dupSids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final dupandDiffSids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
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
    .line 49
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->dupSids:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->dupandDiffSids:Ljava/util/List;

    .line 449
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->cloudVersion:J

    .line 488
    const/4 v0, 0x5

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->virtualTaskProgressNumber:I

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->opDeleteCount:I

    return v0
.end method

.method static synthetic access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->opDeleteCount:I

    return-void
.end method

.method static synthetic access$10(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;Ljava/util/List;)[Landroid/content/ContentProviderResult;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->digestDBBatchOperation(Ljava/util/List;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;Ljava/util/List;II)Z
    .locals 1

    .prologue
    .line 228
    invoke-direct/range {p0 .. p5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->buildBackupContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;Ljava/util/List;II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$12(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->dupSids:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$13(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)Ljava/util/List;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->dupandDiffSids:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$14(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

    return-object v0
.end method

.method static synthetic access$15(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->hasContact:Z

    return-void
.end method

.method static synthetic access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->sid2cidMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    return-object v0
.end method

.method static synthetic access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->opAddCount:I

    return v0
.end method

.method static synthetic access$6(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->opAddCount:I

    return-void
.end method

.method static synthetic access$7(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->opUpdateCount:I

    return v0
.end method

.method static synthetic access$8(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;I)V
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->opUpdateCount:I

    return-void
.end method

.method static synthetic access$9(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->dbCommistSize:I

    return v0
.end method

.method private buildAddContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V
    .locals 2
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;
    .param p2, "checksumBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$3;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$3;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;Ljava/lang/StringBuilder;)V

    invoke-virtual {p2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->traverseContactCAdd(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V

    .line 195
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$4;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$4;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;Ljava/lang/StringBuilder;)V

    invoke-virtual {p2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->traverseContactSDelete(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->buildAddContactsX(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;Ljava/lang/String;)V

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v1

    .line 213
    :cond_1
    return-void
.end method

.method private buildAddContactsX(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;Ljava/lang/String;)V
    .locals 2
    .param p1, "request"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;
    .param p2, "ids"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 217
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$5;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$5;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;)V

    invoke-interface {v0, v1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->fastTraverseVisibleContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v0

    .line 226
    :cond_0
    return-void
.end method

.method private buildAllContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;)V
    .locals 2
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$2;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$2;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;)V

    invoke-interface {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->fastTraverseVisibleContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;)V

    .line 179
    return-void
.end method

.method private buildBackupContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;Ljava/util/List;II)Z
    .locals 9
    .param p1, "request"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;
    .param p2, "contact"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    .param p4, "cur"    # I
    .param p5, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .line 230
    .local p3, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;>;"
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .local v3, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v4, "groupIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 244
    int-to-float v5, p4

    const/high16 v6, 0x3f800000

    add-float/2addr v5, v6

    int-to-float v6, p5

    div-float/2addr v5, v6

    const/high16 v6, 0x3f400000

    mul-float/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->notifyStepProgress(F)V

    .line 245
    iget v6, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    iget v5, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->starred:I

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {p1, v6, v5, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;->addContact(IZLjava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v3    # "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    .end local v4    # "groupIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :goto_2
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->checkOrDoPageBackupContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_3
    return v5

    .line 232
    .restart local v3    # "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    .restart local v4    # "groupIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .line 233
    .local v0, "data":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->newInstance(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    move-result-object v2

    .line 234
    .local v2, "field":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    if-eqz v2, :cond_3

    .line 235
    const-string v6, "GROUP"

    iget-object v7, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 236
    invoke-direct {p0, v4, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->buildBackupContactGroup(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 246
    .end local v0    # "data":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    .end local v2    # "field":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    .end local v3    # "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    .end local v4    # "groupIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catch_0
    move-exception v1

    .line 247
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 237
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "data":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    .restart local v2    # "field":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    .restart local v3    # "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    .restart local v4    # "groupIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_2
    :try_start_2
    const-string v6, "IMAGE"

    iget-object v7, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 238
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    :cond_3
    const-string v6, "ContactBackupTask"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unknown client field:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 245
    .end local v0    # "data":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    .end local v2    # "field":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 250
    .end local v3    # "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    .end local v4    # "groupIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_5
    const/4 v5, 0x0

    goto :goto_3
.end method

.method private buildBackupContactGroup(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;)V
    .locals 4
    .param p2, "field"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ")V"
        }
    .end annotation

    .prologue
    .line 254
    .local p1, "groupIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "groupId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 256
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 257
    .local v0, "gcid":I
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

    invoke-interface {v3, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;->queryGroupSid(I)Ljava/lang/String;

    move-result-object v2

    .line 258
    .local v2, "gsid":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 259
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    .end local v0    # "gcid":I
    .end local v2    # "gsid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private buildContactBackupRequest(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 157
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, "deviceId":Ljava/lang/String;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->currentUser:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->clearContactSid(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;

    invoke-direct {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;-><init>(Ljava/lang/String;)V

    .line 163
    .local v1, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->buildAllContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;)V

    .line 164
    return-object v1
.end method

.method private buildContactBackupRequest(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "checksumBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "deviceId":Ljava/lang/String;
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;

    invoke-direct {v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;
    invoke-direct {p0, v1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->buildAddContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V

    .line 142
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->buildDupContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V

    .line 143
    const v2, 0x3f4ccccd

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->notifyStepProgress(F)V

    .line 144
    invoke-direct {p0, v1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->buildDiffContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V

    .line 145
    const v2, 0x3f666666

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->notifyStepProgress(F)V

    .line 146
    invoke-direct {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->buildDelContactsByPrivateData(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;)V

    .line 147
    return-object v1
.end method

.method private buildDelContactsByPrivateData(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 375
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getClonedContactData(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;

    move-result-object v7

    invoke-virtual {v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/DuplexHashMap;->keyMap()Ljava/util/Map;

    move-result-object v0

    .line 376
    .local v0, "cid2sidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 377
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 378
    .local v6, "tmpcid2sidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    new-instance v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$9;

    invoke-direct {v8, p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$9;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;Ljava/util/Map;)V

    .line 388
    const-string v9, "deleted=0"

    const/4 v10, 0x0

    .line 378
    invoke-interface {v7, v8, v9, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseRawContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 391
    new-instance v7, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v7}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v7

    .line 394
    :cond_0
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 395
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 396
    .local v2, "deletedSids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 397
    .local v1, "deletedCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->sid2cidMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 398
    .local v3, "existSids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 399
    .local v4, "location":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 410
    .end local v1    # "deletedCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "deletedSids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "existSids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "location":I
    .end local v6    # "tmpcid2sidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_1
    return-void

    .line 399
    .restart local v1    # "deletedCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v2    # "deletedSids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "existSids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "location":I
    .restart local v6    # "tmpcid2sidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 400
    .local v5, "sid":Ljava/lang/String;
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->dupandDiffSids:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 401
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->sid2cidMap:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-interface {v9, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {p2, v9, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;->delContact(J)V

    .line 406
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 404
    :cond_3
    iget-object v9, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v7, v10}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->delContactSid(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_1
.end method

.method private buildDiffContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V
    .locals 2
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;
    .param p2, "checksumBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 306
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$7;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$7;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;Ljava/lang/StringBuilder;)V

    invoke-virtual {p2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->traverseContactDiff(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V

    .line 321
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->buildDiffContactsX(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;Ljava/lang/String;)V

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v1

    .line 327
    :cond_1
    return-void
.end method

.method private buildDiffContactsX(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;Ljava/lang/String;)V
    .locals 2
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;
    .param p2, "ids"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$8;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$8;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;)V

    invoke-interface {v0, v1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->fastTraverseVisibleContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v0

    .line 366
    :cond_0
    return-void
.end method

.method private buildDupContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)V
    .locals 1
    .param p1, "checksumBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$6;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$6;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)V

    invoke-virtual {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->traverseContactDup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V

    .line 299
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v0

    .line 302
    :cond_0
    return-void
.end method

.method private checkOrDoPageBackupContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;)Z
    .locals 4
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;

    .prologue
    const/4 v2, 0x1

    .line 266
    :try_start_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;->queryBackupSize()I

    move-result v1

    .line 267
    .local v1, "len":I
    if-lez v1, :cond_0

    rem-int/lit16 v3, v1, 0x3e8

    if-nez v3, :cond_0

    .line 268
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->doNetRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupResponse;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->onSaveContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;)V

    .line 269
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;->clearContactArray()V
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 283
    .end local v1    # "len":I
    :cond_0
    :goto_0
    return v2

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 274
    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 283
    .end local v0    # "e":Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 275
    :catch_1
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 277
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    goto :goto_1

    .line 280
    :cond_1
    const/4 v2, 0x3

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    goto :goto_1
.end method

.method private containsContactsOnCloud()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 420
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->doFetchServerContactCount()Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, "cloudContactNumber":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 422
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 424
    :cond_0
    :goto_0
    return v1

    .line 422
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private containsContactsOnDevice()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 428
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->contactDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$10;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$10;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)V

    invoke-interface {v0, v1, v2, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->traverseRawContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$RawContactVisitor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 441
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->hasContact:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->containsContactSid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    const/16 v0, 0x6e

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 443
    const/4 v0, 0x0

    .line 445
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private doNetRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupResponse;
    .locals 7
    .param p1, "requestBody"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x6

    .line 114
    const/4 v2, 0x0

    .line 116
    .local v2, "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupResponse;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    new-instance v5, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v5}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v5

    .line 120
    :cond_0
    invoke-virtual {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isProgressStepPassed(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 121
    invoke-virtual {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->setProgressStep(I)V

    .line 122
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->startVirtualNetWorkTask()V

    .line 125
    :cond_1
    const-string v5, "v4/contactbackup.action"

    invoke-virtual {p0, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->getURIRoller(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;

    move-result-object v4

    .line 127
    .local v4, "roller":Lcom/lenovo/leos/cloud/lcp/common/httpclient/BizURIRoller;
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;->toBytes()[B

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->postForText(Lcom/lenovo/leos/cloud/lcp/common/httpclient/URIRoller;[BZ)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "json":Ljava/lang/String;
    :try_start_0
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupResponse;

    invoke-direct {v3, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupResponse;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupResponse;
    .local v3, "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupResponse;
    move-object v2, v3

    .line 134
    .end local v3    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupResponse;
    .restart local v2    # "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupResponse;
    :goto_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->stopVirtualNetWorkTask()V

    .line 135
    return-object v2

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method protected getChecksumDBProgressStatus()I
    .locals 1

    .prologue
    .line 540
    const/4 v0, 0x3

    return v0
.end method

.method protected getChecksumNETProgressStatus()I
    .locals 1

    .prologue
    .line 545
    const/4 v0, 0x4

    return v0
.end method

.method protected getGroupProgressStauts()I
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x2

    return v0
.end method

.method protected getGroupTask()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/GroupTask;
    .locals 2

    .prologue
    .line 475
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/GroupBackupTask;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected getPhotoProgressStauts()I
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x7

    return v0
.end method

.method protected getPhotoTask()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoTask;
    .locals 2

    .prologue
    .line 470
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactPhotoBackupTask;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected needCheckSum()Z
    .locals 1

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->containsContactsOnCloud()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    const/4 v0, 0x0

    .line 457
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected needStart()Z
    .locals 1

    .prologue
    .line 462
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->containsContactsOnDevice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    const/4 v0, 0x0

    .line 465
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected notifyStepProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .prologue
    const/high16 v1, 0x41a00000

    .line 501
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->getProgressStep()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 526
    :goto_0
    return-void

    .line 503
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->notifyProgress(F)V

    goto :goto_0

    .line 506
    :sswitch_1
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->virtualTaskProgressNumber:I

    const/high16 v1, 0x40a00000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->notifyProgress(F)V

    goto :goto_0

    .line 509
    :sswitch_2
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->virtualTaskProgressNumber:I

    add-int/lit8 v0, v0, 0x5

    const/high16 v1, 0x41700000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->notifyProgress(F)V

    goto :goto_0

    .line 512
    :sswitch_3
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->virtualTaskProgressNumber:I

    add-int/lit8 v0, v0, 0x14

    const/high16 v1, 0x41200000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->notifyProgress(F)V

    goto :goto_0

    .line 515
    :sswitch_4
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->virtualTaskProgressNumber:I

    add-int/lit8 v0, v0, 0x1e

    const/high16 v1, 0x41c80000

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->notifyProgress(F)V

    goto :goto_0

    .line 518
    :sswitch_5
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->virtualTaskProgressNumber:I

    add-int/lit8 v0, v0, 0x37

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->notifyProgress(F)V

    goto :goto_0

    .line 521
    :sswitch_6
    iget v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->virtualTaskProgressNumber:I

    add-int/lit8 v0, v0, 0x4b

    mul-float/2addr v1, p1

    float-to-int v1, v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->notifyProgress(F)V

    goto :goto_0

    .line 524
    :sswitch_7
    const/high16 v0, 0x42c80000

    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->notifyProgress(F)V

    goto :goto_0

    .line 501
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
        0x7fffffff -> :sswitch_7
    .end sparse-switch
.end method

.method protected onSaveContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;)V
    .locals 2
    .param p1, "backupResponse"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$1;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;->traverseContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V

    .line 106
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 107
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->digestDBBatchOperation(Ljava/util/List;)[Landroid/content/ContentProviderResult;

    .line 111
    return-void

    .line 109
    :cond_0
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    throw v1
.end method

.method protected onSaveStatus()V
    .locals 5

    .prologue
    .line 481
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->doFetchServerVersion()Ljava/lang/Long;

    move-result-object v0

    .line 482
    .local v0, "version":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->cloudVersion:J

    .line 483
    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->cloudVersion:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 484
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->cloudVersion:J

    invoke-static {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactDButil;->writeLastServerVersion(Landroid/content/Context;J)V

    .line 486
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
    .line 54
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->setProgressStep(I)V

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "requestBody":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;
    if-nez p1, :cond_0

    .line 58
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->buildContactBackupRequest(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;

    move-result-object v0

    .line 63
    :goto_0
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;->hasBackupData()Z

    move-result v2

    if-nez v2, :cond_1

    .line 64
    const/4 v2, 0x0

    iput v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->result:I

    .line 65
    const/4 v1, 0x0

    .line 70
    :goto_1
    return-object v1

    .line 60
    :cond_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->buildContactBackupRequest(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_1
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->doNetRequest(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupResponse;

    move-result-object v1

    .line 70
    .local v1, "response":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupResponse;
    goto :goto_1
.end method
