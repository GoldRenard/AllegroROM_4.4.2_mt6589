.class Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$1;
.super Ljava/lang/Object;
.source "ExternalStorage.java"

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$OnFsFoundListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;->getStorageInfoList()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;

.field private final synthetic val$storageList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$1;->this$1:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$1;->val$storageList:Ljava/util/List;

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFsFound(Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;)V
    .locals 1
    .param p1, "storage"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$1;->val$storageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$FstabReader$1;->val$storageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_0
    return-void
.end method
