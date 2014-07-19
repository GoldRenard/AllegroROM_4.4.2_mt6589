.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDao;
.super Ljava/lang/Object;
.source "CalendarDao.java"


# virtual methods
.method public abstract checkBuildVersion()I
.end method

.method public abstract deleteCalendarById(Ljava/lang/Long;)V
.end method

.method public abstract deleteEventById(Ljava/lang/Long;)V
.end method

.method public abstract getEventCount()I
.end method

.method public abstract insertCalendar(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;)Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract insertEvent(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;)Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract insertEvents(Ljava/util/List;)V
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
.end method

.method public abstract queryCalendarById(Ljava/lang/Long;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;
.end method

.method public abstract queryCalendars()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryEventById(Ljava/lang/Long;)Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;
.end method

.method public abstract queryEvents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryEventsByCalendarId(Ljava/lang/Long;)Ljava/util/List;
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
.end method

.method public abstract updateCalendar(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Calendar;)Ljava/lang/Long;
.end method

.method public abstract updateEvent(Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/vo/Event;)Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
