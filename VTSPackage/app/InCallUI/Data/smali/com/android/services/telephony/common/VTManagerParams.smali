.class public final Lcom/android/services/telephony/common/VTManagerParams;
.super Ljava/lang/Object;
.source "VTManagerParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/services/telephony/common/VTManagerParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mCameraSensorCount:I

.field public mCanDecBrightness:Z

.field public mCanDecContrast:Z

.field public mCanDecZoom:Z

.field public mCanIncBrightness:Z

.field public mCanIncContrast:Z

.field public mCanIncZoom:Z

.field public mColorEffect:Ljava/lang/String;

.field public mIsNightModeOn:Z

.field public mIsSupportNightMode:Z

.field public mSupportedColorEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mVideoQuality:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/android/services/telephony/common/VTManagerParams$1;

    invoke-direct {v0}, Lcom/android/services/telephony/common/VTManagerParams$1;-><init>()V

    sput-object v0, Lcom/android/services/telephony/common/VTManagerParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/services/telephony/common/VTManagerParams;->mSupportedColorEffects:Ljava/util/List;

    .line 79
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/services/telephony/common/VTManagerParams;->mCameraSensorCount:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/services/telephony/common/VTManagerParams;->mVideoQuality:I

    .line 61
    const/16 v1, 0x8

    new-array v0, v1, [Z

    .line 62
    .local v0, "val2":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 63
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/VTManagerParams;->mCanDecBrightness:Z

    .line 64
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/VTManagerParams;->mCanIncBrightness:Z

    .line 65
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/VTManagerParams;->mCanDecZoom:Z

    .line 66
    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/VTManagerParams;->mCanIncZoom:Z

    .line 67
    const/4 v1, 0x4

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/VTManagerParams;->mCanDecContrast:Z

    .line 68
    const/4 v1, 0x5

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/VTManagerParams;->mCanIncContrast:Z

    .line 69
    const/4 v1, 0x6

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/VTManagerParams;->mIsSupportNightMode:Z

    .line 70
    const/4 v1, 0x7

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/VTManagerParams;->mIsNightModeOn:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/common/VTManagerParams;->mColorEffect:Ljava/lang/String;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/services/telephony/common/VTManagerParams;->mSupportedColorEffects:Ljava/util/List;

    .line 74
    iget-object v1, p0, Lcom/android/services/telephony/common/VTManagerParams;->mSupportedColorEffects:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 75
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/services/telephony/common/VTManagerParams$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/services/telephony/common/VTManagerParams$1;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/android/services/telephony/common/VTManagerParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCameraSensorCount"

    iget v2, p0, Lcom/android/services/telephony/common/VTManagerParams;->mCameraSensorCount:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mVideoQuality"

    iget v2, p0, Lcom/android/services/telephony/common/VTManagerParams;->mVideoQuality:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCanDecBrightness"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTManagerParams;->mCanDecBrightness:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCanIncBrightness"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTManagerParams;->mCanIncBrightness:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCanDecZoom"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTManagerParams;->mCanDecZoom:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCanIncZoom"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTManagerParams;->mCanIncZoom:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCanDecContrast"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTManagerParams;->mCanDecContrast:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCanIncContrast"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTManagerParams;->mCanIncContrast:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsSupportNightMode"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTManagerParams;->mIsSupportNightMode:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsNightModeOn"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTManagerParams;->mIsNightModeOn:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mColorEffect"

    iget-object v2, p0, Lcom/android/services/telephony/common/VTManagerParams;->mColorEffect:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mSupportedColorEffects"

    iget-object v2, p0, Lcom/android/services/telephony/common/VTManagerParams;->mSupportedColorEffects:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 29
    iget v1, p0, Lcom/android/services/telephony/common/VTManagerParams;->mCameraSensorCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget v1, p0, Lcom/android/services/telephony/common/VTManagerParams;->mVideoQuality:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    const/16 v1, 0x8

    new-array v0, v1, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTManagerParams;->mCanDecBrightness:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTManagerParams;->mCanIncBrightness:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTManagerParams;->mCanDecZoom:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTManagerParams;->mCanIncZoom:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTManagerParams;->mCanDecContrast:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTManagerParams;->mCanIncContrast:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x6

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTManagerParams;->mIsSupportNightMode:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTManagerParams;->mIsNightModeOn:Z

    aput-boolean v2, v0, v1

    .line 33
    .local v0, "val2":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 34
    iget-object v1, p0, Lcom/android/services/telephony/common/VTManagerParams;->mColorEffect:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/android/services/telephony/common/VTManagerParams;->mSupportedColorEffects:Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 36
    return-void
.end method
