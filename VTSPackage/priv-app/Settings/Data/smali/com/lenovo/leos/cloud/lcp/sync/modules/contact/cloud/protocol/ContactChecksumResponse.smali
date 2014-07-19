.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol;
.source "ContactChecksumResponse.java"


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

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    .line 15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    .line 16
    return-void
.end method


# virtual methods
.method public contactCAddSize()I
    .locals 6

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 57
    .local v1, "cAddSize":I
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v5, "ct"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 58
    .local v3, "contactDiff":Lorg/json/JSONObject;
    if-nez v3, :cond_0

    move v2, v1

    .line 65
    .end local v1    # "cAddSize":I
    .local v2, "cAddSize":I
    :goto_0
    return v2

    .line 61
    .end local v2    # "cAddSize":I
    .restart local v1    # "cAddSize":I
    :cond_0
    const-string v4, "c_add"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 62
    .local v0, "cAddIds":Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    .line 63
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    :cond_1
    move v2, v1

    .line 65
    .end local v1    # "cAddSize":I
    .restart local v2    # "cAddSize":I
    goto :goto_0
.end method

.method public contactDiffSize()I
    .locals 6

    .prologue
    .line 105
    const/4 v1, 0x0

    .line 106
    .local v1, "diffSize":I
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v5, "ct"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 107
    .local v3, "groupDiff":Lorg/json/JSONObject;
    if-nez v3, :cond_0

    move v2, v1

    .line 114
    .end local v1    # "diffSize":I
    .local v2, "diffSize":I
    :goto_0
    return v2

    .line 110
    .end local v2    # "diffSize":I
    .restart local v1    # "diffSize":I
    :cond_0
    const-string v4, "diff"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 111
    .local v0, "diffInfo":Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    :cond_1
    move v2, v1

    .line 114
    .end local v1    # "diffSize":I
    .restart local v2    # "diffSize":I
    goto :goto_0
.end method

.method public contactSAddSize()I
    .locals 6

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, "sAddSize":I
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v5, "ct"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 167
    .local v0, "groupDiff":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    move v2, v1

    .line 174
    .end local v1    # "sAddSize":I
    .local v2, "sAddSize":I
    :goto_0
    return v2

    .line 170
    .end local v2    # "sAddSize":I
    .restart local v1    # "sAddSize":I
    :cond_0
    const-string v4, "s_add"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 171
    .local v3, "sDeleteInfo":Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    .line 172
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    :cond_1
    move v2, v1

    .line 174
    .end local v1    # "sAddSize":I
    .restart local v2    # "sAddSize":I
    goto :goto_0
.end method

.method public contactSDeleteSize()I
    .locals 6

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, "sDelSize":I
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v5, "ct"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 137
    .local v0, "groupDiff":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    move v2, v1

    .line 144
    .end local v1    # "sDelSize":I
    .local v2, "sDelSize":I
    :goto_0
    return v2

    .line 140
    .end local v2    # "sDelSize":I
    .restart local v1    # "sDelSize":I
    :cond_0
    const-string v4, "s_delete"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 141
    .local v3, "sDeleteInfo":Lorg/json/JSONArray;
    if-eqz v3, :cond_1

    .line 142
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    :cond_1
    move v2, v1

    .line 144
    .end local v1    # "sDelSize":I
    .restart local v2    # "sDelSize":I
    goto :goto_0
.end method

.method public getCloudMergeCount()I
    .locals 4

    .prologue
    .line 28
    const/4 v1, 0x0

    .line 30
    .local v1, "mergecount":I
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v3, "mcc"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 34
    :goto_0
    return v1

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getError()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPortraitNumber()I
    .locals 7

    .prologue
    .line 320
    const/4 v4, 0x0

    .line 321
    .local v4, "total":I
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v6, "pt"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 322
    .local v1, "groupDiff":Lorg/json/JSONObject;
    const-string v5, "diff"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 323
    .local v0, "diffInfo":Lorg/json/JSONArray;
    const-string v5, "s_delete"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 324
    .local v3, "sDeleteInfo":Lorg/json/JSONArray;
    const-string v5, "s_add"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 325
    .local v2, "sAddInfo":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 328
    :cond_0
    if-eqz v3, :cond_1

    .line 329
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 331
    :cond_1
    if-eqz v2, :cond_2

    .line 332
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    add-int/2addr v4, v5

    .line 334
    :cond_2
    return v4
.end method

.method public getResult()I
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

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

