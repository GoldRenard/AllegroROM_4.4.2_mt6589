.class Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$1;
.super Ljava/lang/Object;
.source "PhotoStreamDownloaderV2ForDistinct.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/impl/simple/BatchResult$BatchDownloadVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->processPilotPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;

.field private final synthetic val$key2Sid:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$1;->val$key2Sid:Ljava/util/Map;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVisit(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "objectKey"    # Ljava/lang/String;
    .param p2, "singleBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/lenovo/leos/cloud/lcp/common/exception/BusinessException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$1;->val$key2Sid:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 103
    .local v0, "sid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct$1;->this$0:Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;

    invoke-virtual {v1, v0, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/sync/performer/photo/distinct/PhotoStreamDownloaderV2ForDistinct;->visitPhoto(Ljava/lang/String;[B)V

    .line 107
    :cond_0
    return-void
.end method
