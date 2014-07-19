.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/PackageDataTraverser;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/TraverserAdapter;
.source "PackageDataTraverser.java"


# instance fields
.field private visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentUser"    # Ljava/lang/String;
    .param p3, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/TraverserAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/PackageDataTraverser;->visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;

    .line 19
    return-void
.end method

.method private buildRawContactFromFields(Landroid/content/Context;Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    .locals 3
    .param p1, "context2"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;",
            ">;)",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;"
        }
    .end annotation

    .prologue
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;>;"
    const/4 v2, 0x0

    .line 56
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;-><init>()V

    .line 57
    .local v0, "rawContact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    iget v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    .line 58
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    iget v1, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->stared:I

    iput v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->starred:I

    .line 59
    iget v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/TraverserAdapter;->currentUser:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/impl/PrivateContactData;->getContactSid(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sourceid:Ljava/lang/String;

    .line 60
    return-object v0
.end method


# virtual methods
.method public traverseData(IILandroid/database/Cursor;)I
    .locals 10
    .param p1, "totalRows"    # I
    .param p2, "cur"    # I
    .param p3, "dataCursor"    # Landroid/database/Cursor;

    .prologue
    .line 24
    const/4 v4, -0x1

    .line 25
    .local v4, "lastCid":I
    const/4 v1, 0x0

    .local v1, "curCount":I
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 26
    .local v7, "totalCount":I
    move v6, p2

    .line 27
    .local v6, "tmpCur":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v3, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;>;"
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 51
    :cond_0
    return v6

    .line 29
    :cond_1
    invoke-virtual {p0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/TraverserAdapter;->cursorToContactData(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    move-result-object v2

    .line 30
    .local v2, "data":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    iget v0, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    .line 31
    .local v0, "cid":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_2

    if-eq v4, v0, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 32
    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/TraverserAdapter;->context:Landroid/content/Context;

    invoke-direct {p0, v8, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/PackageDataTraverser;->buildRawContactFromFields(Landroid/content/Context;Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    move-result-object v5

    .line 33
    .local v5, "rawContact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/PackageDataTraverser;->visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;

    add-int/lit8 v9, v6, -0x1

    invoke-interface {v8, v5, v3, v9, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;->onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;Ljava/util/List;II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 36
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 38
    .end local v5    # "rawContact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 40
    if-ne v1, v7, :cond_3

    .line 41
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/TraverserAdapter;->context:Landroid/content/Context;

    invoke-direct {p0, v8, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/PackageDataTraverser;->buildRawContactFromFields(Landroid/content/Context;Ljava/util/List;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;

    move-result-object v5

    .line 43
    .restart local v5    # "rawContact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/PackageDataTraverser;->visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;

    invoke-interface {v8, v5, v3, v6, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;->onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;Ljava/util/List;II)Z

    .line 48
    .end local v5    # "rawContact":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 45
    :cond_3
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    move v4, v0

    goto :goto_1
.end method
