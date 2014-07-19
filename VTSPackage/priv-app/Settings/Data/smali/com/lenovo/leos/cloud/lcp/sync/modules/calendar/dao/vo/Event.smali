.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
.super Ljava/lang/Object;
.source "Event.java"


# instance fields
.field private _id:Ljava/lang/Long;

.field private accessLevel:Ljava/lang/Integer;

.field private allDay:Ljava/lang/Integer;

.field private attendees:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private availability:Ljava/lang/Integer;

.field private calendarId:Ljava/lang/Long;

.field private description:Ljava/lang/String;

.field private dtEnd:Ljava/lang/Long;

.field private dtStart:Ljava/lang/Long;

.field private duration:Ljava/lang/String;

.field private eventColor:Ljava/lang/Integer;

.field private eventEndTimezone:Ljava/lang/String;

.field private eventLocation:Ljava/lang/String;

.field private eventStatus:Ljava/lang/Integer;

.field private eventTimezone:Ljava/lang/String;

.field private exDate:Ljava/lang/String;

.field private exRule:Ljava/lang/String;

.field private guestsCanInviteOthers:Ljava/lang/Integer;

.field private guestsCanModify:Ljava/lang/Integer;

.field private guestsCanSeeGuests:Ljava/lang/Integer;

.field private organizer:Ljava/lang/String;

.field private originalAllDay:Ljava/lang/Integer;

.field private originalId:Ljava/lang/String;

.field private originalInstanceTime:Ljava/lang/String;

.field private originalSyncId:Ljava/lang/String;

.field private rDate:Ljava/lang/String;

.field private rRule:Ljava/lang/String;

.field private reminders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;",
            ">;"
        }
    .end annotation
.end field

.field private sid:Ljava/lang/Long;

.field private src_sid:Ljava/lang/Long;

.field private src_time:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->duration:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getAccessLevel()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->accessLevel:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAllDay()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->allDay:Ljava/lang/Integer;

    return-object v0
.end method

.method public getAttendees()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->attendees:Ljava/util/List;

    return-object v0
.end method

.method public getAvailability()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->availability:Ljava/lang/Integer;

    return-object v0
.end method

.method public getCalendarId()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->calendarId:Ljava/lang/Long;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDtEnd()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->dtEnd:Ljava/lang/Long;

    return-object v0
.end method

.method public getDtStart()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->dtStart:Ljava/lang/Long;

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->duration:Ljava/lang/String;

    return-object v0
.end method

.method public getEventColor()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->eventColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEventEndTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->eventEndTimezone:Ljava/lang/String;

    return-object v0
.end method

.method public getEventLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->eventLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getEventStatus()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->eventStatus:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEventTimezone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->eventTimezone:Ljava/lang/String;

    return-object v0
.end method

.method public getExDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->exDate:Ljava/lang/String;

    return-object v0
.end method

.method public getExRule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->exRule:Ljava/lang/String;

    return-object v0
.end method

.method public getGuestsCanInviteOthers()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->guestsCanInviteOthers:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGuestsCanModify()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->guestsCanModify:Ljava/lang/Integer;

    return-object v0
.end method

.method public getGuestsCanSeeGuests()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->guestsCanSeeGuests:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOrganizer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->organizer:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalAllDay()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->originalAllDay:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOriginalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->originalId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalInstanceTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->originalInstanceTime:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalSyncId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->originalSyncId:Ljava/lang/String;

    return-object v0
.end method

.method public getReminders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->reminders:Ljava/util/List;

    return-object v0
.end method

.method public getSid()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->sid:Ljava/lang/Long;

    return-object v0
.end method

.method public getSrc_sid()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->src_sid:Ljava/lang/Long;

    return-object v0
.end method

.method public getSrc_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->src_time:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->title:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->_id:Ljava/lang/Long;

    return-object v0
.end method

.method public getrDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->rDate:Ljava/lang/String;

    return-object v0
.end method

.method public getrRule()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->rRule:Ljava/lang/String;

    return-object v0
.end method

