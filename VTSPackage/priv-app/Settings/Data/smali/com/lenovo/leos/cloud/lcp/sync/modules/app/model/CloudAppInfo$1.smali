.class Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo$1;
.super Ljava/lang/Object;
.source "CloudAppInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;
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
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;
    .locals 5
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 85
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;-><init>()V

    .line 86
    .local v0, "app":Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->access$0(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->access$1(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->access$2(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->access$3(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->appDataSize:Ljava/lang/Long;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "s":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 93
    invoke-static {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;->valueOf(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/SelectableAppInfo;->setAppStatus(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/AppStatus;)V

    .line 95
    :cond_0
    const-class v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 96
    .local v1, "loader":Ljava/lang/ClassLoader;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;

    invoke-static {v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->access$4(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/Version;)V

    .line 97
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->access$5(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;Ljava/util/List;)V

    .line 98
    # getter for: Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->versions:Ljava/util/List;
    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;->access$6(Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 99
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 80
    new-array v0, p1, [Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo$1;->newArray(I)[Lcom/lenovo/leos/cloud/lcp/sync/modules/app/model/CloudAppInfo;

    move-result-object v0

    return-object v0
.end method
