.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;
.source "MainEventRestoreResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse$EventRestoreVisitor;
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
    .line 18
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/BaseCalendarProtocol;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;->root:Lorg/json/JSONObject;

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;->root:Lorg/json/JSONObject;

    .line 20
    return-void
.end method

.method private convertAttendessList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .param p1, "json"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v0, "allAttendees":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;>;"
    if-eqz p1, :cond_0

    .line 65
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 73
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 66
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 67
    .local v2, "j":Lorg/json/JSONObject;
    if-eqz v2, :cond_2

    .line 68
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->parse(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;

    move-result-object v3

    .line 69
    .local v3, "reminder":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .end local v3    # "reminder":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private convertJson2Event(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;-><init>()V

    .line 43
    .local v0, "event":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    const-string v1, "cid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->set_id(Ljava/lang/Long;)V

    .line 44
    const-string v1, "sid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setSid(Ljava/lang/Long;)V

    .line 45
    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setTitle(Ljava/lang/String;)V

    .line 46
    const-string v1, "location"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setEventLocation(Ljava/lang/String;)V

    .line 47
    const-string v1, "desc"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setDescription(Ljava/lang/String;)V

    .line 48
    const-string v1, "start"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setDtStart(Ljava/lang/Long;)V

    .line 49
    const-string v1, "end"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setDtEnd(Ljava/lang/Long;)V

    .line 50
    const-string v1, "tz"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setEventTimezone(Ljava/lang/String;)V

    .line 51
    const-string v1, "all_day"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setAllDay(Ljava/lang/Integer;)V

    .line 52
    const-string v1, "attendee"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;->convertAttendessList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setAttendees(Ljava/util/List;)V

    .line 53
    const-string v1, "rrule"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setrRule(Ljava/lang/String;)V

    .line 54
    const-string v1, "alert_ahead"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;->convertReminderList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setReminders(Ljava/util/List;)V

    .line 55
    const-string v1, "calendar"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setCalendarId(Ljava/lang/Long;)V

    .line 59
    .end local v0    # "event":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertReminderList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .param p1, "json"    # Lorg/json/JSONArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "allReminders":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;>;"
    if-eqz p1, :cond_0

    .line 79
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v1, v4, :cond_1

    .line 85
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 80
    .restart local v1    # "i":I
    :cond_1
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 81
    .local v2, "j":Lorg/json/JSONObject;
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->parse(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;

    move-result-object v3

    .line 82
    .local v3, "reminder":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getProtocolRoot()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;->root:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getResult()I
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;->root:Lorg/json/JSONObject;

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
    .line 27
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;->root:Lorg/json/JSONObject;

    const-string v6, "data"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 28
    .local v0, "data":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 30
    .local v4, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v4, :cond_1

    .line 38
    .end local v2    # "i":I
    .end local v4    # "len":I
    :cond_0
    return-void

    .line 31
    .restart local v2    # "i":I
    .restart local v4    # "len":I
    :cond_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 32
    .local v3, "json":Lorg/json/JSONObject;
    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse;->convertJson2Event(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;

    move-result-object v1

    .line 33
    .local v1, "event":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    invoke-interface {p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/MainEventRestoreResponse$EventRestoreVisitor;->onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 30
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
