.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;
.source "GroupRestoreResponse.java"


# instance fields
.field root:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "bodyString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;->root:Lorg/json/JSONObject;

    .line 15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;->root:Lorg/json/JSONObject;

    .line 16
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;->root:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResult()I
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;->root:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 19
    :goto_0
    return v0

    .line 20
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public traverseGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V
    .locals 9
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;

    .prologue
    .line 28
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v8, "cg"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 29
    .local v2, "groups":Lorg/json/JSONArray;
    if-nez v2, :cond_1

    .line 45
    :cond_0
    return-void

    .line 32
    :cond_1
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .local v4, "len":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 33
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 34
    .local v1, "group":Lorg/json/JSONObject;
    const-string v7, "n"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 35
    .local v6, "title":Ljava/lang/String;
    const-string v7, "op"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 36
    .local v5, "op":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, "b":Landroid/os/Bundle;
    const-string v7, "sid"

    const-string v8, "sid"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v7, "n"

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v7, "op"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;->onVisit(Landroid/os/Bundle;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 32
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
