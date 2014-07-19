.class Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil$3;
.super Ljava/lang/Object;
.source "SDCardBackupUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->scanAndGetImportFile(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage$FileVisitor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$files:Ljava/util/List;

.field private final synthetic val$visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage$FileVisitor;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage$FileVisitor;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil$3;->val$files:Ljava/util/List;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil$3;->val$visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage$FileVisitor;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 126
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil$3;->val$files:Ljava/util/List;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil$3;->val$files:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 127
    .local v0, "params":[Ljava/lang/String;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil$3;->val$visitor:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage$FileVisitor;

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->createMessages([Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage$FileVisitor;)V
    invoke-static {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/SDCardBackupUtil;->access$0([Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/FileReadFinishMessage$FileVisitor;)V

    .line 128
    return-void
.end method
