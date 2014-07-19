.class public Lcom/android/server/lightadjust/SettingsCache;
.super Ljava/lang/Object;
.source "SettingsCache.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/server/lightadjust/SettingsCache;",
            ">;"
        }
    .end annotation
.end field

.field public static final INDEX_OPTION_DISABLED:Z = false

.field public static final INDEX_OPTION_ENABLED:Z = true

.field public static final INDEX_OPTION_ONE:I = 0x1

.field public static final INDEX_OPTION_THREE:I = 0x3

.field public static final INDEX_OPTION_TWO:I = 0x2

.field public static final INDEX_OPTION_ZERO:I = 0x0

.field public static final INVALID_INDEX_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SettingsCache"


# instance fields
.field private backlight_adjust_policy:I

.field private bright_anti_shake_interval:I

.field private brightness_fade_speed:I

.field private brightness_step_size:I

.field private dark_anti_shake_interval:I

.field private fade_brightness_changes:Z

.field private maximum_brightness_value:I

.field private minimum_brightness_value:I

.field private profile_count:I

.field private profile_index:I

.field private sensor_sample_rate:I

.field private show_notification_controller_pannel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lcom/android/server/lightadjust/SettingsCache$1;

    invoke-direct {v0}, Lcom/android/server/lightadjust/SettingsCache$1;-><init>()V

    sput-object v0, Lcom/android/server/lightadjust/SettingsCache;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0}, Lcom/android/server/lightadjust/SettingsCache;->init()V

    .line 35
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/lightadjust/SettingsCache;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/SettingsCache;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/android/server/lightadjust/SettingsCache;->profile_index:I

    return p1
.end method

