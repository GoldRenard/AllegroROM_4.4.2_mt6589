.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$2;
.super Ljava/lang/Object;
.source "ContactChecksumBuilder.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$ContactVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;->queryTargetContact(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;

.field private final synthetic val$contact:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$2;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$2;->val$contact:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;

    .line 445
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;Ljava/util/List;II)Z
    .locals 4
    .param p1, "rawContact"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;
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
    .line 448
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;>;"
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$2;->val$contact:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;

    iget v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->cid:I

    iput v3, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->cid:I

    .line 449
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$2;->val$contact:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;

    iget v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->starred:I

    iput v3, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->starred:I

    .line 450
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$2;->val$contact:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/RawContact;->sourceid:Ljava/lang/String;

    iput-object v3, v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->sourceid:Ljava/lang/String;

    .line 452
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 458
    const/4 v2, 0x0

    return v2

    .line 452
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .line 453
    .local v0, "data":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->newInstance(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    move-result-object v1

    .line 454
    .local v1, "f":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    if-eqz v1, :cond_0

    .line 455
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$2;->val$contact:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;

    iget-object v3, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->fields:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
