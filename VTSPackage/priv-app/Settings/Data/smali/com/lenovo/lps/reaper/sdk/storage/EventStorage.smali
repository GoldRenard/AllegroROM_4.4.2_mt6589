.class public final Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;
.super Ljava/lang/Object;
.source "EventStorage.java"


# instance fields
.field private eventDao:Lcom/lenovo/lps/reaper/sdk/api/EventDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addEvent(Lcom/lenovo/lps/reaper/sdk/api/Event;)V
    .locals 1
    .param p1, "event"    # Lcom/lenovo/lps/reaper/sdk/api/Event;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->eventDao:Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    invoke-interface {v0, p1}, Lcom/lenovo/lps/reaper/sdk/api/EventDao;->saveEvent(Lcom/lenovo/lps/reaper/sdk/api/Event;)V

    .line 55
    return-void
.end method

.method public addSessionVisits()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->eventDao:Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->eventDao:Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    invoke-interface {v0}, Lcom/lenovo/lps/reaper/sdk/api/EventDao;->addSessionVisits()V

    .line 68
    :cond_0
    return-void
.end method

.method public countEvent(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)I
    .locals 1
    .param p1, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->eventDao:Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    invoke-interface {v0, p1}, Lcom/lenovo/lps/reaper/sdk/api/EventDao;->countEvent(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)I

    move-result v0

    return v0
.end method

.method public deleteEvents(ILcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)V
    .locals 1
    .param p1, "postLength"    # I
    .param p2, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 91
    if-lez p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->eventDao:Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/api/EventDao;->deleteEvents(ILcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)Z

    .line 94
    :cond_0
    return-void
.end method

.method public fetchEvents(ILcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)[Lcom/lenovo/lps/reaper/sdk/api/Event;
    .locals 1
    .param p1, "count"    # I
    .param p2, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->eventDao:Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    invoke-interface {v0, p1, p2}, Lcom/lenovo/lps/reaper/sdk/api/EventDao;->getEvents(ILcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)[Lcom/lenovo/lps/reaper/sdk/api/Event;

    move-result-object v0

    return-object v0
.end method

.method public fetchEvents(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)[Lcom/lenovo/lps/reaper/sdk/api/Event;
    .locals 1
    .param p1, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->eventDao:Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    invoke-interface {v0, p1}, Lcom/lenovo/lps/reaper/sdk/api/EventDao;->getEvents(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)[Lcom/lenovo/lps/reaper/sdk/api/Event;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->eventDao:Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    invoke-interface {v0}, Lcom/lenovo/lps/reaper/sdk/api/EventDao;->activeSession()V

    .line 62
    return-void
.end method

.method public isEmpty(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)Z
    .locals 1
    .param p1, "prio"    # Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->eventDao:Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    invoke-interface {v0, p1}, Lcom/lenovo/lps/reaper/sdk/api/EventDao;->countEvent(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFileStorageMetaLoaded()Z
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->eventDao:Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    invoke-interface {v0}, Lcom/lenovo/lps/reaper/sdk/api/EventDao;->isFileStorageMetaLoaded()Z

    move-result v0

    return v0
.end method

.method public setEventDao(Lcom/lenovo/lps/reaper/sdk/api/EventDao;)V
    .locals 0
    .param p1, "eventDao"    # Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->eventDao:Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    .line 82
    return-void
.end method

.method public truncate(J)V
    .locals 2
    .param p1, "size"    # J

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/lps/reaper/sdk/storage/EventStorage;->eventDao:Lcom/lenovo/lps/reaper/sdk/api/EventDao;

    invoke-interface {v1, p1, p2}, Lcom/lenovo/lps/reaper/sdk/api/EventDao;->truncate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
