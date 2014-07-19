.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/SingleDataTraverser;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/TraverserAdapter;
.source "SingleDataTraverser.java"


# instance fields
.field private visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "currentUser"    # Ljava/lang/String;
    .param p3, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/TraverserAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 13
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/SingleDataTraverser;->visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;

    .line 14
    return-void
.end method


# virtual methods
.method public getVisitor()Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/SingleDataTraverser;->visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;

    return-object v0
.end method

.method public setVisitor(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;)V
    .locals 0
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/SingleDataTraverser;->visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;

    .line 35
    return-void
.end method

.method public traverseData(IILandroid/database/Cursor;)I
    .locals 4
    .param p1, "totalRows"    # I
    .param p2, "cur"    # I
    .param p3, "dataCursor"    # Landroid/database/Cursor;

    .prologue
    .line 19
    move v1, p2

    .line 20
    .local v1, "tmpCur":I
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 26
    :goto_1
    return v1

    .line 21
    :cond_0
    invoke-virtual {p0, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/TraverserAdapter;->cursorToContactData(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    move-result-object v0

    .line 22
    .local v0, "contactData":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/traverser/SingleDataTraverser;->visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;

    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpCur":I
    .local v2, "tmpCur":I
    invoke-interface {v3, v0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;->onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;II)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 23
    .end local v2    # "tmpCur":I
    .restart local v1    # "tmpCur":I
    goto :goto_1

    .end local v1    # "tmpCur":I
    .restart local v2    # "tmpCur":I
    :cond_1
    move v1, v2

    .end local v2    # "tmpCur":I
    .restart local v1    # "tmpCur":I
    goto :goto_0
.end method
