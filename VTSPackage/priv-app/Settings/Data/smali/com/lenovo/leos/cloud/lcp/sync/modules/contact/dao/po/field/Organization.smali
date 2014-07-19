.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Organization;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
.source "Organization.java"


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

.field public static final FLAG_OTHER:Ljava/lang/String; = "OTHER"

.field public static final FLAG_WORK:Ljava/lang/String; = "WORK"

.field private static final serialVersionUID:J = 0x637a069e08f600d3L


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Organization;->FLAG_2_TYPE:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    .line 20
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Organization;->FLAG_2_TYPE:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    const-string v1, "CUSTOM"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 21
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Organization;->FLAG_2_TYPE:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    const-string v1, "WORK"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 22
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Organization;->FLAG_2_TYPE:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    const-string v1, "OTHER"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;-><init>()V

    .line 12
    const-string v0, "ORGANIZATION"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method protected fetchValueFromData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V
    .locals 4
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .prologue
    .line 45
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 53
    .local v1, "jobj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "company"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data1:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->putIfNotEmpty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v2, "title"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data4:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->putIfNotEmpty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    .line 61
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 57
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getFlagName(I)Ljava/lang/String;
    .locals 2
    .param p1, "typeId"    # I

    .prologue
    .line 32
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Organization;->FLAG_2_TYPE:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

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
    .line 65
    const-string v0, "WORK"

    return-object v0
.end method

.method protected getTypeId(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "flagName"    # Ljava/lang/String;

    .prologue
    .line 27
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Organization;->FLAG_2_TYPE:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;

    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Bimap;->getV(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method protected valueToData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V
    .locals 2
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 37
    .local v0, "jobj":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    const-string v1, "company"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data1:Ljava/lang/String;

    .line 41
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data4:Ljava/lang/String;

    goto :goto_0
.end method
