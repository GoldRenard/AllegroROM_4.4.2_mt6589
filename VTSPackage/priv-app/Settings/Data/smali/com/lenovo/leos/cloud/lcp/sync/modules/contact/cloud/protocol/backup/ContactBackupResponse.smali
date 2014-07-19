.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/ContactBackupResponse;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;
.source "ContactBackupResponse.java"


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
    .line 13
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getVersion()J
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;->root:Lorg/json/JSONObject;

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public toBytes()[B
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public traverseContact(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V
    .locals 11
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;

    .prologue
    .line 18
    iget-object v8, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/CommonSyncResponse;->root:Lorg/json/JSONObject;

    const-string v9, "ct"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 19
    .local v2, "contacts":Lorg/json/JSONArray;
    if-nez v2, :cond_1

    .line 34
    :cond_0
    return-void

    .line 23
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    .local v5, "len":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 24
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 25
    .local v3, "ct":Lorg/json/JSONObject;
    const-string v8, "cid"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 26
    .local v1, "cid":I
    const-string v8, "sid"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 27
    .local v7, "sid":Ljava/lang/Long;
    const-string v8, "op"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 28
    .local v6, "op":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    .local v0, "b":Landroid/os/Bundle;
    const-string v8, "op"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const-string v8, "cid"

    invoke-virtual {v0, v8, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    const-string v8, "sid"

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v0, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 32
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;->onVisit(Landroid/os/Bundle;)Z

    .line 23
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
