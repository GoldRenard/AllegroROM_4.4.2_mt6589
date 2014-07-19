.class public Lcom/android/server/lightadjust/LightAdjuestCore;
.super Ljava/lang/Object;
.source "LightAdjuestCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lightadjust/LightAdjuestCore$Callback;
    }
.end annotation


# static fields
.field private static LOGTAG:Ljava/lang/String;


# instance fields
.field private mCallback:Lcom/android/server/lightadjust/LightAdjuestCore$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDataGenerator:Lcom/android/server/lightadjust/DataGenerator/DataGenerator;

.field private mEnviromentalLightLevel:I

.field private mLockCurrentBrightness:Z

.field private mProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

.field private mScreenBrightnessPercent:I

.field private mScreenBrightnessPercentMax:I

.field private mScreenBrightnessPercentMin:I

.field private mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

.field private mSreenBrightnessManager:Lcom/android/server/lightadjust/ScreenBrightnessManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "AUTOADJUST"

    sput-object v0, Lcom/android/server/lightadjust/LightAdjuestCore;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/lightadjust/ServiceSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/android/server/lightadjust/ServiceSettings;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mScreenBrightnessPercentMin:I

    .line 25
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mScreenBrightnessPercentMax:I

    .line 37
    iput-object p1, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    .line 39
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjuestCore;->init()V

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/lightadjust/LightAdjuestCore;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjuestCore;

    .prologue
    .line 14
    iget v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mEnviromentalLightLevel:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/lightadjust/LightAdjuestCore;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjuestCore;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mEnviromentalLightLevel:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/lightadjust/LightAdjuestCore;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjuestCore;

    .prologue
    .line 14
    iget v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mScreenBrightnessPercent:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/lightadjust/LightAdjuestCore;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjuestCore;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mScreenBrightnessPercent:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/lightadjust/LightAdjuestCore;)Lcom/android/server/lightadjust/Profile/LightAdjustProfile;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjuestCore;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/android/server/lightadjust/LightAdjuestCore;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/lightadjust/LightAdjuestCore;)Lcom/android/server/lightadjust/LightAdjuestCore$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lightadjust/LightAdjuestCore;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mCallback:Lcom/android/server/lightadjust/LightAdjuestCore$Callback;

    return-object v0
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .prologue
    .line 162
    move v0, p1

    .line 164
    .local v0, "brightnessMode":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 168
    :goto_0
    return v0

    .line 166
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getCurrentProfileIndex()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/ServiceSettings;->getProfileIndex()I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 172
    iput v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mScreenBrightnessPercent:I

    .line 173
    iput v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mEnviromentalLightLevel:I

    .line 174
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjuestCore;->isInAutoAdjustMode()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mLockCurrentBrightness:Z

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mCallback:Lcom/android/server/lightadjust/LightAdjuestCore$Callback;

    .line 177
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjuestCore;->initProfiles()V

    .line 179
    new-instance v0, Lcom/android/server/lightadjust/ScreenBrightnessManager;

    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2}, Lcom/android/server/lightadjust/ScreenBrightnessManager;-><init>(Lcom/android/server/lightadjust/LightAdjuestCore;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mSreenBrightnessManager:Lcom/android/server/lightadjust/ScreenBrightnessManager;

    .line 180
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;->getInstance(Landroid/content/Context;I)Lcom/android/server/lightadjust/DataGenerator/DataGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mDataGenerator:Lcom/android/server/lightadjust/DataGenerator/DataGenerator;

    .line 181
    return-void
.end method

.method private initProfiles()V
    .locals 0

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/android/server/lightadjust/LightAdjuestCore;->reInitProfiles()V

    .line 44
    return-void
.end method

.method private isInAutoAdjustMode()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 155
    invoke-direct {p0, v1}, Lcom/android/server/lightadjust/LightAdjuestCore;->getBrightnessMode(I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 157
    .local v0, "checked":Z
    :goto_0
    sget-object v1, Lcom/android/server/lightadjust/LightAdjuestCore;->LOGTAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--isInAutoAdjustMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return v0

    .end local v0    # "checked":Z
    :cond_0
    move v0, v1

    .line 155
    goto :goto_0
.end method

.method private setBacklight(IZZ)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "isUserSet"    # Z
    .param p3, "isServiceSet"    # Z

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mLockCurrentBrightness:Z

    if-eqz v0, :cond_0

    .line 289
    sget-object v0, Lcom/android/server/lightadjust/LightAdjuestCore;->LOGTAG:Ljava/lang/String;

    const-string v1, "--Brightness Locked--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_0
    return-void

    .line 293
    :cond_0
    sget-object v0, Lcom/android/server/lightadjust/LightAdjuestCore;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBacklight brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isUserSet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isServiceSet="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", env="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/lightadjust/LightAdjuestCore;->getEnviromentalLightLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-static {p1}, Lcom/android/server/lightadjust/utils/ConvertUtils;->getPercent(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mScreenBrightnessPercent:I

    .line 299
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mSreenBrightnessManager:Lcom/android/server/lightadjust/ScreenBrightnessManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->setBrightness(IZZ)V

    goto :goto_0
.end method


# virtual methods
.method public Start(Lcom/android/server/lightadjust/LightAdjuestCore$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/lightadjust/LightAdjuestCore$Callback;

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mCallback:Lcom/android/server/lightadjust/LightAdjuestCore$Callback;

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mCallback:Lcom/android/server/lightadjust/LightAdjuestCore$Callback;

    .line 186
    :cond_0
    iput-object p1, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mCallback:Lcom/android/server/lightadjust/LightAdjuestCore$Callback;

    .line 188
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mDataGenerator:Lcom/android/server/lightadjust/DataGenerator/DataGenerator;

    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/lightadjust/AppConfig;->getSampleRate(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;->setSampleRate(I)V

    .line 189
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mDataGenerator:Lcom/android/server/lightadjust/DataGenerator/DataGenerator;

    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/lightadjust/AppConfig;->getSampleStepSize(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;->setSampleStepSize(I)V

    .line 190
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mDataGenerator:Lcom/android/server/lightadjust/DataGenerator/DataGenerator;

    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/lightadjust/AppConfig;->getAntishake_interval_up(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;->setAntishake_interval_up(I)V

    .line 191
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mDataGenerator:Lcom/android/server/lightadjust/DataGenerator/DataGenerator;

    iget-object v1, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/lightadjust/AppConfig;->getAntishake_interval_down(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;->setAntishake_interval_down(I)V

    .line 192
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mDataGenerator:Lcom/android/server/lightadjust/DataGenerator/DataGenerator;

    new-instance v1, Lcom/android/server/lightadjust/LightAdjuestCore$1;

    invoke-direct {v1, p0}, Lcom/android/server/lightadjust/LightAdjuestCore$1;-><init>(Lcom/android/server/lightadjust/LightAdjuestCore;)V

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;->startGenerate(Lcom/android/server/lightadjust/DataGenerator/DataGenerator$Callback;)V

    .line 217
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 303
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mDataGenerator:Lcom/android/server/lightadjust/DataGenerator/DataGenerator;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mDataGenerator:Lcom/android/server/lightadjust/DataGenerator/DataGenerator;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;->TerminateAll()V

    .line 305
    iput-object v1, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mDataGenerator:Lcom/android/server/lightadjust/DataGenerator/DataGenerator;

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mSreenBrightnessManager:Lcom/android/server/lightadjust/ScreenBrightnessManager;

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mSreenBrightnessManager:Lcom/android/server/lightadjust/ScreenBrightnessManager;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->TernateAllTimerTasks()V

    .line 309
    iput-object v1, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mSreenBrightnessManager:Lcom/android/server/lightadjust/ScreenBrightnessManager;

    .line 311
    :cond_1
    return-void
.end method

.method public forceStopAdjustBrightness()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mSreenBrightnessManager:Lcom/android/server/lightadjust/ScreenBrightnessManager;

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/android/server/lightadjust/LightAdjuestCore;->LOGTAG:Ljava/lang/String;

    const-string v1, "force stop--"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mSreenBrightnessManager:Lcom/android/server/lightadjust/ScreenBrightnessManager;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->forceStopAdjust()V

    .line 144
    :cond_0
    return-void
.end method

.method public getBrightnessFadeSpeed()I
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/ServiceSettings;->get_Brightness_Fade_Speed()I

    move-result v0

    return v0
.end method

.method public getChangePolicy()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/ServiceSettings;->get_Backlight_Adjust_Policy()I

    move-result v0

    return v0
.end method

.method public getEnviromentalLightLevel()I
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mEnviromentalLightLevel:I

    return v0
.end method

.method public getFadeBrightnessChangesSmoothly()Z
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mServiceSettings:Lcom/android/server/lightadjust/ServiceSettings;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/ServiceSettings;->get_Fade_Brightness_Changes()Z

    move-result v0

    return v0
.end method

.method public getScreenBrightnessPercent(Z)I
    .locals 2
    .param p1, "isFromService"    # Z

    .prologue
    .line 236
    iget v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mScreenBrightnessPercent:I

    iget v1, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mScreenBrightnessPercentMin:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mScreenBrightnessPercent:I

    iget v1, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mScreenBrightnessPercentMax:I

    if-gt v0, v1, :cond_0

    .line 238
    iget v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mScreenBrightnessPercent:I

    .line 241
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mScreenBrightnessPercent:I

    goto :goto_0
.end method

.method public getScreenBrightnessValue()I
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    iget v1, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mEnviromentalLightLevel:I

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->getBrightnessValue(I)I

    move-result v0

    return v0
.end method

.method public isLockedBrightness()Z
    .locals 3

    .prologue
    .line 95
    sget-object v0, Lcom/android/server/lightadjust/LightAdjuestCore;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mLockCurrentBrightness:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-boolean v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mLockCurrentBrightness:Z

    return v0
.end method

.method public lockBrightnessAtCurrent()V
    .locals 3

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mLockCurrentBrightness:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mLockCurrentBrightness:Z

    .line 91
    sget-object v0, Lcom/android/server/lightadjust/LightAdjuestCore;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock changed, isLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mLockCurrentBrightness:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reCaculateAndRestart()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mSreenBrightnessManager:Lcom/android/server/lightadjust/ScreenBrightnessManager;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->reCaculateAndRestart()V

    .line 83
    return-void
.end method

.method public reInitProfiles()V
    .locals 5

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/server/lightadjust/LightAdjuestCore;->getCurrentProfileIndex()I

    move-result v1

    .line 49
    .local v1, "index":I
    packed-switch v1, :pswitch_data_0

    .line 65
    :goto_0
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 66
    .local v0, "flag":Z
    :goto_1
    sget-object v2, Lcom/android/server/lightadjust/LightAdjuestCore;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mProfile == null ---> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void

    .line 51
    .end local v0    # "flag":Z
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;->DAYTIME_PROFILE:Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    invoke-static {v2, v3}, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->getInstance(Landroid/content/Context;Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;)Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;->NIGHT_PROFILE:Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    invoke-static {v2, v3}, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->getInstance(Landroid/content/Context;Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;)Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    goto :goto_0

    .line 57
    :pswitch_2
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;->INCAR_PROFIEL:Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    invoke-static {v2, v3}, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->getInstance(Landroid/content/Context;Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;)Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    goto :goto_0

    .line 60
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;->CINEMA_PROFILE:Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;

    invoke-static {v2, v3}, Lcom/android/server/lightadjust/Profile/LightAdjustProfile;->getInstance(Landroid/content/Context;Lcom/android/server/lightadjust/Profile/LightAdjustProfile$PROFILE_TYPE;)Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mProfile:Lcom/android/server/lightadjust/Profile/LightAdjustProfile;

    goto :goto_0

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public screenOffStopSampleRightNow()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mDataGenerator:Lcom/android/server/lightadjust/DataGenerator/DataGenerator;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;->NoReportDataRightNow()V

    .line 116
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mSreenBrightnessManager:Lcom/android/server/lightadjust/ScreenBrightnessManager;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/ScreenBrightnessManager;->forceStopAdjust()V

    .line 117
    return-void
.end method

.method public screenOnReportFirstDataRightNow()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mDataGenerator:Lcom/android/server/lightadjust/DataGenerator/DataGenerator;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;->ReportFirstDataRightNow()V

    .line 112
    return-void
.end method

.method public sendLogInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mCallback:Lcom/android/server/lightadjust/LightAdjuestCore$Callback;

    invoke-interface {v0, p1}, Lcom/android/server/lightadjust/LightAdjuestCore$Callback;->sendLogInfo(Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public setAntiShakeBrighter(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mDataGenerator:Lcom/android/server/lightadjust/DataGenerator/DataGenerator;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;->setAntishake_interval_up(I)V

    .line 101
    return-void
.end method

.method public setAntiShakeDarker(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mDataGenerator:Lcom/android/server/lightadjust/DataGenerator/DataGenerator;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;->setAntishake_interval_down(I)V

    .line 105
    return-void
.end method

.method public setBacklightPercent(IZ)V
    .locals 2
    .param p1, "percent"    # I
    .param p2, "isServiceSet"    # Z

    .prologue
    .line 260
    invoke-static {p1}, Lcom/android/server/lightadjust/utils/ConvertUtils;->getValue(I)I

    move-result v0

    .line 261
    .local v0, "brightness":I
    if-eqz p2, :cond_0

    .line 262
    iput p1, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mScreenBrightnessPercent:I

    .line 264
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/lightadjust/LightAdjuestCore;->setBacklight(IZZ)V

    .line 265
    return-void
.end method

.method public setBacklightValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    const/4 v0, 0x0

    .line 278
    invoke-direct {p0, p1, v0, v0}, Lcom/android/server/lightadjust/LightAdjuestCore;->setBacklight(IZZ)V

    .line 279
    return-void
.end method

.method public setBacklightValueUser(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 271
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/lightadjust/LightAdjuestCore;->setBacklight(IZZ)V

    .line 272
    return-void
.end method

.method public setBrightnessLocked(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mLockCurrentBrightness:Z

    .line 87
    return-void
.end method

.method public setSampleRate(I)V
    .locals 1
    .param p1, "milliSeconds"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mDataGenerator:Lcom/android/server/lightadjust/DataGenerator/DataGenerator;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/DataGenerator/DataGenerator;->setSampleRate(I)V

    .line 79
    return-void
.end method

.method public setScreenBrightnessPercentScope(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 71
    if-le p2, p1, :cond_0

    .line 72
    iput p1, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mScreenBrightnessPercentMin:I

    .line 73
    iput p2, p0, Lcom/android/server/lightadjust/LightAdjuestCore;->mScreenBrightnessPercentMax:I

    .line 75
    :cond_0
    return-void
.end method
