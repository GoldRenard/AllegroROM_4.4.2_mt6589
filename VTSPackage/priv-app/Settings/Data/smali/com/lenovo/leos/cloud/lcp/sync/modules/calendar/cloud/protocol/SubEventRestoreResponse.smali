.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;
.source "SubEventRestoreResponse.java"


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
    .line 15
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;->root:Lorg/json/JSONObject;

    .line 16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;->root:Lorg/json/JSONObject;

    .line 17
    return-void
.end method


# virtual methods
.method protected getProtocolRoot()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;->root:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getResult()I
    .locals 3

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "result"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public tranverseResponse(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse$EventRestoreVisitor;)V
    .locals 7
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse$EventRestoreVisitor;

    .prologue
    .line 24
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/SubEventRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 25
    .local v0, "data":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 27
    .local v4, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_1

    .line 35
    .end local v2    # "i":I
    .end local v4    # "len":I
    :cond_0
    return-void

    .line 28
    .restart local v2    # "i":I
    .restart local v4    # "len":I
    :cond_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 29
    .local v3, "json":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 30
    .local v1, "event":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    invoke-interface {p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse$EventRestoreVisitor;->onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 27
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
