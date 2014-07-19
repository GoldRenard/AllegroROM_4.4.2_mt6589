.class public Lcom/android/server/lightadjust/ServiceSettings;
.super Ljava/lang/Object;
.source "ServiceSettings.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    .line 18
    new-instance v0, Lcom/android/server/lightadjust/SettingsCache;

    invoke-direct {v0}, Lcom/android/server/lightadjust/SettingsCache;-><init>()V

    iput-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    .line 19
    invoke-direct {p0}, Lcom/android/server/lightadjust/ServiceSettings;->init()V

    .line 20
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 24
    const-string v0, "AUTOADJUST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intervals---getProfileCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/lightadjust/AppConfig;->getProfileCount(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    iget-object v1, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/lightadjust/AppConfig;->getProfileCount(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/SettingsCache;->setProfileCount(I)V

    .line 26
    const-string v0, "AUTOADJUST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intervals---getCurrentProfileIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/lightadjust/AppConfig;->getCurrentProfileIndex(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    iget-object v1, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/lightadjust/AppConfig;->getCurrentProfileIndex(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/SettingsCache;->setProfileIndex(I)V

    .line 28
    const-string v0, "AUTOADJUST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intervals---getChangePolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/lightadjust/AppConfig;->getChangePolicy(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    iget-object v1, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/lightadjust/AppConfig;->getChangePolicy(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/SettingsCache;->setBacklightAdjustPolicy(I)V

    .line 30
    const-string v0, "AUTOADJUST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intervals--- getSampleRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/lightadjust/AppConfig;->getSampleRate(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    iget-object v1, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/lightadjust/AppConfig;->getSampleRate(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/SettingsCache;->setSensorSampleRate(I)V

    .line 32
    const-string v0, "AUTOADJUST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intervals---fade speed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/lightadjust/AppConfig;->getBrightnessFadeSpeed(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    iget-object v1, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/lightadjust/AppConfig;->getBrightnessFadeSpeed(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/SettingsCache;->setBrightnessFadeSpeed(I)V

    .line 34
    const-string v0, "AUTOADJUST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intervals---step size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/lightadjust/AppConfig;->getSampleStepSize(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    iget-object v1, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/lightadjust/AppConfig;->getSampleStepSize(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/SettingsCache;->setBrightnessStepSize(I)V

    .line 36
    const-string v0, "AUTOADJUST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intervals---getFadeBrightnessChangesSmoothly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/lightadjust/AppConfig;->getFadeBrightnessChangesSmoothly(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    iget-object v1, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/lightadjust/AppConfig;->getFadeBrightnessChangesSmoothly(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/SettingsCache;->setFadeBrightnessChanges(Z)V

    .line 38
    const-string v0, "AUTOADJUST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intervals---min="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/lightadjust/AppConfig;->getMimimumBrightnessValue(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/lightadjust/AppConfig;->getMaximumBrightnessValue(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    iget-object v1, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/lightadjust/AppConfig;->getMimimumBrightnessValue(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/lightadjust/AppConfig;->getMaximumBrightnessValue(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/lightadjust/SettingsCache;->setScreenBrightnessScope(II)V

    .line 41
    const-string v0, "AUTOADJUST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intervals---anti bright="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/lightadjust/AppConfig;->getAntishake_interval_up(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    iget-object v1, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/lightadjust/AppConfig;->getAntishake_interval_up(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/SettingsCache;->setBrightAntiShakeInterval(I)V

    .line 43
    const-string v0, "AUTOADJUST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intervals---anti dark="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/lightadjust/AppConfig;->getAntishake_interval_down(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    iget-object v1, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/lightadjust/AppConfig;->getAntishake_interval_down(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/SettingsCache;->setDarkAntiShakeInterval(I)V

    .line 45
    const-string v0, "AUTOADJUST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "intervals---getIfShowNotificationControlPanel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/lightadjust/AppConfig;->getIfShowNotificationControlPanel(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    iget-object v1, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/lightadjust/AppConfig;->getIfShowNotificationControlPanel(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/lightadjust/SettingsCache;->setShowNotificationControllerPanel(Z)V

    .line 48
    :cond_0
    return-void
.end method


# virtual methods
.method public changeProfileToNext()V
    .locals 2

    .prologue
    .line 73
    iget-object v1, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v1}, Lcom/android/server/lightadjust/SettingsCache;->changeProfileToNext()V

    .line 74
    iget-object v1, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v1}, Lcom/android/server/lightadjust/SettingsCache;->getProfileIndex()I

    move-result v0

    .line 75
    .local v0, "index":I
    invoke-virtual {p0, v0}, Lcom/android/server/lightadjust/ServiceSettings;->setProfileIndex(I)V

    .line 76
    return-void
.end method

.method public getProfileCount()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/SettingsCache;->getProfileCount()I

    move-result v0

    return v0
.end method

.method public getProfileIndex()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/SettingsCache;->getProfileIndex()I

    move-result v0

    return v0
.end method

.method public getSettingsCache()Lcom/android/server/lightadjust/SettingsCache;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    return-object v0
.end method

.method public get_Backlight_Adjust_Policy()I
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/SettingsCache;->get_Backlight_Adjust_Policy()I

    move-result v0

    return v0
.end method

.method public get_Bright_Anti_Shake_Interval()I
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/SettingsCache;->get_Bright_Anti_Shake_Interval()I

    move-result v0

    return v0
.end method

.method public get_Brightness_Fade_Speed()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/SettingsCache;->get_Brightness_Fade_Speed()I

    move-result v0

    return v0
.end method

.method public get_Brightness_Step_Size()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/SettingsCache;->get_Brightness_Step_Size()I

    move-result v0

    return v0
.end method

.method public get_Dark_Anti_Shake_interval()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/SettingsCache;->get_Dark_Anti_Shake_interval()I

    move-result v0

    return v0
.end method

.method public get_Fade_Brightness_Changes()Z
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/SettingsCache;->get_Fade_Brightness_Changes()Z

    move-result v0

    return v0
.end method

.method public get_Maximum_Brightness_Value()I
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/SettingsCache;->get_Maximum_Brightness_Value()I

    move-result v0

    return v0
.end method

.method public get_Minimum_Brightness_Value()I
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/SettingsCache;->get_Minimum_Brightness_Value()I

    move-result v0

    return v0
.end method

.method public get_Sensor_Sample_Rate()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/SettingsCache;->get_Sensor_Sample_Rate()I

    move-result v0

    return v0
.end method

.method public get_Show_Notification_Controller_Panel()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/SettingsCache;->get_Show_Notification_Controller_Panel()Z

    move-result v0

    return v0
.end method

.method public resetSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 56
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    const v1, 0x10f0014

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 58
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    const v1, 0x10f0013

    invoke-static {v0, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/SettingsCache;->resetSettings()V

    .line 62
    invoke-direct {p0}, Lcom/android/server/lightadjust/ServiceSettings;->init()V

    .line 63
    return-void
.end method

.method public setBacklightAdjustPolicy(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/SettingsCache;->setBacklightAdjustPolicy(I)V

    .line 80
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/lightadjust/AppConfig;->setChangePolicy(Landroid/content/Context;I)V

    .line 81
    return-void
.end method

.method public setBrightAntiShakeInterval(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/SettingsCache;->setBrightAntiShakeInterval(I)V

    .line 111
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/lightadjust/AppConfig;->setBrightAntiShakeInterval(Landroid/content/Context;I)V

    .line 112
    return-void
.end method

.method public setBrightnessFadeSpeed(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/SettingsCache;->setBrightnessFadeSpeed(I)V

    .line 90
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/lightadjust/AppConfig;->setBrightnessFadeSpeed(Landroid/content/Context;I)V

    .line 91
    return-void
.end method

.method public setBrightnessStepSize(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/SettingsCache;->setBrightnessStepSize(I)V

    .line 95
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/lightadjust/AppConfig;->setBrightnessStepSize(Landroid/content/Context;I)V

    .line 96
    return-void
.end method

.method public setDarkAntiShakeInterval(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/SettingsCache;->setDarkAntiShakeInterval(I)V

    .line 116
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/lightadjust/AppConfig;->setDarkAntiShakeInterval(Landroid/content/Context;I)V

    .line 117
    return-void
.end method

.method public setFadeBrightnessChanges(Z)V
    .locals 1
    .param p1, "changes_flag"    # Z

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/SettingsCache;->setFadeBrightnessChanges(Z)V

    .line 100
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/lightadjust/AppConfig;->setFadeBrightnessChanges(Landroid/content/Context;Z)V

    .line 101
    return-void
.end method

.method public setProfileIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 66
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0}, Lcom/android/server/lightadjust/SettingsCache;->getProfileCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/SettingsCache;->setProfileIndex(I)V

    .line 68
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/lightadjust/AppConfig;->setCurrentProfile(Landroid/content/Context;I)V

    .line 70
    :cond_0
    return-void
.end method

.method public setScreenBrightnessScope(II)V
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/lightadjust/SettingsCache;->setScreenBrightnessScope(II)V

    .line 106
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/server/lightadjust/AppConfig;->setScreenBrightnessScope(Landroid/content/Context;II)V

    .line 107
    return-void
.end method

.method public setSensorSampleRate(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/SettingsCache;->setSensorSampleRate(I)V

    .line 85
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/lightadjust/AppConfig;->setSampleRate(Landroid/content/Context;I)V

    .line 86
    return-void
.end method

.method public setShowNotificationControllerPanel(Z)V
    .locals 1
    .param p1, "showOrNot"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mSettingsCache:Lcom/android/server/lightadjust/SettingsCache;

    invoke-virtual {v0, p1}, Lcom/android/server/lightadjust/SettingsCache;->setShowNotificationControllerPanel(Z)V

    .line 121
    iget-object v0, p0, Lcom/android/server/lightadjust/ServiceSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/server/lightadjust/AppConfig;->setShowNotificationControllerPanel(Landroid/content/Context;Z)V

    .line 122
    return-void
.end method
