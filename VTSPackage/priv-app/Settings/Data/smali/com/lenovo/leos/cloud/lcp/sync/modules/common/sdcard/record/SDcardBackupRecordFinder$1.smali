.class Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$1;
.super Ljava/lang/Object;
.source "SDcardBackupRecordFinder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder;->findBackupRecord(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$SDcardBackupRecordVisitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$taskID:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

.field private final synthetic val$visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$SDcardBackupRecordVisitor;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$SDcardBackupRecordVisitor;Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$1;->val$visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$SDcardBackupRecordVisitor;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$1;->val$taskID:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 44
    .local v0, "allBackupRecords":Ljava/util/Map;, "Ljava/util/Map<Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;Ljava/util/List<Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;>;>;"
    :try_start_0
    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder;->queryAllBackupRecordFiles()Ljava/util/List;
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder;->access$0()Ljava/util/List;

    move-result-object v2

    .line 45
    .local v2, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$1;->val$taskID:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder;->getAllBackupRecords(Landroid/content/Context;Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;)Ljava/util/Map;
    invoke-static {v3, v2, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder;->access$1(Landroid/content/Context;Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 49
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$1;->val$visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$SDcardBackupRecordVisitor;

    invoke-interface {v3, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$SDcardBackupRecordVisitor;->onVisit(Ljava/util/Map;)V

    .line 51
    .end local v2    # "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$1;->val$visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$SDcardBackupRecordVisitor;

    invoke-interface {v3, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$SDcardBackupRecordVisitor;->onVisit(Ljava/util/Map;)V

    goto :goto_0

    .line 48
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v3

    .line 49
    iget-object v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$1;->val$visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$SDcardBackupRecordVisitor;

    invoke-interface {v4, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$SDcardBackupRecordVisitor;->onVisit(Ljava/util/Map;)V

    .line 50
    throw v3
.end method
