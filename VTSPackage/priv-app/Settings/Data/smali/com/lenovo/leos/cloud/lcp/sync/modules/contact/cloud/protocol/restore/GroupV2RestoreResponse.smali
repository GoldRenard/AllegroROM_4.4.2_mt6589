.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupV2RestoreResponse;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;
.source "GroupV2RestoreResponse.java"


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
    .line 16
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupV2RestoreResponse;->root:Lorg/json/JSONObject;

    .line 17
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupV2RestoreResponse;->root:Lorg/json/JSONObject;

    .line 18
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupV2RestoreResponse;->root:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupV2RestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getResult()I
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupV2RestoreResponse;->root:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupV2RestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupV2RestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 21
    :goto_0
    return v0

    .line 22
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public traverseGroup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V
    .locals 12
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;

    .prologue
    .line 30
    iget-object v10, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/GroupV2RestoreResponse;->root:Lorg/json/JSONObject;

    const-string v11, "ct_cg"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 31
    .local v2, "ctGroups":Lorg/json/JSONArray;
    if-nez v2, :cond_1

    .line 54
    :cond_0
    return-void

    .line 34
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    .local v6, "len":I
    :goto_0
    if-ge v4, v6, :cond_0

    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "b":Landroid/os/Bundle;
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 37
    .local v1, "ctGroup":Lorg/json/JSONObject;
    const-string v10, "sid"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 38
    .local v7, "sid":Ljava/lang/String;
    const-string v10, "sid"

    invoke-virtual {v0, v10, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string v10, "cg"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 40
    .local v3, "groupTitles":Lorg/json/JSONArray;
    if-eqz v3, :cond_2

    .line 41
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v9, "titleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v5, v10, :cond_3

    .line 46
    const-string v10, "cg"

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 48
    .end local v5    # "j":I
    .end local v9    # "titleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const-string v10, "total"

    invoke-virtual {v0, v10, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    const-string v10, "cur"

    invoke-virtual {v0, v10, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;->onVisit(Landroid/os/Bundle;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 34
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 43
    .restart local v5    # "j":I
    .restart local v9    # "titleList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    .line 44
    .local v8, "title":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method
