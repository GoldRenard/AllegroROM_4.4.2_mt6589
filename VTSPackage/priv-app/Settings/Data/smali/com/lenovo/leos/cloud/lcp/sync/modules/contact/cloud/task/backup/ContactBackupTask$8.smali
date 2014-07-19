.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$8;
.super Ljava/lang/Object;
.source "ContactBackupTask.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->buildDiffContactsX(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

.field private final synthetic val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$8;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$8;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private buildDiffContactXGroup(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;)V
    .locals 4
    .param p2, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    .param p3, "field"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ")V"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, "groupIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v3, p3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "fieldVal":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 356
    .local v1, "gcid":I
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$8;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/ContactTask;->groupDao:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;
    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;->access$14(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/GroupDao;->queryGroupSid(I)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "gsid":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 358
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 361
    .end local v1    # "gcid":I
    .end local v2    # "gsid":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;Ljava/util/List;II)Z
    .locals 10
    .param p1, "contact"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    .param p3, "cur"    # I
    .param p4, "total"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;",
            ">;II)Z"
        }
    .end annotation

    .prologue
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 333
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v3, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v4, "groupIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 347
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$8;->val$requestBody:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;

    iget v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    iget v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->starred:I

    if-eqz v2, :cond_4

    move v2, v8

    :goto_1
    iget-object v5, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sourceid:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupRequest;->updateContact(IZLjava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$8;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    return v9

    .line 335
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .line 336
    .local v6, "data":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    invoke-static {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->newInstance(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    move-result-object v7

    .line 337
    .local v7, "field":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    if-eqz v7, :cond_3

    .line 338
    const-string v1, "GROUP"

    iget-object v2, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 339
    invoke-direct {p0, v4, v6, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask$8;->buildDiffContactXGroup(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;)V

    goto :goto_0

    .line 340
    :cond_2
    const-string v1, "IMAGE"

    iget-object v2, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 344
    :cond_3
    const-string v1, "ContactBackupTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Unknown client field:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v6    # "data":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    .end local v7    # "field":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    :cond_4
    move v2, v9

    .line 347
    goto :goto_1

    :cond_5
    move v9, v8

    .line 348
    goto :goto_2
.end method
