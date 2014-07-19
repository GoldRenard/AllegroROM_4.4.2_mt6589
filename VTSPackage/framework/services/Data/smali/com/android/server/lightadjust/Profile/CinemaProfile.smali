.class public Lcom/android/server/lightadjust/Profile/CinemaProfile;
.super Lcom/android/server/lightadjust/Profile/LightAdjustProfile;
.source "CinemaProfile.java"


# instance fields
.field private getDEFAULT_SCREEN_BACK_LIGHT_VALUES:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-direct {p0}, Lcom/android/server/lightadjust/Profile/CinemaProfile;->initBrightnessValues()V

    .line 17
    return-void
.end method

.method private initBrightnessValues()V
    .locals 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->mResources:Landroid/content/res/Resources;

    const v1, 0x1070042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lightadjust/Profile/CinemaProfile;->getDEFAULT_SCREEN_BACK_LIGHT_VALUES:[I

    .line 21
    return-void
.end method


# virtual methods
.method public get_DEFAULT_SCREEN_BACK_LIGHT_VALUES(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 25
    iget-object v1, p0, Lcom/android/server/lightadjust/Profile/CinemaProfile;->getDEFAULT_SCREEN_BACK_LIGHT_VALUES:[I

    array-length v0, v1

    .line 26
    .local v0, "count":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 27
    iget-object v1, p0, Lcom/android/server/lightadjust/Profile/CinemaProfile;->getDEFAULT_SCREEN_BACK_LIGHT_VALUES:[I

    aget v1, v1, p1

    .line 30
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/lightadjust/Profile/CinemaProfile;->getDEFAULT_SCREEN_BACK_LIGHT_VALUES:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    goto :goto_0
.end method

.method public get_DEFAULT_SCREEN_BACK_LIGHT_VALUES_Count()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/server/lightadjust/Profile/CinemaProfile;->getDEFAULT_SCREEN_BACK_LIGHT_VALUES:[I

    array-length v0, v0

    return v0
.end method
