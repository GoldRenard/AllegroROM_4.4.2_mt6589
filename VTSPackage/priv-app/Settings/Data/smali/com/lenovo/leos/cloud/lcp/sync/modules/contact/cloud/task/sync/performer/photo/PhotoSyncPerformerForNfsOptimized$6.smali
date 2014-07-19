.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized$6;
.super Ljava/lang/Object;
.source "PhotoSyncPerformerForNfsOptimized.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/PhotoStreamExecutor$PhotoVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized;->streamPortraitRestore(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/protocol/restore/ContactPhotoRestoreRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized;

.field private final synthetic val$ops:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized$6;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized$6;->val$ops:Ljava/util/ArrayList;

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Ljava/lang/String;[B)V
    .locals 5
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "photoBytes"    # [B

    .prologue
    .line 364
    array-length v1, p2

    int-to-long v1, v1

    const-wide/32 v3, 0x100000

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 373
    :goto_0
    return-void

    .line 368
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized$6;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized;

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized$6;->val$ops:Ljava/util/ArrayList;

    # invokes: Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized;->saveSinglePhoto(Ljava/util/List;Ljava/lang/String;[B)V
    invoke-static {v1, v2, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized;->access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized;Ljava/util/List;Ljava/lang/String;[B)V
    :try_end_0
    .catch Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 371
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized$6;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized;I)V

    goto :goto_0
.end method
