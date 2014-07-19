.class public Lcom/android/server/lightadjust/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.java"


# static fields
.field public static final HANDLER_ID_GET_DISPLAY_REFRESH_RIGHT_NOW:I = 0x4

.field public static final HANDLER_ID_GET_DISPLAY_UPDATE:I = 0x2

.field public static final HANDLER_ID_GET_DISPLAY_UPDATE_LOCK_ICON:I = 0x6

.field public static final HANDLER_ID_GET_DISPLAY_UPDATE_LOGINFO:I = 0x5

.field public static final HANDLER_ID_GET_DISPLAY_UPDATE_SEEKBAR:I = 0x3

.field public static final HANDLER_ID_GET_RANDOM_VALUE:I = 0x63

.field public static final INDEX_OPTION_ONE:I = 0x1

.field public static final INDEX_OPTION_THREE:I = 0x3

.field public static final INDEX_OPTION_TWO:I = 0x2

.field public static final INDEX_OPTION_ZERO:I = 0x0

.field public static final INVALID_INDEX_VALUE:I = -0x1

.field public static final LOGINFO_MAX_LINES:I = 0x14

.field public static final LOGTAG:Ljava/lang/String; = "AUTOADJUST"

.field public static final NOTIBAR_ACTION_CHANGE_PROFILE:Ljava/lang/String; = "com.lenovo.lightadjuest.CHANGE_PROFILE"

.field public static final NOTIBAR_ACTION_DECREASE:Ljava/lang/String; = "com.lenovo.lightadjuest.DECREASE_BRIGHTNESS"

.field public static final NOTIBAR_ACTION_INCREASE:Ljava/lang/String; = "com.lenovo.lightadjuest.INCREASE_BRIGHTNESS"

.field public static final NOTIBAR_ACTION_LOCK_BRIGHTNESS:Ljava/lang/String; = "com.lenovo.lightadjuest.LOCK_BRIGHTNESS"

.field public static final NOTIBAR_ACTION_REFRESH_NOW:Ljava/lang/String; = "com.lenovo.lightadjuest.REFRESH_NOW"

.field public static final PERCENT_0:I = 0x0

.field public static final PERCENT_100:I = 0x64

.field public static final PERCENT_INCREASE_DECREASE_DETAL_10:I = 0xa

.field public static final PREF_KEY_BRIGHTNESS_FADE_SPEED:Ljava/lang/String; = "brightness_fade_speed"

.field public static final PREF_KEY_BRIGHTNESS_STEP_SIZE:Ljava/lang/String; = "brightness_step_size"

.field public static final PREF_KEY_FADE_BRIGHTNESS_CHANGES:Ljava/lang/String; = "fade_brightness_changes"

.field public static final PREF_KEY_LENOVO_ANTISHAKE_INTERVAL_DOWN:Ljava/lang/String; = "lenovo_antishake_interval_down"

.field public static final PREF_KEY_LENOVO_ANTISHAKE_INTERVAL_UP:Ljava/lang/String; = "lenovo_antishake_interval_up"

.field public static final PREF_KEY_LIGHT_SENSOR_POLL_RATE:Ljava/lang/String; = "light_sensor_poll_rate"

.field public static final PREF_KEY_MAX:I = 0x14

.field public static final PREF_KEY_MAXIMUM_BRIGHTNESS:Ljava/lang/String; = "maximum_brightness"

.field public static final PREF_KEY_MINIMUM_BRIGHTNESS:Ljava/lang/String; = "minimum_brightness"

.field public static final PREF_KEY_POLICY_SELECTION:Ljava/lang/String; = "policy_selection"

.field public static final PREF_KEY_PROFILE_SELECTION:Ljava/lang/String; = "profile_selection"

.field public static final PREF_KEY_SHOW_NOTIFICATION_CONTROL_PANEL:Ljava/lang/String; = "show_notification_control_panel"

.field public static final PREF_KEY_UNDIFIED_VALUE:Ljava/lang/String; = "UNDEFINED"

