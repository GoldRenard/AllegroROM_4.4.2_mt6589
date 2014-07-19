.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;
.super Ljava/lang/Object;
.source "Reminder.java"


# instance fields
.field private _id:Ljava/lang/Long;

.field private eventId:Ljava/lang/Long;

.field private method:Ljava/lang/Integer;

.field private minute:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;
    .locals 3
    .param p0, "j"    # Lorg/json/JSONObject;

    .prologue
    .line 52
    if-eqz p0, :cond_0

    .line 53
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;-><init>()V

    .line 54
    .local v0, "reminder":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;
    const-string v1, "cid"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->_id:Ljava/lang/Long;

    .line 55
    const-string v1, "event_id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->eventId:Ljava/lang/Long;

    .line 56
    const-string v1, "method"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->method:Ljava/lang/Integer;

    .line 57
    const-string v1, "minutes"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->minute:Ljava/lang/Integer;

    .line 60
    .end local v0    # "reminder":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getEventId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->eventId:Ljava/lang/Long;

    return-object v0
.end method

.method public getMethod()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->method:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->minute:Ljava/lang/Integer;

    return-object v0
.end method

.method public get_id()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->_id:Ljava/lang/Long;

    return-object v0
.end method

.method public setEventId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "eventId"    # Ljava/lang/Long;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->eventId:Ljava/lang/Long;

    .line 33
    return-void
.end method

.method public setMethod(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/Integer;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->method:Ljava/lang/Integer;

    .line 49
    return-void
.end method

.method public setMinute(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "minute"    # Ljava/lang/Integer;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->minute:Ljava/lang/Integer;

    .line 41
    return-void
.end method

.method public set_id(Ljava/lang/Long;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/Long;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->_id:Ljava/lang/Long;

    .line 25
    return-void
.end method
