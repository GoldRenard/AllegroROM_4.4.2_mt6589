.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized$3;
.super Ljava/lang/Object;
.source "PhotoSyncPerformerForNfsOptimized.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/RawContactDao$DataVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized;->loadLocalHasPhotoCid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;II)Z
    .locals 2
    .param p1, "data"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;
    .param p2, "cur"    # I
    .param p3, "total"    # I

    .prologue
    .line 157
    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data15:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->data15:[B

    array-length v0, v0

    if-lez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized$3;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized;

    iget-object v0, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/PhotoSyncPerformerForNfsOptimized;->hasPhotoCidList:Ljava/util/List;

    iget v1, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/dao/po/Data;->rawContactId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