.field public static final mFormat:Ljava/lang/String; = "hh:mm:ss.SSS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAntishake_interval_down(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    const-string v4, "lenovo_antishake_interval_down"

    invoke-static {p0, v4}, Lcom/android/server/lightadjust/AppConfig;->getSettingValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 260
    .local v1, "res":Landroid/content/res/Resources;
    const v4, 0x1070017

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, "values":[Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/lightadjust/AppConfig;->getIndexInStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 264
    .local v0, "index":I
    return v0
.end method

.method public static getAntishake_interval_up(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 235
    const-string v4, "lenovo_antishake_interval_up"

    invoke-static {p0, v4}, Lcom/android/server/lightadjust/AppConfig;->getSettingValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 238
    .local v1, "res":Landroid/content/res/Resources;
    const v4, 0x1070015

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "values":[Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/lightadjust/AppConfig;->getIndexInStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 242
    .local v0, "index":I
    return v0
.end method

.method public static getBrightnessFadeSpeed(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    const-string v4, "brightness_fade_speed"

    invoke-static {p0, v4}, Lcom/android/server/lightadjust/AppConfig;->getSettingValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 178
    .local v1, "res":Landroid/content/res/Resources;
    const v4, 0x1070011

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "values":[Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/lightadjust/AppConfig;->getIndexInStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 181
    .local v0, "index":I
    return v0
.end method

.method public static getChangePolicy(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    const-string v4, "policy_selection"

    invoke-static {p0, v4}, Lcom/android/server/lightadjust/AppConfig;->getSettingValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 145
    .local v2, "res":Landroid/content/res/Resources;
    const v4, 0x107000d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "policy_values":[Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/android/server/lightadjust/AppConfig;->getIndexInStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 148
    .local v0, "index":I
    return v0
.end method

.method public static getCurrentProfileIndex(Landroid/content/Context;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const-string v4, "profile_selection"

    invoke-static {p0, v4}, Lcom/android/server/lightadjust/AppConfig;->getSettingValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "profile_selection":Ljava/lang/String;
    const-string v4, "AUTOADJUST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "profile_selection="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 72
    .local v3, "res":Landroid/content/res/Resources;
    const v4, 0x107000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "profile_values":[Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/lightadjust/AppConfig;->getIndexInStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 74
    .local v0, "index":I
    const-string v4, "AUTOADJUST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "profile_selection index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return v0
.end method

.method public static getFadeBrightnessChangesSmoothly(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const-string v0, "fade_brightness_changes"

    invoke-static {p0, v0}, Lcom/android/server/lightadjust/AppConfig;->getSettingBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getIfShowNotificationControlPanel(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 278
    const-string v1, "show_notification_control_panel"

    invoke-static {p0, v1}, Lcom/android/server/lightadjust/AppConfig;->getSettingBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 279
    .local v0, "flag":Z
    const-string v1, "AUTOADJUST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SHOW_NOTIFICATION_CONTROL_PANEL-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return v0
.end method

.method public static getIndexInStringArray(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "stringArray"    # [Ljava/lang/String;

    .prologue
    .line 339
    const/4 v2, -0x1

    .line 340
    .local v2, "index":I
    array-length v0, p1

    .line 341
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 342
    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 343
    move v2, v1

    .line 347
    :cond_0
    return v2

    .line 341
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getMaximumBrightnessValue(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    const-string v2, "maximum_brightness"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/android/server/lightadjust/AppConfig;->getSettingValueInt(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "maxValue":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 113
    .local v1, "value":I
    return v1
.end method

.method public static getMimimumBrightnessValue(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 121
    const-string v2, "minimum_brightness"

    const/16 v3, 0x64

    invoke-static {p0, v2, v3}, Lcom/android/server/lightadjust/AppConfig;->getSettingValueInt(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "minValue":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 123
    .local v1, "value":I
    return v1
.end method

.method public static getProfileCount(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 83
    .local v2, "res":Landroid/content/res/Resources;
    const v3, 0x107000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "profile_values":[Ljava/lang/String;
    array-length v0, v1

    .line 85
    .local v0, "count":I
    return v0
.end method

.method public static getSampleRate(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 384
    const-string v5, "light_sensor_poll_rate"

    invoke-static {p0, v5}, Lcom/android/server/lightadjust/AppConfig;->getSettingValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, "value":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 386
    .local v2, "res":Landroid/content/res/Resources;
    const v5, 0x107000f

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, "poll_rate_values":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 389
    .local v3, "sampleRate":I
    invoke-static {v4, v1}, Lcom/android/server/lightadjust/AppConfig;->getIndexInStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 391
    .local v0, "index":I
    packed-switch v0, :pswitch_data_0

    .line 402
    const/4 v3, 0x0

    .line 405
    :goto_0
    const-string v5, "AUTOADJUST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sample_rate="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "s"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return v3

    .line 393
    :pswitch_0
    const/16 v3, 0x1e

    .line 394
    goto :goto_0

    .line 396
    :pswitch_1
    const/16 v3, 0x3c

    .line 397
    goto :goto_0

    .line 399
    :pswitch_2
    const/16 v3, 0x78

    .line 400
    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getSampleStepSize(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    const-string v4, "brightness_step_size"

    invoke-static {p0, v4}, Lcom/android/server/lightadjust/AppConfig;->getSettingValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 218
    .local v1, "res":Landroid/content/res/Resources;
    const v4, 0x1070013

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "values":[Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/lightadjust/AppConfig;->getIndexInStringArray(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 221
    .local v0, "index":I
    return v0
.end method

.method private static getSettingBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 318
    .local v0, "flag":Z
    const-string v1, "fade_brightness_changes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    const/4 v1, 0x1

    invoke-static {p0, p1, v1}, Lcom/android/server/lightadjust/AppConfig;->readBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 323
    :cond_0
    :goto_0
    return v0

    .line 320
    :cond_1
    const-string v1, "show_notification_control_panel"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 321
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Lcom/android/server/lightadjust/AppConfig;->readBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private static getSettingValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 292
    invoke-static {p1}, Lcom/android/server/lightadjust/AppConfig;->isOneOfValidKeys(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 294
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    const-string v2, "UNDEFINED"

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "value":Ljava/lang/String;
    const-string v2, "UNDEFINED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    const-string v2, "zhangxj"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-->readValue--ERROR"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    .end local v0    # "sharedPref":Landroid/content/SharedPreferences;
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "UNDEFINED"

    goto :goto_0
.end method

.method private static getSettingValueInt(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 304
    invoke-static {p1}, Lcom/android/server/lightadjust/AppConfig;->isOneOfValidKeys(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 305
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 306
    .local v0, "sharedPref":Landroid/content/SharedPreferences;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .end local v0    # "sharedPref":Landroid/content/SharedPreferences;
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "UNDEFINED"

    goto :goto_0
.end method

.method private static isOneOfValidKeys(Ljava/lang/String;)Z
    .locals 8
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 355
    const/16 v3, 0x14

    new-array v0, v3, [Z

    .line 357
    .local v0, "flag":[Z
    const-string v3, "profile_selection"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v0, v1

    .line 358
    const-string v3, "policy_selection"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v0, v2

    .line 359
    const-string v3, "light_sensor_poll_rate"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v0, v5

    .line 360
    const-string v3, "brightness_fade_speed"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v0, v6

    .line 361
    const-string v3, "brightness_step_size"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    aput-boolean v3, v0, v7

    .line 362
    const/4 v3, 0x5

    const-string v4, "fade_brightness_changes"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v4, v0, v3

    .line 363
    const/4 v3, 0x6

    const-string v4, "minimum_brightness"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v4, v0, v3

    .line 364
    const/4 v3, 0x7

    const-string v4, "maximum_brightness"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v4, v0, v3

    .line 365
    const/16 v3, 0x8

    const-string v4, "lenovo_antishake_interval_up"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v4, v0, v3

    .line 366
    const/16 v3, 0x9

    const-string v4, "lenovo_antishake_interval_down"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v4, v0, v3

    .line 367
    const/16 v3, 0xa

    const-string v4, "show_notification_control_panel"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    aput-boolean v4, v0, v3

    .line 369
    aget-boolean v3, v0, v1

    if-nez v3, :cond_0

    aget-boolean v3, v0, v2

    if-nez v3, :cond_0

    aget-boolean v3, v0, v5

    if-nez v3, :cond_0

    aget-boolean v3, v0, v6

    if-nez v3, :cond_0

    aget-boolean v3, v0, v7

    if-nez v3, :cond_0

    const/4 v3, 0x5

    aget-boolean v3, v0, v3

    if-nez v3, :cond_0

    const/4 v3, 0x6

    aget-boolean v3, v0, v3

    if-nez v3, :cond_0

    const/4 v3, 0x7

    aget-boolean v3, v0, v3

    if-nez v3, :cond_0

    const/16 v3, 0x8

    aget-boolean v3, v0, v3

    if-nez v3, :cond_0

    const/16 v3, 0x9

    aget-boolean v3, v0, v3

    if-nez v3, :cond_0

    const/16 v3, 0xa

    aget-boolean v3, v0, v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 373
    .local v1, "isOneOfValidKeys":Z
    :cond_1
    const-string v2, "AUTOADJUST"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOneOfValidKeys="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return v1
.end method

.method private static readBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 328
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 329
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 330
    .local v0, "flag":Z
    return v0
.end method

.method public static setBrightAntiShakeInterval(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 246
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 247
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1070015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, "poll_rate_values":[Ljava/lang/String;
    const-string v2, "lenovo_antishake_interval_up"

    invoke-static {p0, v2, v0, p1}, Lcom/android/server/lightadjust/AppConfig;->setIndex(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 249
    return-void
.end method

.method public static setBrightnessFadeSpeed(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 186
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1070011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "poll_rate_values":[Ljava/lang/String;
    const-string v2, "brightness_fade_speed"

    invoke-static {p0, v2, v0, p1}, Lcom/android/server/lightadjust/AppConfig;->setIndex(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 188
    return-void
.end method

.method public static setBrightnessStepSize(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 226
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1070013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "poll_rate_values":[Ljava/lang/String;
    const-string v2, "brightness_step_size"

    invoke-static {p0, v2, v0, p1}, Lcom/android/server/lightadjust/AppConfig;->setIndex(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 228
    return-void
.end method

.method public static setChangePolicy(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 153
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x107000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "policy_values":[Ljava/lang/String;
    const-string v2, "policy_selection"

    invoke-static {p0, v2, v0, p1}, Lcom/android/server/lightadjust/AppConfig;->setIndex(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 155
    return-void
.end method

.method public static setCurrentProfile(Landroid/content/Context;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 93
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x107000a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "profile_values":[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v5, v2

    if-ge p1, v5, :cond_0

    .line 96
    aget-object v1, v2, p1

    .line 98
    .local v1, "needSetProfileValue":Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 99
    .local v4, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "profile_selection"

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 104
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "needSetProfileValue":Ljava/lang/String;
    .end local v4    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static setDarkAntiShakeInterval(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 268
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 269
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1070017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "poll_rate_values":[Ljava/lang/String;
    const-string v2, "lenovo_antishake_interval_down"

    invoke-static {p0, v2, v0, p1}, Lcom/android/server/lightadjust/AppConfig;->setIndex(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 271
    return-void
.end method

.method public static setFadeBrightnessChanges(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "changes_flag"    # Z

    .prologue
    .line 199
    const-string v0, "fade_brightness_changes"

    invoke-static {p0, v0, p1}, Lcom/android/server/lightadjust/AppConfig;->setSettingsBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 200
    return-void
.end method

.method private static setIndex(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 159
    if-ltz p3, :cond_0

    array-length v3, p2

    if-ge p3, v3, :cond_0

    .line 160
    aget-object v1, p2, p3

    .line 162
    .local v1, "needSetValue":Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 163
    .local v2, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 164
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "needSetValue":Ljava/lang/String;
    .end local v2    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method public static setSampleRate(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "index"    # I

    .prologue
    .line 410
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 411
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x107000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, "poll_rate_values":[Ljava/lang/String;
    const-string v2, "light_sensor_poll_rate"

    invoke-static {p0, v2, v0, p1}, Lcom/android/server/lightadjust/AppConfig;->setIndex(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;I)V

    .line 413
    return-void
.end method

.method public static setScreenBrightnessScope(Landroid/content/Context;II)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 127
    if-le p2, p1, :cond_0

    if-ltz p1, :cond_0

    const/16 v2, 0x64

    if-gt p2, v2, :cond_0

    .line 128
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 129
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 130
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "minimum_brightness"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    const-string v2, "maximum_brightness"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 135
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sharedPref":Landroid/content/SharedPreferences;
    :cond_0
    return-void
.end method

.method private static setSettingsBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "flag"    # Z

    .prologue
    .line 203
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 204
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 205
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 206
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 207
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 208
    return-void
.end method

.method public static setShowNotificationControllerPanel(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "showOrNot"    # Z

    .prologue
    .line 284
    const-string v0, "show_notification_control_panel"

    invoke-static {p0, v0, p1}, Lcom/android/server/lightadjust/AppConfig;->setSettingsBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 285
    return-void
.end method
