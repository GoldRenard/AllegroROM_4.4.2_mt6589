.class Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$3;
.super Ljava/lang/Object;
.source "SDcardBackupRecordFinder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder;->getAllBackupRecords(Landroid/content/Context;Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;)I
    .locals 4
    .param p1, "lhs"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;
    .param p2, "rhs"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;

    .prologue
    .line 112
    iget-wide v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;->backupDatetime:J

    iget-wide v2, p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;->backupDatetime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;

    check-cast p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$3;->compare(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;)I

    move-result v0

    return v0
.end method
