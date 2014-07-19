.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;
.super Ljava/lang/Object;
.source "ExternalStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageInfo"
.end annotation


# static fields
.field public static final DISK_TYPE_EMULATED:I = 0x1

.field public static final DISK_TYPE_REMOVABLE:I = 0x2

.field public static final DISK_TYPE_UNKNOWN:I


# instance fields
.field public availableBlocks:I

.field public availableSpace:J

.field public diskType:I

.field public rootPath:Ljava/lang/String;

.field public totalSpace:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 487
    if-nez p1, :cond_1

    .line 495
    :cond_0
    :goto_0
    return v1

    .line 490
    :cond_1
    instance-of v2, p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 494
    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;

    .line 495
    .local v0, "otherStorageInfo":Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;
    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    iget-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 500
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/sdcard/ExternalStorage$StorageInfo;->rootPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    return v1
.end method
