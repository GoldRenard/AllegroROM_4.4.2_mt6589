.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;
.super Ljava/lang/Object;
.source "BackupStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private dataTime:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private status:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus$1;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus$1;-><init>()V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;->packageName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;->status:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;
    .param p3, "dataTime"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;->packageName:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;->status:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    .line 39
    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;->dataTime:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getDataTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;->dataTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;->status:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    return-object v0
.end method

.method public setDataTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "dataTime"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;->dataTime:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;->packageName:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public setStatus(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;)V
    .locals 0
    .param p1, "status"    # Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;->status:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    .line 22
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 49
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/BackupStatus;->status:Lcom/lenovo/leos/cloud/lcp/sync/modules/app/cloud/protocol/Status;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    return-void
.end method
