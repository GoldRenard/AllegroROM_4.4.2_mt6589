.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;
.source "ContactChangeVerifyChecksumBuilder.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentTask"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V

    .line 26
    return-void
.end method

.method private buildBaseChecksumString(Ljava/util/List;Z)Ljava/lang/String;
    .locals 7
    .param p2, "starred"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    const/16 v6, 0xa

    .line 57
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 72
    const-string v3, "star:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_3

    const-string v3, "true"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 60
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    .line 61
    .local v0, "f":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "val":Ljava/lang/String;
    const-string v4, "GROUP"

    iget-object v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "IMAGE"

    iget-object v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/JSONUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 66
    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    if-eqz v4, :cond_2

    .line 68
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    :cond_2
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 72
    .end local v0    # "f":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    .end local v2    # "val":Ljava/lang/String;
    :cond_3
    const-string v3, "false"

    goto :goto_1
.end method

.method private computeBaseChecksum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .param p1, "rawContact"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    const/4 v1, 0x1

    .line 45
    iget v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->starred:I

    if-ne v2, v1, :cond_0

    :goto_0
    invoke-direct {p0, p2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;->buildBaseChecksumString(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "checksumStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ChecksumUtil;->computeChecksum(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 45
    .end local v0    # "checksumStr":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public computeChecksum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;Ljava/util/List;)[Ljava/lang/String;
    .locals 1
    .param p1, "rawContact"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/contact/ContactChangeVerifyChecksumBuilder;->computeBaseChecksum(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
