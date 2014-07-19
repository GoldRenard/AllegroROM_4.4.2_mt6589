.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;
.super Ljava/lang/Object;
.source "CalendarFacade.java"


# instance fields
.field private enabled:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;->mContext:Landroid/content/Context;

    .line 19
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;->enabled:Z

    .line 20
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doQueryCloudCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;
        }
    .end annotation

    .prologue
    .line 37
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;-><init>()V

    throw v0
.end method

.method public doQueryLocalEventCount()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;
        }
    .end annotation

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;->enabled:Z

    if-eqz v0, :cond_0

    .line 42
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/dao/CalendarDaoImpl;->getEventCount()I

    move-result v0

    return v0

    .line 44
    :cond_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;-><init>()V

    throw v0
.end method

.method public newBackupTask()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    .locals 3

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;->enabled:Z

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarBackupTask;

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarBackupTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 26
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newRestoreTask()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    .locals 3

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;->enabled:Z

    if-eqz v0, :cond_0

    .line 31
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarRestoreTask;

    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/cloud/task/CalendarRestoreTask;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;Landroid/content/Context;)V

    .line 33
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
