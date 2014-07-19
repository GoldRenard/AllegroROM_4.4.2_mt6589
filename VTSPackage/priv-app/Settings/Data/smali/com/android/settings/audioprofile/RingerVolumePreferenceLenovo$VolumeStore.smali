.class public Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;
.super Ljava/lang/Object;
.source "RingerVolumePreferenceLenovo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeStore"
.end annotation


# instance fields
.field public isPlay:I

.field public mOriginalVolume:I

.field public mSystemVolume:I

.field public mVolume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 576
    iput v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;->mVolume:I

    .line 577
    iput v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;->mOriginalVolume:I

    .line 578
    iput v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;->mSystemVolume:I

    .line 580
    iput v0, p0, Lcom/android/settings/audioprofile/RingerVolumePreferenceLenovo$VolumeStore;->isPlay:I

    return-void
.end method
