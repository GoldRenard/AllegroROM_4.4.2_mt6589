.class Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version$1;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;
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
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;
    .locals 4
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 152
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;-><init>()V

    .line 153
    .local v0, "ver":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->setVersionCode(I)V

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->setVersionName(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->setSize(J)V

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->setUrl(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->setMd5(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->setMatch(I)V

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;->setBackup(Z)V

    .line 160
    return-object v0

    .line 159
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 147
    new-array v0, p1, [Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version$1;->newArray(I)[Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    move-result-object v0

    return-object v0
.end method
