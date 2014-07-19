.class public interface abstract Lcom/lenovo/lps/reaper/sdk/api/EventDao;
.super Ljava/lang/Object;
.source "EventDao.java"


# virtual methods
.method public abstract activeSession()V
.end method

.method public abstract addSessionVisits()V
.end method

.method public abstract countEvent(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)I
.end method

.method public abstract deleteEvents(ILcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)Z
.end method

.method public abstract getEvents(ILcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)[Lcom/lenovo/lps/reaper/sdk/api/Event;
.end method

.method public abstract getEvents(Lcom/lenovo/lps/reaper/sdk/util/Constants$StorageQueue$Priority;)[Lcom/lenovo/lps/reaper/sdk/api/Event;
.end method

.method public abstract isFileStorageMetaLoaded()Z
.end method

.method public abstract saveEvent(Lcom/lenovo/lps/reaper/sdk/api/Event;)V
.end method

.method public abstract truncate(J)V
.end method
