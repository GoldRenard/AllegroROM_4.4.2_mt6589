.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;
.super Ljava/lang/Object;
.source "BackupRecord.java"


# instance fields
.field public backupDatetime:J

.field public backupNumber:I

.field public backupPackagePath:Ljava/lang/String;

.field public extensibleData:Ljava/lang/Object;

.field public taskID:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