.method public traverseContactCAdd(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V
    .locals 8
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;

    .prologue
    .line 38
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v7, "ct"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 39
    .local v3, "contactDiff":Lorg/json/JSONObject;
    if-nez v3, :cond_1

    .line 53
    :cond_0
    return-void

    .line 42
    :cond_1
    const-string v6, "c_add"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 43
    .local v1, "cAddIds":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 44
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    .local v5, "len":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 45
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    .line 46
    .local v2, "cid":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "cid"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 48
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;->onVisit(Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 44
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public traverseContactDiff(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V
    .locals 7
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;

    .prologue
    .line 88
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v6, "ct"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 89
    .local v2, "groupDiff":Lorg/json/JSONObject;
    if-nez v2, :cond_1

    .line 102
    :cond_0
    return-void

    .line 92
    :cond_1
    const-string v5, "diff"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 93
    .local v1, "diffInfo":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 94
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .local v4, "len":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "sid"

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;->onVisit(Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public traverseContactDup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V
    .locals 8
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;

    .prologue
    .line 69
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v7, "ct"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 70
    .local v1, "contactDiff":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 85
    :cond_0
    return-void

    .line 73
    :cond_1
    const-string v6, "dup"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 74
    .local v2, "dupInfo":Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    .line 75
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    .local v5, "len":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 76
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 77
    .local v4, "info":Lorg/json/JSONObject;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "cid"

    const-string v7, "cid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    const-string v6, "sid"

    const-string v7, "sid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;->onVisit(Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public traverseContactSAdd(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V
    .locals 7
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;

    .prologue
    .line 148
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v6, "ct"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 149
    .local v1, "groupDiff":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 162
    :cond_0
    return-void

    .line 152
    :cond_1
    const-string v5, "s_add"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 153
    .local v4, "sAddInfo":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 154
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 155
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 156
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "sid"

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;->onVisit(Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public traverseContactSDelete(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V
    .locals 7
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;

    .prologue
    .line 118
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v6, "ct"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 119
    .local v1, "groupDiff":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 132
    :cond_0
    return-void

    .line 122
    :cond_1
    const-string v5, "s_delete"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 123
    .local v4, "sDeleteInfo":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 124
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 125
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 126
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "sid"

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;->onVisit(Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public traverseGroupCAdd(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V
    .locals 8
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;

    .prologue
    .line 178
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v7, "cg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 179
    .local v3, "groupDiff":Lorg/json/JSONObject;
    if-nez v3, :cond_1

    .line 193
    :cond_0
    return-void

    .line 182
    :cond_1
    const-string v6, "c_add"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 183
    .local v1, "cAddIds":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 184
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    .local v5, "len":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 185
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    .line 186
    .local v2, "cid":I
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 187
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "cid"

    invoke-virtual {v0, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;->onVisit(Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 184
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public traverseGroupDiff(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V
    .locals 7
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;

    .prologue
    .line 215
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v6, "cg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 216
    .local v2, "groupDiff":Lorg/json/JSONObject;
    if-nez v2, :cond_1

    .line 229
    :cond_0
    return-void

    .line 219
    :cond_1
    const-string v5, "diff"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 220
    .local v1, "diffInfo":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 221
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .local v4, "len":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 222
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 223
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "sid"

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;->onVisit(Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public traverseGroupDup(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V
    .locals 8
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;

    .prologue
    .line 196
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v7, "cg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 197
    .local v2, "groupDiff":Lorg/json/JSONObject;
    if-nez v2, :cond_1

    .line 212
    :cond_0
    return-void

    .line 200
    :cond_1
    const-string v6, "dup"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 201
    .local v1, "dupInfo":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 202
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    .local v5, "len":I
    :goto_0
    if-ge v3, v5, :cond_0

    .line 203
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 204
    .local v4, "info":Lorg/json/JSONObject;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 205
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "cid"

    const-string v7, "cid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 206
    const-string v6, "sid"

    const-string v7, "sid"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;->onVisit(Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 202
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public traverseGroupSAdd(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V
    .locals 7
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;

    .prologue
    .line 249
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v6, "cg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 250
    .local v1, "groupDiff":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 263
    :cond_0
    return-void

    .line 253
    :cond_1
    const-string v5, "s_add"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 254
    .local v4, "sAddInfo":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 255
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 257
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "sid"

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;->onVisit(Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public traverseGroupSDelete(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V
    .locals 7
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;

    .prologue
    .line 232
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v6, "cg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 233
    .local v1, "groupDiff":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 246
    :cond_0
    return-void

    .line 236
    :cond_1
    const-string v5, "s_delete"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 237
    .local v4, "sDeleteInfo":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 238
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 239
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 240
    .local v0, "b":Landroid/os/Bundle;
    const-string v5, "sid"

    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;->onVisit(Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public traversePortraitDiff(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V
    .locals 8
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;

    .prologue
    .line 266
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v7, "pt"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 267
    .local v2, "groupDiff":Lorg/json/JSONObject;
    if-nez v2, :cond_1

    .line 281
    :cond_0
    return-void

    .line 270
    :cond_1
    const-string v6, "diff"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 271
    .local v1, "diffInfo":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    .line 272
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .local v4, "len":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 273
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 274
    .local v5, "sid":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "sid"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;->onVisit(Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 272
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public traversePortraitSAdd(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V
    .locals 8
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;

    .prologue
    .line 302
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v7, "pt"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 303
    .local v1, "groupDiff":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 317
    :cond_0
    return-void

    .line 306
    :cond_1
    const-string v6, "s_add"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 307
    .local v4, "sAddInfo":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 308
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 309
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, "sid":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 311
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "sid"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;->onVisit(Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 308
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public traversePortraitSDelete(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;)V
    .locals 8
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;

    .prologue
    .line 284
    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/ContactChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v7, "pt"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 285
    .local v1, "groupDiff":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 299
    :cond_0
    return-void

    .line 288
    :cond_1
    const-string v6, "s_delete"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 289
    .local v4, "sDeleteInfo":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 290
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v3

    .local v3, "len":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 291
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    .line 292
    .local v5, "sid":Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 293
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "sid"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/ContactProtocol$Visitor;->onVisit(Landroid/os/Bundle;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
