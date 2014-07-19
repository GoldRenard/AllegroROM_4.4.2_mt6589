.class Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus$1;
.super Ljava/lang/Object;
.source "BackupStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 62
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;->valueOf(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;-><init>(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 57
    new-array v0, p1, [Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus$1;->newArray(I)[Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;

    move-result-object v0

    return-object v0
.end method
