.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;
.source "EventChecksumResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;
    }
.end annotation


# instance fields
.field root:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "jsonResp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->root:Lorg/json/JSONObject;

    .line 12
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->root:Lorg/json/JSONObject;

    .line 13
    return-void
.end method


# virtual methods
.method public getCAddSize(Ljava/lang/String;)I
    .locals 4
    .param p1, "module"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 39
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->root:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 41
    .local v1, "jsonMod":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v2

    .line 44
    :cond_1
    const-string v3, "c_add"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 45
    .local v0, "cadds":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    goto :goto_0
.end method

.method public getDiffSize(Ljava/lang/String;)I
    .locals 4
    .param p1, "module"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->root:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 70
    .local v1, "jsonMod":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v2

    .line 73
    :cond_1
    const-string v3, "diff"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 74
    .local v0, "cadds":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    goto :goto_0
.end method

.method public getDupSize(Ljava/lang/String;)I
    .locals 4
    .param p1, "module"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->root:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 157
    .local v1, "jsonMod":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v2

    .line 160
    :cond_1
    const-string v3, "dup"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 161
    .local v0, "cadds":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    goto :goto_0
.end method

.method protected getProtocolRoot()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->root:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getResult()I
    .locals 3

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->root:Lorg/json/JSONObject;

    const-string v1, "result"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSAddSize(Ljava/lang/String;)I
    .locals 4
    .param p1, "module"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->root:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 128
    .local v1, "jsonMod":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v2

    .line 131
    :cond_1
    const-string v3, "s_add"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 132
    .local v0, "cadds":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    goto :goto_0
.end method

.method public getSDeleteSize(Ljava/lang/String;)I
    .locals 4
    .param p1, "module"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->root:Lorg/json/JSONObject;

    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 99
    .local v1, "jsonMod":Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v2

    .line 102
    :cond_1
    const-string v3, "s_delete"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 103
    .local v0, "cadds":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    goto :goto_0
.end method

.method public tranverseCAdd(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;)V
    .locals 7
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;

    .prologue
    .line 20
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->root:Lorg/json/JSONObject;

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 22
    .local v3, "jsonMod":Lorg/json/JSONObject;
    if-nez v3, :cond_1

    .line 36
    :cond_0
    return-void

    .line 26
    :cond_1
    const-string v5, "c_add"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 27
    .local v0, "cadds":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 29
    .local v4, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 30
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 31
    .local v1, "cid":Ljava/lang/Long;
    const/4 v5, 0x0

    invoke-interface {p2, v1, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;->onVisit(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 29
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public tranverseDiff(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;)V
    .locals 7
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;

    .prologue
    .line 49
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->root:Lorg/json/JSONObject;

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 51
    .local v2, "jsonMod":Lorg/json/JSONObject;
    if-nez v2, :cond_1

    .line 65
    :cond_0
    return-void

    .line 55
    :cond_1
    const-string v5, "diff"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 56
    .local v0, "cadds":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 58
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 59
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 60
    .local v4, "sid":Ljava/lang/Long;
    const/4 v5, 0x0

    invoke-interface {p2, v5, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;->onVisit(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public tranverseDup(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;)V
    .locals 8
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;

    .prologue
    .line 136
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->root:Lorg/json/JSONObject;

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 138
    .local v3, "jsonMod":Lorg/json/JSONObject;
    if-nez v3, :cond_1

    .line 152
    :cond_0
    return-void

    .line 142
    :cond_1
    const-string v5, "dup"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 143
    .local v0, "cadds":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 145
    .local v4, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 146
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 147
    .local v1, "dup":Lorg/json/JSONObject;
    const-string v5, "cid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "sid"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;->onVisit(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 145
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public tranverseSAdd(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;)V
    .locals 7
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;

    .prologue
    .line 107
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->root:Lorg/json/JSONObject;

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 109
    .local v2, "jsonMod":Lorg/json/JSONObject;
    if-nez v2, :cond_1

    .line 123
    :cond_0
    return-void

    .line 113
    :cond_1
    const-string v5, "s_add"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 114
    .local v0, "cadds":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 116
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 117
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 118
    .local v4, "sid":Ljava/lang/Long;
    const/4 v5, 0x0

    invoke-interface {p2, v5, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;->onVisit(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public tranverseSDelete(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;)V
    .locals 7
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;

    .prologue
    .line 78
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse;->root:Lorg/json/JSONObject;

    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 80
    .local v2, "jsonMod":Lorg/json/JSONObject;
    if-nez v2, :cond_1

    .line 94
    :cond_0
    return-void

    .line 84
    :cond_1
    const-string v5, "s_delete"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 85
    .local v0, "cadds":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 87
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 88
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 89
    .local v4, "sid":Ljava/lang/Long;
    const/4 v5, 0x0

    invoke-interface {p2, v5, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumResponse$ChecksumVisitor;->onVisit(Ljava/lang/Long;Ljava/lang/Long;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
