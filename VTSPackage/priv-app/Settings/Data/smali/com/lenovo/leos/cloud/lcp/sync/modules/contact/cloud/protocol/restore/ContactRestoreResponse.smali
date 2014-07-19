.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreResponse;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;
.source "ContactRestoreResponse.java"


# static fields
.field public static final KEY_CURRENT:Ljava/lang/String; = "cur"

.field public static final KEY_TOTAL:Ljava/lang/String; = "total"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "bodyString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;-><init>(Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method private buildContactFields(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;Lorg/json/JSONArray;)V
    .locals 7
    .param p1, "c"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    .param p2, "jsonFields"    # Lorg/json/JSONArray;

    .prologue
    .line 58
    if-nez p2, :cond_1

    .line 71
    :cond_0
    return-void

    .line 61
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .local v3, "length":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 62
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 63
    .local v2, "jsonfield":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->newInstance(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    move-result-object v0

    .line 64
    .local v0, "field":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    if-eqz v0, :cond_2

    .line 65
    iget-object v4, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->fields:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_2
    const-string v4, "ContactRestoreResponse"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown server field:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 67
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private buildContactGroupFields(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;Lorg/json/JSONArray;)V
    .locals 4
    .param p1, "c"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    .param p2, "jsonGroups"    # Lorg/json/JSONArray;

    .prologue
    .line 74
    if-nez p2, :cond_1

    .line 82
    :cond_0
    return-void

    .line 77
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 78
    const-string v3, "GROUP"

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->newInstance(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    move-result-object v0

    .line 79
    .local v0, "f":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    .line 80
    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->fields:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private buildContactObject(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    .locals 7
    .param p1, "jsoncontact"    # Lorg/json/JSONObject;

    .prologue
    .line 42
    const-string v6, "sid"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 43
    .local v4, "sid":Ljava/lang/String;
    const-string v6, "st"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 44
    .local v5, "stared":Z
    const-string v6, "fs"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 45
    .local v1, "fields":Lorg/json/JSONArray;
    const-string v6, "op"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 46
    .local v3, "op":Ljava/lang/String;
    const-string v6, "cg"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 48
    .local v2, "groups":Lorg/json/JSONArray;
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;-><init>()V

    .line 49
    .local v0, "c":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    iput-object v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->sourceid:Ljava/lang/String;

    .line 50
    if-eqz v5, :cond_0

    const/4 v6, 0x1

    :goto_0
    iput v6, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->starred:I

    .line 51
    iput-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->op:Ljava/lang/String;

    .line 52
    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreResponse;->buildContactFields(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;Lorg/json/JSONArray;)V

    .line 53
    invoke-direct {p0, v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreResponse;->buildContactGroupFields(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;Lorg/json/JSONArray;)V

    .line 54
    return-object v0

    .line 50
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public traverseContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V
    .locals 8
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;

    .prologue
    .line 22
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;->root:Lorg/json/JSONObject;

    const-string v7, "ct"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 23
    .local v2, "contacts":Lorg/json/JSONArray;
    if-nez v2, :cond_1

    .line 39
    :cond_0
    return-void

    .line 26
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    .local v5, "len":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 27
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 28
    .local v4, "jsoncontact":Lorg/json/JSONObject;
    invoke-direct {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactRestoreResponse;->buildContactObject(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;

    move-result-object v1

    .line 30
    .local v1, "c":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 31
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "ct"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 32
    const-string v6, "cur"

    invoke-virtual {v0, v6, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 33
    const-string v6, "total"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;->onVisit(Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 26
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
