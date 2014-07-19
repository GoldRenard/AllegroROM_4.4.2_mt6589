.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventChecksumBuilder;
.super Ljava/lang/Object;
.source "MainEventChecksumBuilder.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/ChecksumBuilder;


# instance fields
.field private context:Landroid/content/Context;

.field private cur:I

.field private currentUser:Ljava/lang/String;

.field private dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;

.field private superTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

.field private total:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "superTask"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventChecksumBuilder;->context:Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventChecksumBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventChecksumBuilder;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;

    .line 37
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventChecksumBuilder;->superTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    .line 38
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getUserName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventChecksumBuilder;->currentUser:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private buildEventChecksumCode(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;)Ljava/lang/String;
    .locals 7
    .param p1, "event"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;

    .prologue
    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .local v4, "strb":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "title:"

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getTitle()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, ""

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "location:"

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getEventLocation()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const-string v5, ""

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "desc:"

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getDescription()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v5, ""

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "start:"

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getDtStart()Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_5

    const-string v5, ""

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "end:"

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getDtEnd()Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_6

    const-string v5, ""

    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v5, "rrul:"

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getrRule()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    const-string v5, ""

    :goto_5
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "calendar:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getCalendarId()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getAttendees()Ljava/util/List;

    move-result-object v0

    .line 86
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;>;"
    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventChecksumBuilder;->getAttendCheckSumString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getReminders()Ljava/util/List;

    move-result-object v3

    .line 91
    .local v3, "reminders":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;>;"
    if-eqz v3, :cond_1

    .line 92
    invoke-direct {p0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventChecksumBuilder;->getAlertCheckSumString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 100
    .local v1, "bytes":[B
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ChecksumUtil;->adler32([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ChecksumUtil;->crc32([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 76
    .end local v0    # "array":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;>;"
    .end local v1    # "bytes":[B
    .end local v3    # "reminders":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getTitle()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 77
    :cond_3
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getEventLocation()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 78
    :cond_4
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getDescription()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 79
    :cond_5
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getDtStart()Ljava/lang/Long;

    move-result-object v5

    goto/16 :goto_3

    .line 80
    :cond_6
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getDtEnd()Ljava/lang/Long;

    move-result-object v5

    goto/16 :goto_4

    .line 81
    :cond_7
    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getrRule()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5

    .line 97
    .restart local v0    # "array":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;>;"
    .restart local v3    # "reminders":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;>;"
    :catch_0
    move-exception v2

    .line 98
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .restart local v1    # "bytes":[B
    goto :goto_6
.end method

.method private getAlertCheckSumString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "array":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 124
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "alert:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 119
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;

    .line 120
    .local v1, "reminder":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "min:"

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->getMinute()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 121
    const-string v5, "mth:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->getMethod()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "s":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->getMinute()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Reminder;->getMethod()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_2
.end method

.method private getAttendCheckSumString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "array":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 113
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "attend:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 105
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;

    .line 106
    .local v0, "attendee":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v3, "n:"

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->getAttendeeName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 107
    const-string v5, "e:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 108
    const-string v5, "s:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->getAttendeeStatus()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, ""

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 109
    const-string v5, "r:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->getAttendeeRelationship()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, ""

    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 110
    const-string v5, "t:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->getAttendeeType()Ljava/lang/Integer;

    move-result-object v3

    if-nez v3, :cond_5

    const-string v3, ""

    :goto_5
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "s":Ljava/lang/String;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 106
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->getAttendeeName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->getAttendeeEmail()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 108
    :cond_3
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->getAttendeeStatus()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    .line 109
    :cond_4
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->getAttendeeRelationship()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4

    .line 110
    :cond_5
    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Attendee;->getAttendeeType()Ljava/lang/Integer;

    move-result-object v3

    goto :goto_5
.end method


# virtual methods
.method public buildChecksumRequest(Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumRequest;
    .locals 9
    .param p1, "stepProgressListener"    # Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumRequest;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumRequest;-><init>()V

    .line 46
    .local v0, "checksum":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumRequest;
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventChecksumBuilder;->dao:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;

    invoke-interface {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;->queryEvents()Ljava/util/List;

    move-result-object v3

    .line 47
    .local v3, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 48
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    iput v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventChecksumBuilder;->total:I

    .line 49
    const/4 v4, 0x0

    iput v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventChecksumBuilder;->cur:I

    .line 50
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 71
    :cond_1
    return-object v0

    .line 50
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;

    .line 51
    .local v1, "event":Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
    iget v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventChecksumBuilder;->cur:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventChecksumBuilder;->cur:I

    iget v6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventChecksumBuilder;->total:I

    const/4 v7, 0x0

    invoke-interface {p1, v5, v6, v7}, Lcom/lenovo/leos/cloud/lcp/common/StepProgressListener;->onStepProgress(IILandroid/os/Bundle;)Z

    .line 53
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getOriginalId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 57
    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventChecksumBuilder;->superTask:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-interface {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 61
    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/helper/impl/MainEventChecksumBuilder;->buildEventChecksumCode(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "eventChecksumCode":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->get_id()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getSid()Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/protocol/EventChecksumRequest;->addMainEventChecksum(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getSid()Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getSid()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_0

    .line 66
    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->getSid()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;->get_id()Ljava/lang/Long;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;->putEventCid(Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0
.end method
