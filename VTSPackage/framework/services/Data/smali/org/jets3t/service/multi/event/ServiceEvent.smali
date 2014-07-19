.class public abstract Lorg/jets3t/service/multi/event/ServiceEvent;
.super Ljava/lang/Object;
.source "ServiceEvent.java"


# static fields
.field public static final EVENT_CANCELLED:I = 0x4

.field public static final EVENT_COMPLETED:I = 0x2

.field public static final EVENT_ERROR:I = 0x0

.field public static final EVENT_IGNORED_ERRORS:I = 0x5

.field public static final EVENT_IN_PROGRESS:I = 0x3

.field public static final EVENT_STARTED:I = 0x1


# instance fields
.field private eventCode:I

.field private ignoredErrors:[Ljava/lang/Throwable;

.field private t:Ljava/lang/Throwable;

.field private threadWatcher:Lorg/jets3t/service/multi/ThreadWatcher;

.field private uniqueOperationId:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(ILjava/lang/Object;)V
    .locals 2
    .param p1, "eventCode"    # I
    .param p2, "uniqueOperationId"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->eventCode:I

    .line 66
    iput-object v1, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->uniqueOperationId:Ljava/lang/Object;

    .line 67
    iput-object v1, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->t:Ljava/lang/Throwable;

    .line 68
    iput-object v1, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->threadWatcher:Lorg/jets3t/service/multi/ThreadWatcher;

    .line 69
    iput-object v1, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->ignoredErrors:[Ljava/lang/Throwable;

    .line 72
    iput p1, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->eventCode:I

    .line 73
    iput-object p2, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->uniqueOperationId:Ljava/lang/Object;

    .line 74
    return-void
.end method


# virtual methods
.method public getErrorCause()Ljava/lang/Throwable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 107
    iget v0, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->eventCode:I

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Error Cause is only available from EVENT_ERROR events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->t:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getEventCode()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->eventCode:I

    return v0
.end method

.method public getIgnoredErrors()[Ljava/lang/Throwable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 121
    iget v0, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->eventCode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ignored errors are only available from EVENT_IGNORED_ERRORS events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->ignoredErrors:[Ljava/lang/Throwable;

    return-object v0
.end method

.method public getThreadWatcher()Lorg/jets3t/service/multi/ThreadWatcher;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 134
    iget v0, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->eventCode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->eventCode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Thread Watcher is only available from EVENT_STARTED or EVENT_IN_PROGRESS events"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->threadWatcher:Lorg/jets3t/service/multi/ThreadWatcher;

    return-object v0
.end method

.method public getUniqueOperationId()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->uniqueOperationId:Ljava/lang/Object;

    return-object v0
.end method

.method protected setErrorCause(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 81
    iput-object p1, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->t:Ljava/lang/Throwable;

    .line 82
    return-void
.end method

.method protected setIgnoredErrors([Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ignoredErrors"    # [Ljava/lang/Throwable;

    .prologue
    .line 85
    iput-object p1, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->ignoredErrors:[Ljava/lang/Throwable;

    .line 86
    return-void
.end method

.method protected setThreadWatcher(Lorg/jets3t/service/multi/ThreadWatcher;)V
    .locals 0
    .param p1, "threadWatcher"    # Lorg/jets3t/service/multi/ThreadWatcher;

    .prologue
    .line 77
    iput-object p1, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->threadWatcher:Lorg/jets3t/service/multi/ThreadWatcher;

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    iget v1, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->eventCode:I

    if-nez v1, :cond_1

    const-string v0, "EVENT_ERROR"

    .line 151
    .local v0, "eventText":Ljava/lang/String;
    :goto_0
    iget v1, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->eventCode:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->getErrorCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jets3t/service/multi/event/ServiceEvent;->getErrorCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .end local v0    # "eventText":Ljava/lang/String;
    :cond_0
    return-object v0

    .line 143
    :cond_1
    iget v1, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->eventCode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const-string v0, "EVENT_STARTED"

    goto :goto_0

    :cond_2
    iget v1, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->eventCode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const-string v0, "EVENT_COMPLETED"

    goto :goto_0

    :cond_3
    iget v1, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->eventCode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    const-string v0, "EVENT_IN_PROGRESS"

    goto :goto_0

    :cond_4
    iget v1, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->eventCode:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    const-string v0, "EVENT_CANCELLED"

    goto :goto_0

    :cond_5
    iget v1, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->eventCode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    const-string v0, "EVENT_IGNORED_ERRORS"

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognised event status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/jets3t/service/multi/event/ServiceEvent;->eventCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
