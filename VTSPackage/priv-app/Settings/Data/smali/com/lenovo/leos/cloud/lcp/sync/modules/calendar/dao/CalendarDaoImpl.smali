.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;
.super Ljava/lang/Object;
.source "CalendarDaoImpl.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# static fields
.field public static ACCOUNT_NAME:Ljava/lang/String; = null

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "LOCAL"

.field private static final ATTENDEES_COLUMN_COUNT:I = 0x7

.field private static final CALENDERS_COLUMN_COUNT:I = 0xb

.field private static final EVENTS_COLUMN_COUNT:I = 0x1b

.field private static final REMINDERS_COLUMN_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CalendarDaoImpl"


# instance fields
.field private attendeeUri:Landroid/net/Uri;

.field private calendarUri:Landroid/net/Uri;

.field private cr:Landroid/content/ContentResolver;

.field private eventUri:Landroid/net/Uri;

.field private mContext:Landroid/content/Context;

.field private mUserName:Ljava/lang/String;

.field private reminderUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string v0, "lesync_local_name"

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->ACCOUNT_NAME:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->calendarUri:Landroid/net/Uri;

    .line 52
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->eventUri:Landroid/net/Uri;

    .line 53
    sget-object v0, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->reminderUri:Landroid/net/Uri;

    .line 54
    sget-object v0, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->attendeeUri:Landroid/net/Uri;

    .line 58
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->mContext:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->cr:Landroid/content/ContentResolver;

    .line 60
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->mUserName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method private buildLocalCalendarUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3
    .param p1, "calendarUri"    # Landroid/net/Uri;

    .prologue
    .line 888
    .line 889
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 890
    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 891
    const-string v1, "account_name"

    sget-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 892
    const-string v1, "account_type"

    const-string v2, "LOCAL"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 893
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 888
    return-object v0
.end method