.method public setAccessLevel(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "accessLevel"    # Ljava/lang/Integer;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->accessLevel:Ljava/lang/Integer;

    .line 247
    return-void
.end method

.method public setAllDay(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "allDay"    # Ljava/lang/Integer;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->allDay:Ljava/lang/Integer;

    .line 175
    return-void
.end method

.method public setAttendees(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 302
    .local p1, "attendees":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;>;"
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->attendees:Ljava/util/List;

    .line 303
    return-void
.end method

.method public setAvailability(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "availability"    # Ljava/lang/Integer;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->availability:Ljava/lang/Integer;

    .line 255
    return-void
.end method

.method public setCalendarId(Ljava/lang/Long;)V
    .locals 0
    .param p1, "calendarId"    # Ljava/lang/Long;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->calendarId:Ljava/lang/Long;

    .line 87
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->description:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setDtEnd(Ljava/lang/Long;)V
    .locals 0
    .param p1, "dtEnd"    # Ljava/lang/Long;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->dtEnd:Ljava/lang/Long;

    .line 143
    return-void
.end method

.method public setDtStart(Ljava/lang/Long;)V
    .locals 0
    .param p1, "dtStart"    # Ljava/lang/Long;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->dtStart:Ljava/lang/Long;

    .line 135
    return-void
.end method

.method public setDuration(Ljava/lang/String;)V
    .locals 0
    .param p1, "duration"    # Ljava/lang/String;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->duration:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public setEventColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "eventColor"    # Ljava/lang/Integer;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->eventColor:Ljava/lang/Integer;

    .line 127
    return-void
.end method

.method public setEventEndTimezone(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventEndTimezone"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->eventEndTimezone:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setEventLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventLocation"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->eventLocation:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setEventStatus(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "eventStatus"    # Ljava/lang/Integer;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->eventStatus:Ljava/lang/Integer;

    .line 287
    return-void
.end method

.method public setEventTimezone(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventTimezone"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->eventTimezone:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setExDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "exDate"    # Ljava/lang/String;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->exDate:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setExRule(Ljava/lang/String;)V
    .locals 0
    .param p1, "exRule"    # Ljava/lang/String;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->exRule:Ljava/lang/String;

    .line 199
    return-void
.end method

.method public setGuestsCanInviteOthers(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "guestsCanInviteOthers"    # Ljava/lang/Integer;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->guestsCanInviteOthers:Ljava/lang/Integer;

    .line 271
    return-void
.end method

.method public setGuestsCanModify(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "guestsCanModify"    # Ljava/lang/Integer;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->guestsCanModify:Ljava/lang/Integer;

    .line 263
    return-void
.end method

.method public setGuestsCanSeeGuests(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "guestsCanSeeGuests"    # Ljava/lang/Integer;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->guestsCanSeeGuests:Ljava/lang/Integer;

    .line 279
    return-void
.end method

.method public setOrganizer(Ljava/lang/String;)V
    .locals 0
    .param p1, "organizer"    # Ljava/lang/String;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->organizer:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setOriginalAllDay(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "originalAllDay"    # Ljava/lang/Integer;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->originalAllDay:Ljava/lang/Integer;

    .line 239
    return-void
.end method

.method public setOriginalId(Ljava/lang/String;)V
    .locals 0
    .param p1, "originalId"    # Ljava/lang/String;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->originalId:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public setOriginalInstanceTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "originalInstanceTime"    # Ljava/lang/String;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->originalInstanceTime:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public setOriginalSyncId(Ljava/lang/String;)V
    .locals 0
    .param p1, "originalSyncId"    # Ljava/lang/String;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->originalSyncId:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setReminders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, "reminders":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;>;"
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->reminders:Ljava/util/List;

    .line 295
    return-void
.end method

.method public setSid(Ljava/lang/Long;)V
    .locals 0
    .param p1, "sid"    # Ljava/lang/Long;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->sid:Ljava/lang/Long;

    .line 63
    return-void
.end method

.method public setSrc_sid(Ljava/lang/Long;)V
    .locals 0
    .param p1, "src_sid"    # Ljava/lang/Long;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->src_sid:Ljava/lang/Long;

    .line 71
    return-void
.end method

.method public setSrc_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "src_time"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->src_time:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->title:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public set_id(Ljava/lang/Long;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/Long;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->_id:Ljava/lang/Long;

    .line 55
    return-void
.end method

.method public setrDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "rDate"    # Ljava/lang/String;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->rDate:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setrRule(Ljava/lang/String;)V
    .locals 0
    .param p1, "rRule"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->rRule:Ljava/lang/String;

    .line 183
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event [_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->_id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", calendarId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->calendarId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 308
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->eventLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", organizer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->organizer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->eventColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dtStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->dtStart:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dtEnd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->dtEnd:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 311
    const-string v1, ", eventTimezone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->eventTimezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", eventEndTimezone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->eventEndTimezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->duration:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", allDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->allDay:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->rRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->rDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 314
    const-string v1, ", exRule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->exRule:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->exDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 315
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->originalId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", originalSyncId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->originalSyncId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 316
    const-string v1, ", originalInstanceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->originalInstanceTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 317
    const-string v1, ", originalAllDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->originalAllDay:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", accessLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->accessLevel:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", availability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->availability:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 319
    const-string v1, ", guestsCanModify="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->guestsCanModify:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 320
    const-string v1, ", guestsCanInviteOthers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->guestsCanInviteOthers:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 321
    const-string v1, ", guestsCanSeeGuests="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->guestsCanSeeGuests:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 322
    const-string v1, ", eventStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->eventStatus:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reminders="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->reminders:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 323
    const-string v1, ", attendees="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->attendees:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->sid:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", src_sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 324
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->src_sid:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", src_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->src_time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
