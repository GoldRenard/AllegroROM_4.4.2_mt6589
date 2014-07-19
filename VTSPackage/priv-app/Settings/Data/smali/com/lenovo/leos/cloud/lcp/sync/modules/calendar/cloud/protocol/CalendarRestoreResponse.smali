.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarRestoreResponse;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;
.source "CalendarRestoreResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarRestoreResponse$CalendarVisitor;
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
    .line 13
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarRestoreResponse;->root:Lorg/json/JSONObject;

    .line 14
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarRestoreResponse;->root:Lorg/json/JSONObject;

    .line 15
    return-void
.end method


# virtual methods
.method protected getProtocolRoot()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarRestoreResponse;->root:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getResult()I
    .locals 3

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v1, "result"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public tranverseResponse(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarRestoreResponse$CalendarVisitor;)V
    .locals 6
    .param p1, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarRestoreResponse$CalendarVisitor;

    .prologue
    .line 22
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v5, "data"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 23
    .local v1, "data":Lorg/json/JSONArray;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 24
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v2, v4, :cond_1

    .line 36
    .end local v2    # "i":I
    :cond_0
    return-void

    .line 25
    .restart local v2    # "i":I
    :cond_1
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 27
    .local v3, "jsono":Lorg/json/JSONObject;
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;-><init>()V

    .line 28
    .local v0, "calendar":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;
    const-string v4, "sid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->setSid(Ljava/lang/Long;)V

    .line 29
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->setDisplayName(Ljava/lang/String;)V

    .line 31
    invoke-interface {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/CalendarRestoreResponse$CalendarVisitor;->onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 24
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
