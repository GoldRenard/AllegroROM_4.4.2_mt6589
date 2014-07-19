.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;
.super Ljava/lang/Object;
.source "PrivateDBHelper.java"


# static fields
.field private static db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase; = null

.field private static final persisitFileName:Ljava/lang/String; = "calendarDatabase.obj"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method private static checkInit(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;

    .prologue
    .line 105
    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;

    monitor-enter v1

    .line 106
    :try_start_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    if-nez v0, :cond_0

    .line 107
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    :cond_0
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->currentUser:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->currentUser:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 111
    :cond_1
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    .line 105
    :cond_2
    monitor-exit v1

    .line 114
    return-void

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static clearData(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    const-class v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;

    monitor-enter v1

    .line 151
    :try_start_0
    const-string v0, "calendarDatabase.obj"

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    const/4 v0, 0x0

    :try_start_1
    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    .line 149
    monitor-exit v1

    .line 156
    return-void

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    const/4 v2, 0x0

    sput-object v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    .line 154
    throw v0

    .line 149
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public static delCalendarSID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/Long;

    .prologue
    .line 44
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tCalendar:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public static delEventSID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/Long;

    .prologue
    .line 83
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tEvent:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method public static getCalendarCID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/Long;

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object v3, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tCalendar:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 53
    .local v0, "dataSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 54
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 60
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 55
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 56
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    goto :goto_0
.end method

.method public static getCalendarData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tCalendar:Ljava/util/Map;

    return-object v0
.end method

.method public static getCalendarSID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/Long;

    .prologue
    .line 38
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 40
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tCalendar:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method public static getEventCID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;
    .param p2, "sid"    # Ljava/lang/Long;

    .prologue
    .line 89
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 91
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object v3, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tEvent:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 92
    .local v0, "dataSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 93
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 99
    const/4 v3, 0x0

    :goto_0
    return-object v3

    .line 94
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 95
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    goto :goto_0
.end method

.method public static getEventData(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 67
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tEvent:Ljava/util/Map;

    return-object v0
.end method

.method public static getEventSID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/Long;

    .prologue
    .line 77
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tEvent:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    return-object v0
.end method

.method private static init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 117
    const/4 v3, 0x0

    .line 118
    .local v3, "pfis":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 120
    .local v1, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    const-string v4, "calendarDatabase.obj"

    invoke-virtual {p0, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    .line 121
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .local v2, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    sput-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 125
    new-array v4, v7, [Ljava/io/Closeable;

    .line 126
    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v4, v7, [Ljava/io/Closeable;

    .line 127
    aput-object v2, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    move-object v1, v2

    .line 129
    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    invoke-direct {v4, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 125
    new-array v4, v7, [Ljava/io/Closeable;

    .line 126
    aput-object v3, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v4, v7, [Ljava/io/Closeable;

    .line 127
    aput-object v1, v4, v6

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :goto_2
    new-array v5, v7, [Ljava/io/Closeable;

    .line 126
    aput-object v3, v5, v6

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v5, v7, [Ljava/io/Closeable;

    .line 127
    aput-object v1, v5, v6

    invoke-static {v5}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 128
    throw v4

    .line 125
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 123
    .end local v1    # "ois":Ljava/io/ObjectInputStream;
    .restart local v2    # "ois":Ljava/io/ObjectInputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "ois":Ljava/io/ObjectInputStream;
    .restart local v1    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method

.method public static persist(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 132
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    if-nez v3, :cond_0

    .line 146
    :goto_0
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x0

    .line 137
    .local v0, "ois":Ljava/io/ObjectOutputStream;
    const/4 v2, 0x0

    .line 139
    .local v2, "pfis":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v3, "calendarDatabase.obj"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 140
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    .end local v0    # "ois":Ljava/io/ObjectOutputStream;
    .local v1, "ois":Ljava/io/ObjectOutputStream;
    :try_start_1
    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 142
    new-array v3, v6, [Ljava/io/Closeable;

    .line 143
    aput-object v1, v3, v5

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v3, v6, [Ljava/io/Closeable;

    .line 144
    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_0

    .line 142
    .end local v1    # "ois":Ljava/io/ObjectOutputStream;
    .restart local v0    # "ois":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception v3

    :goto_1
    new-array v4, v6, [Ljava/io/Closeable;

    .line 143
    aput-object v0, v4, v5

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    new-array v4, v6, [Ljava/io/Closeable;

    .line 144
    aput-object v2, v4, v5

    invoke-static {v4}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    .line 145
    throw v3

    .line 142
    .end local v0    # "ois":Ljava/io/ObjectOutputStream;
    .restart local v1    # "ois":Ljava/io/ObjectOutputStream;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "ois":Ljava/io/ObjectOutputStream;
    .restart local v0    # "ois":Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method

.method public static setCalendarSID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/Long;
    .param p3, "sid"    # Ljava/lang/Long;

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tCalendar:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public static setEventSID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "currentUser"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/Long;
    .param p3, "sid"    # Ljava/lang/Long;

    .prologue
    .line 71
    invoke-static {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->checkInit(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/PrivateDBHelper;->db:Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/privatedata/CalendarDatabase;->tEvent:Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    return-void
.end method
