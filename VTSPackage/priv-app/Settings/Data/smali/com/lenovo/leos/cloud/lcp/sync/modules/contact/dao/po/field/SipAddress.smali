.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/SipAddress;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
.source "SipAddress.java"


# static fields
.field public static final FLAG_2_TYPE:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_HOME:Ljava/lang/String; = "HOME"

.field public static final FLAG_OTHER:Ljava/lang/String; = "OTHER"

.field public static final FLAG_WORK:Ljava/lang/String; = "WORK"

.field private static final serialVersionUID:J = 0x4010961397b62356L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/SipAddress;->FLAG_2_TYPE:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    .line 15
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/SipAddress;->FLAG_2_TYPE:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    const-string v1, "CUSTOM"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/SipAddress;->FLAG_2_TYPE:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    const-string v1, "HOME"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/SipAddress;->FLAG_2_TYPE:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    const-string v1, "WORK"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/SipAddress;->FLAG_2_TYPE:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    const-string v1, "OTHER"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;-><init>()V

    .line 7
    const-string v0, "SIPADDRESS"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method protected getFlagName(I)Ljava/lang/String;
    .locals 2
    .param p1, "typeId"    # I

    .prologue
    .line 28
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/SipAddress;->FLAG_2_TYPE:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->getK(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected getNullFlagValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "WORK"

    return-object v0
.end method

.method protected getTypeId(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "typeStr"    # Ljava/lang/String;

    .prologue
    .line 23
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/SipAddress;->FLAG_2_TYPE:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->getV(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method
