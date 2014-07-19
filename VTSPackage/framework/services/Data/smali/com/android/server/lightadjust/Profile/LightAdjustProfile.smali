.class public abstract Lcom/android/server/lightadjust/Profile/LightAdjustProfile;
.super Ljava/lang/Object;
.source "LightAdjustProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lightadjust/Profile/LightAdjustProfile$1;,
        Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;
    }
.end annotation


# static fields
.field protected static final INVALID_INDEX_VALUE:I = 0x270f

.field private static mActiveLightAudioProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

.field private static mCinemaProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

.field private static mDaytimeProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

.field private static mIncarProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

.field private static mNightProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;


# instance fields
.field protected DEFAULT_ENVIROMENTAL_LIGHT_VALUES:[I

.field protected final mContext:Landroid/content/Context;

.field protected final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->mContext:Landroid/content/Context;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->mResources:Landroid/content/res/Resources;

    .line 73
    invoke-direct {p0}, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->init()V

    .line 74
    return-void
.end method

.method private getIndex(I)I
    .locals 5
    .param p1, "enviromentalLightLevel"    # I

    .prologue
    .line 104
    const/16 v2, 0x270f

    .line 105
    .local v2, "index":I
    iget-object v4, p0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->DEFAULT_ENVIROMENTAL_LIGHT_VALUES:[I

    array-length v0, v4

    .line 106
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 107
    iget-object v4, p0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->DEFAULT_ENVIROMENTAL_LIGHT_VALUES:[I

    aget v4, v4, v1

    if-le p1, v4, :cond_0

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_0
    move v2, v1

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->get_DEFAULT_SCREEN_BACK_LIGHT_VALUES_Count()I

    move-result v3

    .line 116
    .local v3, "lcd_values_count":I
    const/16 v4, 0x270f

    if-ne v2, v4, :cond_2

    .line 117
    add-int/lit8 v2, v3, -0x1

    .line 119
    :cond_2
    return v2
.end method

.method public static getInstance(Landroid/content/Context;Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;)Lcom/android/server/lightadjust/Profile/LightAdjustProfile;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mType"    # Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    .prologue
    .line 35
    sget-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$1;->$SwitchMap$com$android$server$lightadjust$Profile$LightAdjustProfile$PROFILE_TYPE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 61
    const-string v0, "ERROR"

    const-string v1, "ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :goto_0
    sget-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->mActiveLightAudioProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    if-eqz v0, :cond_4

    .line 65
    sget-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->mActiveLightAudioProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    .line 67
    :goto_1
    return-object v0

    .line 37
    :pswitch_0
    sget-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->mDaytimeProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/android/server/lightadjust/Profile/DaytimeProfile;

    invoke-direct {v0, p0}, Lcom/android/server/lightadjust/Profile/DaytimeProfile;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->mDaytimeProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    .line 40
    :cond_0
    sget-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->mDaytimeProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    sput-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->mActiveLightAudioProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    goto :goto_0

    .line 43
    :pswitch_1
    sget-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->mNightProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    if-nez v0, :cond_1

    .line 44
    new-instance v0, Lcom/android/server/lightadjust/Profile/NightProfile;

    invoke-direct {v0, p0}, Lcom/android/server/lightadjust/Profile/NightProfile;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->mNightProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    .line 46
    :cond_1
    sget-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->mNightProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    sput-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->mActiveLightAudioProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    goto :goto_0

    .line 49
    :pswitch_2
    sget-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->mIncarProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    if-nez v0, :cond_2

    .line 50
    new-instance v0, Lcom/android/server/lightadjust/Profile/IncarProfile;

    invoke-direct {v0, p0}, Lcom/android/server/lightadjust/Profile/IncarProfile;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->mIncarProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    .line 52
    :cond_2
    sget-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->mIncarProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    sput-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->mActiveLightAudioProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    goto :goto_0

    .line 55
    :pswitch_3
    sget-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->mCinemaProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    if-nez v0, :cond_3

    .line 56
    new-instance v0, Lcom/android/server/lightadjust/Profile/CinemaProfile;

    invoke-direct {v0, p0}, Lcom/android/server/lightadjust/Profile/CinemaProfile;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->mCinemaProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    .line 58
    :cond_3
    sget-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->mCinemaProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    sput-object v0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->mActiveLightAudioProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    goto :goto_0

    .line 67
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private init()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->mResources:Landroid/content/res/Resources;

    const v1, 0x107003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->DEFAULT_ENVIROMENTAL_LIGHT_VALUES:[I

    .line 78
    return-void
.end method


# virtual methods
.method public getBrightnessPercent(I)I
    .locals 2
    .param p1, "enviromentalLightLevel"    # I

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->getBrightnessValue(I)I

    move-result v0

    .line 82
    .local v0, "level":I
    invoke-static {v0}, Lcom/android/server/lightadjust/utils/ConvertUtils;->getPercent(I)I

    move-result v1

    .line 83
    .local v1, "percent":I
    return v1
.end method

.method public getBrightnessValue(I)I
    .locals 2
    .param p1, "enviromentalLightLevel"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->getIndex(I)I

    move-result v0

    .line 88
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->get_DEFAULT_SCREEN_BACK_LIGHT_VALUES(I)I

    move-result v1

    .line 89
    .local v1, "level":I
    return v1
.end method

.method public abstract get_DEFAULT_SCREEN_BACK_LIGHT_VALUES(I)I
.end method

.method public abstract get_DEFAULT_SCREEN_BACK_LIGHT_VALUES_Count()I
.end method
