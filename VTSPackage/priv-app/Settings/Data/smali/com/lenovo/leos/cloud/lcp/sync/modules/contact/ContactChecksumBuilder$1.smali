.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$1;
.super Ljava/lang/Object;
.source "ContactChecksumBuilder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder;

    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;)I
    .locals 3
    .param p1, "old"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    .param p2, "other"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    .prologue
    .line 348
    if-nez p2, :cond_0

    .line 349
    const/4 v2, 0x1

    .line 360
    :goto_0
    return v2

    .line 352
    :cond_0
    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v1, ""

    .line 353
    .local v1, "tV":Ljava/lang/String;
    :goto_1
    iget-object v2, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v0, ""

    .line 354
    .local v0, "fV":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 355
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 352
    .end local v0    # "fV":Ljava/lang/String;
    .end local v1    # "tV":Ljava/lang/String;
    :cond_1
    iget-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    goto :goto_1

    .line 353
    .restart local v1    # "tV":Ljava/lang/String;
    :cond_2
    iget-object v0, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    goto :goto_2

    .line 358
    .restart local v0    # "fV":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactChecksumBuilder$1;->compare(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;)I

    move-result v0

    return v0
.end method
