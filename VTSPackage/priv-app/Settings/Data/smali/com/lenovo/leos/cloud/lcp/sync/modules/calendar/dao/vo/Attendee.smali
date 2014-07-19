.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;
.super Ljava/lang/Object;
.source "Attendee.java"


# instance fields
.field private _id:Ljava/lang/Long;

.field private attendeeEmail:Ljava/lang/String;

.field private attendeeName:Ljava/lang/String;

.field private attendeeRelationship:Ljava/lang/Integer;

.field private attendeeStatus:Ljava/lang/Integer;

.field private attendeeType:Ljava/lang/Integer;

.field private eventId:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;
    .locals 3
    .param p0, "j"    # Lorg/json/JSONObject;

    .prologue
    .line 82
    if-nez p0, :cond_0

    .line 83
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    .line 86
    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;-><init>()V

    .line 87
    .local v0, "a":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;
    const-string v1, "cid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->_id:Ljava/lang/Long;

    .line 88
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->attendeeName:Ljava/lang/String;

    .line 89
    const-string v1, "email"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->attendeeEmail:Ljava/lang/String;

    .line 90
    const-string v1, "status"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->attendeeStatus:Ljava/lang/Integer;

    .line 91
    const-string v1, "relationship"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->attendeeRelationship:Ljava/lang/Integer;

    .line 92
    const-string v1, "type"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->attendeeType:Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method public getAttendeeEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->attendeeEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getAttendeeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->attendeeName:Ljava/lang/String;

    return-object v0
.end method

.method public getAttendeeRelationship()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->attendeeRelationship:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAttendeeStatus()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->attendeeStatus:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAttendeeType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->attendeeType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEventId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->eventId:Ljava/lang/Long;

    return-object v0
.end method

.method public get_id()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->_id:Ljava/lang/Long;

    return-object v0
.end method

.method public setAttendeeEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "attendeeEmail"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->attendeeEmail:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setAttendeeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "attendeeName"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->attendeeName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setAttendeeRelationship(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "attendeeRelationship"    # Ljava/lang/Integer;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->attendeeRelationship:Ljava/lang/Integer;

    .line 71
    return-void
.end method

.method public setAttendeeStatus(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "attendeeStatus"    # Ljava/lang/Integer;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->attendeeStatus:Ljava/lang/Integer;

    .line 63
    return-void
.end method

.method public setAttendeeType(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "attendeeType"    # Ljava/lang/Integer;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->attendeeType:Ljava/lang/Integer;

    .line 79
    return-void
.end method

.method public setEventId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "eventId"    # Ljava/lang/Long;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->eventId:Ljava/lang/Long;

    .line 39
    return-void
.end method

.method public set_id(Ljava/lang/Long;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/Long;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->_id:Ljava/lang/Long;

    .line 31
    return-void
.end method
