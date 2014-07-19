.class final Lcom/android/services/telephony/common/VTSettingParams$1;
.super Ljava/lang/Object;
.source "VTSettingParams.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/common/VTSettingParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/services/telephony/common/VTSettingParams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/services/telephony/common/VTSettingParams;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 40
    new-instance v0, Lcom/android/services/telephony/common/VTSettingParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/services/telephony/common/VTSettingParams;-><init>(Landroid/os/Parcel;Lcom/android/services/telephony/common/VTSettingParams$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/services/telephony/common/VTSettingParams$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/services/telephony/common/VTSettingParams;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/services/telephony/common/VTSettingParams;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 45
    new-array v0, p1, [Lcom/android/services/telephony/common/VTSettingParams;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/services/telephony/common/VTSettingParams$1;->newArray(I)[Lcom/android/services/telephony/common/VTSettingParams;

    move-result-object v0

    return-object v0
.end method