.method private buildOneAttendee(Landroid/database/Cursor;[Ljava/lang/Integer;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "indexes"    # [Ljava/lang/Integer;

    .prologue
    .line 350
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;-><init>()V

    .line 351
    .local v0, "oneAttendee":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->set_id(Ljava/lang/Long;)V

    .line 352
    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->setEventId(Ljava/lang/Long;)V

    .line 353
    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->setAttendeeName(Ljava/lang/String;)V

    .line 354
    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->setAttendeeEmail(Ljava/lang/String;)V

    .line 355
    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->setAttendeeStatus(Ljava/lang/Integer;)V

    .line 356
    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->setAttendeeType(Ljava/lang/Integer;)V

    .line 357
    const/4 v1, 0x6

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->setAttendeeRelationship(Ljava/lang/Integer;)V

    .line 358
    return-object v0
.end method

.method private buildOneCalendar(Landroid/database/Cursor;[Ljava/lang/Integer;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "indexes"    # [Ljava/lang/Integer;

    .prologue
    .line 283
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;-><init>()V

    .line 284
    .local v0, "oneCalendar":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->set_id(Ljava/lang/Long;)V

    .line 285
    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->setName(Ljava/lang/String;)V

    .line 286
    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->setDisplayName(Ljava/lang/String;)V

    .line 287
    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->setAccountName(Ljava/lang/String;)V

    .line 288
    const/4 v1, 0x4

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->setAccountType(Ljava/lang/String;)V

    .line 289
    const/4 v1, 0x5

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->setCalendarColor(Ljava/lang/Integer;)V

    .line 290
    const/4 v1, 0x6

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->setCalendarAccessLevel(Ljava/lang/Integer;)V

    .line 291
    const/4 v1, 0x7

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->setOwnerAccount(Ljava/lang/String;)V

    .line 292
    const/16 v1, 0x8

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->setVisible(Ljava/lang/Integer;)V

    .line 293
    const/16 v1, 0x9

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->setMaxReminder(Ljava/lang/Integer;)V

    .line 294
    const/16 v1, 0xa

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->setCalendarTimezone(Ljava/lang/String;)V

    .line 295
    return-object v0
.end method

.method private buildOneEvent(Landroid/database/Cursor;[Ljava/lang/Integer;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "indexes"    # [Ljava/lang/Integer;

    .prologue
    .line 300
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;-><init>()V

    .line 301
    .local v0, "oneEvent":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    const/4 v2, 0x0

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->set_id(Ljava/lang/Long;)V

    .line 302
    const/4 v2, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setCalendarId(Ljava/lang/Long;)V

    .line 303
    const/4 v2, 0x2

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setTitle(Ljava/lang/String;)V

    .line 304
    const/4 v2, 0x3

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setEventLocation(Ljava/lang/String;)V

    .line 305
    const/4 v2, 0x4

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setDescription(Ljava/lang/String;)V

    .line 306
    const/4 v2, 0x5

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setOrganizer(Ljava/lang/String;)V

    .line 307
    const/4 v2, 0x6

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setEventColor(Ljava/lang/Integer;)V

    .line 308
    const/4 v2, 0x7

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setDtStart(Ljava/lang/Long;)V

    .line 309
    const/16 v2, 0x8

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setDtEnd(Ljava/lang/Long;)V

    .line 310
    const/16 v2, 0x9

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setEventTimezone(Ljava/lang/String;)V

    .line 311
    const/16 v2, 0xa

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setEventEndTimezone(Ljava/lang/String;)V

    .line 312
    const/16 v2, 0xb

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setDuration(Ljava/lang/String;)V

    .line 313
    const/16 v2, 0xc

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setAllDay(Ljava/lang/Integer;)V

    .line 314
    const/16 v2, 0xd

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setrRule(Ljava/lang/String;)V

    .line 315
    const/16 v2, 0xe

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setrDate(Ljava/lang/String;)V

    .line 316
    const/16 v2, 0xf

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setExRule(Ljava/lang/String;)V

    .line 317
    const/16 v2, 0x10

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setExDate(Ljava/lang/String;)V

    .line 318
    const/16 v2, 0x11

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setOriginalId(Ljava/lang/String;)V

    .line 319
    const/16 v2, 0x12

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setOriginalSyncId(Ljava/lang/String;)V

    .line 320
    const/16 v2, 0x13

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setOriginalInstanceTime(Ljava/lang/String;)V

    .line 321
    const/16 v2, 0x14

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setOriginalAllDay(Ljava/lang/Integer;)V

    .line 322
    const/16 v2, 0x15

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setAccessLevel(Ljava/lang/Integer;)V

    .line 323
    const/16 v2, 0x16

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setAvailability(Ljava/lang/Integer;)V

    .line 324
    const/16 v2, 0x17

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setGuestsCanModify(Ljava/lang/Integer;)V

    .line 325
    const/16 v2, 0x18

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setGuestsCanInviteOthers(Ljava/lang/Integer;)V

    .line 326
    const/16 v2, 0x19

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setGuestsCanSeeGuests(Ljava/lang/Integer;)V

    .line 327
    const/16 v2, 0x1a

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setEventStatus(Ljava/lang/Integer;)V

    .line 329
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->get_id()Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->queryRemindersByEventId(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setReminders(Ljava/util/List;)V

    .line 330
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->get_id()Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->queryAttendeesByEventId(Ljava/lang/Long;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setAttendees(Ljava/util/List;)V

    .line 332
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->mUserName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->get_id()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->getEventSID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    .line 333
    .local v1, "sid":Ljava/lang/Long;
    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->setSid(Ljava/lang/Long;)V

    .line 335
    return-object v0
.end method

.method private buildOneReminder(Landroid/database/Cursor;[Ljava/lang/Integer;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "indexes"    # [Ljava/lang/Integer;

    .prologue
    .line 340
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;-><init>()V

    .line 341
    .local v0, "oneReminder":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;
    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->set_id(Ljava/lang/Long;)V

    .line 342
    const/4 v1, 0x1

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->setEventId(Ljava/lang/Long;)V

    .line 343
    const/4 v1, 0x2

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->setMinute(Ljava/lang/Integer;)V

    .line 344
    const/4 v1, 0x3

    aget-object v1, p2, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->setMethod(Ljava/lang/Integer;)V

    .line 345
    return-object v0
.end method

.method private buildSyncAccountCalendarUri(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;
    .locals 3
    .param p1, "calendarUri"    # Landroid/net/Uri;
    .param p2, "account"    # Landroid/accounts/Account;

    .prologue
    .line 879
    .line 880
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 881
    const-string v1, "caller_is_syncadapter"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 882
    const-string v1, "account_name"

    iget-object v2, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 883
    const-string v1, "account_type"

    iget-object v2, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 884
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 879
    return-object v0
.end method

.method private calculateAttendeeIndex(Landroid/database/Cursor;Ljava/lang/Integer;)[Ljava/lang/Integer;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnCount"    # Ljava/lang/Integer;

    .prologue
    .line 268
    const/4 v0, 0x0

    .line 269
    .local v0, "indexes":[Ljava/lang/Integer;
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 270
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Integer;

    .line 271
    const/4 v1, 0x0

    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 272
    const/4 v1, 0x1

    const-string v2, "event_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 273
    const/4 v1, 0x2

    const-string v2, "attendeeName"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 274
    const/4 v1, 0x3

    const-string v2, "attendeeEmail"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 275
    const/4 v1, 0x4

    const-string v2, "attendeeStatus"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 276
    const/4 v1, 0x5

    const-string v2, "attendeeType"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 277
    const/4 v1, 0x6

    const-string v2, "attendeeRelationship"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 279
    :cond_0
    return-object v0
.end method

.method private calculateCalendarIndex(Landroid/database/Cursor;Ljava/lang/Integer;)[Ljava/lang/Integer;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnCount"    # Ljava/lang/Integer;

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "indexes":[Ljava/lang/Integer;
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 199
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Integer;

    .line 200
    const/4 v1, 0x0

    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 201
    const/4 v1, 0x1

    const-string v2, "name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 202
    const/4 v1, 0x2

    const-string v2, "calendar_displayName"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 203
    const/4 v1, 0x3

    const-string v2, "account_name"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 204
    const/4 v1, 0x4

    const-string v2, "account_type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 205
    const/4 v1, 0x5

    const-string v2, "calendar_color"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 206
    const/4 v1, 0x6

    const-string v2, "calendar_access_level"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 207
    const/4 v1, 0x7

    const-string v2, "ownerAccount"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 208
    const/16 v1, 0x8

    const-string v2, "visible"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 209
    const/16 v1, 0x9

    const-string v2, "maxReminders"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 210
    const/16 v1, 0xa

    const-string v2, "calendar_timezone"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 212
    :cond_0
    return-object v0
.end method

.method private calculateEventIndex(Landroid/database/Cursor;Ljava/lang/Integer;)[Ljava/lang/Integer;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnCount"    # Ljava/lang/Integer;

    .prologue
    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "indexes":[Ljava/lang/Integer;
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 218
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Integer;

    .line 219
    const/4 v1, 0x0

    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 220
    const/4 v1, 0x1

    const-string v2, "calendar_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 221
    const/4 v1, 0x2

    const-string v2, "title"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 222
    const/4 v1, 0x3

    const-string v2, "eventLocation"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 223
    const/4 v1, 0x4

    const-string v2, "description"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 224
    const/4 v1, 0x5

    const-string v2, "organizer"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 225
    const/4 v1, 0x6

    const-string v2, "eventColor"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 226
    const/4 v1, 0x7

    const-string v2, "dtstart"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 227
    const/16 v1, 0x8

    const-string v2, "dtend"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 228
    const/16 v1, 0x9

    const-string v2, "eventTimezone"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 229
    const/16 v1, 0xa

    const-string v2, "eventEndTimezone"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 230
    const/16 v1, 0xb

    const-string v2, "duration"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 231
    const/16 v1, 0xc

    const-string v2, "allDay"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 232
    const/16 v1, 0xd

    const-string v2, "rrule"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 233
    const/16 v1, 0xe

    const-string v2, "rdate"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 234
    const/16 v1, 0xf

    const-string v2, "exrule"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 235
    const/16 v1, 0x10

    const-string v2, "exdate"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 236
    const/16 v1, 0x11

    const-string v2, "original_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 237
    const/16 v1, 0x12

    const-string v2, "original_sync_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 238
    const/16 v1, 0x13

    const-string v2, "originalInstanceTime"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 239
    const/16 v1, 0x14

    const-string v2, "originalAllDay"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 240
    const/16 v1, 0x15

    const-string v2, "accessLevel"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 241
    const/16 v1, 0x16

    const-string v2, "availability"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 242
    const/16 v1, 0x17

    const-string v2, "guestsCanModify"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 243
    const/16 v1, 0x18

    const-string v2, "guestsCanInviteOthers"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 244
    const/16 v1, 0x19

    const-string v2, "guestsCanSeeGuests"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 245
    const/16 v1, 0x1a

    const-string v2, "eventStatus"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 250
    :cond_0
    return-object v0
.end method

.method private calculateReminderIndex(Landroid/database/Cursor;Ljava/lang/Integer;)[Ljava/lang/Integer;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "columnCount"    # Ljava/lang/Integer;

    .prologue
    .line 255
    const/4 v0, 0x0

    .line 256
    .local v0, "indexes":[Ljava/lang/Integer;
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 257
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-array v0, v1, [Ljava/lang/Integer;

    .line 258
    const/4 v1, 0x0

    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 259
    const/4 v1, 0x1

    const-string v2, "event_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 260
    const/4 v1, 0x2

    const-string v2, "minutes"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 261
    const/4 v1, 0x3

    const-string v2, "method"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 263
    :cond_0
    return-object v0
.end method

.method private checkCalendarField(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 838
    move-object v0, p1

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;

    .line 839
    .local v0, "calendar":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getAccountName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 840
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;

    const-string v2, "accountName is null!"

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 841
    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getAccountType()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 842
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;

    const-string v2, "AccountType is null"

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 843
    :cond_1
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 844
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;

    const-string v2, "Name is null"

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 845
    :cond_2
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 846
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;

    const-string v2, "displayname is null "

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 847
    :cond_3
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getCalendarColor()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_4

    .line 848
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;

    const-string v2, "calendarcolor is null"

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 849
    :cond_4
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getCalendarAccessLevel()Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_5

    .line 850
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;

    const-string v2, "calendarAccessLevel is null"

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 851
    :cond_5
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getOwnerAccount()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    .line 852
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;

    const-string v2, "ownerAccount is null"

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 854
    :cond_6
    return-void
.end method

.method private checkEventField(Ljava/lang/Object;)V
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 857
    move-object v0, p1

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;

    .line 858
    .local v0, "event":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getDtStart()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_0

    .line 859
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;

    const-string v2, "dtstart is null"

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 860
    :cond_0
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getEventTimezone()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 861
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;

    const-string v2, "eventTimeZone is null"

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 862
    :cond_1
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getCalendarId()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_2

    .line 863
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;

    const-string v2, "calendarId is null"

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 865
    :cond_2
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getrRule()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 866
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getDtEnd()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_4

    .line 867
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;

    const-string v2, "dtend is null"

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 870
    :cond_3
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getDuration()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 871
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;

    const-string v2, "duration is null"

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/FieldNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 876
    :cond_4
    return-void
.end method

.method private checkField(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 830
    instance-of v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;

    if-eqz v0, :cond_1

    .line 831
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->checkCalendarField(Ljava/lang/Object;)V

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 832
    :cond_1
    instance-of v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;

    if-eqz v0, :cond_0

    .line 833
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->checkEventField(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 919
    if-eqz p1, :cond_0

    .line 920
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    const/4 p1, 0x0

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 923
    :catch_0
    move-exception v0

    .line 924
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CalendarDaoImpl"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createAttendeeContentValues(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "attendee"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;

    .prologue
    .line 654
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 655
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->getAttendeeName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 656
    const-string v1, "attendeeName"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->getAttendeeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 659
    const-string v1, "attendeeEmail"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->getAttendeeStatus()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 662
    const-string v1, "attendeeStatus"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->getAttendeeStatus()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 664
    :cond_2
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->getAttendeeType()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 665
    const-string v1, "attendeeType"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->getAttendeeType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 667
    :cond_3
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->getAttendeeRelationship()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 668
    const-string v1, "attendeeRelationship"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->getAttendeeRelationship()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 670
    :cond_4
    return-object v0
.end method

.method private createAttendeeContentValues(Ljava/lang/Long;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;)Landroid/content/ContentValues;
    .locals 2
    .param p1, "eventId"    # Ljava/lang/Long;
    .param p2, "attendee"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;

    .prologue
    .line 648
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->createAttendeeContentValues(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;)Landroid/content/ContentValues;

    move-result-object v0

    .line 649
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 650
    return-object v0
.end method

.method private createCalendarContentValues(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "calendar"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;

    .prologue
    .line 412
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 413
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 414
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 417
    const-string v1, "calendar_displayName"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getAccountName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 420
    const-string v1, "account_name"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_2
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getAccountType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 423
    const-string v1, "account_type"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_3
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getCalendarColor()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 426
    const-string v1, "calendar_color"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getCalendarColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 428
    :cond_4
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getCalendarAccessLevel()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 429
    const-string v1, "calendar_access_level"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getCalendarAccessLevel()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 431
    :cond_5
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getOwnerAccount()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 432
    const-string v1, "ownerAccount"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getOwnerAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_6
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getVisible()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 435
    const-string v1, "visible"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getVisible()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    :cond_7
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getMaxReminder()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 438
    const-string v1, "maxReminders"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getMaxReminder()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 440
    :cond_8
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getCalendarTimezone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 441
    const-string v1, "calendar_timezone"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getCalendarTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    :cond_9
    return-object v0
.end method

.method private createEventContentValues(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "event"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;

    .prologue
    .line 499
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 501
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getCalendarId()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 502
    const-string v1, "calendar_id"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getCalendarId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 504
    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 505
    const-string v1, "title"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :cond_1
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getEventLocation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 508
    const-string v1, "eventLocation"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getEventLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_2
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 511
    const-string v1, "description"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_3
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getOrganizer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 514
    const-string v1, "organizer"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getOrganizer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_4
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getEventColor()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 517
    const-string v1, "eventColor"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getEventColor()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 519
    :cond_5
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getDtStart()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 520
    const-string v1, "dtstart"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getDtStart()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 522
    :cond_6
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getDtEnd()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 523
    const-string v1, "dtend"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getDtEnd()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 525
    :cond_7
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getEventTimezone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 526
    const-string v1, "eventTimezone"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getEventTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    :cond_8
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getEventEndTimezone()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 529
    const-string v1, "eventEndTimezone"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getEventEndTimezone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :cond_9
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getDuration()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 532
    const-string v1, "duration"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getDuration()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_a
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getAllDay()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 535
    const-string v1, "allDay"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getAllDay()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 537
    :cond_b
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getrRule()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 538
    const-string v1, "rrule"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getrRule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_c
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getrDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 541
    const-string v1, "rdate"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getrDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :cond_d
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getExRule()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 544
    const-string v1, "exrule"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getExRule()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :cond_e
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getExDate()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 547
    const-string v1, "exdate"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getExDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_f
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getOriginalId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 550
    const-string v1, "original_id"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getOriginalId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_10
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getOriginalSyncId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 553
    const-string v1, "original_sync_id"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getOriginalSyncId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_11
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getOriginalInstanceTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 556
    const-string v1, "originalInstanceTime"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getOriginalInstanceTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    :cond_12
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getOriginalAllDay()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 559
    const-string v1, "originalAllDay"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getOriginalAllDay()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 561
    :cond_13
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getAccessLevel()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 562
    const-string v1, "accessLevel"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getAccessLevel()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    :cond_14
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getAvailability()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_15

    .line 565
    const-string v1, "availability"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getAvailability()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 567
    :cond_15
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getGuestsCanModify()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 568
    const-string v1, "guestsCanModify"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getGuestsCanModify()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 570
    :cond_16
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getGuestsCanInviteOthers()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 571
    const-string v1, "guestsCanInviteOthers"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getGuestsCanInviteOthers()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 573
    :cond_17
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getGuestsCanSeeGuests()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 575
    const-string v1, "guestsCanSeeGuests"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getGuestsCanSeeGuests()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 577
    :cond_18
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getEventStatus()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 578
    const-string v1, "eventStatus"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getEventStatus()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 581
    :cond_19
    return-object v0
.end method

.method private createReminderContentValues(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;)Landroid/content/ContentValues;
    .locals 3
    .param p1, "reminder"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;

    .prologue
    .line 622
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 623
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->getMinute()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 624
    const-string v1, "minutes"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->getMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 626
    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->getMethod()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 627
    const-string v1, "method"

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->getMethod()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 629
    :cond_1
    return-object v0
.end method

.method private createReminderContentValues(Ljava/lang/Long;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;)Landroid/content/ContentValues;
    .locals 2
    .param p1, "eventId"    # Ljava/lang/Long;
    .param p2, "reminder"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;

    .prologue
    .line 616
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->createReminderContentValues(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;)Landroid/content/ContentValues;

    move-result-object v0

    .line 617
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "event_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 618
    return-object v0
.end method

.method private getNewCalendarIdFormCursor(Landroid/net/Uri;)Ljava/lang/Long;
    .locals 8
    .param p1, "newCalendarUri"    # Landroid/net/Uri;

    .prologue
    .line 447
    const/4 v6, 0x0

    .line 449
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->cr:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 450
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 456
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->closeCursor(Landroid/database/Cursor;)V

    .line 458
    :goto_0
    return-object v0

    .line 453
    :catch_0
    move-exception v7

    .line 454
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CalendarDaoImpl"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->closeCursor(Landroid/database/Cursor;)V

    .line 458
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 455
    :catchall_0
    move-exception v0

    .line 456
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->closeCursor(Landroid/database/Cursor;)V

    .line 457
    throw v0

    .line 456
    :cond_0
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method private getNewEventIdFromCursor(Landroid/net/Uri;)Ljava/lang/Long;
    .locals 8
    .param p1, "newEventUri"    # Landroid/net/Uri;

    .prologue
    .line 586
    const/4 v6, 0x0

    .line 588
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->cr:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 589
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 595
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->closeCursor(Landroid/database/Cursor;)V

    .line 597
    :goto_0
    return-object v0

    .line 592
    :catch_0
    move-exception v7

    .line 593
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CalendarDaoImpl"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->closeCursor(Landroid/database/Cursor;)V

    .line 597
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    .line 594
    :catchall_0
    move-exception v0

    .line 595
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->closeCursor(Landroid/database/Cursor;)V

    .line 596
    throw v0

    .line 595
    :cond_0
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method private insertAttend(Ljava/lang/Long;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;)V
    .locals 4
    .param p1, "eventId"    # Ljava/lang/Long;
    .param p2, "attendee"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;

    .prologue
    .line 641
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->attendeeUri:Landroid/net/Uri;

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->createAttendeeContentValues(Ljava/lang/Long;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    :goto_0
    return-void

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CalendarDaoImpl"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private insertAttendees(Ljava/lang/Long;Ljava/util/List;)V
    .locals 3
    .param p1, "eventId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 634
    .local p2, "attendees":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 637
    return-void

    .line 634
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;

    .line 635
    .local v0, "attendee":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;
    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->insertAttend(Ljava/lang/Long;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;)V

    goto :goto_0
.end method

.method private insertReminder(Ljava/lang/Long;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;)V
    .locals 4
    .param p1, "eventId"    # Ljava/lang/Long;
    .param p2, "reminder"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;

    .prologue
    .line 609
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->cr:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->reminderUri:Landroid/net/Uri;

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->createReminderContentValues(Ljava/lang/Long;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :goto_0
    return-void

    .line 610
    :catch_0
    move-exception v0

    .line 611
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CalendarDaoImpl"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private insertReminders(Ljava/lang/Long;Ljava/util/List;)V
    .locals 3
    .param p1, "eventId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 602
    .local p2, "reminders":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 605
    return-void

    .line 602
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;

    .line 603
    .local v0, "reminder":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;
    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->insertReminder(Ljava/lang/Long;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;)V

    goto :goto_0
.end method

.method private parseAttendeesFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->calculateAttendeeIndex(Landroid/database/Cursor;Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object v1

    .line 188
    .local v1, "indexes":[Ljava/lang/Integer;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 189
    .local v0, "attendees":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;>;"
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 192
    :cond_0
    return-object v0

    .line 190
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->buildOneAttendee(Landroid/database/Cursor;[Ljava/lang/Integer;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private parseCalendarFromCursor(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 692
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 693
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->calculateCalendarIndex(Landroid/database/Cursor;Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object v0

    .line 694
    .local v0, "indexes":[Ljava/lang/Integer;
    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->buildOneCalendar(Landroid/database/Cursor;[Ljava/lang/Integer;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;

    move-result-object v1

    .line 696
    .end local v0    # "indexes":[Ljava/lang/Integer;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseCalendarsFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, "calendars":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;>;"
    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->calculateCalendarIndex(Landroid/database/Cursor;Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object v1

    .line 162
    .local v1, "indexes":[Ljava/lang/Integer;
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 165
    :cond_0
    return-object v0

    .line 163
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->buildOneCalendar(Landroid/database/Cursor;[Ljava/lang/Integer;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private parseEventFromCursor(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 718
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->calculateEventIndex(Landroid/database/Cursor;Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object v0

    .line 720
    .local v0, "indexes":[Ljava/lang/Integer;
    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->buildOneEvent(Landroid/database/Cursor;[Ljava/lang/Integer;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;

    move-result-object v1

    .line 722
    .end local v0    # "indexes":[Ljava/lang/Integer;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseEventsFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 170
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;>;"
    const/16 v2, 0x1b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->calculateEventIndex(Landroid/database/Cursor;Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object v1

    .line 171
    .local v1, "indexes":[Ljava/lang/Integer;
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 174
    :cond_0
    return-object v0

    .line 172
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->buildOneEvent(Landroid/database/Cursor;[Ljava/lang/Integer;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private parseRemindersFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->calculateReminderIndex(Landroid/database/Cursor;Ljava/lang/Integer;)[Ljava/lang/Integer;

    move-result-object v0

    .line 179
    .local v0, "indexes":[Ljava/lang/Integer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v1, "reminders":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;>;"
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 183
    :cond_0
    return-object v1

    .line 181
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->buildOneReminder(Landroid/database/Cursor;[Ljava/lang/Integer;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private queryAttendeesByEventId(Ljava/lang/Long;)Ljava/util/List;
    .locals 7
    .param p1, "eventId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 145
    .local v0, "attendees":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;>;"
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->cr:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/provider/CalendarContract$Attendees;->query(Landroid/content/ContentResolver;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 146
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->parseAttendeesFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 150
    if-eqz v1, :cond_0

    .line 151
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 154
    :cond_0
    :goto_0
    return-object v0

    .line 147
    :catch_0
    move-exception v2

    .line 148
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "CalendarDaoImpl"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    if-eqz v1, :cond_0

    .line 151
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 149
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 150
    if-eqz v1, :cond_1

    .line 151
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_1
    throw v3
.end method

.method private queryRemindersByEventId(Ljava/lang/Long;)Ljava/util/List;
    .locals 7
    .param p1, "eventId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 129
    .local v2, "reminders":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;>;"
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->cr:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/provider/CalendarContract$Reminders;->query(Landroid/content/ContentResolver;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 130
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->parseRemindersFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_0
    :goto_0
    return-object v2

    .line 131
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v3, "CalendarDaoImpl"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 133
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 134
    if-eqz v0, :cond_1

    .line 135
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 137
    :cond_1
    throw v3
.end method

.method private updateAttendee(Ljava/lang/Long;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;)V
    .locals 6
    .param p1, "evetId"    # Ljava/lang/Long;
    .param p2, "attendee"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;

    .prologue
    .line 818
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->createAttendeeContentValues(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;)Landroid/content/ContentValues;

    move-result-object v2

    .line 819
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "event_id = ?"

    .line 820
    .local v3, "where":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 822
    .local v1, "selectionArgs":[Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->cr:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->attendeeUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :goto_0
    return-void

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CalendarDaoImpl"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateAttendees(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;)V
    .locals 4
    .param p1, "event"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;

    .prologue
    .line 811
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->get_id()Ljava/lang/Long;

    move-result-object v1

    .line 812
    .local v1, "eventId":Ljava/lang/Long;
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getAttendees()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 815
    return-void

    .line 812
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;

    .line 813
    .local v0, "attendee":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;
    invoke-direct {p0, v1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->updateAttendee(Ljava/lang/Long;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;)V

    goto :goto_0
.end method

.method private updateReminders(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;)V
    .locals 4
    .param p1, "event"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;

    .prologue
    .line 792
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->get_id()Ljava/lang/Long;

    move-result-object v0

    .line 794
    .local v0, "eventId":Ljava/lang/Long;
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getReminders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 797
    return-void

    .line 794
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;

    .line 795
    .local v1, "reminder":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;
    invoke-virtual {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->updateReminder(Ljava/lang/Long;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;)V

    goto :goto_0
.end method


# virtual methods
.method public checkBuildVersion()I
    .locals 1

    .prologue
    .line 912
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method public deleteCalendarById(Ljava/lang/Long;)V
    .locals 5
    .param p1, "_id"    # Ljava/lang/Long;

    .prologue
    .line 727
    const-string v2, "_id = ?"

    .line 728
    .local v2, "where":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 730
    .local v1, "selectionArgs":[Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->cr:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->calendarUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    :goto_0
    return-void

    .line 731
    :catch_0
    move-exception v0

    .line 732
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "CalendarDaoImpl"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deleteEventById(Ljava/lang/Long;)V
    .locals 5
    .param p1, "_id"    # Ljava/lang/Long;

    .prologue
    .line 740
    const/4 v0, 0x0

    .line 741
    .local v0, "deleteUri":Landroid/net/Uri;
    :try_start_0
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 742
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->cr:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    :goto_0
    return-void

    .line 743
    :catch_0
    move-exception v1

    .line 744
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CalendarDaoImpl"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getAccount()Landroid/accounts/Account;
    .locals 3

    .prologue
    .line 901
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 902
    .local v1, "manager":Landroid/accounts/AccountManager;
    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 903
    .local v0, "accounts":[Landroid/accounts/Account;
    array-length v2, v0

    if-lez v2, :cond_0

    .line 904
    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 906
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getEventCount()I
    .locals 8

    .prologue
    .line 930
    const/4 v6, 0x0

    .line 932
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->eventUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 933
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 937
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->closeCursor(Landroid/database/Cursor;)V

    .line 939
    :goto_0
    return v0

    .line 934
    :catch_0
    move-exception v7

    .line 935
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CalendarDaoImpl"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 937
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->closeCursor(Landroid/database/Cursor;)V

    .line 939
    const/4 v0, 0x0

    goto :goto_0

    .line 936
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 937
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->closeCursor(Landroid/database/Cursor;)V

    .line 938
    throw v0
.end method

.method public insertCalendar(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;)Ljava/lang/Long;
    .locals 6
    .param p1, "calendar"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 375
    const/4 v1, 0x0

    .line 376
    .local v1, "calUri":Landroid/net/Uri;
    const/4 v3, 0x0

    .line 379
    .local v3, "newCalendarUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->checkBuildVersion()I

    move-result v4

    const/16 v5, 0x10

    if-lt v4, v5, :cond_0

    .line 381
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->calendarUri:Landroid/net/Uri;

    invoke-direct {p0, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->buildLocalCalendarUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 382
    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->setAccountName(Ljava/lang/String;)V

    .line 383
    const-string v4, "LOCAL"

    invoke-virtual {p1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->setAccountType(Ljava/lang/String;)V

    .line 384
    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->setOwnerAccount(Ljava/lang/String;)V

    .line 398
    :goto_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->setName(Ljava/lang/String;)V

    .line 399
    const v4, -0x777778

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->setCalendarColor(Ljava/lang/Integer;)V

    .line 400
    const/16 v4, 0x2bc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->setCalendarAccessLevel(Ljava/lang/Integer;)V

    .line 402
    :try_start_0
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->checkField(Ljava/lang/Object;)V

    .line 403
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->cr:Landroid/content/ContentResolver;

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->createCalendarContentValues(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 407
    :goto_1
    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->getNewCalendarIdFormCursor(Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object v4

    return-object v4

    .line 386
    :cond_0
    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 387
    .local v0, "account":Landroid/accounts/Account;
    if-eqz v0, :cond_1

    .line 389
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->calendarUri:Landroid/net/Uri;

    invoke-direct {p0, v4, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->buildSyncAccountCalendarUri(Landroid/net/Uri;Landroid/accounts/Account;)Landroid/net/Uri;

    move-result-object v1

    .line 390
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->setAccountName(Ljava/lang/String;)V

    .line 391
    iget-object v4, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->setAccountType(Ljava/lang/String;)V

    .line 392
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->setOwnerAccount(Ljava/lang/String;)V

    goto :goto_0

    .line 394
    :cond_1
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/SyncAccountNotFoundException;

    const-string v5, "\u672a\u8bbe\u7f6e\u540c\u6b65\u8d26\u53f7"

    invoke-direct {v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/exception/SyncAccountNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 404
    .end local v0    # "account":Landroid/accounts/Account;
    :catch_0
    move-exception v2

    .line 405
    .local v2, "e":Ljava/lang/Exception;
    const-string v4, "CalendarDaoImpl"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public insertEvent(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;)Ljava/lang/Long;
    .locals 8
    .param p1, "event"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 473
    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 474
    .local v2, "newEventId":Ljava/lang/Long;
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->checkField(Ljava/lang/Object;)V

    .line 476
    :try_start_0
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->cr:Landroid/content/ContentResolver;

    iget-object v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->eventUri:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->createEventContentValues(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;)Landroid/content/ContentValues;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 477
    .local v3, "newEventUri":Landroid/net/Uri;
    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->getNewEventIdFromCursor(Landroid/net/Uri;)Ljava/lang/Long;

    move-result-object v2

    .line 479
    invoke-virtual {p1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->set_id(Ljava/lang/Long;)V

    .line 481
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getReminders()Ljava/util/List;

    move-result-object v4

    .line 482
    .local v4, "reminders":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;>;"
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getAttendees()Ljava/util/List;

    move-result-object v0

    .line 484
    .local v0, "attendees":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 485
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getReminders()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->insertReminders(Ljava/lang/Long;Ljava/util/List;)V

    .line 487
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 488
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getAttendees()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->insertAttendees(Ljava/lang/Long;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .end local v0    # "attendees":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;>;"
    .end local v3    # "newEventUri":Landroid/net/Uri;
    .end local v4    # "reminders":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;>;"
    :cond_1
    :goto_0
    return-object v2

    .line 490
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "CalendarDaoImpl"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public insertEvents(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 463
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 466
    return-void

    .line 463
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;

    .line 464
    .local v0, "event":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    invoke-virtual {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->insertEvent(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;)Ljava/lang/Long;

    goto :goto_0
.end method

.method public queryCalendarById(Ljava/lang/Long;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;
    .locals 9
    .param p1, "_id"    # Ljava/lang/Long;

    .prologue
    .line 676
    const-string v3, "_id = ?"

    .line 677
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 678
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 679
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 681
    .local v6, "calendar":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->calendarUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 682
    invoke-direct {p0, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->parseCalendarFromCursor(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 686
    invoke-direct {p0, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->closeCursor(Landroid/database/Cursor;)V

    .line 688
    :goto_0
    return-object v6

    .line 683
    :catch_0
    move-exception v8

    .line 684
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CalendarDaoImpl"

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    invoke-direct {p0, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 685
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 686
    invoke-direct {p0, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->closeCursor(Landroid/database/Cursor;)V

    .line 687
    throw v0
.end method

.method public queryCalendars()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    const/4 v8, 0x0

    .line 66
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 68
    .local v7, "calendars":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;>;"
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->calendarUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 69
    invoke-direct {p0, v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->parseCalendarsFromCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v7

    .line 72
    const-string v0, "lesync_local_name"

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->ACCOUNT_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 74
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 84
    :cond_1
    if-eqz v8, :cond_2

    .line 85
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 88
    :cond_2
    :goto_1
    return-object v7

    .line 74
    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;

    .line 75
    .local v6, "calendar":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;
    const-string v1, "LOCAL"

    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getAccountType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-virtual {v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->getAccountName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->ACCOUNT_NAME:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 81
    .end local v6    # "calendar":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;
    :catch_0
    move-exception v9

    .line 82
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v0, "CalendarDaoImpl"

    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    if-eqz v8, :cond_2

    .line 85
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 83
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 84
    if-eqz v8, :cond_4

    .line 85
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_4
    throw v0
.end method

.method public queryEventById(Ljava/lang/Long;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    .locals 9
    .param p1, "_id"    # Ljava/lang/Long;

    .prologue
    .line 701
    const-string v3, "_id = ?"

    .line 702
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 703
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 704
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 706
    .local v8, "event":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->eventUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 707
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->parseEventFromCursor(Landroid/database/Cursor;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 711
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->closeCursor(Landroid/database/Cursor;)V

    .line 713
    :goto_0
    return-object v8

    .line 708
    :catch_0
    move-exception v7

    .line 709
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CalendarDaoImpl"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 711
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 710
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 711
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->closeCursor(Landroid/database/Cursor;)V

    .line 712
    throw v0
.end method

.method public queryEvents()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    const/4 v6, 0x0

    .line 94
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 96
    .local v8, "events":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;>;"
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->eventUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 97
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->parseEventsFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 101
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->closeCursor(Landroid/database/Cursor;)V

    .line 103
    :goto_0
    return-object v8

    .line 98
    :catch_0
    move-exception v7

    .line 99
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CalendarDaoImpl"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->closeCursor(Landroid/database/Cursor;)V

    goto :goto_0

    .line 100
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 101
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->closeCursor(Landroid/database/Cursor;)V

    .line 102
    throw v0
.end method

.method public queryEventsByCalendarId(Ljava/lang/Long;)Ljava/util/List;
    .locals 9
    .param p1, "calendarId"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    const-string v3, "calendar_id = ?"

    .line 109
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 110
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 111
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 113
    .local v8, "events":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;>;"
    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->eventUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 114
    invoke-direct {p0, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->parseEventsFromCursor(Landroid/database/Cursor;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 118
    if-eqz v6, :cond_0

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 122
    :cond_0
    :goto_0
    return-object v8

    .line 115
    :catch_0
    move-exception v7

    .line 116
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CalendarDaoImpl"

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 118
    if-eqz v6, :cond_0

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 117
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 118
    if-eqz v6, :cond_1

    .line 119
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_1
    throw v0
.end method

.method public updateCalendar(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;)Ljava/lang/Long;
    .locals 8
    .param p1, "calendar"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;

    .prologue
    .line 751
    const/4 v3, 0x0

    .line 752
    .local v3, "updateUri":Landroid/net/Uri;
    const-wide/16 v0, 0x0

    .line 753
    .local v0, "calendarId":J
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->createCalendarContentValues(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;)Landroid/content/ContentValues;

    move-result-object v4

    .line 755
    .local v4, "values":Landroid/content/ContentValues;
    :try_start_0
    sget-object v5, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;->get_id()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 756
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->cr:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    int-to-long v0, v5

    .line 760
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    return-object v5

    .line 757
    :catch_0
    move-exception v2

    .line 758
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "CalendarDaoImpl"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateEvent(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;)Ljava/lang/Long;
    .locals 10
    .param p1, "event"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 767
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->checkField(Ljava/lang/Object;)V

    .line 769
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->createEventContentValues(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;)Landroid/content/ContentValues;

    move-result-object v6

    .line 770
    .local v6, "values":Landroid/content/ContentValues;
    const-wide/16 v2, 0x0

    .line 772
    .local v2, "eventId":J
    :try_start_0
    sget-object v7, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->get_id()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 773
    .local v5, "updateUri":Landroid/net/Uri;
    iget-object v7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->cr:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    int-to-long v2, v7

    .line 775
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getReminders()Ljava/util/List;

    move-result-object v4

    .line 776
    .local v4, "reminders":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;>;"
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getAttendees()Ljava/util/List;

    move-result-object v0

    .line 777
    .local v0, "attendees":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 778
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->updateReminders(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;)V

    .line 780
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 781
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->updateAttendees(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    .end local v0    # "attendees":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;>;"
    .end local v4    # "reminders":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;>;"
    .end local v5    # "updateUri":Landroid/net/Uri;
    :cond_1
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    return-object v7

    .line 783
    :catch_0
    move-exception v1

    .line 784
    .local v1, "e":Ljava/lang/Exception;
    const-string v7, "CalendarDaoImpl"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateReminder(Ljava/lang/Long;Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;)V
    .locals 6
    .param p1, "eventId"    # Ljava/lang/Long;
    .param p2, "reminder"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;

    .prologue
    .line 800
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->createReminderContentValues(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;)Landroid/content/ContentValues;

    move-result-object v2

    .line 801
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "event_id = ?"

    .line 802
    .local v3, "where":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 804
    .local v1, "selectionArgs":[Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->cr:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->reminderUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2, v3, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 808
    :goto_0
    return-void

    .line 805
    :catch_0
    move-exception v0

    .line 806
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CalendarDaoImpl"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
