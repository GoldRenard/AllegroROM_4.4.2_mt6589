.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/StructuredName;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
.source "StructuredName.java"


# static fields
.field private static final serialVersionUID:J = -0xbddca1df4bd6bcdL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;-><init>()V

    .line 13
    const-string v0, "NAME"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method protected fetchFlagFromData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V
    .locals 1
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .prologue
    .line 66
    const-string v0, "-1"

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    .line 67
    return-void
.end method

.method protected fetchValueFromData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V
    .locals 4
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .prologue
    .line 32
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .local v1, "jobj":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "givenName"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data2:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->putIfNotEmpty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v2, "familyName"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data3:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->putIfNotEmpty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v2, "prefix"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data4:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->putIfNotEmpty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v2, "middleName"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data5:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->putIfNotEmpty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v2, "suffix"

    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data6:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->putIfNotEmpty(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    .line 46
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected flagToData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V
    .locals 0
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .prologue
    .line 17
    return-void
.end method

.method protected jsonToChecksumString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 50
    const-string v3, ""

    .line 62
    :goto_0
    return-object v3

    .line 53
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v3, "givenName"

    invoke-virtual {p0, v1, p1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->appendIfNotEmpty(Ljava/lang/StringBuilder;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 55
    const-string v3, "familyName"

    invoke-virtual {p0, v1, p1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->appendIfNotEmpty(Ljava/lang/StringBuilder;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 56
    const-string v3, "middleName"

    invoke-virtual {p0, v1, p1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->appendIfNotEmpty(Ljava/lang/StringBuilder;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 57
    const-string v3, "suffix"

    invoke-virtual {p0, v1, p1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->appendIfNotEmpty(Ljava/lang/StringBuilder;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "[\\t ,.]"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 61
    .local v0, "c":[C
    invoke-static {v0}, Ljava/util/Arrays;->sort([C)V

    .line 62
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method protected valueToData(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;)V
    .locals 2
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 21
    .local v0, "jobj":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 29
    :goto_0
    return-void

    .line 24
    :cond_0
    const-string v1, "givenName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data2:Ljava/lang/String;

    .line 25
    const-string v1, "familyName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data3:Ljava/lang/String;

    .line 26
    const-string v1, "prefix"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data4:Ljava/lang/String;

    .line 27
    const-string v1, "middleName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data5:Ljava/lang/String;

    .line 28
    const-string v1, "suffix"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data6:Ljava/lang/String;

    goto :goto_0
.end method
