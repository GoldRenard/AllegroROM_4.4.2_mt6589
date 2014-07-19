.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;
.super Ljava/lang/Object;
.source "TaskCache.java"


# static fields
.field private static calendarSid2cid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static eventSid2cid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;->calendarSid2cid:Ljava/util/Map;

    .line 8
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;->eventSid2cid:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;->calendarSid2cid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 31
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;->eventSid2cid:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 32
    return-void
.end method

.method public static getCalendarCid(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1
    .param p0, "sid"    # Ljava/lang/Long;

    .prologue
    .line 18
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;->calendarSid2cid:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static getEventCid(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1
    .param p0, "sid"    # Ljava/lang/Long;

    .prologue
    .line 26
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;->eventSid2cid:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static putCalendarCid(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1
    .param p0, "sid"    # Ljava/lang/Long;
    .param p1, "cid"    # Ljava/lang/Long;

    .prologue
    .line 14
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;->calendarSid2cid:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public static putEventCid(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1
    .param p0, "sid"    # Ljava/lang/Long;
    .param p1, "cid"    # Ljava/lang/Long;

    .prologue
    .line 22
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cache/TaskCache;->eventSid2cid:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method
