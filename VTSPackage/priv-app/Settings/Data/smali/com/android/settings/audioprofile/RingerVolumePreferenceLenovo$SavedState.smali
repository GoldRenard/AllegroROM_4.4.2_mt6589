.class Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "RingerVolumePreferenceLenovo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mVolumeStore:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 627
    new-instance v0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 587
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 588
    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->SEEKBAR_ID:[I
    invoke-static {}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$100()[I

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    iput-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;->mVolumeStore:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    .line 589
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->SEEKBAR_ID:[I
    invoke-static {}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$100()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;->mVolumeStore:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    new-instance v2, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    invoke-direct {v2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 591
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;->mVolumeStore:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;->mVolume:I

    .line 592
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;->mVolumeStore:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;->mOriginalVolume:I

    .line 593
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;->mVolumeStore:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;->mSystemVolume:I

    .line 595
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;->mVolumeStore:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;->isPlay:I

    .line 589
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 598
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 623
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 625
    return-void
.end method


# virtual methods
.method getVolumeStore(I)[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 613
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;->mVolumeStore:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;->mVolumeStore:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    array-length v1, v1

    if-eq v1, p1, :cond_1

    .line 614
    :cond_0
    new-array v1, p1, [Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    iput-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;->mVolumeStore:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    .line 615
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 616
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;->mVolumeStore:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    new-instance v2, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    invoke-direct {v2}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 619
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;->mVolumeStore:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 602
    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 603
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    # getter for: Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->SEEKBAR_ID:[I
    invoke-static {}, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;->access$100()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 604
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;->mVolumeStore:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;->mVolume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 605
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;->mVolumeStore:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;->mOriginalVolume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;->mVolumeStore:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;->mSystemVolume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 608
    iget-object v1, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$SavedState;->mVolumeStore:[Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;->isPlay:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 610
    :cond_0
    return-void
.end method
