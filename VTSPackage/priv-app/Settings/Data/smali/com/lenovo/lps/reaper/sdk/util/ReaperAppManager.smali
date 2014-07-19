.class public Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;
.super Ljava/lang/Object;
.source "ReaperAppManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ReaperAppManager"

.field private static activityManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;


# instance fields
.field private activitys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private currentActivitySeqNumber:I

.field private currentUserActionSeqNumber:I

.field private eventDurationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private firstActivity:Landroid/app/Activity;

.field private isTrackerInitialized:Z

.field private lastAddSessionTime:J

.field private lastPauseTime:J

.field private pageViewTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    invoke-direct {v0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;-><init>()V

    sput-object v0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->activityManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->activitys:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->isTrackerInitialized:Z

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->pageViewTimeMap:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->eventDurationMap:Ljava/util/Map;

    return-void
.end method

.method private addRecentResumePageview(Ljava/lang/String;)V
    .locals 3
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 209
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 210
    :cond_0
    const-string v0, "ReaperAppManager"

    const-string v1, "invalid page name"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->pageViewTimeMap:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private closeAllActivity()V
    .locals 3

    .prologue
    .line 74
    iget-object v2, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->activitys:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 75
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 77
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method private getAddSessionVisitsDelta()J
    .locals 4

    .prologue
    .line 137
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->lastAddSessionTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static getInstance()Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->activityManager:Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;

    return-object v0
.end method

.method private getPauseTimeDelta()J
    .locals 4

    .prologue
    .line 133
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->lastPauseTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private trafficStatistics(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v12, -0x1

    const/4 v9, 0x0

    .line 217
    const-string v8, "activity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    invoke-virtual {v8}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 219
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v7, -0x1

    .line 220
    .local v7, "uid":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 221
    .local v2, "runningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 222
    iget v7, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 226
    .end local v2    # "runningAppProcessInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    const/4 v8, -0x1

    if-ne v7, v8, :cond_2

    .line 227
    const-string v8, "ReaperAppManager"

    const-string v10, "not found this process."

    invoke-static {v8, v10}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    .line 237
    :goto_0
    return-object v8

    .line 230
    :cond_2
    const-string v8, "ReaperAppManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "uid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {v7}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v3

    .line 232
    .local v3, "rxBytes":J
    invoke-static {v7}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v5

    .line 233
    .local v5, "txBytes":J
    cmp-long v8, v3, v12

    if-nez v8, :cond_3

    cmp-long v8, v5, v12

    if-eqz v8, :cond_4

    .line 234
    :cond_3
    new-instance v8, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;

    invoke-direct {v8, v3, v4, v5, v6}, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;-><init>(JJ)V

    goto :goto_0

    .line 236
    :cond_4
    const-string v8, "ReaperAppManager"

    const-string v10, "get traffic stats error."

    invoke-static {v8, v10}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    .line 237
    goto :goto_0
.end method


# virtual methods
.method public add(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->activitys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method public addCurrentActivitySeqNumber()V
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->currentActivitySeqNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->currentActivitySeqNumber:I

    .line 105
    return-void
.end method

.method public addCurrentUserActionSeqNumber()V
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->currentUserActionSeqNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->currentUserActionSeqNumber:I

    .line 113
    return-void
.end method

.method public getCurrentActivitySeqNumber()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->currentActivitySeqNumber:I

    return v0
.end method

.method public getCurrentUserActionSeqNumber()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->currentUserActionSeqNumber:I

    return v0
.end method

.method public getFirstActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->firstActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->isTrackerInitialized:Z

    return v0
.end method

.method public isTimeForAddSessionVisits()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 122
    invoke-static {}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getInstance()Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/serverconfig/ServerConfigManager;->getAddSessionIntervalMills()I

    move-result v6

    int-to-long v1, v6

    .line 123
    .local v1, "interval":J
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getPauseTimeDelta()J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-lez v6, :cond_0

    move v3, v4

    .line 124
    .local v3, "pauseTimeFlag":Z
    :goto_0
    invoke-direct {p0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->getAddSessionVisitsDelta()J

    move-result-wide v6

    cmp-long v6, v6, v1

    if-lez v6, :cond_1

    move v0, v4

    .line 125
    .local v0, "addSessionTimeFlag":Z
    :goto_1
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    .line 126
    const-string v5, "ReaperAppManager"

    const-string v6, "is Time For Add Session Visits"

    invoke-static {v5, v6}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_2
    return v4

    .end local v0    # "addSessionTimeFlag":Z
    .end local v3    # "pauseTimeFlag":Z
    :cond_0
    move v3, v5

    .line 123
    goto :goto_0

    .restart local v3    # "pauseTimeFlag":Z
    :cond_1
    move v0, v5

    .line 124
    goto :goto_1

    .restart local v0    # "addSessionTimeFlag":Z
    :cond_2
    move v4, v5

    .line 129
    goto :goto_2
.end method

.method public noMoreActivity()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->activitys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public recordAddSessionVisits()V
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->reset()V

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->lastAddSessionTime:J

    .line 143
    return-void
.end method

.method public recordEventBegin(Ljava/lang/String;)V
    .locals 3
    .param p1, "eventAction"    # Ljava/lang/String;

    .prologue
    .line 150
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 151
    :cond_0
    const-string v0, "ReaperAppManager"

    const-string v1, "invalid eventAction"

    invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->eventDurationMap:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public recordEventEnd(Ljava/lang/String;)J
    .locals 6
    .param p1, "eventAction"    # Ljava/lang/String;

    .prologue
    const-wide/16 v1, -0x1

    .line 158
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 159
    :cond_0
    const-string v3, "ReaperAppManager"

    const-string v4, "invalid eventAction"

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :goto_0
    return-wide v1

    .line 162
    :cond_1
    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->eventDurationMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 163
    .local v0, "begin":Ljava/lang/Long;
    if-nez v0, :cond_2

    .line 164
    const-string v3, "ReaperAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not found this begin event of this event action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_2
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->eventDurationMap:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    goto :goto_0
.end method

.method public recordInitialize()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->isTrackerInitialized:Z

    .line 147
    return-void
.end method

.method public recordPause(Ljava/lang/String;)J
    .locals 6
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v1, -0x1

    .line 86
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 87
    :cond_0
    const-string v3, "ReaperAppManager"

    const-string v4, "invalid page name"

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :goto_0
    return-wide v1

    .line 90
    :cond_1
    iget-object v3, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->pageViewTimeMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 91
    .local v0, "begin":Ljava/lang/Long;
    if-nez v0, :cond_2

    .line 92
    const-string v3, "ReaperAppManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not found resume event of this page: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->pageViewTimeMap:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    goto :goto_0
.end method

.method public recordResume(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->addRecentResumePageview(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->addCurrentActivitySeqNumber()V

    .line 82
    invoke-virtual {p0}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->addCurrentUserActionSeqNumber()V

    .line 83
    return-void
.end method

.method public remove(Landroid/app/Activity;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->activitys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->currentUserActionSeqNumber:I

    .line 117
    iput v0, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->currentActivitySeqNumber:I

    .line 118
    return-void
.end method

.method public saveTrafficNumber(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;
    .locals 17
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    const-string v13, "traffic"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 174
    .local v11, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v13, "traffic_rx"

    const-wide/16 v14, 0x0

    invoke-interface {v11, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 175
    .local v7, "lastRxTrafficNumber":J
    const-string v13, "traffic_tx"

    const-wide/16 v14, 0x0

    invoke-interface {v11, v13, v14, v15}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 176
    .local v9, "lastTxTrafficNumber":J
    const-string v13, "ReaperAppManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "lastRxTrafficNumber: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v13, "ReaperAppManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "lastTxTrafficNumber: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-direct/range {p0 .. p1}, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->trafficStatistics(Landroid/content/Context;)Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;

    move-result-object v6

    .line 179
    .local v6, "curTrafficItem":Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;
    if-nez v6, :cond_1

    .line 180
    const/4 v3, 0x0

    .line 205
    :cond_0
    :goto_0
    return-object v3

    .line 182
    :cond_1
    const-string v13, "ReaperAppManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "curRxTrafficNumber: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->getRxBytes()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v13, "ReaperAppManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "curTxTrafficNumber: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->getTxBytes()J

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-wide/16 v1, 0x0

    .line 185
    .local v1, "addedRxbytes":J
    const-wide/16 v4, 0x0

    .line 186
    .local v4, "addedTxbytes":J
    new-instance v3, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;

    invoke-direct {v3, v1, v2, v4, v5}, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;-><init>(JJ)V

    .line 187
    .local v3, "addedTrafficItem":Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;
    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->getRxBytes()J

    move-result-wide v13

    cmp-long v13, v13, v7

    if-lez v13, :cond_2

    .line 188
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "traffic_rx"

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->getRxBytes()J

    move-result-wide v15

    invoke-interface/range {v13 .. v16}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v12

    .line 190
    .local v12, "succ":Z
    if-eqz v12, :cond_3

    .line 191
    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->getRxBytes()J

    move-result-wide v13

    sub-long/2addr v13, v7

    invoke-virtual {v3, v13, v14}, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->setRxBytes(J)V

    .line 196
    .end local v12    # "succ":Z
    :cond_2
    :goto_1
    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->getTxBytes()J

    move-result-wide v13

    cmp-long v13, v13, v9

    if-lez v13, :cond_0

    .line 197
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "traffic_tx"

    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->getTxBytes()J

    move-result-wide v15

    invoke-interface/range {v13 .. v16}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v12

    .line 199
    .restart local v12    # "succ":Z
    if-eqz v12, :cond_4

    .line 200
    invoke-virtual {v6}, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->getTxBytes()J

    move-result-wide v13

    sub-long/2addr v13, v9

    invoke-virtual {v3, v13, v14}, Lcom/lenovo/lps/reaper/sdk/util/TrafficItem;->setTxBytes(J)V

    goto/16 :goto_0

    .line 193
    :cond_3
    const-string v13, "ReaperAppManager"

    const-string v14, "put rx traffic data error"

    invoke-static {v13, v14}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 202
    :cond_4
    const-string v13, "ReaperAppManager"

    const-string v14, "put tx traffic data error"

    invoke-static {v13, v14}, Lcom/lenovo/lps/reaper/sdk/util/TLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setFirstActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "firstActivity"    # Landroid/app/Activity;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/util/ReaperAppManager;->firstActivity:Landroid/app/Activity;

    .line 58
    return-void
.end method
