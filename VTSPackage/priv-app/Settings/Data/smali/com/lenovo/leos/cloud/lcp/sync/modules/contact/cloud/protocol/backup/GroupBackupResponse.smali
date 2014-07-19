.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/GroupBackupResponse;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;
.source "GroupBackupResponse.java"


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

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/GroupBackupResponse;->root:Lorg/json/JSONObject;

    .line 15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/GroupBackupResponse;->root:Lorg/json/JSONObject;

    .line 16
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/GroupBackupResponse;->root:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/GroupBackupResponse;->root:Lorg/json/JSONObject;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResult()I
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/GroupBackupResponse;->root:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/GroupBackupResponse;->root:Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/GroupBackupResponse;->root:Lorg/json/JSONObject;

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
    .locals 10
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;

    .prologue
    .line 28
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/backup/GroupBackupResponse;->root:Lorg/json/JSONObject;

    const-string v8, "cg"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 29
    .local v3, "groups":Lorg/json/JSONArray;
    if-nez v3, :cond_1

    .line 43
    :cond_0
    return-void

    .line 32
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    .local v5, "len":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 33
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 34
    .local v2, "group":Lorg/json/JSONObject;
    const-string v7, "cid"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 35
    .local v1, "cid":I
    const-string v7, "sid"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 36
    .local v6, "sid":Ljava/lang/Long;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    .local v0, "b":Landroid/os/Bundle;
    const-string v7, "cid"

    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 38
    const-string v7, "sid"

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 39
    const-string v7, "op"

    const-string v8, "op"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;->onVisit(Landroid/os/Bundle;)Z

    .line 32
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
