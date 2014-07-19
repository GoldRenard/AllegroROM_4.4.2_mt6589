.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;
.source "ContactExportResult.java"


# static fields
.field public static final KEY_TOTAL:Ljava/lang/String; = "local_number"

.field public static final LOCAL_CATOGARY:Ljava/lang/String; = "local_catogary"

.field public static final LOCAL_TIME:Ljava/lang/String; = "local_time"

.field private static final serialVersionUID:J = -0x412691f04ce74eafL


# instance fields
.field resultBody:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->resultBody:Lorg/json/JSONObject;

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->resultBody:Lorg/json/JSONObject;

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;-><init>()V

    .line 27
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->resultBody:Lorg/json/JSONObject;

    .line 34
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->resultBody:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unexcepted JSONException occured"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private addOp(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "sid"    # Ljava/lang/Long;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "operatin"    # Ljava/lang/String;

    .prologue
    .line 126
    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->getGroupArray()Lorg/json/JSONArray;

    move-result-object v2

    .line 127
    .local v2, "groups":Lorg/json/JSONArray;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 129
    .local v1, "g":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 130
    const-string v3, "sid"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    :cond_0
    const-string v3, "n"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v3, "op"

    invoke-virtual {v1, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1    # "g":Lorg/json/JSONObject;
    .end local v2    # "groups":Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private buildContactFields(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;Lorg/json/JSONArray;)V
    .locals 7
    .param p1, "c"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    .param p2, "jsonFields"    # Lorg/json/JSONArray;

    .prologue
    .line 90
    if-nez p2, :cond_1

    .line 103
    :cond_0
    return-void

    .line 93
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .local v3, "length":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 94
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 95
    .local v2, "jsonfield":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->newInstance(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    move-result-object v0

    .line 96
    .local v0, "field":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    if-eqz v0, :cond_2

    .line 97
    iget-object v4, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->fields:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    :cond_2
    const-string v4, "ContactRestoreResponse"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown server field:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private buildContactGroupFields(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;Lorg/json/JSONArray;)V
    .locals 4
    .param p1, "c"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    .param p2, "jsonGroups"    # Lorg/json/JSONArray;

    .prologue
    .line 106
    if-nez p2, :cond_1

    .line 114
    :cond_0
    return-void

    .line 109
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 110
    const-string v3, "GROUP"

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->newInstance(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    move-result-object v0

    .line 111
    .local v0, "f":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    .line 112
    iget-object v3, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->fields:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private buildContactObject(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    .locals 5
    .param p1, "jsoncontact"    # Lorg/json/JSONObject;

    .prologue
    .line 78
    const-string v4, "st"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 79
    .local v3, "stared":Z
    const-string v4, "fs"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 80
    .local v1, "fields":Lorg/json/JSONArray;
    const-string v4, "cg"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 82
    .local v2, "groups":Lorg/json/JSONArray;
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;-><init>()V

    .line 83
    .local v0, "c":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    if-eqz v3, :cond_0

    const/4 v4, 0x1

    :goto_0
    iput v4, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;->starred:I

    .line 84
    invoke-direct {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->buildContactFields(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;Lorg/json/JSONArray;)V

    .line 85
    invoke-direct {p0, v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->buildContactGroupFields(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;Lorg/json/JSONArray;)V

    .line 86
    return-object v0

    .line 83
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private buildFieldArray(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 192
    .local v1, "ret":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 195
    return-object v1

    .line 192
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;

    .line 193
    .local v0, "field":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->toJSONObj(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method private buildOperatin(ZLjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "starred"    # Z
    .param p4, "sid"    # Ljava/lang/String;
    .param p5, "operation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 168
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    .local p3, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;>;"
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->getContactArray()Lorg/json/JSONArray;

    move-result-object v0

    .line 169
    .local v0, "contacts":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 170
    .local v3, "op":Lorg/json/JSONObject;
    const-string v4, "op"

    invoke-virtual {v3, v4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 172
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v2, "groupNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 177
    const-string v4, "cg"

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    .end local v2    # "groupNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    if-eqz p2, :cond_1

    .line 181
    const-string v4, "fs"

    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->buildFieldArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    :cond_1
    if-eqz p4, :cond_2

    .line 184
    const-string v4, "sid"

    invoke-static {p4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    :cond_2
    const-string v4, "st"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 187
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 188
    return-void

    .line 173
    .restart local v2    # "groupNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;

    .line 174
    .local v1, "g":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;
    iget-object v5, v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->title:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getContactArray()Lorg/json/JSONArray;
    .locals 4

    .prologue
    .line 207
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->resultBody:Lorg/json/JSONObject;

    const-string v3, "ct"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 208
    .local v0, "contacts":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 209
    new-instance v0, Lorg/json/JSONArray;

    .end local v0    # "contacts":Lorg/json/JSONArray;
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 211
    .restart local v0    # "contacts":Lorg/json/JSONArray;
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->resultBody:Lorg/json/JSONObject;

    const-string v3, "ct"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    return-object v0

    .line 212
    :catch_0
    move-exception v1

    .line 213
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getGroupArray()Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->resultBody:Lorg/json/JSONObject;

    const-string v2, "cg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 143
    .local v0, "groups":Lorg/json/JSONArray;
    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lorg/json/JSONArray;

    .end local v0    # "groups":Lorg/json/JSONArray;
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 145
    .restart local v0    # "groups":Lorg/json/JSONArray;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->resultBody:Lorg/json/JSONObject;

    const-string v2, "cg"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    :cond_0
    return-object v0
.end method

.method private toJSONObj(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;)Lorg/json/JSONObject;
    .locals 3
    .param p1, "field"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 200
    .local v0, "obj":Lorg/json/JSONObject;
    const-string v1, "t"

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->mimetype:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    const-string v1, "f"

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->flag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 202
    const-string v1, "v"

    iget-object v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    return-object v0
.end method


# virtual methods
.method public addContact(ZLjava/util/List;Ljava/util/List;)V
    .locals 7
    .param p1, "starred"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p2, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Field;>;"
    .local p3, "groups":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;>;"
    const/4 v4, 0x0

    :try_start_0
    const-string v5, "add"

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->buildOperatin(ZLjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v6

    .line 160
    .local v6, "e":Lorg/json/JSONException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public addGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;)V
    .locals 3
    .param p1, "group"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;

    .prologue
    .line 121
    const/4 v0, 0x0

    iget-object v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Group;->title:Ljava/lang/String;

    const-string v2, "add"

    invoke-direct {p0, v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->addOp(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public clearData()V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->resultBody:Lorg/json/JSONObject;

    .line 225
    return-void
.end method

.method public putCatogaryToJSONroot(Ljava/lang/String;)V
    .locals 3
    .param p1, "catogary"    # Ljava/lang/String;

    .prologue
    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->resultBody:Lorg/json/JSONObject;

    const-string v2, "local_catogary"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "je":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public putTimeToJSONroot(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->resultBody:Lorg/json/JSONObject;

    const-string v2, "local_time"

    invoke-virtual {v1, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "je":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setTotal(I)V
    .locals 3
    .param p1, "total"    # I

    .prologue
    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->resultBody:Lorg/json/JSONObject;

    const-string v2, "local_number"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "je":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->resultBody:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public traverseContacts(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V
    .locals 10
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;

    .prologue
    .line 58
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->resultBody:Lorg/json/JSONObject;

    const-string v8, "ct"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 59
    .local v2, "contacts":Lorg/json/JSONArray;
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->resultBody:Lorg/json/JSONObject;

    const-string v8, "local_number"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 60
    .local v6, "total":I
    if-nez v2, :cond_1

    .line 75
    :cond_0
    return-void

    .line 63
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    .local v5, "len":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 64
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 65
    .local v4, "jsoncontact":Lorg/json/JSONObject;
    invoke-direct {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->buildContactObject(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;

    move-result-object v1

    .line 67
    .local v1, "c":Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/field/Contact;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v0, "b":Landroid/os/Bundle;
    const-string v7, "ct"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 69
    const-string v7, "local_number"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;->onVisit(Landroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public traverseGroups(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V
    .locals 8
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;

    .prologue
    .line 41
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/protocol/ContactExportResult;->resultBody:Lorg/json/JSONObject;

    const-string v7, "cg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 42
    .local v2, "groups":Lorg/json/JSONArray;
    if-nez v2, :cond_1

    .line 55
    :cond_0
    return-void

    .line 45
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .local v4, "len":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 46
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 47
    .local v1, "group":Lorg/json/JSONObject;
    const-string v6, "n"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "title":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "n"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;->onVisit(Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 45
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
