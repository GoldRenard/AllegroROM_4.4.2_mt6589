.class public interface abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder$SDcardBackupRecordVisitor;
.super Ljava/lang/Object;
.source "SDcardBackupRecordFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/SDcardBackupRecordFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SDcardBackupRecordVisitor"
.end annotation


# virtual methods
.method public abstract onVisit(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/TaskID$BackupTaskID;",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/record/BackupRecord;",
            ">;>;)V"
        }
    .end annotation
.end method
