.class public Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/CloudDispatcher;
.super Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;
.source "CloudDispatcher.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method

.method private dispatchBackup(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    .locals 3
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    .prologue
    .line 57
    const/4 v0, 0x0

    .line 59
    .local v0, "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/backup/ContactBackupTask;-><init>(Landroid/content/Context;)V

    .line 75
    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :cond_1
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CALLLOG:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogBackupTask;-><init>(Landroid/content/Context;)V

    .line 63
    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    goto :goto_0

    :cond_2
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 64
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    .line 65
    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    goto :goto_0

    :cond_3
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->MMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 66
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/backup/MmsBackupTask;-><init>(Landroid/content/Context;)V

    .line 67
    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    goto :goto_0

    :cond_4
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SETTING:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingBackupTask;-><init>(Landroid/content/Context;)V

    .line 69
    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    goto :goto_0

    :cond_5
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 70
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;->newBackupTask()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    move-result-object v0

    .line 71
    goto :goto_0

    :cond_6
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/task/backup/AppBackupTask;-><init>(Landroid/content/Context;)V

    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    goto :goto_0
.end method

.method private dispatchRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    .locals 3
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/restore/ContactRestoreTask;-><init>(Landroid/content/Context;)V

    .line 100
    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    :cond_0
    :goto_0
    return-object v0

    .line 88
    :cond_1
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->CALLLOG:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogRestoreTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/cloud/task/CalllogRestoreTask;-><init>(Landroid/content/Context;)V

    .line 90
    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    goto :goto_0

    :cond_2
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/cloud/task/SmsDistributedController;-><init>(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)V

    .line 92
    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    goto :goto_0

    :cond_3
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->MMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/cloud/task/restore/MmsRestoreTask;-><init>(Landroid/content/Context;)V

    .line 94
    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    goto :goto_0

    :cond_4
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->SETTING:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 95
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/settings/cloud/task/SettingRestoreTask;-><init>(Landroid/content/Context;)V

    .line 96
    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    goto :goto_0

    :cond_5
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;->newRestoreTask()Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    move-result-object v0

    goto :goto_0
.end method

.method private dispatchSync(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    .locals 2
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/ContactSyncTask;-><init>(Landroid/content/Context;)V

    .line 115
    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic dispatchTask(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/CloudDispatcher;->dispatchTask(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    move-result-object v0

    return-object v0
.end method

.method protected dispatchTask(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 37
    .local v0, "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;
    instance-of v1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    if-eqz v1, :cond_0

    .line 38
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/CloudDispatcher;->dispatchBackup(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    move-result-object v0

    .line 41
    :cond_0
    instance-of v1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    if-eqz v1, :cond_1

    .line 42
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/CloudDispatcher;->dispatchRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    move-result-object v0

    .line 45
    :cond_1
    instance-of v1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    if-eqz v1, :cond_2

    .line 46
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/CloudDispatcher;->dispatchSync(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;

    move-result-object v0

    .line 48
    :cond_2
    return-object v0
.end method

.method public getCount(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)I
    .locals 3
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;->getValue()I

    move-result v0

    .line 122
    .local v0, "taskValue":I
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/ContactUtil;->doQueryCloudContactNumber(Landroid/content/Context;)I

    move-result v1

    .line 131
    :goto_0
    return v1

    .line 124
    :cond_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/util/SmsUtil;->doQuerySmsCloudCount(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    .line 126
    :cond_1
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->MMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/util/MmsUtil;->doQueryMmsCloudCount(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    .line 128
    :cond_2
    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 129
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/CalllogUtils;->doQueryCloudCalllogNumber(Landroid/content/Context;)I

    move-result v1

    goto :goto_0

    .line 130
    :cond_3
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CALENDAR:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 131
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calendar/CalendarFacade;->doQueryCloudCount()I

    move-result v1

    goto :goto_0

    .line 133
    :cond_4
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;-><init>()V

    throw v1
.end method