.method static synthetic access$1002(Lcom/android/server/lightadjust/SettingsCache;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/SettingsCache;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/android/server/lightadjust/SettingsCache;->dark_anti_shake_interval:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/server/lightadjust/SettingsCache;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/SettingsCache;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/android/server/lightadjust/SettingsCache;->profile_count:I

    return p1
.end method

.method static synthetic access$1102(Lcom/android/server/lightadjust/SettingsCache;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/SettingsCache;
    .param p1, "x1"    # Z

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/android/server/lightadjust/SettingsCache;->show_notification_controller_pannel:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/lightadjust/SettingsCache;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/SettingsCache;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/android/server/lightadjust/SettingsCache;->backlight_adjust_policy:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/server/lightadjust/SettingsCache;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/SettingsCache;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/android/server/lightadjust/SettingsCache;->sensor_sample_rate:I

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/lightadjust/SettingsCache;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/SettingsCache;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/android/server/lightadjust/SettingsCache;->brightness_fade_speed:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/lightadjust/SettingsCache;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/SettingsCache;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/android/server/lightadjust/SettingsCache;->brightness_step_size:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/lightadjust/SettingsCache;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/SettingsCache;
    .param p1, "x1"    # Z

    .prologue
    .line 10
    iput-boolean p1, p0, Lcom/android/server/lightadjust/SettingsCache;->fade_brightness_changes:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/server/lightadjust/SettingsCache;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/SettingsCache;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/android/server/lightadjust/SettingsCache;->minimum_brightness_value:I

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/lightadjust/SettingsCache;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/SettingsCache;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/android/server/lightadjust/SettingsCache;->maximum_brightness_value:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/server/lightadjust/SettingsCache;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lightadjust/SettingsCache;
    .param p1, "x1"    # I

    .prologue
    .line 10
    iput p1, p0, Lcom/android/server/lightadjust/SettingsCache;->bright_anti_shake_interval:I

    return p1
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 75
    iput v2, p0, Lcom/android/server/lightadjust/SettingsCache;->profile_index:I

    .line 76
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/lightadjust/SettingsCache;->profile_count:I

    .line 77
    iput v2, p0, Lcom/android/server/lightadjust/SettingsCache;->backlight_adjust_policy:I

    .line 78
    iput v1, p0, Lcom/android/server/lightadjust/SettingsCache;->sensor_sample_rate:I

    .line 79
    iput v1, p0, Lcom/android/server/lightadjust/SettingsCache;->brightness_fade_speed:I

    .line 80
    iput v1, p0, Lcom/android/server/lightadjust/SettingsCache;->brightness_step_size:I

    .line 81
    iput-boolean v1, p0, Lcom/android/server/lightadjust/SettingsCache;->fade_brightness_changes:Z

    .line 82
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/lightadjust/SettingsCache;->minimum_brightness_value:I

    .line 83
    const/16 v0, 0xf5

    iput v0, p0, Lcom/android/server/lightadjust/SettingsCache;->maximum_brightness_value:I

    .line 84
    iput v1, p0, Lcom/android/server/lightadjust/SettingsCache;->bright_anti_shake_interval:I

    .line 85
    iput v1, p0, Lcom/android/server/lightadjust/SettingsCache;->dark_anti_shake_interval:I

    .line 86
    iput-boolean v1, p0, Lcom/android/server/lightadjust/SettingsCache;->show_notification_controller_pannel:Z

    .line 87
    return-void
.end method


# virtual methods
.method public changeProfileToNext()V
    .locals 3

    .prologue
    .line 202
    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->profile_index:I

    .line 203
    .local v0, "current_profile_index":I
    invoke-virtual {p0}, Lcom/android/server/lightadjust/SettingsCache;->getProfileCount()I

    move-result v2

    .line 205
    .local v2, "profiles_count":I
    add-int/lit8 v0, v0, 0x1

    .line 206
    rem-int v1, v0, v2

    .line 207
    .local v1, "index":I
    invoke-virtual {p0, v1}, Lcom/android/server/lightadjust/SettingsCache;->setProfileIndex(I)V

    .line 208
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public getProfileCount()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->profile_count:I

    return v0
.end method

.method public getProfileIndex()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->profile_index:I

    return v0
.end method

.method public get_Backlight_Adjust_Policy()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->backlight_adjust_policy:I

    return v0
.end method

.method public get_Bright_Anti_Shake_Interval()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->bright_anti_shake_interval:I

    return v0
.end method

.method public get_Brightness_Fade_Speed()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->brightness_fade_speed:I

    return v0
.end method

.method public get_Brightness_Step_Size()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->brightness_step_size:I

    return v0
.end method

.method public get_Dark_Anti_Shake_interval()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->dark_anti_shake_interval:I

    return v0
.end method

.method public get_Fade_Brightness_Changes()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/server/lightadjust/SettingsCache;->fade_brightness_changes:Z

    return v0
.end method

.method public get_Maximum_Brightness_Value()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->maximum_brightness_value:I

    return v0
.end method

.method public get_Minimum_Brightness_Value()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->minimum_brightness_value:I

    return v0
.end method

.method public get_Sensor_Sample_Rate()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->sensor_sample_rate:I

    return v0
.end method

.method public get_Show_Notification_Controller_Panel()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/server/lightadjust/SettingsCache;->show_notification_controller_pannel:Z

    return v0
.end method

.method public resetSettings()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/server/lightadjust/SettingsCache;->init()V

    .line 39
    return-void
.end method

.method public setBacklightAdjustPolicy(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 211
    iput p1, p0, Lcom/android/server/lightadjust/SettingsCache;->backlight_adjust_policy:I

    .line 212
    return-void
.end method

.method public setBrightAntiShakeInterval(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 238
    iput p1, p0, Lcom/android/server/lightadjust/SettingsCache;->bright_anti_shake_interval:I

    .line 239
    return-void
.end method

.method public setBrightnessFadeSpeed(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 219
    iput p1, p0, Lcom/android/server/lightadjust/SettingsCache;->brightness_fade_speed:I

    .line 220
    return-void
.end method

.method public setBrightnessStepSize(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 223
    iput p1, p0, Lcom/android/server/lightadjust/SettingsCache;->brightness_step_size:I

    .line 224
    return-void
.end method

.method public setDarkAntiShakeInterval(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/android/server/lightadjust/SettingsCache;->dark_anti_shake_interval:I

    .line 243
    return-void
.end method

.method public setFadeBrightnessChanges(Z)V
    .locals 0
    .param p1, "changes_flag"    # Z

    .prologue
    .line 227
    iput-boolean p1, p0, Lcom/android/server/lightadjust/SettingsCache;->fade_brightness_changes:Z

    .line 228
    return-void
.end method

.method public setProfileCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 190
    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->profile_count:I

    if-lez v0, :cond_0

    .line 191
    iput p1, p0, Lcom/android/server/lightadjust/SettingsCache;->profile_count:I

    .line 193
    :cond_0
    return-void
.end method

.method public setProfileIndex(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 196
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->profile_count:I

    if-ge p1, v0, :cond_0

    .line 197
    iput p1, p0, Lcom/android/server/lightadjust/SettingsCache;->profile_index:I

    .line 199
    :cond_0
    return-void
.end method

.method public setScreenBrightnessScope(II)V
    .locals 0
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 232
    iput p1, p0, Lcom/android/server/lightadjust/SettingsCache;->minimum_brightness_value:I

    .line 233
    iput p2, p0, Lcom/android/server/lightadjust/SettingsCache;->maximum_brightness_value:I

    .line 235
    return-void
.end method

.method public setSensorSampleRate(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 215
    iput p1, p0, Lcom/android/server/lightadjust/SettingsCache;->sensor_sample_rate:I

    .line 216
    return-void
.end method

.method public setShowNotificationControllerPanel(Z)V
    .locals 0
    .param p1, "showOrNot"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/android/server/lightadjust/SettingsCache;->show_notification_controller_pannel:Z

    .line 247
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/lightadjust/SettingsCache;->profile_index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/lightadjust/SettingsCache;->profile_count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/lightadjust/SettingsCache;->backlight_adjust_policy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/lightadjust/SettingsCache;->sensor_sample_rate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/lightadjust/SettingsCache;->brightness_fade_speed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/lightadjust/SettingsCache;->brightness_step_size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/lightadjust/SettingsCache;->fade_brightness_changes:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/lightadjust/SettingsCache;->minimum_brightness_value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/lightadjust/SettingsCache;->maximum_brightness_value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/lightadjust/SettingsCache;->bright_anti_shake_interval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/lightadjust/SettingsCache;->dark_anti_shake_interval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/lightadjust/SettingsCache;->show_notification_controller_pannel:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 174
    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->profile_index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->profile_count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->backlight_adjust_policy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->sensor_sample_rate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->brightness_fade_speed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->brightness_step_size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-boolean v0, p0, Lcom/android/server/lightadjust/SettingsCache;->fade_brightness_changes:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->minimum_brightness_value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->maximum_brightness_value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->bright_anti_shake_interval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget v0, p0, Lcom/android/server/lightadjust/SettingsCache;->dark_anti_shake_interval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget-boolean v0, p0, Lcom/android/server/lightadjust/SettingsCache;->show_notification_controller_pannel:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    const-string v0, "zhangxj"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSettings--write to Parcel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/lightadjust/SettingsCache;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    :cond_0
    move v0, v2

    .line 180
    goto :goto_0

    :cond_1
    move v1, v2

    .line 185
    goto :goto_1
.end method
