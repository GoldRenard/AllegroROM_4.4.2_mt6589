.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder;
.super Ljava/lang/Object;
.source "SDcardBackupRecordFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$SDcardBackupRecordVisitor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder;->queryAllBackupRecordFiles()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Landroid/content/Context;Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 90
    invoke-static {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder;->getAllBackupRecords(Landroid/content/Context;Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private static filterBackupRecordFile(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 124
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 125
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v4, v5

    .line 159
    .end local v1    # "f":Ljava/io/File;
    :cond_0
    :goto_0
    return-object v4

    .line 129
    .restart local v1    # "f":Ljava/io/File;
    :cond_1
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder;->readDataFromFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "infos":[Ljava/lang/String;
    if-nez v2, :cond_2

    move-object v4, v5

    .line 131
    goto :goto_0

    .line 134
    :cond_2
    new-instance v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;

    invoke-direct {v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;-><init>()V

    .line 136
    .local v4, "record":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;
    iput-object p1, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;->backupPackagePath:Ljava/lang/String;

    .line 137
    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;->backupNumber:I

    .line 138
    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;->backupDatetime:J

    .line 140
    const/4 v6, 0x2

    aget-object v6, v2, v6

    const-string v7, "sms"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 141
    sget-object v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->SMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    iput-object v6, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;->taskID:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 156
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "infos":[Ljava/lang/String;
    .end local v4    # "record":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v4, v5

    .line 159
    goto :goto_0

    .line 142
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "infos":[Ljava/lang/String;
    .restart local v4    # "record":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;
    :cond_3
    const/4 v6, 0x2

    :try_start_1
    aget-object v6, v2, v6

    const-string v7, "Calllog"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 143
    sget-object v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CALLLOG:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    iput-object v6, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;->taskID:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    goto :goto_0

    .line 144
    :cond_4
    const/4 v6, 0x2

    aget-object v6, v2, v6

    const-string v7, "contact"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 145
    sget-object v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->CONTACT:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    iput-object v6, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;->taskID:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    goto :goto_0

    .line 146
    :cond_5
    const/4 v6, 0x2

    aget-object v6, v2, v6

    const-string v7, "mms"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 147
    sget-object v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->MMS:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    iput-object v6, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;->taskID:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    goto :goto_0

    .line 148
    :cond_6
    const/4 v6, 0x2

    aget-object v6, v2, v6

    const-string v7, "app"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 149
    sget-object v6, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;->APP:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    iput-object v6, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;->taskID:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    .line 151
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;

    invoke-direct {v3, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;-><init>(Ljava/lang/String;)V

    .line 152
    .local v3, "reader":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;
    invoke-virtual {v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;->readAppList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    iput-object v6, v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;->extensibleData:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static findBackupRecord(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$SDcardBackupRecordVisitor;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "taskID"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;
    .param p2, "visitor"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$SDcardBackupRecordVisitor;

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$1;

    invoke-direct {v1, p2, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$1;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$SDcardBackupRecordVisitor;Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 52
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 53
    return-void
.end method

.method private static getAllBackupRecords(Landroid/content/Context;Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;)Ljava/util/Map;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "taskID"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 91
    .local p1, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {p1, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 92
    .local v0, "files":[Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v5, "recordMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, v0

    .local v2, "len":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 107
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 118
    return-object v5

    .line 95
    :cond_0
    aget-object v7, v0, v1

    invoke-static {p0, v7}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder;->filterBackupRecordFile(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;

    move-result-object v3

    .line 96
    .local v3, "record":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;
    if-eqz p2, :cond_1

    if-eqz v3, :cond_3

    iget-object v7, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;->taskID:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    if-eqz v7, :cond_3

    iget-object v7, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;->taskID:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    if-ne p2, v7, :cond_3

    .line 97
    :cond_1
    iget-object v7, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;->taskID:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 98
    .local v4, "recordList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;>;"
    if-nez v4, :cond_2

    .line 99
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "recordList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .restart local v4    # "recordList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;>;"
    iget-object v7, v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;->taskID:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_2
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .end local v4    # "recordList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v3    # "record":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 108
    .local v6, "recordsList":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;>;"
    new-instance v8, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$3;

    invoke-direct {v8}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$3;-><init>()V

    invoke-static {v6, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1
.end method

.method private static queryAllBackupRecordFiles()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$2;

    invoke-direct {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$2;-><init>()V

    .line 65
    .local v2, "filter":Ljava/io/FilenameFilter;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v1, "files":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;

    invoke-direct {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;-><init>()V

    .line 67
    .local v3, "fstabReader":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;
    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->getStorages()Ljava/util/List;

    move-result-object v8

    .line 69
    .local v8, "storages":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 84
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 85
    new-instance v9, Ljava/io/FileNotFoundException;

    const-string v10, "import file is null"

    invoke-direct {v9, v10}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 69
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;

    .line 70
    .local v7, "si":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;
    new-instance v6, Ljava/io/File;

    iget-object v9, v7, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .local v6, "root":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v9, "/data/com.lenovo.leos.cloud.sync/backup"

    invoke-direct {v0, v6, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 75
    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "list":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v9, v4

    if-lez v9, :cond_0

    .line 77
    array-length v11, v4

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v11, :cond_0

    aget-object v5, v4, v9

    .line 78
    .local v5, "name":Ljava/lang/String;
    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "dir":Ljava/io/File;
    .end local v4    # "list":[Ljava/lang/String;
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "root":Ljava/io/File;
    .end local v7    # "si":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;
    :cond_2
    return-object v1
.end method

.method private static readDataFromFile(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 163
    const/4 v3, 0x0

    .line 165
    .local v3, "reader":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;
    const-string v4, ".zip"

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;

    .end local v3    # "reader":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;
    invoke-direct {v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;-><init>(Ljava/lang/String;)V

    .line 171
    .restart local v3    # "reader":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;
    :goto_0
    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;->readMetaInfo()Ljava/lang/String;

    move-result-object v2

    .line 172
    .local v2, "jsonContent":Ljava/lang/String;
    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "elements":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v4, v0

    if-ne v4, v5, :cond_1

    .line 174
    new-array v1, v5, [Ljava/lang/String;

    .line 175
    .local v1, "infos":[Ljava/lang/String;
    aget-object v4, v0, v8

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    aput-object v4, v1, v7

    .line 176
    aget-object v4, v0, v6

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    aput-object v4, v1, v6

    .line 177
    aget-object v4, v0, v7

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    aput-object v4, v1, v8

    .line 180
    .end local v1    # "infos":[Ljava/lang/String;
    :goto_1
    return-object v1

    .line 168
    .end local v0    # "elements":[Ljava/lang/String;
    .end local v2    # "jsonContent":Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;

    .end local v3    # "reader":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;
    invoke-direct {v3, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/AppPackageFileReaderV2;-><init>(Ljava/lang/String;)V

    .restart local v3    # "reader":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/io/PackageFileReader;
    goto :goto_0

    .line 180
    .restart local v0    # "elements":[Ljava/lang/String;
    .restart local v2    # "jsonContent":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
