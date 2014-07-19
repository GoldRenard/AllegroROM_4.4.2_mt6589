.class public Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/LocalDispatcher;
.super Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;
.source "LocalDispatcher.java"


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

.method private dispatchBackup(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    .locals 2
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 61
    .local v0, "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardBackupTask;-><init>(Landroid/content/Context;)V

    .line 73
    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    :cond_0
    :goto_0
    return-object v0

    .line 63
    :cond_1
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CALLLOG:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardBackupTask;-><init>(Landroid/content/Context;)V

    .line 65
    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    goto :goto_0

    :cond_2
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardBackupTask;-><init>(Landroid/content/Context;)V

    .line 67
    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    goto :goto_0

    :cond_3
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->MMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardBackupTask;-><init>(Landroid/content/Context;)V

    .line 69
    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    goto :goto_0

    :cond_4
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardBackupTask;-><init>(Landroid/content/Context;)V

    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    goto :goto_0
.end method

.method private dispatchRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    .locals 3
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 85
    .local v0, "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/sdcard/task/ContactSDCardRestoreTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    :cond_0
    :goto_0
    return-object v0

    .line 87
    :cond_1
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->CALLLOG:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/sdcard/task/CalllogSDcardRetoreTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 89
    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    goto :goto_0

    :cond_2
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/sdcard/task/AppSDcardRestoreTask;-><init>(Landroid/content/Context;)V

    .line 91
    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    goto :goto_0

    :cond_3
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->MMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 92
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardRestoreTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/sdcard/task/MmsSDcardRestoreTask;-><init>(Landroid/content/Context;)V

    .line 93
    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    goto :goto_0

    :cond_4
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    invoke-virtual {v1, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;

    .end local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/sdcard/task/SmsSDcardRestoreTask;-><init>(Landroid/content/Context;)V

    .restart local v0    # "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    goto :goto_0
.end method

.method private dispatchSync(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    .locals 3
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    .prologue
    .line 107
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not implement, TaskId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected dispatchTask(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 37
    .local v0, "task":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;
    instance-of v1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    if-eqz v1, :cond_0

    .line 38
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/LocalDispatcher;->dispatchBackup(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;

    move-result-object v0

    .line 41
    :cond_0
    instance-of v1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$RestoreTaskID;

    if-eqz v1, :cond_1

    .line 42
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/LocalDispatcher;->dispatchRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;

    move-result-object v0

    .line 45
    :cond_1
    instance-of v1, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$SyncTaskID;

    if-eqz v1, :cond_2

    .line 46
    invoke-direct {p0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/LocalDispatcher;->dispatchSync(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/LocalTask;

    move-result-object v0

    .line 49
    :cond_2
    return-object v0
.end method

.method public getCount(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;)I
    .locals 4
    .param p1, "taskId"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID;->getValue()I

    move-result v0

    .line 115
    .local v0, "taskValue":I
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->getValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/util/BizFactory;->newRawContactDao(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;

    move-result-object v1

    invoke-interface {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao;->queryLocalContactNumber()I

    move-result v1

    .line 124
    :goto_0
    return v1

    .line 117
    :cond_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CALLLOG:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->getValue()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 118
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;-><init>()V

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/calllog/dao/impl/CalllogDaoImpl;->queryLocalCalllogNumber(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 119
    :cond_1
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->getValue()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 120
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/loader/AppInfoLoader;->localAppInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 121
    :cond_2
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->MMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->getValue()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 122
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDaoImpl;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDaoImpl;-><init>()V

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/mms/dao/MmsDaoImpl;->doQueryLocalMmsNumber(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 123
    :cond_3
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->getValue()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 124
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/impl/dispatcher/TaskDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/smsv2/dao/SmsDaoV2Impl;->getSmsSize(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 126
    :cond_4
    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/exception/UnSupportedTaskTypeException;-><init>()V

    throw v1
.end method
