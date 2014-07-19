.class public final Lcom/android/services/telephony/common/VTSettingParams;
.super Ljava/lang/Object;
.source "VTSettingParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/services/telephony/common/VTSettingParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAutoDropBack:Z

.field public mEnableBackCamera:Z

.field public mPeerBigger:Z

.field public mPicToReplaceLocal:Ljava/lang/String;

.field public mPicToReplacePeer:Ljava/lang/String;

.field public mShowLocalMO:Z

.field public mShowLocalMT:Ljava/lang/String;

.field public mToReplacePeer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/android/services/telephony/common/VTSettingParams$1;

    invoke-direct {v0}, Lcom/android/services/telephony/common/VTSettingParams$1;-><init>()V

    sput-object v0, Lcom/android/services/telephony/common/VTSettingParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/common/VTSettingParams;->mPicToReplaceLocal:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/common/VTSettingParams;->mShowLocalMT:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/services/telephony/common/VTSettingParams;->mPicToReplacePeer:Ljava/lang/String;

    .line 57
    const/4 v1, 0x5

    new-array v0, v1, [Z

    .line 58
    .local v0, "val1":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 59
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/VTSettingParams;->mEnableBackCamera:Z

    .line 60
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/VTSettingParams;->mPeerBigger:Z

    .line 61
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/VTSettingParams;->mShowLocalMO:Z

    .line 62
    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/VTSettingParams;->mAutoDropBack:Z

    .line 63
    const/4 v1, 0x4

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/android/services/telephony/common/VTSettingParams;->mToReplacePeer:Z

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/services/telephony/common/VTSettingParams$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/services/telephony/common/VTSettingParams$1;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/android/services/telephony/common/VTSettingParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/services/telephony/common/VTSettingParams;)V
    .locals 1
    .param p1, "params"    # Lcom/android/services/telephony/common/VTSettingParams;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iget-object v0, p1, Lcom/android/services/telephony/common/VTSettingParams;->mPicToReplaceLocal:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/VTSettingParams;->mPicToReplaceLocal:Ljava/lang/String;

    .line 72
    iget-object v0, p1, Lcom/android/services/telephony/common/VTSettingParams;->mShowLocalMT:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/VTSettingParams;->mShowLocalMT:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lcom/android/services/telephony/common/VTSettingParams;->mPicToReplacePeer:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/VTSettingParams;->mPicToReplacePeer:Ljava/lang/String;

    .line 74
    iget-boolean v0, p1, Lcom/android/services/telephony/common/VTSettingParams;->mEnableBackCamera:Z

    iput-boolean v0, p0, Lcom/android/services/telephony/common/VTSettingParams;->mEnableBackCamera:Z

    .line 75
    iget-boolean v0, p1, Lcom/android/services/telephony/common/VTSettingParams;->mPeerBigger:Z

    iput-boolean v0, p0, Lcom/android/services/telephony/common/VTSettingParams;->mPeerBigger:Z

    .line 76
    iget-boolean v0, p1, Lcom/android/services/telephony/common/VTSettingParams;->mShowLocalMO:Z

    iput-boolean v0, p0, Lcom/android/services/telephony/common/VTSettingParams;->mShowLocalMO:Z

    .line 77
    iget-boolean v0, p1, Lcom/android/services/telephony/common/VTSettingParams;->mAutoDropBack:Z

    iput-boolean v0, p0, Lcom/android/services/telephony/common/VTSettingParams;->mAutoDropBack:Z

    .line 78
    iget-boolean v0, p1, Lcom/android/services/telephony/common/VTSettingParams;->mToReplacePeer:Z

    iput-boolean v0, p0, Lcom/android/services/telephony/common/VTSettingParams;->mToReplacePeer:Z

    .line 79
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

    const-string v1, "mPicToReplaceLocal"

    iget-object v2, p0, Lcom/android/services/telephony/common/VTSettingParams;->mPicToReplaceLocal:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mShowLocalMT"

    iget-object v2, p0, Lcom/android/services/telephony/common/VTSettingParams;->mShowLocalMT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mPicToReplacePeer"

    iget-object v2, p0, Lcom/android/services/telephony/common/VTSettingParams;->mPicToReplacePeer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mEnableBackCamera"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTSettingParams;->mEnableBackCamera:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mPeerBigger"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTSettingParams;->mPeerBigger:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mShowLocalMO"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTSettingParams;->mShowLocalMO:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mAutoDropBack"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTSettingParams;->mAutoDropBack:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mToReplacePeer"

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTSettingParams;->mToReplacePeer:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/Objects$ToStringHelper;

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
    .line 25
    iget-object v1, p0, Lcom/android/services/telephony/common/VTSettingParams;->mPicToReplaceLocal:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/android/services/telephony/common/VTSettingParams;->mShowLocalMT:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/android/services/telephony/common/VTSettingParams;->mPicToReplacePeer:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    const/4 v1, 0x5

    new-array v0, v1, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTSettingParams;->mEnableBackCamera:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTSettingParams;->mPeerBigger:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTSettingParams;->mShowLocalMO:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTSettingParams;->mAutoDropBack:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/android/services/telephony/common/VTSettingParams;->mToReplacePeer:Z

    aput-boolean v2, v0, v1

    .line 30
    .local v0, "val1":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 31
    return-void
.end method
